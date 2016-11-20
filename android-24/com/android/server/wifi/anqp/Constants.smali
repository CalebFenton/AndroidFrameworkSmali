.class public Lcom/android/server/wifi/anqp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    }
.end annotation


# static fields
.field public static final ANQP_3GPP_NETWORK:I = 0x108

.field public static final ANQP_CAPABILITY_LIST:I = 0x101

.field public static final ANQP_CIVIC_LOC:I = 0x10a

.field public static final ANQP_DOM_NAME:I = 0x10c

.field public static final ANQP_EMERGENCY_ALERT:I = 0x10d

.field public static final ANQP_EMERGENCY_NAI:I = 0x10f

.field public static final ANQP_EMERGENCY_NUMBER:I = 0x103

.field public static final ANQP_GEO_LOC:I = 0x109

.field public static final ANQP_IP_ADDR_AVAILABILITY:I = 0x106

.field public static final ANQP_LOC_URI:I = 0x10b

.field public static final ANQP_NAI_REALM:I = 0x107

.field public static final ANQP_NEIGHBOR_REPORT:I = 0x110

.field public static final ANQP_NWK_AUTH_TYPE:I = 0x104

.field public static final ANQP_QUERY_LIST:I = 0x100

.field public static final ANQP_ROAMING_CONSORTIUM:I = 0x105

.field public static final ANQP_TDLS_CAP:I = 0x10e

.field public static final ANQP_VENDOR_SPEC:I = 0xdddd

.field public static final ANQP_VENUE_NAME:I = 0x102

.field public static final BYTES_IN_EUI48:I = 0x6

.field public static final BYTES_IN_INT:I = 0x4

.field public static final BYTES_IN_SHORT:I = 0x2

.field public static final BYTE_MASK:I = 0xff

.field public static final HS20_FRAME_PREFIX:I = 0x109a6f50

.field public static final HS20_PREFIX:I = 0x119a6f50

.field public static final HS_CAPABILITY_LIST:I = 0x2

.field public static final HS_CONN_CAPABILITY:I = 0x5

.field public static final HS_FRIENDLY_NAME:I = 0x3

.field public static final HS_ICON_FILE:I = 0xb

.field public static final HS_ICON_REQUEST:I = 0xa

.field public static final HS_NAI_HOME_REALM_QUERY:I = 0x6

.field public static final HS_OPERATING_CLASS:I = 0x7

.field public static final HS_OSU_PROVIDERS:I = 0x8

.field public static final HS_QUERY_LIST:I = 0x1

.field public static final HS_WAN_METRICS:I = 0x4

.field public static final INT_MASK:J = 0xffffffffL

.field public static final LANG_CODE_LENGTH:I = 0x3

.field public static final MILLIS_IN_A_SEC:J = 0x3e8L

.field public static final NIBBLE_MASK:I = 0xf

.field public static final SHORT_MASK:I = 0xffff

.field public static final UTF8_INDICATOR:I = 0x1

.field private static final sAnqpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHs20Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevAnqpmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevHs20map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 94
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@7
    .line 95
    new-instance v2, Ljava/util/HashMap;

    #@9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@e
    .line 97
    new-instance v2, Ljava/util/EnumMap;

    #@10
    const-class v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@12
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@15
    .line 96
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    #@17
    .line 99
    new-instance v2, Ljava/util/EnumMap;

    #@19
    const-class v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1b
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@1e
    .line 98
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    #@20
    .line 102
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@22
    const/16 v3, 0x100

    #@24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 103
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@2f
    const/16 v3, 0x101

    #@31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v3

    #@35
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@37
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 104
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@3c
    const/16 v3, 0x102

    #@3e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v3

    #@42
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@44
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 105
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@49
    const/16 v3, 0x103

    #@4b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v3

    #@4f
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@51
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 106
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@56
    const/16 v3, 0x104

    #@58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v3

    #@5c
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@5e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 107
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@63
    const/16 v3, 0x105

    #@65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v3

    #@69
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 108
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@70
    const/16 v3, 0x106

    #@72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v3

    #@76
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@78
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    .line 109
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@7d
    const/16 v3, 0x107

    #@7f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v3

    #@83
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@85
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 110
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@8a
    const/16 v3, 0x108

    #@8c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v3

    #@90
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@92
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 111
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@97
    const/16 v3, 0x109

    #@99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v3

    #@9d
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@9f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    .line 112
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@a4
    const/16 v3, 0x10a

    #@a6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v3

    #@aa
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ac
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 113
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@b1
    const/16 v3, 0x10b

    #@b3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v3

    #@b7
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b9
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 114
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@be
    const/16 v3, 0x10c

    #@c0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v3

    #@c4
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c6
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 115
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@cb
    const/16 v3, 0x10d

    #@cd
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d0
    move-result-object v3

    #@d1
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@d3
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    .line 116
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@d8
    const/16 v3, 0x10e

    #@da
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd
    move-result-object v3

    #@de
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    .line 117
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@e5
    const/16 v3, 0x10f

    #@e7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea
    move-result-object v3

    #@eb
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ed
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    .line 118
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@f2
    const/16 v3, 0x110

    #@f4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f7
    move-result-object v3

    #@f8
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@fa
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    .line 119
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@ff
    const v3, 0xdddd

    #@102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@105
    move-result-object v3

    #@106
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@108
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    .line 121
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@10d
    const/4 v3, 0x1

    #@10e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@111
    move-result-object v3

    #@112
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@114
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    .line 122
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@119
    const/4 v3, 0x2

    #@11a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11d
    move-result-object v3

    #@11e
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@120
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    .line 123
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@125
    const/4 v3, 0x3

    #@126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@129
    move-result-object v3

    #@12a
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@12c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    .line 124
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@131
    const/4 v3, 0x4

    #@132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@135
    move-result-object v3

    #@136
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@138
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    .line 125
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@13d
    const/4 v3, 0x5

    #@13e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@141
    move-result-object v3

    #@142
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@144
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@147
    .line 126
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@149
    const/4 v3, 0x6

    #@14a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14d
    move-result-object v3

    #@14e
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@150
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@153
    .line 127
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@155
    const/4 v3, 0x7

    #@156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@159
    move-result-object v3

    #@15a
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@15c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    .line 128
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@161
    const/16 v3, 0x8

    #@163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@166
    move-result-object v3

    #@167
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@169
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16c
    .line 129
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@16e
    const/16 v3, 0xa

    #@170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@173
    move-result-object v3

    #@174
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@176
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@179
    .line 130
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@17b
    const/16 v3, 0xb

    #@17d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@180
    move-result-object v3

    #@181
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@183
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    .line 132
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@188
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@18b
    move-result-object v2

    #@18c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18f
    move-result-object v1

    #@190
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@193
    move-result v2

    #@194
    if-eqz v2, :cond_0

    #@196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@199
    move-result-object v0

    #@19a
    check-cast v0, Ljava/util/Map$Entry;

    #@19c
    .line 133
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v4, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    #@19e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a1
    move-result-object v2

    #@1a2
    check-cast v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1a4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a7
    move-result-object v3

    #@1a8
    check-cast v3, Ljava/lang/Integer;

    #@1aa
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    goto :goto_0

    #@1ae
    .line 135
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_0
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@1b0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1b3
    move-result-object v2

    #@1b4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b7
    move-result-object v1

    #@1b8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1bb
    move-result v2

    #@1bc
    if-eqz v2, :cond_1

    #@1be
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c1
    move-result-object v0

    #@1c2
    check-cast v0, Ljava/util/Map$Entry;

    #@1c4
    .line 136
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v4, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    #@1c6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c9
    move-result-object v2

    #@1ca
    check-cast v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1cc
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1cf
    move-result-object v3

    #@1d0
    check-cast v3, Ljava/lang/Integer;

    #@1d2
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d5
    goto :goto_1

    #@1d6
    .line 16
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@0
    .prologue
    .line 149
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    return-object v0
.end method

.method public static getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@0
    .prologue
    .line 153
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    return-object v0
.end method

.method public static getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .locals 13
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "bo"    # Ljava/nio/ByteOrder;
    .param p2, "size"    # I

    #@0
    .prologue
    const/16 v12, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    .line 173
    new-array v2, p2, [B

    #@5
    .line 174
    .local v2, "octets":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@8
    .line 175
    const-wide/16 v4, 0x0

    #@a
    .line 176
    .local v4, "value":J
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@c
    if-ne p1, v6, :cond_0

    #@e
    .line 177
    array-length v3, v2

    #@f
    add-int/lit8 v0, v3, -0x1

    #@11
    .local v0, "n":I
    :goto_0
    if-ltz v0, :cond_1

    #@13
    .line 178
    shl-long v6, v4, v12

    #@15
    aget-byte v3, v2, v0

    #@17
    and-int/lit16 v3, v3, 0xff

    #@19
    int-to-long v8, v3

    #@1a
    or-long v4, v6, v8

    #@1c
    .line 177
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 182
    .end local v0    # "n":I
    :cond_0
    array-length v6, v2

    #@20
    :goto_1
    if-ge v3, v6, :cond_1

    #@22
    aget-byte v1, v2, v3

    #@24
    .line 183
    .local v1, "octet":B
    shl-long v8, v4, v12

    #@26
    and-int/lit16 v7, v1, 0xff

    #@28
    int-to-long v10, v7

    #@29
    or-long v4, v8, v10

    #@2b
    .line 182
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 186
    .end local v1    # "octet":B
    :cond_1
    return-wide v4
.end method

.method public static getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "lengthLength"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 3
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "lengthLength"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "useNull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    if-ge v0, p1, :cond_0

    #@6
    .line 197
    new-instance v0, Ljava/net/ProtocolException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Runt string: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 199
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@26
    invoke-static {p0, v0, p1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@29
    move-result-wide v0

    #@2a
    long-to-int v0, v0

    #@2b
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "useNull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v1

    #@4
    if-le p1, v1, :cond_0

    #@6
    .line 224
    new-instance v1, Ljava/net/ProtocolException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Bad string length: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 226
    :cond_0
    if-eqz p3, :cond_1

    #@22
    if-nez p1, :cond_1

    #@24
    .line 227
    const/4 v1, 0x0

    #@25
    return-object v1

    #@26
    .line 229
    :cond_1
    new-array v0, p1, [B

    #@28
    .line 230
    .local v0, "octets":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@2b
    .line 231
    new-instance v1, Ljava/lang/String;

    #@2d
    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@30
    return-object v1
.end method

.method public static getTrimmedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 205
    invoke-static {p0, p1, p2, v3}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 206
    .local v0, "s":Ljava/lang/String;
    add-int/lit8 v1, p1, -0x1

    #@7
    .line 207
    .local v1, "zero":I
    :goto_0
    if-ltz v1, :cond_0

    #@9
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 213
    :cond_0
    add-int/lit8 v2, p1, -0x1

    #@11
    if-ge v1, v2, :cond_1

    #@13
    add-int/lit8 v2, v1, 0x1

    #@15
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object v0

    #@1a
    .line 211
    .restart local v0    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0
.end method

.method public static hasBaseANQPElements(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v3, 0x0

    #@1
    .line 157
    if-nez p0, :cond_0

    #@3
    .line 158
    return v3

    #@4
    .line 160
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "element$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@14
    .line 161
    .local v0, "element":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    #@16
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 162
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 165
    .end local v0    # "element":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_2
    return v3
.end method

.method public static hasR2Elements(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    .line 141
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c
    return-object v0
.end method

.method public static mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    .line 145
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c
    return-object v0
.end method
