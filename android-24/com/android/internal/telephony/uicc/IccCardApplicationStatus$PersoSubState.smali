.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersoSubState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;


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
    .line 71
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@7
    const-string/jumbo v1, "PERSOSUBSTATE_UNKNOWN"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@f
    .line 72
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@11
    const-string/jumbo v1, "PERSOSUBSTATE_IN_PROGRESS"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@19
    .line 73
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@1b
    const-string/jumbo v1, "PERSOSUBSTATE_READY"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@23
    .line 74
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@25
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2d
    .line 75
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2f
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@37
    .line 76
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@39
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_CORPORATE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@42
    .line 77
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@44
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@4d
    .line 78
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@4f
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SIM"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@58
    .line 79
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@5a
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK_PUK"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@64
    .line 80
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@66
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@70
    .line 81
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@72
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_CORPORATE_PUK"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@7c
    .line 82
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@7e
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@88
    .line 83
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@8a
    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SIM_PUK"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@94
    .line 84
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@96
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK1"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@a0
    .line 85
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@a2
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK2"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@ac
    .line 86
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@ae
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_HRPD"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@b8
    .line 87
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@ba
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_CORPORATE"

    #@bd
    const/16 v2, 0x10

    #@bf
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@c4
    .line 88
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@c6
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER"

    #@c9
    const/16 v2, 0x11

    #@cb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@d0
    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@d2
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_RUIM"

    #@d5
    const/16 v2, 0x12

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@da
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@dc
    .line 90
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@de
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK1_PUK"

    #@e1
    const/16 v2, 0x13

    #@e3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@e6
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@e8
    .line 91
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@ea
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK2_PUK"

    #@ed
    const/16 v2, 0x14

    #@ef
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@f2
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@f4
    .line 92
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@f6
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_HRPD_PUK"

    #@f9
    const/16 v2, 0x15

    #@fb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@fe
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@100
    .line 93
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@102
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_CORPORATE_PUK"

    #@105
    const/16 v2, 0x16

    #@107
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@10a
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@10c
    .line 94
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@10e
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK"

    #@111
    const/16 v2, 0x17

    #@113
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@116
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@118
    .line 95
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@11a
    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_RUIM_PUK"

    #@11d
    const/16 v2, 0x18

    #@11f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    #@122
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@124
    .line 70
    const/16 v0, 0x19

    #@126
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@128
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@12a
    aput-object v1, v0, v3

    #@12c
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@12e
    aput-object v1, v0, v4

    #@130
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@132
    aput-object v1, v0, v5

    #@134
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@136
    aput-object v1, v0, v6

    #@138
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@13a
    aput-object v1, v0, v7

    #@13c
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@13e
    const/4 v2, 0x5

    #@13f
    aput-object v1, v0, v2

    #@141
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@143
    const/4 v2, 0x6

    #@144
    aput-object v1, v0, v2

    #@146
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@148
    const/4 v2, 0x7

    #@149
    aput-object v1, v0, v2

    #@14b
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@14d
    const/16 v2, 0x8

    #@14f
    aput-object v1, v0, v2

    #@151
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@153
    const/16 v2, 0x9

    #@155
    aput-object v1, v0, v2

    #@157
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@159
    const/16 v2, 0xa

    #@15b
    aput-object v1, v0, v2

    #@15d
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@15f
    const/16 v2, 0xb

    #@161
    aput-object v1, v0, v2

    #@163
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@165
    const/16 v2, 0xc

    #@167
    aput-object v1, v0, v2

    #@169
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@16b
    const/16 v2, 0xd

    #@16d
    aput-object v1, v0, v2

    #@16f
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@171
    const/16 v2, 0xe

    #@173
    aput-object v1, v0, v2

    #@175
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@177
    const/16 v2, 0xf

    #@179
    aput-object v1, v0, v2

    #@17b
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@17d
    const/16 v2, 0x10

    #@17f
    aput-object v1, v0, v2

    #@181
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@183
    const/16 v2, 0x11

    #@185
    aput-object v1, v0, v2

    #@187
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@189
    const/16 v2, 0x12

    #@18b
    aput-object v1, v0, v2

    #@18d
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@18f
    const/16 v2, 0x13

    #@191
    aput-object v1, v0, v2

    #@193
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@195
    const/16 v2, 0x14

    #@197
    aput-object v1, v0, v2

    #@199
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@19b
    const/16 v2, 0x15

    #@19d
    aput-object v1, v0, v2

    #@19f
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@1a1
    const/16 v2, 0x16

    #@1a3
    aput-object v1, v0, v2

    #@1a5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@1a7
    const/16 v2, 0x17

    #@1a9
    aput-object v1, v0, v2

    #@1ab
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@1ad
    const/16 v2, 0x18

    #@1af
    aput-object v1, v0, v2

    #@1b1
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@1b3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1

    #@0
    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2
    return-object v0
.end method


# virtual methods
.method isPersoSubStateUnknown()Z
    .locals 1

    #@0
    .prologue
    .line 98
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
