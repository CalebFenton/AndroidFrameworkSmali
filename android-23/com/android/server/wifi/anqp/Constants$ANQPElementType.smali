.class public final enum Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANQPElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field public static final enum HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 58
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@7
    const-string/jumbo v1, "ANQPQueryList"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f
    .line 59
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@11
    const-string/jumbo v1, "ANQPCapabilityList"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@19
    .line 60
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1b
    const-string/jumbo v1, "ANQPVenueName"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@23
    .line 61
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@25
    const-string/jumbo v1, "ANQPEmergencyNumber"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2d
    .line 62
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2f
    const-string/jumbo v1, "ANQPNwkAuthType"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@37
    .line 63
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@39
    const-string/jumbo v1, "ANQPRoamingConsortium"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@42
    .line 64
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@44
    const-string/jumbo v1, "ANQPIPAddrAvailability"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4d
    .line 65
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4f
    const-string/jumbo v1, "ANQPNAIRealm"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@58
    .line 66
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@5a
    const-string/jumbo v1, "ANQP3GPPNetwork"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@64
    .line 67
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@66
    const-string/jumbo v1, "ANQPGeoLoc"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@70
    .line 68
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@72
    const-string/jumbo v1, "ANQPCivicLoc"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@7c
    .line 69
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@7e
    const-string/jumbo v1, "ANQPLocURI"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@88
    .line 70
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@8a
    const-string/jumbo v1, "ANQPDomName"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@94
    .line 71
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@96
    const-string/jumbo v1, "ANQPEmergencyAlert"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a0
    .line 72
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a2
    const-string/jumbo v1, "ANQPTDLSCap"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ac
    .line 73
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ae
    const-string/jumbo v1, "ANQPEmergencyNAI"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b8
    .line 74
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ba
    const-string/jumbo v1, "ANQPNeighborReport"

    #@bd
    const/16 v2, 0x10

    #@bf
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c4
    .line 75
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c6
    const-string/jumbo v1, "ANQPVendorSpec"

    #@c9
    const/16 v2, 0x11

    #@cb
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@d0
    .line 76
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@d2
    const-string/jumbo v1, "HSQueryList"

    #@d5
    const/16 v2, 0x12

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@da
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@dc
    .line 77
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@de
    const-string/jumbo v1, "HSCapabilityList"

    #@e1
    const/16 v2, 0x13

    #@e3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@e6
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e8
    .line 78
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ea
    const-string/jumbo v1, "HSFriendlyName"

    #@ed
    const/16 v2, 0x14

    #@ef
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@f2
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f4
    .line 79
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f6
    const-string/jumbo v1, "HSWANMetrics"

    #@f9
    const/16 v2, 0x15

    #@fb
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@fe
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@100
    .line 80
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@102
    const-string/jumbo v1, "HSConnCapability"

    #@105
    const/16 v2, 0x16

    #@107
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@10a
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@10c
    .line 81
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@10e
    const-string/jumbo v1, "HSNAIHomeRealmQuery"

    #@111
    const/16 v2, 0x17

    #@113
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@116
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@118
    .line 82
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@11a
    const-string/jumbo v1, "HSOperatingclass"

    #@11d
    const/16 v2, 0x18

    #@11f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@122
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@124
    .line 83
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@126
    const-string/jumbo v1, "HSOSUProviders"

    #@129
    const/16 v2, 0x19

    #@12b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@12e
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@130
    .line 84
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@132
    const-string/jumbo v1, "HSIconRequest"

    #@135
    const/16 v2, 0x1a

    #@137
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@13a
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@13c
    .line 85
    new-instance v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@13e
    const-string/jumbo v1, "HSIconFile"

    #@141
    const/16 v2, 0x1b

    #@143
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    #@146
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@148
    .line 57
    const/16 v0, 0x1c

    #@14a
    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@14c
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@14e
    aput-object v1, v0, v3

    #@150
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@152
    aput-object v1, v0, v4

    #@154
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@156
    aput-object v1, v0, v5

    #@158
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@15a
    aput-object v1, v0, v6

    #@15c
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@15e
    aput-object v1, v0, v7

    #@160
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@162
    const/4 v2, 0x5

    #@163
    aput-object v1, v0, v2

    #@165
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@167
    const/4 v2, 0x6

    #@168
    aput-object v1, v0, v2

    #@16a
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@16c
    const/4 v2, 0x7

    #@16d
    aput-object v1, v0, v2

    #@16f
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@171
    const/16 v2, 0x8

    #@173
    aput-object v1, v0, v2

    #@175
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@177
    const/16 v2, 0x9

    #@179
    aput-object v1, v0, v2

    #@17b
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@17d
    const/16 v2, 0xa

    #@17f
    aput-object v1, v0, v2

    #@181
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@183
    const/16 v2, 0xb

    #@185
    aput-object v1, v0, v2

    #@187
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@189
    const/16 v2, 0xc

    #@18b
    aput-object v1, v0, v2

    #@18d
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@18f
    const/16 v2, 0xd

    #@191
    aput-object v1, v0, v2

    #@193
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@195
    const/16 v2, 0xe

    #@197
    aput-object v1, v0, v2

    #@199
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@19b
    const/16 v2, 0xf

    #@19d
    aput-object v1, v0, v2

    #@19f
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1a1
    const/16 v2, 0x10

    #@1a3
    aput-object v1, v0, v2

    #@1a5
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1a7
    const/16 v2, 0x11

    #@1a9
    aput-object v1, v0, v2

    #@1ab
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1ad
    const/16 v2, 0x12

    #@1af
    aput-object v1, v0, v2

    #@1b1
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1b3
    const/16 v2, 0x13

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1b9
    const/16 v2, 0x14

    #@1bb
    aput-object v1, v0, v2

    #@1bd
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1bf
    const/16 v2, 0x15

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1c5
    const/16 v2, 0x16

    #@1c7
    aput-object v1, v0, v2

    #@1c9
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1cb
    const/16 v2, 0x17

    #@1cd
    aput-object v1, v0, v2

    #@1cf
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1d1
    const/16 v2, 0x18

    #@1d3
    aput-object v1, v0, v2

    #@1d5
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1d7
    const/16 v2, 0x19

    #@1d9
    aput-object v1, v0, v2

    #@1db
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1dd
    const/16 v2, 0x1a

    #@1df
    aput-object v1, v0, v2

    #@1e1
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1e3
    const/16 v2, 0x1b

    #@1e5
    aput-object v1, v0, v2

    #@1e7
    sput-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1e9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const-class v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    #@0
    .prologue
    .line 57
    sget-object v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    return-object v0
.end method
