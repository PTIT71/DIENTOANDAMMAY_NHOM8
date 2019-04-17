package com.source.code;

import com.source.model.BanTin;
import com.source.model.DanhMuc;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    @RequestMapping(value = "/home")
    public String Home(ModelMap map)
    {
        TestDataBase DBNEWS = new TestDataBase();
        List<DanhMuc> lst = DBNEWS.GetDanhMuc();
        map.addAttribute("danhmuc", lst);
        return "/home";
    }
    @RequestMapping(value = "/index")
    public String images(ModelMap map)
    {
        TestDataBase DBNEWS = new TestDataBase();
        List<DanhMuc> lst = DBNEWS.GetDanhMuc();
        map.addAttribute("danhmuc", lst);
        BanTin NewsTop = DBNEWS.GetNewsTop();
        map.addAttribute("titletop",NewsTop.getTieuDe());
        map.addAttribute("summarytop",NewsTop.getSumary());
        String urlTop = "index/"+NewsTop.getID_Tin();
        map.addAttribute("urltop",urlTop);
        BanTin btn = new BanTin();
        map.addAttribute("bantin",btn);
        List<BanTin> lstBanTin = DBNEWS.GetDSTinVan(2,10);
        for (BanTin item: lstBanTin) {
            item.setMapping("index/"+item.getID_Tin());
        }
        map.addAttribute("lstTinVan", lstBanTin);

        return "/index";
    }

    @RequestMapping(value = {"/{name}"})
    public String test2(@PathVariable("name") String name, ModelMap model) {
        TestDataBase DBNEWS = new TestDataBase();
        List<DanhMuc> lst = DBNEWS.GetDanhMuc();
        model.addAttribute("danhmuc", lst);
        String cm = DBNEWS.GetChuyenMuc(name);
        model.addAttribute("chuyenmuc", cm);
        return "/Particular";
    }



    @RequestMapping("/index/{id}")
    public String test1(@PathVariable("id") int id, ModelMap map) {
        TestDataBase DBNEWS = new TestDataBase();
        List<DanhMuc> lst = DBNEWS.GetDanhMuc();
        for (DanhMuc item: lst) {
            item.setMap("../"+ item.getMap());
        }
        map.addAttribute("danhmuc", lst);

        BanTin BT = DBNEWS.getNews(id);

        map.addAttribute("content", BT.getContent());
        map.addAttribute("author",BT.getAuthor());
        map.addAttribute("date", BT.getDateNews());
        map.addAttribute("title",BT.getTieuDe());
        map.addAttribute("image", BT.getImage());

        List<BanTin> lstBanTin = DBNEWS.GetDSTinVan(3,8);
        for (BanTin item: lstBanTin) {
            item.setMapping(Integer.toString(item.getID_Tin()));
        }
        map.addAttribute("lstTinVan", lstBanTin);

        return "home";
    }


}
