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
    .line 88
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@7
    .line 89
    new-instance v2, Ljava/util/HashMap;

    #@9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@e
    .line 90
    new-instance v2, Ljava/util/HashMap;

    #@10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@13
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    #@15
    .line 91
    new-instance v2, Ljava/util/HashMap;

    #@17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1a
    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    #@1c
    .line 94
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@1e
    const/16 v3, 0x100

    #@20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v3

    #@24
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@26
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 95
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@2b
    const/16 v3, 0x101

    #@2d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v3

    #@31
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@33
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 96
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@38
    const/16 v3, 0x102

    #@3a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v3

    #@3e
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@40
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 97
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@45
    const/16 v3, 0x103

    #@47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v3

    #@4b
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4d
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 98
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@52
    const/16 v3, 0x104

    #@54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v3

    #@58
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@5a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 99
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@5f
    const/16 v3, 0x105

    #@61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v3

    #@65
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@67
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 100
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@6c
    const/16 v3, 0x106

    #@6e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v3

    #@72
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@74
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 101
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@79
    const/16 v3, 0x107

    #@7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v3

    #@7f
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@81
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 102
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@86
    const/16 v3, 0x108

    #@88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v3

    #@8c
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@8e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 103
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@93
    const/16 v3, 0x109

    #@95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v3

    #@99
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@9b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 104
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@a0
    const/16 v3, 0x10a

    #@a2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v3

    #@a6
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a8
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 105
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@ad
    const/16 v3, 0x10b

    #@af
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2
    move-result-object v3

    #@b3
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b5
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    .line 106
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@ba
    const/16 v3, 0x10c

    #@bc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf
    move-result-object v3

    #@c0
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c2
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 107
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@c7
    const/16 v3, 0x10d

    #@c9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v3

    #@cd
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@cf
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    .line 108
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@d4
    const/16 v3, 0x10e

    #@d6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d9
    move-result-object v3

    #@da
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@dc
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 109
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@e1
    const/16 v3, 0x10f

    #@e3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e6
    move-result-object v3

    #@e7
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e9
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ec
    .line 110
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@ee
    const/16 v3, 0x110

    #@f0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f3
    move-result-object v3

    #@f4
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f6
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f9
    .line 111
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@fb
    const v3, 0xdddd

    #@fe
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@101
    move-result-object v3

    #@102
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@104
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    .line 113
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@109
    const/4 v3, 0x1

    #@10a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10d
    move-result-object v3

    #@10e
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@110
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@113
    .line 114
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@115
    const/4 v3, 0x2

    #@116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@119
    move-result-object v3

    #@11a
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@11c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 115
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@121
    const/4 v3, 0x3

    #@122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v3

    #@126
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@128
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    .line 116
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@12d
    const/4 v3, 0x4

    #@12e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@131
    move-result-object v3

    #@132
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@134
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 117
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@139
    const/4 v3, 0x5

    #@13a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13d
    move-result-object v3

    #@13e
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@140
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@143
    .line 118
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@145
    const/4 v3, 0x6

    #@146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@149
    move-result-object v3

    #@14a
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@14c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14f
    .line 119
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@151
    const/4 v3, 0x7

    #@152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@155
    move-result-object v3

    #@156
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@158
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15b
    .line 120
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@15d
    const/16 v3, 0x8

    #@15f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@162
    move-result-object v3

    #@163
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@165
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@168
    .line 121
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@16a
    const/16 v3, 0xa

    #@16c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16f
    move-result-object v3

    #@170
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@172
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@175
    .line 122
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@177
    const/16 v3, 0xb

    #@179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17c
    move-result-object v3

    #@17d
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@17f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@182
    .line 124
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    #@184
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@187
    move-result-object v2

    #@188
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18b
    move-result-object v1

    #@18c
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18f
    move-result v2

    #@190
    if-eqz v2, :cond_0

    #@192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@195
    move-result-object v0

    #@196
    check-cast v0, Ljava/util/Map$Entry;

    #@198
    .line 125
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v4, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    #@19a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19d
    move-result-object v2

    #@19e
    check-cast v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1a0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a3
    move-result-object v3

    #@1a4
    check-cast v3, Ljava/lang/Integer;

    #@1a6
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a9
    goto :goto_0

    #@1aa
    .line 127
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_0
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    #@1ac
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1af
    move-result-object v2

    #@1b0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b3
    move-result-object v1

    #@1b4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b7
    move-result v2

    #@1b8
    if-eqz v2, :cond_1

    #@1ba
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1bd
    move-result-object v0

    #@1be
    check-cast v0, Ljava/util/Map$Entry;

    #@1c0
    .line 128
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v4, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    #@1c2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c5
    move-result-object v2

    #@1c6
    check-cast v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1c8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1cb
    move-result-object v3

    #@1cc
    check-cast v3, Ljava/lang/Integer;

    #@1ce
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d1
    goto :goto_1

    #@1d2
    .line 13
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@0
    .prologue
    .line 141
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
    .line 145
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
    .line 149
    new-array v2, p2, [B

    #@5
    .line 150
    .local v2, "octets":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@8
    .line 151
    const-wide/16 v4, 0x0

    #@a
    .line 152
    .local v4, "value":J
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@c
    if-ne p1, v6, :cond_0

    #@e
    .line 153
    array-length v3, v2

    #@f
    add-int/lit8 v0, v3, -0x1

    #@11
    .local v0, "n":I
    :goto_0
    if-ltz v0, :cond_1

    #@13
    .line 154
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
    .line 153
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 158
    .end local v0    # "n":I
    :cond_0
    array-length v6, v2

    #@20
    :goto_1
    if-ge v3, v6, :cond_1

    #@22
    aget-byte v1, v2, v3

    #@24
    .line 159
    .local v1, "octet":B
    shl-long v8, v4, v12

    #@26
    and-int/lit16 v7, v1, 0xff

    #@28
    int-to-long v10, v7

    #@29
    or-long v4, v8, v10

    #@2b
    .line 158
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 162
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
    .line 167
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
    .line 172
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    if-ge v0, p1, :cond_0

    #@6
    .line 173
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
    .line 175
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
    .line 181
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
    .line 186
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v1

    #@4
    if-le p1, v1, :cond_0

    #@6
    .line 187
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
    .line 189
    :cond_0
    if-eqz p3, :cond_1

    #@22
    if-nez p1, :cond_1

    #@24
    .line 190
    const/4 v1, 0x0

    #@25
    return-object v1

    #@26
    .line 192
    :cond_1
    new-array v0, p1, [B

    #@28
    .line 193
    .local v0, "octets":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@2b
    .line 194
    new-instance v1, Ljava/lang/String;

    #@2d
    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@30
    return-object v1
.end method

.method public static mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    .line 133
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
    .line 137
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
