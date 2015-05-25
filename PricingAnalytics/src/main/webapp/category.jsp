<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>

        <link rel="StyleSheet" href="dtree.css" type="text/css" />
        <script type="text/javascript" src="dtree.js"></script>

    </head>

    <body>
        <div class="dtree">
            <!--<p><a href="javascript: d.openAll();">open all</a> | <a href="javascript: d.closeAll();">close all</a></p>-->
            <script type="text/javascript">

                    d = new dTree('d');
                    d.add(0,-1,'Danh mục sản phẩm');
                    
                    d.add(1,0,'Điện Máy','');
                        d.add(2,1,'Máy lạnh','addnewproduct.jsp?key=1');
                        d.add(3,1,'Máy Giặt','addnewproduct.jsp?key=2');
                        d.add(4,1,'Tủ lạnh','addnewproduct.jsp?key=3');
                        d.add(5,1,'Máy nước nóng','addnewproduct.jsp?key=4');
                    d.add(100,0,'Điện Tử','');
                         d.add(101,100,'Tivi','addnewproduct.jsp?key=100');
                         d.add(102,100,'Ampli ','addnewproduct.jsp?key=101');
                         d.add(103,100,'Đầu DVD','addnewproduct.jsp?key=102');
                    d.add(200,0,'Gia Dụng','');
                        d.add(201,200,'Máy xay sinh tố','addnewproduct.jsp?key=200');
                        d.add(202,200,'Lò vi sóng','addnewproduct.jsp?key=201');
                        d.add(203,200,'Lò nướng','addnewproduct.jsp?key=202');
                        d.add(204,200,'Bàn ủi','addnewproduct.jsp?key=203');
                    d.add(300,0,'Kỹ Thuật Số','');
                        d.add(301,300,'Laptop','addnewproduct.jsp?key=300');
                        d.add(302,300,'Máy tính để bàn','addnewproduct.jsp?key=301');
                        d.add(303,300,'Màn hình','addnewproduct.jsp?key=302');
                        d.add(304,300,'Máy ảnh','addnewproduct.jsp?key=303');
                        d.add(305,300,'Máy Quay phim','addnewproduct.jsp?key=304');

                    document.write(d);


            </script>
        </div>
    </body>
</html>