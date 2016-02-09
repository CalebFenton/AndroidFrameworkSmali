.class public Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
.super Ljava/lang/Object;
.source "PasspointMatchInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final IPPROTO_ESP:I = 0x32

.field private static final IPPROTO_ICMP:I = 0x1

.field private static final IPPROTO_TCP:I = 0x6

.field private static final IPPROTO_UDP:I = 0x11

.field private static final sAntScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIP4Scores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIP6Scores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPortScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

.field private final mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field private final mScanDetail:Lcom/android/server/wifi/ScanDetail;

.field private final mScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    const/4 v8, 0x6

    #@3
    const/4 v7, 0x4

    #@4
    const/4 v6, 0x2

    #@5
    const/4 v5, 0x1

    #@6
    .line 25
    new-instance v2, Ljava/util/EnumMap;

    #@8
    const-class v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@a
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@d
    .line 24
    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@f
    .line 27
    new-instance v2, Ljava/util/EnumMap;

    #@11
    const-class v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@13
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@16
    .line 26
    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    #@18
    .line 29
    new-instance v2, Ljava/util/HashMap;

    #@1a
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1d
    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    #@1f
    .line 35
    new-instance v2, Ljava/util/HashMap;

    #@21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@24
    sput-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@26
    .line 40
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@28
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 41
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@33
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v4

    #@39
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 42
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@3e
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v4

    #@44
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 43
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@49
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@4b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v4

    #@4f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 44
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@54
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v4

    #@5a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 45
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@5f
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v4

    #@65
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 46
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@6a
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@6c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v4

    #@70
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    .line 47
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@75
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@77
    const/4 v4, 0x0

    #@78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v4

    #@7c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 49
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@81
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@83
    const/4 v4, 0x0

    #@84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@87
    move-result-object v4

    #@88
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 50
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@8d
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestricted:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@8f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v4

    #@93
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    .line 51
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@98
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndSingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@9a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v4

    #@9e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    .line 52
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@a3
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->PortRestrictedAndDoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@a5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v4

    #@a9
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    .line 53
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@ae
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@b0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v4

    #@b4
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 54
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@b9
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Public:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@bb
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be
    move-result-object v4

    #@bf
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    .line 55
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@c4
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->SingleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@c6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c9
    move-result-object v4

    #@ca
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    .line 56
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@cf
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->DoubleNAT:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@d1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d4
    move-result-object v4

    #@d5
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    .line 58
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    #@da
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->NotAvailable:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@dc
    const/4 v4, 0x0

    #@dd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e0
    move-result-object v4

    #@e1
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e4
    .line 59
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    #@e6
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Reserved:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@e8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v4

    #@ec
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    .line 60
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    #@f1
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@f3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f6
    move-result-object v4

    #@f7
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fa
    .line 61
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    #@fc
    sget-object v3, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->Available:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@fe
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@101
    move-result-object v4

    #@102
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 63
    new-instance v0, Ljava/util/HashMap;

    #@107
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10a
    .line 64
    .local v0, "tcpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0x14

    #@10c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10f
    move-result-object v2

    #@110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@113
    move-result-object v3

    #@114
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    .line 65
    const/16 v2, 0x15

    #@119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11c
    move-result-object v2

    #@11d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@120
    move-result-object v3

    #@121
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 66
    const/16 v2, 0x16

    #@126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@129
    move-result-object v2

    #@12a
    const/4 v3, 0x3

    #@12b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12e
    move-result-object v3

    #@12f
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    .line 67
    const/16 v2, 0x17

    #@134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@137
    move-result-object v2

    #@138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13b
    move-result-object v3

    #@13c
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13f
    .line 68
    const/16 v2, 0x19

    #@141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@144
    move-result-object v2

    #@145
    const/16 v3, 0x8

    #@147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14a
    move-result-object v3

    #@14b
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    .line 69
    const/16 v2, 0x1a

    #@150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@153
    move-result-object v2

    #@154
    const/16 v3, 0x8

    #@156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@159
    move-result-object v3

    #@15a
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15d
    .line 70
    const/16 v2, 0x35

    #@15f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@162
    move-result-object v2

    #@163
    const/4 v3, 0x3

    #@164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@167
    move-result-object v3

    #@168
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16b
    .line 71
    const/16 v2, 0x50

    #@16d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@170
    move-result-object v2

    #@171
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@174
    move-result-object v3

    #@175
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@178
    .line 72
    const/16 v2, 0x6e

    #@17a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17d
    move-result-object v2

    #@17e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@181
    move-result-object v3

    #@182
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@185
    .line 73
    const/16 v2, 0x8f

    #@187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18a
    move-result-object v2

    #@18b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18e
    move-result-object v3

    #@18f
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@192
    .line 74
    const/16 v2, 0x1bb

    #@194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@197
    move-result-object v2

    #@198
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19b
    move-result-object v3

    #@19c
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19f
    .line 75
    const/16 v2, 0x3e1

    #@1a1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a4
    move-result-object v2

    #@1a5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a8
    move-result-object v3

    #@1a9
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ac
    .line 76
    const/16 v2, 0x6bb

    #@1ae
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b1
    move-result-object v2

    #@1b2
    const/4 v3, 0x7

    #@1b3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b6
    move-result-object v3

    #@1b7
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ba
    .line 78
    new-instance v1, Ljava/util/HashMap;

    #@1bc
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1bf
    .line 79
    .local v1, "udpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0x35

    #@1c1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c4
    move-result-object v2

    #@1c5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c8
    move-result-object v3

    #@1c9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cc
    .line 80
    const/16 v2, 0x1f4

    #@1ce
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d1
    move-result-object v2

    #@1d2
    const/4 v3, 0x7

    #@1d3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d6
    move-result-object v3

    #@1d7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1da
    .line 81
    const/16 v2, 0x13c4

    #@1dc
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1df
    move-result-object v2

    #@1e0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e3
    move-result-object v3

    #@1e4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e7
    .line 82
    const/16 v2, 0x1194

    #@1e9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ec
    move-result-object v2

    #@1ed
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f0
    move-result-object v3

    #@1f1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f4
    .line 84
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    #@1f6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f9
    move-result-object v3

    #@1fa
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fd
    .line 85
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    #@1ff
    const/16 v3, 0x11

    #@201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@204
    move-result-object v3

    #@205
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 18
    .param p1, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@9
    .line 92
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p0

    #@d
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    #@f
    .line 93
    move-object/from16 v0, p3

    #@11
    move-object/from16 v1, p0

    #@13
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@15
    .line 96
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@17
    move-object/from16 v0, p1

    #@19
    if-ne v0, v11, :cond_7

    #@1b
    .line 97
    const/16 v7, 0x64

    #@1d
    .line 106
    .local v7, "score":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@24
    move-result-object v11

    #@25
    if-eqz v11, :cond_0

    #@27
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2a
    move-result-object v11

    #@2b
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2e
    move-result-object v11

    #@2f
    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@31
    if-eq v11, v12, :cond_9

    #@33
    const/16 v11, 0x32

    #@35
    :goto_1
    add-int/2addr v7, v11

    #@36
    .line 110
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@39
    move-result-object v11

    #@3a
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@3d
    move-result v11

    #@3e
    if-eqz v11, :cond_1

    #@40
    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@43
    move-result-object v11

    #@44
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    #@47
    move-result v11

    #@48
    if-eqz v11, :cond_a

    #@4a
    const/16 v11, 0x14

    #@4c
    :goto_2
    add-int/2addr v7, v11

    #@4d
    .line 114
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@50
    move-result-object v11

    #@51
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getStationCount()I

    #@54
    move-result v11

    #@55
    rsub-int v11, v11, 0xc8

    #@57
    const/4 v12, 0x0

    #@58
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@5b
    move-result v11

    #@5c
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@5f
    move-result-object v12

    #@60
    invoke-virtual {v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelUtilization()I

    #@63
    move-result v12

    #@64
    rsub-int v12, v12, 0xff

    #@66
    .line 114
    mul-int/2addr v11, v12

    #@67
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@6a
    move-result-object v12

    #@6b
    invoke-virtual {v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCapacity()I

    #@6e
    move-result v12

    #@6f
    .line 114
    mul-int/2addr v11, v12

    #@70
    ushr-int/lit8 v11, v11, 0x1a

    #@72
    add-int/2addr v7, v11

    #@73
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@76
    move-result-object v11

    #@77
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@7a
    move-result v11

    #@7b
    if-eqz v11, :cond_2

    #@7d
    .line 120
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sAntScores:Ljava/util/Map;

    #@7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@82
    move-result-object v12

    #@83
    invoke-virtual {v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@86
    move-result-object v12

    #@87
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v11

    #@8b
    check-cast v11, Ljava/lang/Integer;

    #@8d
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@90
    move-result v11

    #@91
    add-int/2addr v7, v11

    #@92
    .line 123
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@95
    move-result-object v11

    #@96
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    #@99
    move-result-object v2

    #@9a
    .line 125
    .local v2, "anqp":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-eqz v2, :cond_6

    #@9c
    .line 126
    sget-object v11, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@9e
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    move-result-object v10

    #@a2
    check-cast v10, Lcom/android/server/wifi/anqp/HSWanMetricsElement;

    #@a4
    .line 128
    .local v10, "wm":Lcom/android/server/wifi/anqp/HSWanMetricsElement;
    if-eqz v10, :cond_4

    #@a6
    .line 129
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getStatus()Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    #@a9
    move-result-object v11

    #@aa
    sget-object v12, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->Up:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    #@ac
    if-ne v11, v12, :cond_3

    #@ae
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->isCapped()Z

    #@b1
    move-result v11

    #@b2
    if-eqz v11, :cond_b

    #@b4
    .line 130
    :cond_3
    add-int/lit16 v7, v7, -0x3e8

    #@b6
    .line 141
    :cond_4
    :goto_3
    sget-object v11, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b8
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    move-result-object v6

    #@bc
    check-cast v6, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;

    #@be
    .line 143
    .local v6, "ipa":Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
    if-eqz v6, :cond_5

    #@c0
    .line 144
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP4Scores:Ljava/util/Map;

    #@c2
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->getV4Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@c5
    move-result-object v12

    #@c6
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    move-result-object v3

    #@ca
    check-cast v3, Ljava/lang/Integer;

    #@cc
    .line 145
    .local v3, "as14":Ljava/lang/Integer;
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sIP6Scores:Ljava/util/Map;

    #@ce
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->getV6Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@d1
    move-result-object v12

    #@d2
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    move-result-object v4

    #@d6
    check-cast v4, Ljava/lang/Integer;

    #@d8
    .line 146
    .local v4, "as16":Ljava/lang/Integer;
    if-eqz v3, :cond_c

    #@da
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@dd
    move-result v11

    #@de
    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e1
    move-result-object v3

    #@e2
    .line 147
    if-eqz v4, :cond_d

    #@e4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@e7
    move-result v11

    #@e8
    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v4

    #@ec
    .line 149
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@ef
    move-result v11

    #@f0
    mul-int/lit8 v11, v11, 0x2

    #@f2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f5
    move-result v12

    #@f6
    add-int/2addr v11, v12

    #@f7
    add-int/2addr v7, v11

    #@f8
    .line 153
    .end local v3    # "as14":Ljava/lang/Integer;
    .end local v4    # "as16":Ljava/lang/Integer;
    :cond_5
    sget-object v11, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@fa
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    move-result-object v5

    #@fe
    check-cast v5, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    #@100
    .line 155
    .local v5, "cce":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
    if-eqz v5, :cond_6

    #@102
    .line 156
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->protoScore(Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;)I

    #@105
    move-result v11

    #@106
    shr-int/lit8 v11, v11, 0x3

    #@108
    const/16 v12, -0xa

    #@10a
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@10d
    move-result v11

    #@10e
    const/16 v12, 0xa

    #@110
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@113
    move-result v7

    #@114
    .line 160
    .end local v5    # "cce":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
    .end local v6    # "ipa":Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
    .end local v10    # "wm":Lcom/android/server/wifi/anqp/HSWanMetricsElement;
    :cond_6
    move-object/from16 v0, p0

    #@116
    iput v7, v0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScore:I

    #@118
    .line 90
    return-void

    #@119
    .line 99
    .end local v2    # "anqp":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .end local v7    # "score":I
    :cond_7
    sget-object v11, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@11b
    move-object/from16 v0, p1

    #@11d
    if-ne v0, v11, :cond_8

    #@11f
    .line 100
    const/4 v7, 0x0

    #@120
    .restart local v7    # "score":I
    goto/16 :goto_0

    #@122
    .line 103
    .end local v7    # "score":I
    :cond_8
    const/16 v7, -0x3e8

    #@124
    .restart local v7    # "score":I
    goto/16 :goto_0

    #@126
    .line 107
    :cond_9
    const/4 v11, 0x0

    #@127
    goto/16 :goto_1

    #@129
    .line 111
    :cond_a
    const/16 v11, -0x14

    #@12b
    goto/16 :goto_2

    #@12d
    .line 133
    .restart local v2    # "anqp":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .restart local v10    # "wm":Lcom/android/server/wifi/anqp/HSWanMetricsElement;
    :cond_b
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getDlSpeed()J

    #@130
    move-result-wide v12

    #@131
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getDlLoad()I

    #@134
    move-result v11

    #@135
    rsub-int v11, v11, 0xff

    #@137
    int-to-long v14, v11

    #@138
    mul-long/2addr v12, v14

    #@139
    const-wide/16 v14, 0x8

    #@13b
    mul-long/2addr v12, v14

    #@13c
    .line 134
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getUlSpeed()J

    #@13f
    move-result-wide v14

    #@140
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->getUlLoad()I

    #@143
    move-result v11

    #@144
    rsub-int v11, v11, 0xff

    #@146
    int-to-long v0, v11

    #@147
    move-wide/from16 v16, v0

    #@149
    mul-long v14, v14, v16

    #@14b
    const-wide/16 v16, 0x2

    #@14d
    mul-long v14, v14, v16

    #@14f
    .line 133
    add-long v8, v12, v14

    #@151
    .line 135
    .local v8, "scaledSpeed":J
    int-to-long v12, v7

    #@152
    const-wide/32 v14, 0xf32fdc0

    #@155
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    #@158
    move-result-wide v14

    #@159
    const/16 v11, 0x17

    #@15b
    ushr-long/2addr v14, v11

    #@15c
    add-long/2addr v12, v14

    #@15d
    long-to-int v7, v12

    #@15e
    goto/16 :goto_3

    #@160
    .line 146
    .end local v8    # "scaledSpeed":J
    .restart local v3    # "as14":Ljava/lang/Integer;
    .restart local v4    # "as16":Ljava/lang/Integer;
    .restart local v6    # "ipa":Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
    :cond_c
    const/4 v11, 0x1

    #@161
    goto/16 :goto_4

    #@163
    .line 147
    :cond_d
    const/4 v11, 0x1

    #@164
    goto :goto_5
.end method

.method private static protoScore(Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;)I
    .locals 9
    .param p0, "cce"    # Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    #@0
    .prologue
    .line 190
    const/4 v3, 0x0

    #@1
    .line 191
    .local v3, "score":I
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;->getStatusList()Ljava/util/List;

    #@4
    move-result-object v7

    #@5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v6

    #@9
    .local v6, "tuple$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_5

    #@f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;

    #@15
    .line 192
    .local v5, "tuple":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getStatus()Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@18
    move-result-object v7

    #@19
    sget-object v8, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    #@1b
    if-ne v7, v8, :cond_1

    #@1d
    .line 193
    const/4 v4, 0x1

    #@1e
    .line 195
    .local v4, "sign":I
    :goto_1
    const/4 v0, 0x1

    #@1f
    .line 196
    .local v0, "elementScore":I
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getProtocol()I

    #@22
    move-result v7

    #@23
    const/4 v8, 0x1

    #@24
    if-ne v7, v8, :cond_2

    #@26
    .line 197
    const/4 v0, 0x1

    #@27
    .line 209
    :cond_0
    :goto_2
    mul-int v7, v0, v4

    #@29
    add-int/2addr v3, v7

    #@2a
    goto :goto_0

    #@2b
    .line 193
    .end local v0    # "elementScore":I
    .end local v4    # "sign":I
    :cond_1
    const/4 v4, -0x1

    #@2c
    .restart local v4    # "sign":I
    goto :goto_1

    #@2d
    .line 199
    .restart local v0    # "elementScore":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getProtocol()I

    #@30
    move-result v7

    #@31
    const/16 v8, 0x32

    #@33
    if-ne v7, v8, :cond_3

    #@35
    .line 200
    const/4 v0, 0x5

    #@36
    goto :goto_2

    #@37
    .line 203
    :cond_3
    sget-object v7, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->sPortScores:Ljava/util/Map;

    #@39
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getProtocol()I

    #@3c
    move-result v8

    #@3d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v8

    #@41
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/util/Map;

    #@47
    .line 204
    .local v2, "protoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    #@49
    .line 205
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->getPort()I

    #@4c
    move-result v7

    #@4d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v7

    #@51
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Ljava/lang/Integer;

    #@57
    .line 206
    .local v1, "portScore":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    #@59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v0

    #@5d
    goto :goto_2

    #@5e
    :cond_4
    const/4 v0, 0x0

    #@5f
    goto :goto_2

    #@60
    .line 211
    .end local v0    # "elementScore":I
    .end local v1    # "portScore":Ljava/lang/Integer;
    .end local v2    # "protoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sign":I
    .end local v5    # "tuple":Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
    :cond_5
    return v3
.end method


# virtual methods
.method public compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I
    .locals 2
    .param p1, "that"    # Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScore()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScore()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 185
    check-cast p1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 216
    if-ne p0, p1, :cond_0

    #@3
    .line 217
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 219
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 220
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 223
    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    #@15
    .line 225
    .local v0, "that":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 226
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getHomeSP()Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getHomeSP()Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    .line 225
    if-eqz v2, :cond_3

    #@31
    .line 227
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getPasspointMatch()Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getPasspointMatch()Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    .line 225
    :cond_3
    return v1
.end method

.method public getHomeSP()Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@2
    return-object v0
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPasspointMatch()Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2
    return-object v0
.end method

.method public getScanDetail()Lcom/android/server/wifi/ScanDetail;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScanDetail:Lcom/android/server/wifi/ScanDetail;

    #@2
    return-object v0
.end method

.method public getScore()I
    .locals 1

    #@0
    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mScore:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@6
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 233
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    #@c
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hashCode()I

    #@13
    move-result v2

    #@14
    add-int v0, v1, v2

    #@16
    .line 234
    mul-int/lit8 v2, v0, 0x1f

    #@18
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->hashCode()I

    #@21
    move-result v1

    #@22
    :goto_1
    add-int v0, v2, v1

    #@24
    .line 235
    return v0

    #@25
    .line 232
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    #@26
    .restart local v0    # "result":I
    goto :goto_0

    #@27
    .line 234
    :cond_1
    const/4 v1, 0x0

    #@28
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PasspointMatchInfo{, mPasspointMatch="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 241
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mPasspointMatch:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@e
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 242
    const-string/jumbo v1, ", mNetworkInfo="

    #@15
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 242
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 243
    const-string/jumbo v1, ", mHomeSP="

    #@28
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 243
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->mHomeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 244
    const/16 v1, 0x7d

    #@38
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    return-object v0
.end method
