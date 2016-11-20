.class public final enum Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
.super Ljava/lang/Enum;
.source "EAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/EAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EAPMethodID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;


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
    .line 48
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@7
    const-string/jumbo v1, "EAP_MD5"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@f
    .line 49
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@11
    const-string/jumbo v1, "EAP_OTP"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@19
    .line 50
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1b
    const-string/jumbo v1, "EAP_RSA"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@23
    .line 51
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@25
    const-string/jumbo v1, "EAP_KEA"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2d
    .line 52
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2f
    const-string/jumbo v1, "EAP_KEA_VALIDATE"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@37
    .line 53
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@39
    const-string/jumbo v1, "EAP_TLS"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@42
    .line 54
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@44
    const-string/jumbo v1, "EAP_LEAP"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@4d
    .line 55
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@4f
    const-string/jumbo v1, "EAP_SIM"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@58
    .line 56
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@5a
    const-string/jumbo v1, "EAP_TTLS"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@64
    .line 57
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@66
    const-string/jumbo v1, "EAP_AKA"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@70
    .line 58
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@72
    const-string/jumbo v1, "EAP_3Com"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@7c
    .line 59
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@7e
    const-string/jumbo v1, "EAP_MSCHAPv2"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@88
    .line 60
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@8a
    const-string/jumbo v1, "EAP_PEAP"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@94
    .line 61
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@96
    const-string/jumbo v1, "EAP_POTP"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@a0
    .line 62
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@a2
    const-string/jumbo v1, "EAP_ActiontecWireless"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ac
    .line 63
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ae
    const-string/jumbo v1, "EAP_HTTPDigest"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@b8
    .line 64
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ba
    const-string/jumbo v1, "EAP_SPEKE"

    #@bd
    const/16 v2, 0x10

    #@bf
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@c4
    .line 65
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@c6
    const-string/jumbo v1, "EAP_MOBAC"

    #@c9
    const/16 v2, 0x11

    #@cb
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@d0
    .line 66
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@d2
    const-string/jumbo v1, "EAP_FAST"

    #@d5
    const/16 v2, 0x12

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@da
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@dc
    .line 67
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@de
    const-string/jumbo v1, "EAP_ZLXEAP"

    #@e1
    const/16 v2, 0x13

    #@e3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@e6
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@e8
    .line 68
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ea
    const-string/jumbo v1, "EAP_Link"

    #@ed
    const/16 v2, 0x14

    #@ef
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@f2
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@f4
    .line 69
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@f6
    const-string/jumbo v1, "EAP_PAX"

    #@f9
    const/16 v2, 0x15

    #@fb
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@fe
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@100
    .line 70
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@102
    const-string/jumbo v1, "EAP_PSK"

    #@105
    const/16 v2, 0x16

    #@107
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@10a
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@10c
    .line 71
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@10e
    const-string/jumbo v1, "EAP_SAKE"

    #@111
    const/16 v2, 0x17

    #@113
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@116
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@118
    .line 72
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@11a
    const-string/jumbo v1, "EAP_IKEv2"

    #@11d
    const/16 v2, 0x18

    #@11f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@122
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@124
    .line 73
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@126
    const-string/jumbo v1, "EAP_AKAPrim"

    #@129
    const/16 v2, 0x19

    #@12b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@12e
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@130
    .line 74
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@132
    const-string/jumbo v1, "EAP_GPSK"

    #@135
    const/16 v2, 0x1a

    #@137
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@13a
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@13c
    .line 75
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@13e
    const-string/jumbo v1, "EAP_PWD"

    #@141
    const/16 v2, 0x1b

    #@143
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@146
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@148
    .line 76
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@14a
    const-string/jumbo v1, "EAP_EKE"

    #@14d
    const/16 v2, 0x1c

    #@14f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@152
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@154
    .line 77
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@156
    const-string/jumbo v1, "EAP_TEAP"

    #@159
    const/16 v2, 0x1d

    #@15b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    #@15e
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@160
    .line 47
    const/16 v0, 0x1e

    #@162
    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@164
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@166
    aput-object v1, v0, v3

    #@168
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@16a
    aput-object v1, v0, v4

    #@16c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@16e
    aput-object v1, v0, v5

    #@170
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@172
    aput-object v1, v0, v6

    #@174
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@176
    aput-object v1, v0, v7

    #@178
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@17a
    const/4 v2, 0x5

    #@17b
    aput-object v1, v0, v2

    #@17d
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@17f
    const/4 v2, 0x6

    #@180
    aput-object v1, v0, v2

    #@182
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@184
    const/4 v2, 0x7

    #@185
    aput-object v1, v0, v2

    #@187
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@189
    const/16 v2, 0x8

    #@18b
    aput-object v1, v0, v2

    #@18d
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@18f
    const/16 v2, 0x9

    #@191
    aput-object v1, v0, v2

    #@193
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@195
    const/16 v2, 0xa

    #@197
    aput-object v1, v0, v2

    #@199
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@19b
    const/16 v2, 0xb

    #@19d
    aput-object v1, v0, v2

    #@19f
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1a1
    const/16 v2, 0xc

    #@1a3
    aput-object v1, v0, v2

    #@1a5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1a7
    const/16 v2, 0xd

    #@1a9
    aput-object v1, v0, v2

    #@1ab
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1ad
    const/16 v2, 0xe

    #@1af
    aput-object v1, v0, v2

    #@1b1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1b3
    const/16 v2, 0xf

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1b9
    const/16 v2, 0x10

    #@1bb
    aput-object v1, v0, v2

    #@1bd
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1bf
    const/16 v2, 0x11

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1c5
    const/16 v2, 0x12

    #@1c7
    aput-object v1, v0, v2

    #@1c9
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1cb
    const/16 v2, 0x13

    #@1cd
    aput-object v1, v0, v2

    #@1cf
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1d1
    const/16 v2, 0x14

    #@1d3
    aput-object v1, v0, v2

    #@1d5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1d7
    const/16 v2, 0x15

    #@1d9
    aput-object v1, v0, v2

    #@1db
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1dd
    const/16 v2, 0x16

    #@1df
    aput-object v1, v0, v2

    #@1e1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1e3
    const/16 v2, 0x17

    #@1e5
    aput-object v1, v0, v2

    #@1e7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1e9
    const/16 v2, 0x18

    #@1eb
    aput-object v1, v0, v2

    #@1ed
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1ef
    const/16 v2, 0x19

    #@1f1
    aput-object v1, v0, v2

    #@1f3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1f5
    const/16 v2, 0x1a

    #@1f7
    aput-object v1, v0, v2

    #@1f9
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1fb
    const/16 v2, 0x1b

    #@1fd
    aput-object v1, v0, v2

    #@1ff
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@201
    const/16 v2, 0x1c

    #@203
    aput-object v1, v0, v2

    #@205
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@207
    const/16 v2, 0x1d

    #@209
    aput-object v1, v0, v2

    #@20b
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@20d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2
    return-object v0
.end method
