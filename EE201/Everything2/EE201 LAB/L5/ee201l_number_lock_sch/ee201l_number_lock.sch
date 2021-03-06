<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="initial_d" />
        <signal name="sysclk" />
        <signal name="g1get_d" />
        <signal name="g1get" />
        <signal name="reset" />
        <signal name="g1011get_d" />
        <signal name="g1011get" />
        <signal name="g1011" />
        <signal name="opening_d" />
        <signal name="opening" />
        <signal name="bad_d" />
        <signal name="bad" />
        <signal name="g10_d" />
        <signal name="g10" />
        <signal name="g101get_d" />
        <signal name="g101get" />
        <signal name="g101_d" />
        <signal name="g101" />
        <signal name="g1_d" />
        <signal name="g1" />
        <signal name="g10get_d" />
        <signal name="g10get" />
        <signal name="state(10:0)" />
        <signal name="u_n" />
        <signal name="u" />
        <signal name="z_n" />
        <signal name="z" />
        <signal name="timerout" />
        <signal name="timerout_n" />
        <signal name="XLXN_275" />
        <signal name="XLXN_276" />
        <signal name="XLXN_289" />
        <signal name="XLXN_291" />
        <signal name="XLXN_379" />
        <signal name="XLXN_381" />
        <signal name="XLXN_388" />
        <signal name="XLXN_390" />
        <signal name="XLXN_397" />
        <signal name="XLXN_399" />
        <signal name="g1011_d" />
        <signal name="initial_state" />
        <signal name="state(5)" />
        <signal name="state(6)" />
        <signal name="state(7)" />
        <signal name="state(8)" />
        <signal name="state(9)" />
        <signal name="state(10)" />
        <signal name="state(0)" />
        <signal name="state(1)" />
        <signal name="state(2)" />
        <signal name="state(3)" />
        <signal name="state(4)" />
        <signal name="XLXN_404" />
        <signal name="XLXN_405" />
        <signal name="XLXN_422" />
        <signal name="XLXN_424" />
        <signal name="XLXN_425" />
        <signal name="XLXN_431" />
        <signal name="XLXN_432" />
        <signal name="XLXN_438" />
        <signal name="XLXN_439" />
        <signal name="XLXN_440" />
        <signal name="XLXN_441" />
        <signal name="XLXN_449" />
        <signal name="XLXN_452" />
        <signal name="XLXN_423" />
        <signal name="XLXN_458" />
        <port polarity="Input" name="sysclk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="state(10:0)" />
        <port polarity="Input" name="u" />
        <port polarity="Input" name="z" />
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="USC_CENG_border">
            <timestamp>2008-2-4T4:45:46</timestamp>
            <rect width="724" x="0" y="-32" height="236" />
            <line x2="724" y1="60" y2="60" x1="0" />
            <line x2="724" y1="108" y2="108" x1="0" />
            <line x2="724" y1="152" y2="152" x1="0" />
            <line x2="352" y1="152" y2="108" x1="352" />
            <line x2="368" y1="60" y2="108" x1="368" />
        </blockdef>
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
        </blockdef>
        <blockdef name="fdp">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="fdc" name="XLXI_23">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g1get_d" name="D" />
            <blockpin signalname="g1get" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_29">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g1011get_d" name="D" />
            <blockpin signalname="g1011get" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_31">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="opening_d" name="D" />
            <blockpin signalname="opening" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_26">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="bad_d" name="D" />
            <blockpin signalname="bad" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_30">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g1011_d" name="D" />
            <blockpin signalname="g1011" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_27">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g10_d" name="D" />
            <blockpin signalname="g10" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_28">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g101get_d" name="D" />
            <blockpin signalname="g101get" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_32">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g101_d" name="D" />
            <blockpin signalname="g101" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_24">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g1_d" name="D" />
            <blockpin signalname="g1" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_25">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="g10get_d" name="D" />
            <blockpin signalname="g10get" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_64">
            <blockpin signalname="u" name="I" />
            <blockpin signalname="u_n" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_65">
            <blockpin signalname="z" name="I" />
            <blockpin signalname="z_n" name="O" />
        </block>
        <block symbolname="cb4ce" name="XLXI_66">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="opening" name="CE" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="timerout" name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_67">
            <blockpin signalname="timerout" name="I" />
            <blockpin signalname="timerout_n" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_100">
            <blockpin signalname="u" name="I0" />
            <blockpin signalname="g1get" name="I1" />
            <blockpin signalname="XLXN_275" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_102">
            <blockpin signalname="XLXN_276" name="I0" />
            <blockpin signalname="XLXN_275" name="I1" />
            <blockpin signalname="g1get_d" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_101">
            <blockpin signalname="z_n" name="I0" />
            <blockpin signalname="initial_state" name="I1" />
            <blockpin signalname="u" name="I2" />
            <blockpin signalname="XLXN_276" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_103">
            <blockpin signalname="u_n" name="I0" />
            <blockpin signalname="g1get" name="I1" />
            <blockpin signalname="XLXN_289" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_104">
            <blockpin signalname="XLXN_291" name="I0" />
            <blockpin signalname="XLXN_289" name="I1" />
            <blockpin signalname="g1_d" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_105">
            <blockpin signalname="u_n" name="I0" />
            <blockpin signalname="z_n" name="I1" />
            <blockpin signalname="g1" name="I2" />
            <blockpin signalname="XLXN_291" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_133">
            <blockpin signalname="u" name="I0" />
            <blockpin signalname="g101get" name="I1" />
            <blockpin signalname="XLXN_379" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_134">
            <blockpin signalname="XLXN_381" name="I0" />
            <blockpin signalname="XLXN_379" name="I1" />
            <blockpin signalname="g101get_d" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_135">
            <blockpin signalname="g10" name="I0" />
            <blockpin signalname="u" name="I1" />
            <blockpin signalname="z_n" name="I2" />
            <blockpin signalname="XLXN_381" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_136">
            <blockpin signalname="g101get" name="I0" />
            <blockpin signalname="u_n" name="I1" />
            <blockpin signalname="XLXN_388" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_137">
            <blockpin signalname="XLXN_390" name="I0" />
            <blockpin signalname="XLXN_388" name="I1" />
            <blockpin signalname="g101_d" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_138">
            <blockpin signalname="g101" name="I0" />
            <blockpin signalname="z_n" name="I1" />
            <blockpin signalname="u_n" name="I2" />
            <blockpin signalname="XLXN_390" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_139">
            <blockpin signalname="g1011get" name="I0" />
            <blockpin signalname="u" name="I1" />
            <blockpin signalname="XLXN_397" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_140">
            <blockpin signalname="XLXN_399" name="I0" />
            <blockpin signalname="XLXN_397" name="I1" />
            <blockpin signalname="g1011get_d" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_141">
            <blockpin signalname="g101" name="I0" />
            <blockpin signalname="z_n" name="I1" />
            <blockpin signalname="u" name="I2" />
            <blockpin signalname="XLXN_399" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_145">
            <blockpin signalname="u_n" name="I0" />
            <blockpin signalname="g1011get" name="I1" />
            <blockpin signalname="g1011_d" name="O" />
        </block>
        <block symbolname="USC_CENG_border" name="XLXI_146" />
        <block symbolname="USC_CENG_border" name="XLXI_147" />
        <block symbolname="USC_CENG_border" name="XLXI_148" />
        <block symbolname="buf" name="XLXI_58">
            <blockpin signalname="g101get" name="I" />
            <blockpin signalname="state(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_59">
            <blockpin signalname="g101" name="I" />
            <blockpin signalname="state(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_60">
            <blockpin signalname="g1011get" name="I" />
            <blockpin signalname="state(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_61">
            <blockpin signalname="g1011" name="I" />
            <blockpin signalname="state(8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_62">
            <blockpin signalname="opening" name="I" />
            <blockpin signalname="state(9)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_63">
            <blockpin signalname="bad" name="I" />
            <blockpin signalname="state(10)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_53">
            <blockpin signalname="initial_state" name="I" />
            <blockpin signalname="state(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_54">
            <blockpin signalname="g1get" name="I" />
            <blockpin signalname="state(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_55">
            <blockpin signalname="g1" name="I" />
            <blockpin signalname="state(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_56">
            <blockpin signalname="g10get" name="I" />
            <blockpin signalname="state(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_57">
            <blockpin signalname="g10" name="I" />
            <blockpin signalname="state(4)" name="O" />
        </block>
        <block symbolname="or2b1" name="XLXI_153">
            <blockpin signalname="u" name="I0" />
            <blockpin signalname="z" name="I1" />
            <blockpin signalname="XLXN_404" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_154">
            <blockpin signalname="initial_state" name="I0" />
            <blockpin signalname="XLXN_404" name="I1" />
            <blockpin signalname="XLXN_422" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_155">
            <blockpin signalname="XLXN_405" name="I0" />
            <blockpin signalname="bad" name="I1" />
            <blockpin signalname="XLXN_423" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_156">
            <blockpin signalname="u" name="I0" />
            <blockpin signalname="z" name="I1" />
            <blockpin signalname="XLXN_405" name="O" />
        </block>
        <block symbolname="fdp" name="XLXI_166">
            <blockpin signalname="sysclk" name="C" />
            <blockpin signalname="initial_d" name="D" />
            <blockpin signalname="reset" name="PRE" />
            <blockpin signalname="initial_state" name="Q" />
        </block>
        <block symbolname="and3b1" name="XLXI_168">
            <blockpin signalname="u" name="I0" />
            <blockpin signalname="z" name="I1" />
            <blockpin signalname="g1" name="I2" />
            <blockpin signalname="XLXN_424" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_169">
            <blockpin signalname="z" name="I0" />
            <blockpin signalname="g10get" name="I1" />
            <blockpin signalname="XLXN_425" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_170">
            <blockpin signalname="XLXN_425" name="I0" />
            <blockpin signalname="XLXN_424" name="I1" />
            <blockpin signalname="g10get_d" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_171">
            <blockpin signalname="z" name="I0" />
            <blockpin signalname="g10get" name="I1" />
            <blockpin signalname="XLXN_431" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_172">
            <blockpin signalname="z" name="I0" />
            <blockpin signalname="u" name="I1" />
            <blockpin signalname="g10" name="I2" />
            <blockpin signalname="XLXN_432" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_173">
            <blockpin signalname="XLXN_432" name="I0" />
            <blockpin signalname="XLXN_431" name="I1" />
            <blockpin signalname="g10_d" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_174">
            <blockpin signalname="XLXN_441" name="I0" />
            <blockpin signalname="XLXN_440" name="I1" />
            <blockpin signalname="XLXN_439" name="I2" />
            <blockpin signalname="XLXN_438" name="I3" />
            <blockpin signalname="bad_d" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_175">
            <blockpin signalname="g1" name="I0" />
            <blockpin signalname="u" name="I1" />
            <blockpin signalname="XLXN_438" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_176">
            <blockpin signalname="g10" name="I0" />
            <blockpin signalname="z" name="I1" />
            <blockpin signalname="XLXN_439" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_177">
            <blockpin signalname="g101" name="I0" />
            <blockpin signalname="z" name="I1" />
            <blockpin signalname="XLXN_440" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_178">
            <blockpin signalname="XLXN_449" name="I0" />
            <blockpin signalname="bad" name="I1" />
            <blockpin signalname="XLXN_441" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_179">
            <blockpin signalname="z" name="I0" />
            <blockpin signalname="u" name="I1" />
            <blockpin signalname="XLXN_449" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_180">
            <blockpin signalname="XLXN_452" name="I0" />
            <blockpin signalname="g1011" name="I1" />
            <blockpin signalname="opening_d" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_182">
            <blockpin signalname="XLXN_458" name="I0" />
            <blockpin signalname="XLXN_423" name="I1" />
            <blockpin signalname="XLXN_422" name="I2" />
            <blockpin signalname="initial_d" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_183">
            <blockpin signalname="timerout" name="I0" />
            <blockpin signalname="opening" name="I1" />
            <blockpin signalname="XLXN_458" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_184">
            <blockpin signalname="timerout_n" name="I0" />
            <blockpin signalname="opening" name="I1" />
            <blockpin signalname="XLXN_452" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="160" type="branch" />
            <wire x2="288" y1="160" y2="160" x1="240" />
            <wire x2="288" y1="160" y2="176" x1="288" />
            <wire x2="448" y1="176" y2="176" x1="288" />
        </branch>
        <branch name="initial_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="256" y="272" type="branch" />
            <wire x2="256" y1="272" y2="272" x1="240" />
            <wire x2="448" y1="272" y2="272" x1="256" />
        </branch>
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="400" type="branch" />
            <wire x2="288" y1="400" y2="400" x1="240" />
            <wire x2="448" y1="400" y2="400" x1="288" />
        </branch>
        <branch name="initial_state">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="944" y="272" type="branch" />
            <wire x2="944" y1="272" y2="272" x1="832" />
            <wire x2="992" y1="272" y2="272" x1="944" />
        </branch>
        <branch name="g1get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="272" y="656" type="branch" />
            <wire x2="272" y1="656" y2="656" x1="240" />
            <wire x2="272" y1="656" y2="704" x1="272" />
            <wire x2="528" y1="704" y2="704" x1="272" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="880" type="branch" />
            <wire x2="288" y1="880" y2="880" x1="240" />
            <wire x2="288" y1="880" y2="928" x1="288" />
            <wire x2="528" y1="928" y2="928" x1="288" />
        </branch>
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="272" y="784" type="branch" />
            <wire x2="272" y1="784" y2="784" x1="240" />
            <wire x2="272" y1="784" y2="832" x1="272" />
            <wire x2="528" y1="832" y2="832" x1="272" />
        </branch>
        <branch name="g1get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="944" y="656" type="branch" />
            <wire x2="944" y1="704" y2="704" x1="912" />
            <wire x2="992" y1="656" y2="656" x1="944" />
            <wire x2="944" y1="656" y2="704" x1="944" />
        </branch>
        <branch name="g1011get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2544" y="176" type="branch" />
            <wire x2="2544" y1="176" y2="176" x1="2496" />
            <wire x2="2704" y1="176" y2="176" x1="2544" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2592" y="400" type="branch" />
            <wire x2="2592" y1="400" y2="400" x1="2496" />
            <wire x2="2704" y1="400" y2="400" x1="2592" />
        </branch>
        <instance x="2704" y="432" name="XLXI_29" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2528" y="304" type="branch" />
            <wire x2="2528" y1="304" y2="304" x1="2496" />
            <wire x2="2704" y1="304" y2="304" x1="2528" />
        </branch>
        <branch name="g1011get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3200" y="176" type="branch" />
            <wire x2="3200" y1="176" y2="176" x1="3088" />
            <wire x2="3248" y1="176" y2="176" x1="3200" />
        </branch>
        <branch name="g1011_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2528" y="576" type="branch" />
            <wire x2="2528" y1="576" y2="576" x1="2496" />
            <wire x2="2704" y1="576" y2="576" x1="2528" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2544" y="800" type="branch" />
            <wire x2="2544" y1="800" y2="800" x1="2496" />
            <wire x2="2704" y1="800" y2="800" x1="2544" />
        </branch>
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2512" y="704" type="branch" />
            <wire x2="2512" y1="704" y2="704" x1="2496" />
            <wire x2="2704" y1="704" y2="704" x1="2512" />
        </branch>
        <branch name="g1011">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3168" y="576" type="branch" />
            <wire x2="3168" y1="576" y2="576" x1="3088" />
            <wire x2="3248" y1="576" y2="576" x1="3168" />
        </branch>
        <branch name="opening_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2544" y="1024" type="branch" />
            <wire x2="2544" y1="1024" y2="1024" x1="2496" />
            <wire x2="2704" y1="1024" y2="1024" x1="2544" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2560" y="1248" type="branch" />
            <wire x2="2560" y1="1248" y2="1248" x1="2496" />
            <wire x2="2704" y1="1248" y2="1248" x1="2560" />
        </branch>
        <instance x="2704" y="1280" name="XLXI_31" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2512" y="1152" type="branch" />
            <wire x2="2512" y1="1152" y2="1152" x1="2496" />
            <wire x2="2704" y1="1152" y2="1152" x1="2512" />
        </branch>
        <branch name="opening">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3200" y="1024" type="branch" />
            <wire x2="3200" y1="1024" y2="1024" x1="3088" />
            <wire x2="3248" y1="1024" y2="1024" x1="3200" />
        </branch>
        <branch name="bad_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2512" y="1472" type="branch" />
            <wire x2="2512" y1="1472" y2="1472" x1="2496" />
            <wire x2="2704" y1="1472" y2="1472" x1="2512" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2560" y="1696" type="branch" />
            <wire x2="2560" y1="1696" y2="1696" x1="2496" />
            <wire x2="2704" y1="1696" y2="1696" x1="2560" />
        </branch>
        <instance x="2704" y="1728" name="XLXI_26" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2528" y="1600" type="branch" />
            <wire x2="2528" y1="1600" y2="1600" x1="2496" />
            <wire x2="2704" y1="1600" y2="1600" x1="2528" />
        </branch>
        <branch name="bad">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3184" y="1472" type="branch" />
            <wire x2="3184" y1="1472" y2="1472" x1="3088" />
            <wire x2="3248" y1="1472" y2="1472" x1="3184" />
        </branch>
        <instance x="2704" y="832" name="XLXI_30" orien="R0" />
        <branch name="g10_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1376" y="224" type="branch" />
            <wire x2="1376" y1="224" y2="224" x1="1344" />
            <wire x2="1552" y1="224" y2="224" x1="1376" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1408" y="448" type="branch" />
            <wire x2="1408" y1="448" y2="448" x1="1344" />
            <wire x2="1552" y1="448" y2="448" x1="1408" />
        </branch>
        <instance x="1552" y="480" name="XLXI_27" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1376" y="352" type="branch" />
            <wire x2="1376" y1="352" y2="352" x1="1344" />
            <wire x2="1552" y1="352" y2="352" x1="1376" />
        </branch>
        <branch name="g10">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2016" y="224" type="branch" />
            <wire x2="2016" y1="224" y2="224" x1="1936" />
            <wire x2="2096" y1="224" y2="224" x1="2016" />
        </branch>
        <branch name="g101get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1376" y="672" type="branch" />
            <wire x2="1376" y1="672" y2="672" x1="1344" />
            <wire x2="1552" y1="672" y2="672" x1="1376" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1392" y="896" type="branch" />
            <wire x2="1392" y1="896" y2="896" x1="1344" />
            <wire x2="1552" y1="896" y2="896" x1="1392" />
        </branch>
        <instance x="1552" y="928" name="XLXI_28" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1376" y="800" type="branch" />
            <wire x2="1376" y1="800" y2="800" x1="1344" />
            <wire x2="1552" y1="800" y2="800" x1="1376" />
        </branch>
        <branch name="g101get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2032" y="672" type="branch" />
            <wire x2="2032" y1="672" y2="672" x1="1936" />
            <wire x2="2096" y1="672" y2="672" x1="2032" />
        </branch>
        <branch name="g101_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1392" y="1104" type="branch" />
            <wire x2="1392" y1="1104" y2="1104" x1="1360" />
            <wire x2="1568" y1="1104" y2="1104" x1="1392" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1424" y="1328" type="branch" />
            <wire x2="1424" y1="1328" y2="1328" x1="1360" />
            <wire x2="1568" y1="1328" y2="1328" x1="1424" />
        </branch>
        <instance x="1568" y="1360" name="XLXI_32" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1408" y="1232" type="branch" />
            <wire x2="1408" y1="1232" y2="1232" x1="1360" />
            <wire x2="1568" y1="1232" y2="1232" x1="1408" />
        </branch>
        <branch name="g101">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2032" y="1104" type="branch" />
            <wire x2="2032" y1="1104" y2="1104" x1="1952" />
            <wire x2="2112" y1="1104" y2="1104" x1="2032" />
        </branch>
        <branch name="g1_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="1088" type="branch" />
            <wire x2="288" y1="1088" y2="1088" x1="256" />
            <wire x2="464" y1="1088" y2="1088" x1="288" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="320" y="1312" type="branch" />
            <wire x2="320" y1="1312" y2="1312" x1="256" />
            <wire x2="464" y1="1312" y2="1312" x1="320" />
        </branch>
        <instance x="464" y="1344" name="XLXI_24" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="1216" type="branch" />
            <wire x2="288" y1="1216" y2="1216" x1="256" />
            <wire x2="464" y1="1216" y2="1216" x1="288" />
        </branch>
        <branch name="g1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="960" y="1088" type="branch" />
            <wire x2="960" y1="1088" y2="1088" x1="848" />
            <wire x2="1008" y1="1088" y2="1088" x1="960" />
        </branch>
        <branch name="g10get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="1536" type="branch" />
            <wire x2="288" y1="1536" y2="1536" x1="256" />
            <wire x2="464" y1="1536" y2="1536" x1="288" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="320" y="1760" type="branch" />
            <wire x2="320" y1="1760" y2="1760" x1="256" />
            <wire x2="464" y1="1760" y2="1760" x1="320" />
        </branch>
        <instance x="464" y="1792" name="XLXI_25" orien="R0" />
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:36;fontname:Arial" attrname="Name" x="288" y="1664" type="branch" />
            <wire x2="288" y1="1664" y2="1664" x1="256" />
            <wire x2="464" y1="1664" y2="1664" x1="288" />
        </branch>
        <branch name="g10get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="976" y="1536" type="branch" />
            <wire x2="976" y1="1536" y2="1536" x1="848" />
            <wire x2="1008" y1="1536" y2="1536" x1="976" />
        </branch>
        <instance x="2768" y="2496" name="XLXI_146" orien="R0" />
        <branch name="state(10:0)">
            <wire x2="3120" y1="2336" y2="2336" x1="2608" />
        </branch>
        <iomarker fontsize="40" x="3120" y="2336" name="state(10:0)" orien="R0" />
        <instance x="1872" y="1968" name="XLXI_58" orien="R0" />
        <branch name="state(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2208" y="1936" type="branch" />
            <wire x2="2208" y1="1936" y2="1936" x1="2096" />
            <wire x2="2240" y1="1936" y2="1936" x1="2208" />
        </branch>
        <branch name="g101get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1760" y="1936" type="branch" />
            <wire x2="1760" y1="1936" y2="1936" x1="1728" />
            <wire x2="1872" y1="1936" y2="1936" x1="1760" />
        </branch>
        <instance x="1872" y="2080" name="XLXI_59" orien="R0" />
        <branch name="state(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2208" y="2048" type="branch" />
            <wire x2="2208" y1="2048" y2="2048" x1="2096" />
            <wire x2="2240" y1="2048" y2="2048" x1="2208" />
        </branch>
        <branch name="g101">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1744" y="2048" type="branch" />
            <wire x2="1744" y1="2048" y2="2048" x1="1728" />
            <wire x2="1872" y1="2048" y2="2048" x1="1744" />
        </branch>
        <instance x="1872" y="2176" name="XLXI_60" orien="R0" />
        <branch name="state(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2208" y="2144" type="branch" />
            <wire x2="2208" y1="2144" y2="2144" x1="2096" />
            <wire x2="2240" y1="2144" y2="2144" x1="2208" />
        </branch>
        <branch name="g1011get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1744" y="2144" type="branch" />
            <wire x2="1744" y1="2144" y2="2144" x1="1728" />
            <wire x2="1872" y1="2144" y2="2144" x1="1744" />
        </branch>
        <instance x="1872" y="2288" name="XLXI_61" orien="R0" />
        <branch name="state(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2208" y="2256" type="branch" />
            <wire x2="2208" y1="2256" y2="2256" x1="2096" />
            <wire x2="2240" y1="2256" y2="2256" x1="2208" />
        </branch>
        <branch name="g1011">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1760" y="2256" type="branch" />
            <wire x2="1760" y1="2256" y2="2256" x1="1728" />
            <wire x2="1872" y1="2256" y2="2256" x1="1760" />
        </branch>
        <instance x="1872" y="2400" name="XLXI_62" orien="R0" />
        <branch name="state(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2208" y="2368" type="branch" />
            <wire x2="2208" y1="2368" y2="2368" x1="2096" />
            <wire x2="2240" y1="2368" y2="2368" x1="2208" />
        </branch>
        <branch name="opening">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1760" y="2368" type="branch" />
            <wire x2="1760" y1="2368" y2="2368" x1="1728" />
            <wire x2="1872" y1="2368" y2="2368" x1="1760" />
        </branch>
        <instance x="1872" y="2528" name="XLXI_63" orien="R0" />
        <branch name="state(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2208" y="2496" type="branch" />
            <wire x2="2208" y1="2496" y2="2496" x1="2096" />
            <wire x2="2240" y1="2496" y2="2496" x1="2208" />
        </branch>
        <branch name="bad">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1760" y="2496" type="branch" />
            <wire x2="1760" y1="2496" y2="2496" x1="1728" />
            <wire x2="1872" y1="2496" y2="2496" x1="1760" />
        </branch>
        <branch name="state(10:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2400" y="2288" type="branch" />
            <wire x2="2400" y1="1904" y2="2288" x1="2400" />
            <wire x2="2400" y1="2288" y2="2528" x1="2400" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="416" y="2016" type="branch" />
            <wire x2="416" y1="2016" y2="2016" x1="192" />
            <wire x2="704" y1="2016" y2="2016" x1="416" />
        </branch>
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="416" y="2112" type="branch" />
            <wire x2="416" y1="2112" y2="2112" x1="192" />
            <wire x2="704" y1="2112" y2="2112" x1="416" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="416" y="2192" type="branch" />
            <wire x2="416" y1="2192" y2="2192" x1="192" />
            <wire x2="704" y1="2192" y2="2192" x1="416" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="416" y="2272" type="branch" />
            <wire x2="416" y1="2272" y2="2272" x1="192" />
            <wire x2="704" y1="2272" y2="2272" x1="416" />
        </branch>
        <iomarker fontsize="40" x="192" y="2016" name="reset" orien="R180" />
        <iomarker fontsize="40" x="192" y="2112" name="sysclk" orien="R180" />
        <iomarker fontsize="40" x="192" y="2192" name="u" orien="R180" />
        <iomarker fontsize="40" x="192" y="2272" name="z" orien="R180" />
        <instance x="1152" y="1968" name="XLXI_53" orien="R0" />
        <branch name="state(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1472" y="1936" type="branch" />
            <wire x2="1472" y1="1936" y2="1936" x1="1376" />
            <wire x2="1520" y1="1936" y2="1936" x1="1472" />
        </branch>
        <branch name="initial_state">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1024" y="1936" type="branch" />
            <wire x2="1024" y1="1936" y2="1936" x1="1008" />
            <wire x2="1152" y1="1936" y2="1936" x1="1024" />
        </branch>
        <instance x="1152" y="2080" name="XLXI_54" orien="R0" />
        <branch name="state(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1472" y="2048" type="branch" />
            <wire x2="1472" y1="2048" y2="2048" x1="1376" />
            <wire x2="1520" y1="2048" y2="2048" x1="1472" />
        </branch>
        <branch name="g1get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1024" y="2048" type="branch" />
            <wire x2="1024" y1="2048" y2="2048" x1="1008" />
            <wire x2="1152" y1="2048" y2="2048" x1="1024" />
        </branch>
        <instance x="1152" y="2176" name="XLXI_55" orien="R0" />
        <branch name="state(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1472" y="2144" type="branch" />
            <wire x2="1472" y1="2144" y2="2144" x1="1376" />
            <wire x2="1520" y1="2144" y2="2144" x1="1472" />
        </branch>
        <branch name="g1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1024" y="2144" type="branch" />
            <wire x2="1024" y1="2144" y2="2144" x1="1008" />
            <wire x2="1152" y1="2144" y2="2144" x1="1024" />
        </branch>
        <instance x="1152" y="2288" name="XLXI_56" orien="R0" />
        <branch name="state(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1472" y="2256" type="branch" />
            <wire x2="1472" y1="2256" y2="2256" x1="1376" />
            <wire x2="1520" y1="2256" y2="2256" x1="1472" />
        </branch>
        <branch name="g10get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1040" y="2256" type="branch" />
            <wire x2="1040" y1="2256" y2="2256" x1="1008" />
            <wire x2="1152" y1="2256" y2="2256" x1="1040" />
        </branch>
        <branch name="state(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1472" y="2368" type="branch" />
            <wire x2="1472" y1="2368" y2="2368" x1="1376" />
            <wire x2="1520" y1="2368" y2="2368" x1="1472" />
        </branch>
        <instance x="1152" y="2400" name="XLXI_57" orien="R0" />
        <branch name="g10">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1024" y="2368" type="branch" />
            <wire x2="1024" y1="2368" y2="2368" x1="1008" />
            <wire x2="1152" y1="2368" y2="2368" x1="1024" />
        </branch>
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="1120" x="124" y="112" height="404" />
        <instance x="448" y="528" name="XLXI_166" orien="R0" />
        <instance x="528" y="960" name="XLXI_23" orien="R0" />
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="320" y="176" name="XLXI_64" orien="R0" />
        <branch name="u_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="800" y="144" type="branch" />
            <wire x2="800" y1="144" y2="144" x1="544" />
            <wire x2="880" y1="144" y2="144" x1="800" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="80" y="144" type="branch" />
            <wire x2="80" y1="144" y2="144" x1="48" />
            <wire x2="320" y1="144" y2="144" x1="80" />
        </branch>
        <instance x="320" y="304" name="XLXI_65" orien="R0" />
        <branch name="z_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="800" y="272" type="branch" />
            <wire x2="800" y1="272" y2="272" x1="544" />
            <wire x2="880" y1="272" y2="272" x1="800" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="96" y="272" type="branch" />
            <wire x2="96" y1="272" y2="272" x1="48" />
            <wire x2="320" y1="272" y2="272" x1="96" />
        </branch>
        <instance x="192" y="928" name="XLXI_66" orien="R0" />
        <branch name="timerout">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="768" y="736" type="branch" />
            <wire x2="768" y1="736" y2="736" x1="576" />
            <wire x2="816" y1="736" y2="736" x1="768" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="64" y="896" type="branch" />
            <wire x2="64" y1="896" y2="896" x1="32" />
            <wire x2="192" y1="896" y2="896" x1="64" />
        </branch>
        <branch name="sysclk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="64" y="800" type="branch" />
            <wire x2="64" y1="800" y2="800" x1="32" />
            <wire x2="192" y1="800" y2="800" x1="64" />
        </branch>
        <branch name="opening">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="80" y="736" type="branch" />
            <wire x2="80" y1="736" y2="736" x1="32" />
            <wire x2="192" y1="736" y2="736" x1="80" />
        </branch>
        <instance x="816" y="768" name="XLXI_67" orien="R0" />
        <branch name="timerout_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1088" y="736" type="branch" />
            <wire x2="1088" y1="736" y2="736" x1="1040" />
            <wire x2="1152" y1="736" y2="736" x1="1088" />
        </branch>
        <instance x="2224" y="256" name="XLXI_100" orien="R0" />
        <instance x="2640" y="368" name="XLXI_102" orien="R0" />
        <branch name="XLXN_275">
            <wire x2="2560" y1="160" y2="160" x1="2480" />
            <wire x2="2560" y1="160" y2="240" x1="2560" />
            <wire x2="2640" y1="240" y2="240" x1="2560" />
        </branch>
        <branch name="XLXN_276">
            <wire x2="2624" y1="384" y2="384" x1="2448" />
            <wire x2="2640" y1="304" y2="304" x1="2624" />
            <wire x2="2624" y1="304" y2="384" x1="2624" />
        </branch>
        <branch name="g1get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3056" y="272" type="branch" />
            <wire x2="3056" y1="272" y2="272" x1="2896" />
            <wire x2="3104" y1="272" y2="272" x1="3056" />
        </branch>
        <branch name="g1get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2080" y="128" type="branch" />
            <wire x2="2080" y1="128" y2="128" x1="2032" />
            <wire x2="2224" y1="128" y2="128" x1="2080" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2064" y="192" type="branch" />
            <wire x2="2064" y1="192" y2="192" x1="2032" />
            <wire x2="2224" y1="192" y2="192" x1="2064" />
        </branch>
        <instance x="2192" y="512" name="XLXI_101" orien="R0" />
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2064" y="320" type="branch" />
            <wire x2="2064" y1="320" y2="320" x1="2032" />
            <wire x2="2192" y1="320" y2="320" x1="2064" />
        </branch>
        <branch name="initial_state">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2064" y="384" type="branch" />
            <wire x2="2064" y1="384" y2="384" x1="2032" />
            <wire x2="2192" y1="384" y2="384" x1="2064" />
        </branch>
        <branch name="z_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2064" y="448" type="branch" />
            <wire x2="2064" y1="448" y2="448" x1="2032" />
            <wire x2="2192" y1="448" y2="448" x1="2064" />
        </branch>
        <instance x="2208" y="688" name="XLXI_103" orien="R0" />
        <instance x="2624" y="800" name="XLXI_104" orien="R0" />
        <branch name="XLXN_289">
            <wire x2="2544" y1="592" y2="592" x1="2464" />
            <wire x2="2544" y1="592" y2="672" x1="2544" />
            <wire x2="2624" y1="672" y2="672" x1="2544" />
        </branch>
        <branch name="XLXN_291">
            <wire x2="2608" y1="816" y2="816" x1="2432" />
            <wire x2="2624" y1="736" y2="736" x1="2608" />
            <wire x2="2608" y1="736" y2="816" x1="2608" />
        </branch>
        <branch name="g1_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3040" y="704" type="branch" />
            <wire x2="3040" y1="704" y2="704" x1="2880" />
            <wire x2="3088" y1="704" y2="704" x1="3040" />
        </branch>
        <branch name="g1get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="560" type="branch" />
            <wire x2="2048" y1="560" y2="560" x1="2016" />
            <wire x2="2208" y1="560" y2="560" x1="2048" />
        </branch>
        <branch name="u_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="624" type="branch" />
            <wire x2="2048" y1="624" y2="624" x1="2016" />
            <wire x2="2208" y1="624" y2="624" x1="2048" />
        </branch>
        <instance x="2176" y="944" name="XLXI_105" orien="R0" />
        <branch name="g1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="752" type="branch" />
            <wire x2="2048" y1="752" y2="752" x1="2016" />
            <wire x2="2176" y1="752" y2="752" x1="2048" />
        </branch>
        <branch name="z_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2032" y="816" type="branch" />
            <wire x2="2032" y1="816" y2="816" x1="2016" />
            <wire x2="2176" y1="816" y2="816" x1="2032" />
        </branch>
        <branch name="u_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2032" y="880" type="branch" />
            <wire x2="2032" y1="880" y2="880" x1="2016" />
            <wire x2="2176" y1="880" y2="880" x1="2032" />
        </branch>
        <branch name="g10get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3040" y="1232" type="branch" />
            <wire x2="3040" y1="1232" y2="1232" x1="2896" />
            <wire x2="3104" y1="1232" y2="1232" x1="3040" />
        </branch>
        <branch name="g10_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3040" y="1760" type="branch" />
            <wire x2="3040" y1="1760" y2="1760" x1="2896" />
            <wire x2="3104" y1="1760" y2="1760" x1="3040" />
        </branch>
        <instance x="2208" y="2256" name="XLXI_133" orien="R0" />
        <instance x="2624" y="2368" name="XLXI_134" orien="R0" />
        <branch name="XLXN_379">
            <wire x2="2544" y1="2160" y2="2160" x1="2464" />
            <wire x2="2544" y1="2160" y2="2240" x1="2544" />
            <wire x2="2624" y1="2240" y2="2240" x1="2544" />
        </branch>
        <branch name="XLXN_381">
            <wire x2="2608" y1="2384" y2="2384" x1="2432" />
            <wire x2="2624" y1="2304" y2="2304" x1="2608" />
            <wire x2="2608" y1="2304" y2="2384" x1="2608" />
        </branch>
        <branch name="g101get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="3056" y="2272" type="branch" />
            <wire x2="3056" y1="2272" y2="2272" x1="2880" />
            <wire x2="3088" y1="2272" y2="2272" x1="3056" />
        </branch>
        <branch name="g101get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="2128" type="branch" />
            <wire x2="2048" y1="2128" y2="2128" x1="2016" />
            <wire x2="2208" y1="2128" y2="2128" x1="2048" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="2192" type="branch" />
            <wire x2="2048" y1="2192" y2="2192" x1="2016" />
            <wire x2="2208" y1="2192" y2="2192" x1="2048" />
        </branch>
        <instance x="2176" y="2512" name="XLXI_135" orien="R0" />
        <branch name="z_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="2320" type="branch" />
            <wire x2="2048" y1="2320" y2="2320" x1="2016" />
            <wire x2="2176" y1="2320" y2="2320" x1="2048" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="2384" type="branch" />
            <wire x2="2048" y1="2384" y2="2384" x1="2016" />
            <wire x2="2176" y1="2384" y2="2384" x1="2048" />
        </branch>
        <branch name="g10">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="2048" y="2448" type="branch" />
            <wire x2="2048" y1="2448" y2="2448" x1="2016" />
            <wire x2="2176" y1="2448" y2="2448" x1="2048" />
        </branch>
        <branch name="initial_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1504" y="1376" type="branch" />
            <wire x2="1504" y1="1376" y2="1376" x1="1360" />
            <wire x2="1600" y1="1376" y2="1376" x1="1504" />
        </branch>
        <branch name="bad_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:32;fontname:Arial" attrname="Name" x="1728" y="2320" type="branch" />
            <wire x2="1728" y1="2320" y2="2320" x1="1568" />
            <wire x2="1776" y1="2320" y2="2320" x1="1728" />
        </branch>
        <instance x="2768" y="2496" name="XLXI_147" orien="R0" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="1732" x="48" y="1852" height="844" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="1732" x="44" y="920" height="896" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="1708" x="1796" y="920" height="1160" />
        <instance x="256" y="1280" name="XLXI_153" orien="R0" />
        <branch name="XLXN_404">
            <wire x2="544" y1="1184" y2="1184" x1="512" />
        </branch>
        <instance x="544" y="1312" name="XLXI_154" orien="R0" />
        <instance x="576" y="1664" name="XLXI_155" orien="R0" />
        <branch name="XLXN_405">
            <wire x2="576" y1="1600" y2="1600" x1="544" />
        </branch>
        <instance x="288" y="1696" name="XLXI_156" orien="R0" />
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="208" y="1152" type="branch" />
            <wire x2="208" y1="1152" y2="1152" x1="192" />
            <wire x2="256" y1="1152" y2="1152" x1="208" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="208" y="1216" type="branch" />
            <wire x2="208" y1="1216" y2="1216" x1="192" />
            <wire x2="256" y1="1216" y2="1216" x1="208" />
        </branch>
        <branch name="initial_state">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="528" y="1328" type="branch" />
            <wire x2="544" y1="1248" y2="1248" x1="528" />
            <wire x2="528" y1="1248" y2="1328" x1="528" />
            <wire x2="528" y1="1328" y2="1376" x1="528" />
            <wire x2="544" y1="1376" y2="1376" x1="528" />
        </branch>
        <branch name="bad">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="464" y="1504" type="branch" />
            <wire x2="464" y1="1456" y2="1504" x1="464" />
            <wire x2="464" y1="1504" y2="1536" x1="464" />
            <wire x2="576" y1="1536" y2="1536" x1="464" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="256" y="1568" type="branch" />
            <wire x2="256" y1="1568" y2="1568" x1="224" />
            <wire x2="288" y1="1568" y2="1568" x1="256" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="240" y="1632" type="branch" />
            <wire x2="240" y1="1632" y2="1632" x1="208" />
            <wire x2="288" y1="1632" y2="1632" x1="240" />
        </branch>
        <branch name="XLXN_422">
            <wire x2="944" y1="1216" y2="1216" x1="800" />
            <wire x2="944" y1="1216" y2="1312" x1="944" />
            <wire x2="1104" y1="1312" y2="1312" x1="944" />
        </branch>
        <instance x="2208" y="1200" name="XLXI_168" orien="R0" />
        <instance x="2208" y="1424" name="XLXI_169" orien="R0" />
        <instance x="2640" y="1328" name="XLXI_170" orien="R0" />
        <branch name="XLXN_424">
            <wire x2="2544" y1="1072" y2="1072" x1="2464" />
            <wire x2="2544" y1="1072" y2="1200" x1="2544" />
            <wire x2="2640" y1="1200" y2="1200" x1="2544" />
        </branch>
        <branch name="XLXN_425">
            <wire x2="2544" y1="1328" y2="1328" x1="2464" />
            <wire x2="2544" y1="1264" y2="1328" x1="2544" />
            <wire x2="2640" y1="1264" y2="1264" x1="2544" />
        </branch>
        <branch name="g1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="1008" type="branch" />
            <wire x2="2176" y1="1008" y2="1008" x1="2144" />
            <wire x2="2208" y1="1008" y2="1008" x1="2176" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="1072" type="branch" />
            <wire x2="2176" y1="1072" y2="1072" x1="2144" />
            <wire x2="2208" y1="1072" y2="1072" x1="2176" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="1136" type="branch" />
            <wire x2="2176" y1="1136" y2="1136" x1="2144" />
            <wire x2="2208" y1="1136" y2="1136" x1="2176" />
        </branch>
        <branch name="g10get">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="1296" type="branch" />
            <wire x2="2176" y1="1296" y2="1296" x1="2144" />
            <wire x2="2208" y1="1296" y2="1296" x1="2176" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="1360" type="branch" />
            <wire x2="2176" y1="1360" y2="1360" x1="2144" />
            <wire x2="2208" y1="1360" y2="1360" x1="2176" />
        </branch>
        <instance x="2224" y="1696" name="XLXI_171" orien="R0" />
        <instance x="2256" y="1984" name="XLXI_172" orien="R0" />
        <branch name="XLXN_431">
            <wire x2="2640" y1="1600" y2="1600" x1="2480" />
            <wire x2="2640" y1="1600" y2="1648" x1="2640" />
            <wire x2="2640" y1="1648" y2="1648" x1="2624" />
            <wire x2="2624" y1="1648" y2="1728" x1="2624" />
            <wire x2="2640" y1="1728" y2="1728" x1="2624" />
        </branch>
        <instance x="2640" y="1856" name="XLXI_173" orien="R0" />
        <branch name="XLXN_432">
            <wire x2="2576" y1="1856" y2="1856" x1="2512" />
            <wire x2="2576" y1="1792" y2="1856" x1="2576" />
            <wire x2="2640" y1="1792" y2="1792" x1="2576" />
        </branch>
        <branch name="g10get">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1568" type="branch" />
            <wire x2="2208" y1="1568" y2="1568" x1="2176" />
            <wire x2="2224" y1="1568" y2="1568" x1="2208" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1632" type="branch" />
            <wire x2="2208" y1="1632" y2="1632" x1="2176" />
            <wire x2="2224" y1="1632" y2="1632" x1="2208" />
        </branch>
        <branch name="g10">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2192" y="1792" type="branch" />
            <wire x2="2192" y1="1792" y2="1792" x1="2144" />
            <wire x2="2256" y1="1792" y2="1792" x1="2192" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2208" y="1856" type="branch" />
            <wire x2="2208" y1="1856" y2="1856" x1="2176" />
            <wire x2="2256" y1="1856" y2="1856" x1="2208" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2192" y="1920" type="branch" />
            <wire x2="2160" y1="1920" y2="1936" x1="2160" />
            <wire x2="2192" y1="1920" y2="1920" x1="2160" />
            <wire x2="2256" y1="1920" y2="1920" x1="2192" />
        </branch>
        <instance x="1312" y="2480" name="XLXI_174" orien="R0" />
        <instance x="896" y="2112" name="XLXI_175" orien="R0" />
        <instance x="896" y="2288" name="XLXI_176" orien="R0" />
        <instance x="896" y="2464" name="XLXI_177" orien="R0" />
        <instance x="864" y="2672" name="XLXI_178" orien="R0" />
        <instance x="384" y="2672" name="XLXI_179" orien="R0" />
        <branch name="XLXN_438">
            <wire x2="1312" y1="2016" y2="2016" x1="1152" />
            <wire x2="1312" y1="2016" y2="2224" x1="1312" />
        </branch>
        <branch name="XLXN_439">
            <wire x2="1232" y1="2192" y2="2192" x1="1152" />
            <wire x2="1232" y1="2192" y2="2288" x1="1232" />
            <wire x2="1312" y1="2288" y2="2288" x1="1232" />
        </branch>
        <branch name="XLXN_440">
            <wire x2="1232" y1="2368" y2="2368" x1="1152" />
            <wire x2="1232" y1="2352" y2="2368" x1="1232" />
            <wire x2="1312" y1="2352" y2="2352" x1="1232" />
        </branch>
        <branch name="XLXN_441">
            <wire x2="1312" y1="2576" y2="2576" x1="1120" />
            <wire x2="1312" y1="2416" y2="2576" x1="1312" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="784" y="1984" type="branch" />
            <wire x2="752" y1="1968" y2="1984" x1="752" />
            <wire x2="784" y1="1984" y2="1984" x1="752" />
            <wire x2="896" y1="1984" y2="1984" x1="784" />
        </branch>
        <branch name="g1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="832" y="2048" type="branch" />
            <wire x2="832" y1="2048" y2="2048" x1="800" />
            <wire x2="896" y1="2048" y2="2048" x1="832" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="816" y="2160" type="branch" />
            <wire x2="816" y1="2160" y2="2160" x1="784" />
            <wire x2="896" y1="2160" y2="2160" x1="816" />
        </branch>
        <branch name="g10">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="800" y="2224" type="branch" />
            <wire x2="800" y1="2224" y2="2224" x1="752" />
            <wire x2="896" y1="2224" y2="2224" x1="800" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="816" y="2336" type="branch" />
            <wire x2="816" y1="2336" y2="2336" x1="784" />
            <wire x2="896" y1="2336" y2="2336" x1="816" />
        </branch>
        <branch name="g101">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="848" y="2400" type="branch" />
            <wire x2="848" y1="2400" y2="2400" x1="784" />
            <wire x2="896" y1="2400" y2="2400" x1="848" />
        </branch>
        <branch name="bad">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="512" y="2384" type="branch" />
            <wire x2="512" y1="2384" y2="2384" x1="464" />
            <wire x2="656" y1="2384" y2="2384" x1="512" />
            <wire x2="656" y1="2384" y2="2544" x1="656" />
            <wire x2="864" y1="2544" y2="2544" x1="656" />
        </branch>
        <branch name="XLXN_449">
            <wire x2="752" y1="2576" y2="2576" x1="640" />
            <wire x2="752" y1="2576" y2="2608" x1="752" />
            <wire x2="864" y1="2608" y2="2608" x1="752" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="320" y="2544" type="branch" />
            <wire x2="320" y1="2544" y2="2544" x1="288" />
            <wire x2="384" y1="2544" y2="2544" x1="320" />
        </branch>
        <branch name="z">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="320" y="2608" type="branch" />
            <wire x2="320" y1="2608" y2="2608" x1="288" />
            <wire x2="384" y1="2608" y2="2608" x1="320" />
        </branch>
        <instance x="1104" y="1504" name="XLXI_182" orien="R0" />
        <branch name="XLXN_423">
            <wire x2="960" y1="1568" y2="1568" x1="832" />
            <wire x2="960" y1="1376" y2="1408" x1="960" />
            <wire x2="960" y1="1408" y2="1568" x1="960" />
            <wire x2="1104" y1="1376" y2="1376" x1="960" />
        </branch>
        <instance x="1088" y="1776" name="XLXI_183" orien="R0" />
        <branch name="opening">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="1648" type="branch" />
            <wire x2="1024" y1="1648" y2="1648" x1="1008" />
            <wire x2="1088" y1="1648" y2="1648" x1="1024" />
        </branch>
        <branch name="timerout">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1008" y="1712" type="branch" />
            <wire x2="1008" y1="1712" y2="1712" x1="992" />
            <wire x2="1088" y1="1712" y2="1712" x1="1008" />
        </branch>
        <branch name="XLXN_458">
            <wire x2="1104" y1="1440" y2="1520" x1="1104" />
            <wire x2="1408" y1="1520" y2="1520" x1="1104" />
            <wire x2="1408" y1="1520" y2="1680" x1="1408" />
            <wire x2="1408" y1="1680" y2="1680" x1="1344" />
        </branch>
    </sheet>
    <sheet sheetnum="3" width="3520" height="2720">
        <instance x="432" y="272" name="XLXI_136" orien="R0" />
        <instance x="848" y="384" name="XLXI_137" orien="R0" />
        <branch name="XLXN_388">
            <wire x2="768" y1="176" y2="176" x1="688" />
            <wire x2="768" y1="176" y2="256" x1="768" />
            <wire x2="848" y1="256" y2="256" x1="768" />
        </branch>
        <branch name="XLXN_390">
            <wire x2="832" y1="400" y2="400" x1="656" />
            <wire x2="848" y1="320" y2="320" x1="832" />
            <wire x2="832" y1="320" y2="400" x1="832" />
        </branch>
        <branch name="g101_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="1280" y="288" type="branch" />
            <wire x2="1280" y1="288" y2="288" x1="1104" />
            <wire x2="1312" y1="288" y2="288" x1="1280" />
        </branch>
        <branch name="u_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="304" y="144" type="branch" />
            <wire x2="304" y1="144" y2="144" x1="240" />
            <wire x2="432" y1="144" y2="144" x1="304" />
        </branch>
        <branch name="g101get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="320" y="208" type="branch" />
            <wire x2="320" y1="208" y2="208" x1="240" />
            <wire x2="432" y1="208" y2="208" x1="320" />
        </branch>
        <instance x="400" y="528" name="XLXI_138" orien="R0" />
        <branch name="u_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="272" y="336" type="branch" />
            <wire x2="272" y1="336" y2="336" x1="240" />
            <wire x2="400" y1="336" y2="336" x1="272" />
        </branch>
        <branch name="z_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="288" y="400" type="branch" />
            <wire x2="288" y1="400" y2="400" x1="240" />
            <wire x2="400" y1="400" y2="400" x1="288" />
        </branch>
        <branch name="g101">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="272" y="464" type="branch" />
            <wire x2="272" y1="464" y2="464" x1="240" />
            <wire x2="400" y1="464" y2="464" x1="272" />
        </branch>
        <instance x="432" y="816" name="XLXI_139" orien="R0" />
        <instance x="848" y="928" name="XLXI_140" orien="R0" />
        <branch name="XLXN_397">
            <wire x2="768" y1="720" y2="720" x1="688" />
            <wire x2="768" y1="720" y2="800" x1="768" />
            <wire x2="848" y1="800" y2="800" x1="768" />
        </branch>
        <branch name="XLXN_399">
            <wire x2="832" y1="944" y2="944" x1="656" />
            <wire x2="848" y1="864" y2="864" x1="832" />
            <wire x2="832" y1="864" y2="944" x1="832" />
        </branch>
        <branch name="g1011get_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="1264" y="832" type="branch" />
            <wire x2="1264" y1="832" y2="832" x1="1104" />
            <wire x2="1312" y1="832" y2="832" x1="1264" />
        </branch>
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="288" y="688" type="branch" />
            <wire x2="288" y1="688" y2="688" x1="240" />
            <wire x2="432" y1="688" y2="688" x1="288" />
        </branch>
        <branch name="g1011get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="272" y="752" type="branch" />
            <wire x2="272" y1="752" y2="752" x1="240" />
            <wire x2="432" y1="752" y2="752" x1="272" />
        </branch>
        <instance x="400" y="1072" name="XLXI_141" orien="R0" />
        <branch name="u">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="272" y="880" type="branch" />
            <wire x2="272" y1="880" y2="880" x1="240" />
            <wire x2="400" y1="880" y2="880" x1="272" />
        </branch>
        <branch name="z_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="272" y="944" type="branch" />
            <wire x2="272" y1="944" y2="944" x1="240" />
            <wire x2="400" y1="944" y2="944" x1="272" />
        </branch>
        <branch name="g101">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="272" y="1008" type="branch" />
            <wire x2="272" y1="1008" y2="1008" x1="240" />
            <wire x2="400" y1="1008" y2="1008" x1="272" />
        </branch>
        <branch name="opening_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="1248" y="1376" type="branch" />
            <wire x2="1248" y1="1376" y2="1376" x1="1104" />
            <wire x2="1312" y1="1376" y2="1376" x1="1248" />
        </branch>
        <instance x="432" y="1952" name="XLXI_145" orien="R0" />
        <branch name="g1011_d">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="848" y="1856" type="branch" />
            <wire x2="848" y1="1856" y2="1856" x1="688" />
            <wire x2="928" y1="1856" y2="1856" x1="848" />
        </branch>
        <branch name="g1011get">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="192" y="1824" type="branch" />
            <wire x2="192" y1="1824" y2="1824" x1="160" />
            <wire x2="432" y1="1824" y2="1824" x1="192" />
        </branch>
        <branch name="u_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:40;fontname:Arial" attrname="Name" x="208" y="1888" type="branch" />
            <wire x2="208" y1="1888" y2="1888" x1="160" />
            <wire x2="432" y1="1888" y2="1888" x1="208" />
        </branch>
        <instance x="2768" y="2496" name="XLXI_148" orien="R0" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="1732" x="28" y="1064" height="680" />
        <instance x="848" y="1472" name="XLXI_180" orien="R0" />
        <branch name="XLXN_452">
            <wire x2="848" y1="1408" y2="1408" x1="816" />
        </branch>
        <branch name="g1011">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="672" y="1280" type="branch" />
            <wire x2="672" y1="1248" y2="1280" x1="672" />
            <wire x2="672" y1="1280" y2="1344" x1="672" />
            <wire x2="848" y1="1344" y2="1344" x1="672" />
        </branch>
        <instance x="560" y="1504" name="XLXI_184" orien="R0" />
        <branch name="opening">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="480" y="1376" type="branch" />
            <wire x2="560" y1="1376" y2="1376" x1="480" />
        </branch>
        <branch name="timerout_n">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="432" y="1440" type="branch" />
            <wire x2="432" y1="1440" y2="1440" x1="416" />
            <wire x2="560" y1="1440" y2="1440" x1="432" />
        </branch>
    </sheet>
</drawing>