.class public Lcom/android/server/wifi/hotspot2/OMADMAdapter;
.super Ljava/lang/Object;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;,
        Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    }
.end annotation


# static fields
.field private static final DevDetail:Ljava/lang/String; = "<MgmtTree><VerDTD>1.2</VerDTD><Node><NodeName>DevDetail</NodeName><RTProperties><Type><DDFName>urn:oma:mo:oma-dm-devdetail:1.0</DDFName></Type></RTProperties><Node><NodeName>Ext</NodeName><Node><NodeName>org.wi-fi</NodeName><RTProperties><Type><DDFName>urn:wfa:mo-ext:hotspot2dot0-devdetail-ext :1.0</DDFName></Type></RTProperties><Node><NodeName>Wi-Fi</NodeName><Node><NodeName>EAPMethodList</NodeName><Node><NodeName>Method01</NodeName><!-- EAP-TTLS/MS-CHAPv2 --><Node><NodeName>EAPType</NodeName><Value>21</Value></Node><Node><NodeName>InnerMethod</NodeName><Value>MS-CHAP-V2</Value></Node></Node><Node><NodeName>Method02</NodeName><!-- EAP-TLS --><Node><NodeName>EAPType</NodeName><Value>13</Value></Node></Node><Node><NodeName>Method03</NodeName><!-- EAP-SIM --><Node><NodeName>EAPType</NodeName><Value>18</Value></Node></Node><Node><NodeName>Method04</NodeName><!-- EAP-AKA --><Node><NodeName>EAPType</NodeName><Value>23</Value></Node></Node><Node><NodeName>Method05</NodeName><!-- EAP-AKA\' --><Node><NodeName>EAPType</NodeName><Value>50</Value></Node></Node><Node><NodeName>Method06</NodeName><!-- Supported method (EAP-TTLS/PAP) not mandated by Hotspot2.0--><Node><NodeName>EAPType</NodeName><Value>21</Value></Node><Node><NodeName>InnerMethod</NodeName><Value>PAP</Value></Node></Node><Node><NodeName>Method07</NodeName><!-- Supported method (PEAP/EAP-GTC) not mandated by Hotspot 2.0--><Node><NodeName>EAPType</NodeName><Value>25</Value></Node><Node><NodeName>InnerEAPType</NodeName><Value>6</Value></Node></Node></Node><Node><NodeName>SPCertificate</NodeName><Node><NodeName>Cert01</NodeName><Node><NodeName>CertificateIssuerName</NodeName><Value>CN=RuckusCA</Value></Node></Node></Node><Node><NodeName>ManufacturingCertificate</NodeName><Value>FALSE</Value></Node><Node><NodeName>Wi-FiMACAddress</NodeName><Value>001d2e112233</Value></Node><Node><NodeName>ClientTriggerRedirectURI</NodeName><Value>http://127.0.0.1:12345/index.htm</Value></Node><Node><NodeName>Ops</NodeName><Node><NodeName>launchBrowserToURI</NodeName><Value></Value></Node><Node><NodeName>negotiateClientCertTLS</NodeName><Value></Value></Node><Node><NodeName>getCertificate</NodeName><Value></Value></Node></Node></Node><!-- End of Wi-Fi node --></Node><!-- End of org.wi-fi node --></Node><!-- End of Ext node --><Node><NodeName>URI</NodeName><Node><NodeName>MaxDepth</NodeName><Value>32</Value></Node><Node><NodeName>MaxTotLen</NodeName><Value>2048</Value></Node><Node><NodeName>MaxSegLen</NodeName><Value>64</Value></Node></Node><Node><NodeName>DevType</NodeName><Value>Smartphone</Value></Node><Node><NodeName>OEM</NodeName><Value>ACME</Value></Node><Node><NodeName>FwV</NodeName><Value>1.2.100.5</Value></Node><Node><NodeName>SwV</NodeName><Value>9.11.130</Value></Node><Node><NodeName>HwV</NodeName><Value>1.0</Value></Node><Node><NodeName>LrgObj</NodeName><Value>TRUE</Value></Node></Node></MgmtTree>"

.field private static final DevInfo:Ljava/lang/String; = "<MgmtTree><VerDTD>1.2</VerDTD><Node><NodeName>DevInfo</NodeName><RTProperties><Type><DDFName>urn:oma:mo:oma-dm-devinfo:1.0</DDFName></Type></RTProperties></Node><Node><NodeName>DevID</NodeName><Path>DevInfo</Path><Value>urn:acme:00-11-22-33-44-55</Value></Node><Node><NodeName>Man</NodeName><Path>DevInfo</Path><Value>ACME</Value></Node><Node><NodeName>Mod</NodeName><Path>DevInfo</Path><Value>HS2.0-01</Value></Node><Node><NodeName>DmV</NodeName><Path>DevInfo</Path><Value>1.2</Value></Node><Node><NodeName>Lang</NodeName><Path>DevInfo</Path><Value>en-US</Value></Node></MgmtTree>"

.field private static final ExtWiFiPath:[Ljava/lang/String;

.field private static final IMEI_Length:I = 0xe

.field private static final RTProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mDevID:Ljava/lang/String;

.field private final mDevInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mImei:Ljava/lang/String;

.field private final mImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 39
    const/4 v0, 0x4

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    const-string/jumbo v1, "DevDetail"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "Ext"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "org.wi-fi"

    #@13
    aput-object v1, v0, v3

    #@15
    const-string/jumbo v1, "Wi-Fi"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    sput-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@1d
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@1f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@22
    sput-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->RTProps:Ljava/util/Map;

    #@24
    .line 49
    sget-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->RTProps:Ljava/util/Map;

    #@26
    sget-object v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@28
    aget-object v1, v1, v3

    #@2a
    const-string/jumbo v2, "urn:wfa:mo-ext:hotspot2dot0-devdetail-ext:1.0"

    #@2d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    const/4 v12, 0x3

    #@2
    const/4 v11, 0x2

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v9, 0x0

    #@5
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 125
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mContext:Landroid/content/Context;

    #@a
    .line 128
    const-string/jumbo v4, "phone"

    #@d
    .line 127
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/telephony/TelephonyManager;

    #@13
    .line 129
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 130
    .local v1, "simOperator":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    #@1d
    .line 131
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    #@23
    .line 135
    const-string/jumbo v4, "310120"

    #@26
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    #@2e
    if-eqz v4, :cond_3

    #@30
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    #@32
    const-string/jumbo v5, "310120"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_3

    #@3b
    .line 138
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 139
    .local v2, "strDevId":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4a
    move-result v4

    #@4b
    const/16 v5, 0xe

    #@4d
    if-lt v4, v5, :cond_2

    #@4f
    .line 140
    const/16 v4, 0xe

    #@51
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 160
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevID:Ljava/lang/String;

    #@57
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    #@59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5c
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@5e
    .line 163
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@60
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@62
    new-array v6, v11, [Ljava/lang/Object;

    #@64
    const-string/jumbo v7, "DevInfo"

    #@67
    aput-object v7, v6, v9

    #@69
    const-string/jumbo v7, "DevID"

    #@6c
    aput-object v7, v6, v10

    #@6e
    invoke-direct {v5, v2, v6}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@74
    .line 164
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@76
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@78
    const-string/jumbo v6, "Man"

    #@7b
    const-string/jumbo v7, "ro.product.manufacturer"

    #@7e
    const-string/jumbo v8, "unknown"

    #@81
    invoke-static {p1, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    new-array v7, v11, [Ljava/lang/Object;

    #@87
    const-string/jumbo v8, "DevInfo"

    #@8a
    aput-object v8, v7, v9

    #@8c
    const-string/jumbo v8, "Man"

    #@8f
    aput-object v8, v7, v10

    #@91
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@94
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@97
    .line 165
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@99
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@9b
    const-string/jumbo v6, "Mod"

    #@9e
    const-string/jumbo v7, "ro.product.model"

    #@a1
    const-string/jumbo v8, "generic"

    #@a4
    invoke-static {p1, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    new-array v7, v11, [Ljava/lang/Object;

    #@aa
    const-string/jumbo v8, "DevInfo"

    #@ad
    aput-object v8, v7, v9

    #@af
    const-string/jumbo v8, "Mod"

    #@b2
    aput-object v8, v7, v10

    #@b4
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@b7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ba
    .line 166
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@bc
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@be
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    new-array v7, v11, [Ljava/lang/Object;

    #@c4
    const-string/jumbo v8, "DevInfo"

    #@c7
    aput-object v8, v7, v9

    #@c9
    const-string/jumbo v8, "Lang"

    #@cc
    aput-object v8, v7, v10

    #@ce
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@d1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d4
    .line 167
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@d6
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@d8
    const-string/jumbo v6, "1.2"

    #@db
    new-array v7, v11, [Ljava/lang/Object;

    #@dd
    const-string/jumbo v8, "DevInfo"

    #@e0
    aput-object v8, v7, v9

    #@e2
    const-string/jumbo v8, "DmV"

    #@e5
    aput-object v8, v7, v10

    #@e7
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@ea
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ed
    .line 169
    new-instance v4, Ljava/util/ArrayList;

    #@ef
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@f2
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@f4
    .line 170
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@f6
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@f8
    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getDeviceType()Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    new-array v7, v11, [Ljava/lang/Object;

    #@fe
    const-string/jumbo v8, "DevDetail"

    #@101
    aput-object v8, v7, v9

    #@103
    const-string/jumbo v8, "DevType"

    #@106
    aput-object v8, v7, v10

    #@108
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@10b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10e
    .line 171
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@110
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@112
    const-string/jumbo v6, "ro.product.brand"

    #@115
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@118
    move-result-object v6

    #@119
    new-array v7, v11, [Ljava/lang/Object;

    #@11b
    const-string/jumbo v8, "DevDetail"

    #@11e
    aput-object v8, v7, v9

    #@120
    const-string/jumbo v8, "OEM"

    #@123
    aput-object v8, v7, v10

    #@125
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@128
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12b
    .line 172
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@12d
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@12f
    invoke-static {p1, v9}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getVersion(Landroid/content/Context;Z)Ljava/lang/String;

    #@132
    move-result-object v6

    #@133
    new-array v7, v11, [Ljava/lang/Object;

    #@135
    const-string/jumbo v8, "DevDetail"

    #@138
    aput-object v8, v7, v9

    #@13a
    const-string/jumbo v8, "FwV"

    #@13d
    aput-object v8, v7, v10

    #@13f
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@142
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@145
    .line 173
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@147
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@149
    invoke-static {p1, v10}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getVersion(Landroid/content/Context;Z)Ljava/lang/String;

    #@14c
    move-result-object v6

    #@14d
    new-array v7, v11, [Ljava/lang/Object;

    #@14f
    const-string/jumbo v8, "DevDetail"

    #@152
    aput-object v8, v7, v9

    #@154
    const-string/jumbo v8, "SwV"

    #@157
    aput-object v8, v7, v10

    #@159
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@15c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15f
    .line 174
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@161
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@163
    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getHwV()Ljava/lang/String;

    #@166
    move-result-object v6

    #@167
    new-array v7, v11, [Ljava/lang/Object;

    #@169
    const-string/jumbo v8, "DevDetail"

    #@16c
    aput-object v8, v7, v9

    #@16e
    const-string/jumbo v8, "HwV"

    #@171
    aput-object v8, v7, v10

    #@173
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@176
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@179
    .line 175
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@17b
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@17d
    const-string/jumbo v6, "TRUE"

    #@180
    new-array v7, v11, [Ljava/lang/Object;

    #@182
    const-string/jumbo v8, "DevDetail"

    #@185
    aput-object v8, v7, v9

    #@187
    const-string/jumbo v8, "LrgObj"

    #@18a
    aput-object v8, v7, v10

    #@18c
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@18f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@192
    .line 177
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@194
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@196
    const/16 v6, 0x20

    #@198
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19b
    move-result-object v6

    #@19c
    new-array v7, v12, [Ljava/lang/Object;

    #@19e
    const-string/jumbo v8, "DevDetail"

    #@1a1
    aput-object v8, v7, v9

    #@1a3
    const-string/jumbo v8, "URI"

    #@1a6
    aput-object v8, v7, v10

    #@1a8
    const-string/jumbo v8, "MaxDepth"

    #@1ab
    aput-object v8, v7, v11

    #@1ad
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@1b0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b3
    .line 178
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@1b5
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@1b7
    const/16 v6, 0x800

    #@1b9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bc
    move-result-object v6

    #@1bd
    new-array v7, v12, [Ljava/lang/Object;

    #@1bf
    const-string/jumbo v8, "DevDetail"

    #@1c2
    aput-object v8, v7, v9

    #@1c4
    const-string/jumbo v8, "URI"

    #@1c7
    aput-object v8, v7, v10

    #@1c9
    const-string/jumbo v8, "MaxTotLen"

    #@1cc
    aput-object v8, v7, v11

    #@1ce
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@1d1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d4
    .line 179
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@1d6
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@1d8
    const/16 v6, 0x40

    #@1da
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1dd
    move-result-object v6

    #@1de
    new-array v7, v12, [Ljava/lang/Object;

    #@1e0
    const-string/jumbo v8, "DevDetail"

    #@1e3
    aput-object v8, v7, v9

    #@1e5
    const-string/jumbo v8, "URI"

    #@1e8
    aput-object v8, v7, v10

    #@1ea
    const-string/jumbo v8, "MaxSegLen"

    #@1ed
    aput-object v8, v7, v11

    #@1ef
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@1f2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f5
    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f7
    invoke-direct {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@1fa
    .line 182
    .local v0, "index":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@1fc
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@1fe
    const/16 v6, 0x15

    #@200
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@203
    move-result-object v6

    #@204
    new-array v7, v13, [Ljava/lang/Object;

    #@206
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@208
    aput-object v8, v7, v9

    #@20a
    const-string/jumbo v8, "EAPMethodList"

    #@20d
    aput-object v8, v7, v10

    #@20f
    aput-object v0, v7, v11

    #@211
    const-string/jumbo v8, "EAPType"

    #@214
    aput-object v8, v7, v12

    #@216
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@219
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21c
    .line 183
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@21e
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@220
    sget-object v6, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@222
    invoke-static {v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mapInnerType(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)Ljava/lang/String;

    #@225
    move-result-object v6

    #@226
    new-array v7, v13, [Ljava/lang/Object;

    #@228
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@22a
    aput-object v8, v7, v9

    #@22c
    const-string/jumbo v8, "EAPMethodList"

    #@22f
    aput-object v8, v7, v10

    #@231
    aput-object v0, v7, v11

    #@233
    const-string/jumbo v8, "InnerMethod"

    #@236
    aput-object v8, v7, v12

    #@238
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@23b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23e
    .line 185
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@241
    .line 186
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@243
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@245
    const/16 v6, 0x15

    #@247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24a
    move-result-object v6

    #@24b
    new-array v7, v13, [Ljava/lang/Object;

    #@24d
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@24f
    aput-object v8, v7, v9

    #@251
    const-string/jumbo v8, "EAPMethodList"

    #@254
    aput-object v8, v7, v10

    #@256
    aput-object v0, v7, v11

    #@258
    const-string/jumbo v8, "EAPType"

    #@25b
    aput-object v8, v7, v12

    #@25d
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@260
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@263
    .line 187
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@265
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@267
    sget-object v6, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@269
    invoke-static {v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mapInnerType(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)Ljava/lang/String;

    #@26c
    move-result-object v6

    #@26d
    new-array v7, v13, [Ljava/lang/Object;

    #@26f
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@271
    aput-object v8, v7, v9

    #@273
    const-string/jumbo v8, "EAPMethodList"

    #@276
    aput-object v8, v7, v10

    #@278
    aput-object v0, v7, v11

    #@27a
    const-string/jumbo v8, "InnerMethod"

    #@27d
    aput-object v8, v7, v12

    #@27f
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@282
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@285
    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@288
    .line 190
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@28a
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@28c
    const/16 v6, 0x15

    #@28e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@291
    move-result-object v6

    #@292
    new-array v7, v13, [Ljava/lang/Object;

    #@294
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@296
    aput-object v8, v7, v9

    #@298
    const-string/jumbo v8, "EAPMethodList"

    #@29b
    aput-object v8, v7, v10

    #@29d
    aput-object v0, v7, v11

    #@29f
    const-string/jumbo v8, "EAPType"

    #@2a2
    aput-object v8, v7, v12

    #@2a4
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@2a7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2aa
    .line 191
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@2ac
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@2ae
    sget-object v6, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2b0
    invoke-static {v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mapInnerType(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)Ljava/lang/String;

    #@2b3
    move-result-object v6

    #@2b4
    new-array v7, v13, [Ljava/lang/Object;

    #@2b6
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@2b8
    aput-object v8, v7, v9

    #@2ba
    const-string/jumbo v8, "EAPMethodList"

    #@2bd
    aput-object v8, v7, v10

    #@2bf
    aput-object v0, v7, v11

    #@2c1
    const-string/jumbo v8, "InnerMethod"

    #@2c4
    aput-object v8, v7, v12

    #@2c6
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@2c9
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2cc
    .line 193
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@2cf
    .line 194
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@2d1
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@2d3
    const/16 v6, 0xd

    #@2d5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d8
    move-result-object v6

    #@2d9
    new-array v7, v13, [Ljava/lang/Object;

    #@2db
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@2dd
    aput-object v8, v7, v9

    #@2df
    const-string/jumbo v8, "EAPMethodList"

    #@2e2
    aput-object v8, v7, v10

    #@2e4
    aput-object v0, v7, v11

    #@2e6
    const-string/jumbo v8, "EAPType"

    #@2e9
    aput-object v8, v7, v12

    #@2eb
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@2ee
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f1
    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@2f4
    .line 196
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@2f6
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@2f8
    const/16 v6, 0x17

    #@2fa
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2fd
    move-result-object v6

    #@2fe
    new-array v7, v13, [Ljava/lang/Object;

    #@300
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@302
    aput-object v8, v7, v9

    #@304
    const-string/jumbo v8, "EAPMethodList"

    #@307
    aput-object v8, v7, v10

    #@309
    aput-object v0, v7, v11

    #@30b
    const-string/jumbo v8, "EAPType"

    #@30e
    aput-object v8, v7, v12

    #@310
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@313
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@316
    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@319
    .line 198
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@31b
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@31d
    const/16 v6, 0x32

    #@31f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@322
    move-result-object v6

    #@323
    new-array v7, v13, [Ljava/lang/Object;

    #@325
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@327
    aput-object v8, v7, v9

    #@329
    const-string/jumbo v8, "EAPMethodList"

    #@32c
    aput-object v8, v7, v10

    #@32e
    aput-object v0, v7, v11

    #@330
    const-string/jumbo v8, "EAPType"

    #@333
    aput-object v8, v7, v12

    #@335
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@338
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33b
    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@33e
    .line 200
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@340
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@342
    const/16 v6, 0x12

    #@344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@347
    move-result-object v6

    #@348
    new-array v7, v13, [Ljava/lang/Object;

    #@34a
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@34c
    aput-object v8, v7, v9

    #@34e
    const-string/jumbo v8, "EAPMethodList"

    #@351
    aput-object v8, v7, v10

    #@353
    aput-object v0, v7, v11

    #@355
    const-string/jumbo v8, "EAPType"

    #@358
    aput-object v8, v7, v12

    #@35a
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@35d
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@360
    .line 202
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@362
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@364
    const-string/jumbo v6, "FALSE"

    #@367
    new-array v7, v11, [Ljava/lang/Object;

    #@369
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@36b
    aput-object v8, v7, v9

    #@36d
    const-string/jumbo v8, "ManufacturingCertificate"

    #@370
    aput-object v8, v7, v10

    #@372
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@375
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@378
    .line 203
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@37a
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@37c
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    #@37e
    new-array v7, v11, [Ljava/lang/Object;

    #@380
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@382
    aput-object v8, v7, v9

    #@384
    const-string/jumbo v8, "IMSI"

    #@387
    aput-object v8, v7, v10

    #@389
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@38c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38f
    .line 204
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@391
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    #@393
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    #@395
    new-array v7, v11, [Ljava/lang/Object;

    #@397
    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@399
    aput-object v8, v7, v9

    #@39b
    const-string/jumbo v8, "IMEI_MEID"

    #@39e
    aput-object v8, v7, v10

    #@3a0
    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@3a3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a6
    .line 205
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@3a8
    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;

    #@3aa
    new-array v6, v11, [Ljava/lang/Object;

    #@3ac
    sget-object v7, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    #@3ae
    aput-object v7, v6, v9

    #@3b0
    const-string/jumbo v7, "Wi-FiMACAddress"

    #@3b3
    aput-object v7, v6, v10

    #@3b5
    invoke-direct {v5, p0, v6}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;-><init>(Lcom/android/server/wifi/hotspot2/OMADMAdapter;[Ljava/lang/Object;)V

    #@3b8
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3bb
    .line 124
    return-void

    #@3bc
    .line 142
    .end local v0    # "index":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getClass()Ljava/lang/Class;

    #@3bf
    move-result-object v4

    #@3c0
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@3c3
    move-result-object v4

    #@3c4
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c9
    const-string/jumbo v6, "MEID cannot be extracted from DeviceId "

    #@3cc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v5

    #@3d0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d3
    move-result-object v5

    #@3d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d7
    move-result-object v5

    #@3d8
    .line 142
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3db
    goto/16 :goto_0

    #@3dd
    .line 146
    .end local v2    # "strDevId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->isPhoneTypeLTE()Z

    #@3e0
    move-result v4

    #@3e1
    if-eqz v4, :cond_5

    #@3e3
    .line 147
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    #@3e5
    .line 151
    .restart local v2    # "strDevId":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_4

    #@3e7
    .line 152
    const-string/jumbo v2, "unknown"

    #@3ea
    .line 154
    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3ec
    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3ef
    move-result-object v2

    #@3f0
    .line 156
    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->isPhoneTypeLTE()Z

    #@3f3
    move-result v4

    #@3f4
    if-nez v4, :cond_1

    #@3f6
    .line 157
    const/16 v4, 0xe

    #@3f8
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3fb
    move-result-object v2

    #@3fc
    goto/16 :goto_0

    #@3fe
    .line 149
    .end local v2    # "strDevId":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    #@401
    move-result-object v2

    #@402
    .restart local v2    # "strDevId":Ljava/lang/String;
    goto :goto_1
.end method

.method private static buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 5
    .param p0, "pathAccessor"    # Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    .param p1, "depth"    # I
    .param p2, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 215
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->-wrap0(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;)[Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 216
    .local v2, "path":[Ljava/lang/String;
    aget-object v0, v2, p1

    #@7
    .line 217
    .local v0, "name":Ljava/lang/String;
    array-length v3, v2

    #@8
    add-int/lit8 v3, v3, -0x1

    #@a
    if-ge p1, v3, :cond_2

    #@c
    .line 218
    invoke-virtual {p2, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@12
    .line 219
    .local v1, "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v1, :cond_0

    #@14
    .line 220
    sget-object v3, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->RTProps:Ljava/util/Map;

    #@16
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/lang/String;

    #@1c
    invoke-virtual {p2, v0, v3, v4, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1f
    move-result-object v1

    #@20
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@22
    .line 223
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_0
    add-int/lit8 v3, p1, 0x1

    #@24
    invoke-static {p0, v3, v1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@27
    .line 214
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    :goto_0
    return-void

    #@28
    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 226
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p2, v0, v4, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@39
    goto :goto_0
.end method

.method private static getDeviceType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 306
    const-string/jumbo v1, "ro.build.characteristics"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 307
    .local v0, "devicetype":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const-string/jumbo v1, "tablet"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 310
    :goto_0
    return-object v0

    #@17
    .line 308
    :cond_0
    const-string/jumbo v0, "phone"

    #@1a
    goto :goto_0
.end method

.method private static getHwV()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 298
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "ro.hardware"

    #@8
    const-string/jumbo v3, "Unknown"

    #@b
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 299
    const-string/jumbo v2, "."

    #@16
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 299
    const-string/jumbo v2, "ro.revision"

    #@1d
    const-string/jumbo v3, "Unknown"

    #@20
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 300
    :catch_0
    move-exception v0

    #@2e
    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Unknown"

    #@31
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wifi/hotspot2/OMADMAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 116
    const-class v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    #@2
    monitor-enter v1

    #@3
    .line 117
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 118
    new-instance v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    #@9
    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    #@e
    .line 120
    :cond_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 116
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 347
    const-string/jumbo v1, "Lang"

    #@3
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->readValueFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 348
    .local v0, "strLang":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 351
    :cond_0
    return-object v0
.end method

.method private static getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "dflt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 355
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->readValueFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 356
    .local v0, "strMan":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 357
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 359
    :cond_0
    return-object v0
.end method

.method private static getVersion(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "swv"    # Z

    #@0
    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->isSprint(Landroid/content/Context;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Android "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "ro.build.version.release"

    #@17
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 319
    :cond_0
    const-string/jumbo v2, "ro.build.version.full"

    #@27
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 320
    .local v1, "version":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2d
    const-string/jumbo v2, ""

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 321
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "ro.build.id"

    #@3e
    const/4 v4, 0x0

    #@3f
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, "~"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    .line 322
    const-string/jumbo v3, "ro.build.config.version"

    #@51
    const/4 v4, 0x0

    #@52
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 322
    const-string/jumbo v3, "~"

    #@5d
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    .line 323
    const-string/jumbo v3, "gsm.version.baseband"

    #@64
    const/4 v4, 0x0

    #@65
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    .line 323
    const-string/jumbo v3, "~"

    #@70
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    .line 324
    const-string/jumbo v3, "ro.gsm.flexversion"

    #@77
    const/4 v4, 0x0

    #@78
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@83
    move-result-object v2

    #@84
    return-object v2

    #@85
    .line 327
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@86
    .line 328
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "Unknown"

    #@89
    return-object v2

    #@8a
    .line 330
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "version":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private static isPhoneTypeLTE()Z
    .locals 1

    #@0
    .prologue
    .line 293
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private static isSprint(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 335
    const-string/jumbo v3, "phone"

    #@3
    .line 334
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@9
    .line 336
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 337
    .local v1, "simOperator":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 339
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v3, "310120"

    #@14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    const-string/jumbo v3, "310120"

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 340
    :cond_0
    const/4 v3, 0x1

    #@26
    return v3

    #@27
    .line 342
    :cond_1
    const/4 v3, 0x0

    #@28
    return v3
.end method

.method private static readValueFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 363
    const/4 v1, 0x0

    #@2
    .line 365
    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v2, "dmconfig"

    #@5
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@8
    move-result-object v0

    #@9
    .line 366
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 367
    const-string/jumbo v2, ""

    #@12
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 368
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 369
    const/4 v1, 0x0

    #@1d
    .line 372
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getDevID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 231
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v3, "wifi"

    #@6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@c
    .line 232
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    #@e
    .line 233
    const-string/jumbo v1, "%012x"

    #@11
    const/4 v2, 0x1

    #@12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    .line 234
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@1f
    move-result-wide v4

    #@20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23
    move-result-object v3

    #@24
    const/4 v4, 0x0

    #@25
    aput-object v3, v2, v4

    #@27
    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 232
    :cond_0
    return-object v1
.end method

.method public getMO(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 8
    .param p1, "urn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 252
    :try_start_0
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devinfo:1.0"

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 254
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@c
    if-nez v4, :cond_2

    #@e
    .line 255
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@10
    const-string/jumbo v4, "DevInfo"

    #@13
    const/4 v5, 0x0

    #@14
    new-array v5, v5, [Ljava/lang/String;

    #@16
    const/4 v6, 0x0

    #@17
    invoke-direct {v3, v6, v4, p1, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@1a
    .line 256
    .local v3, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    #@1c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v2

    #@20
    .local v2, "pathAccessor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;

    #@2c
    .line 257
    .local v1, "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    const/4 v4, 0x1

    #@2d
    invoke-static {v1, v4, v3}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 277
    .end local v1    # "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    .end local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .end local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v0

    #@32
    .line 278
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v4

    #@36
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "Caught exception building OMA Tree: "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    .line 279
    return-object v7

    #@52
    .line 252
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devdetail:1.0"

    #@55
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_5

    #@5b
    .line 264
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@5d
    if-nez v4, :cond_4

    #@5f
    .line 265
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@61
    const-string/jumbo v4, "DevDetail"

    #@64
    const/4 v5, 0x0

    #@65
    new-array v5, v5, [Ljava/lang/String;

    #@67
    const/4 v6, 0x0

    #@68
    invoke-direct {v3, v6, v4, p1, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@6b
    .line 266
    .restart local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    #@6d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70
    move-result-object v2

    #@71
    .restart local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_3

    #@77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7a
    move-result-object v1

    #@7b
    check-cast v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;

    #@7d
    .line 267
    .restart local v1    # "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    const/4 v4, 0x1

    #@7e
    invoke-static {v1, v4, v3}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@81
    goto :goto_1

    #@82
    .line 259
    .end local v1    # "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    :cond_1
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devinfo:1.0"

    #@85
    .line 260
    const-string/jumbo v5, "1.2"

    #@88
    .line 259
    invoke-static {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@8b
    move-result-object v4

    #@8c
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@8e
    .line 262
    .end local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .end local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@90
    return-object v4

    #@91
    .line 269
    .restart local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .restart local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_3
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devdetail:1.0"

    #@94
    .line 270
    const-string/jumbo v5, "1.2"

    #@97
    .line 269
    invoke-static {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@9a
    move-result-object v4

    #@9b
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@9d
    .line 272
    .end local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .end local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@9f
    return-object v4

    #@a0
    .line 274
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a2
    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getMeid()[B
    .locals 2

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    #@2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0xe

    #@a
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
