.class public abstract Lcom/android/server/wifi/anqp/eap/EAP;
.super Ljava/lang/Object;
.source "EAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;,
        Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    }
.end annotation


# static fields
.field public static final CredentialType:I = 0x5

.field public static final EAP_3Com:I = 0x18

.field public static final EAP_AKA:I = 0x17

.field public static final EAP_AKAPrim:I = 0x32

.field public static final EAP_ActiontecWireless:I = 0x23

.field public static final EAP_EKE:I = 0x35

.field public static final EAP_FAST:I = 0x2b

.field public static final EAP_GPSK:I = 0x33

.field public static final EAP_HTTPDigest:I = 0x26

.field public static final EAP_IKEv2:I = 0x31

.field public static final EAP_KEA:I = 0xb

.field public static final EAP_KEA_VALIDATE:I = 0xc

.field public static final EAP_LEAP:I = 0x11

.field public static final EAP_Link:I = 0x2d

.field public static final EAP_MD5:I = 0x4

.field public static final EAP_MOBAC:I = 0x2a

.field public static final EAP_MSCHAPv2:I = 0x1a

.field public static final EAP_OTP:I = 0x5

.field public static final EAP_PAX:I = 0x2e

.field public static final EAP_PEAP:I = 0x1d

.field public static final EAP_POTP:I = 0x20

.field public static final EAP_PSK:I = 0x2f

.field public static final EAP_PWD:I = 0x34

.field public static final EAP_RSA:I = 0x9

.field public static final EAP_SAKE:I = 0x30

.field public static final EAP_SIM:I = 0x12

.field public static final EAP_SPEKE:I = 0x29

.field public static final EAP_TEAP:I = 0x37

.field public static final EAP_TLS:I = 0xd

.field public static final EAP_TTLS:I = 0x15

.field public static final EAP_ZLXEAP:I = 0x2c

.field public static final ExpandedEAPMethod:I = 0x1

.field public static final ExpandedInnerEAPMethod:I = 0x4

.field public static final InnerAuthEAPMethodType:I = 0x3

.field public static final NonEAPInnerAuthType:I = 0x2

.field public static final TunneledEAPMethodCredType:I = 0x6

.field public static final VendorSpecific:I = 0xdd

.field private static final sAuthIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEapIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevEapIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v5, 0x4

    #@2
    .line 12
    new-instance v2, Ljava/util/HashMap;

    #@4
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@7
    sput-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@9
    .line 13
    new-instance v2, Ljava/util/HashMap;

    #@b
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@e
    sput-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sRevEapIds:Ljava/util/Map;

    #@10
    .line 14
    new-instance v2, Ljava/util/HashMap;

    #@12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@17
    .line 100
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 101
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 102
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@2f
    const/16 v3, 0x9

    #@31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v3

    #@35
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@37
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 103
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@3c
    const/16 v3, 0xb

    #@3e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v3

    #@42
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@44
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 104
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@49
    const/16 v3, 0xc

    #@4b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v3

    #@4f
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@51
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 105
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@56
    const/16 v3, 0xd

    #@58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v3

    #@5c
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@5e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 106
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@63
    const/16 v3, 0x11

    #@65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v3

    #@69
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@6b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 107
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@70
    const/16 v3, 0x12

    #@72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v3

    #@76
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@78
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    .line 108
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@7d
    const/16 v3, 0x15

    #@7f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v3

    #@83
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@85
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 109
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@8a
    const/16 v3, 0x17

    #@8c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v3

    #@90
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@92
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 110
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@97
    const/16 v3, 0x18

    #@99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v3

    #@9d
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@9f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    .line 111
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@a4
    const/16 v3, 0x1a

    #@a6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v3

    #@aa
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ac
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 112
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@b1
    const/16 v3, 0x1d

    #@b3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v3

    #@b7
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@b9
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 113
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@be
    const/16 v3, 0x20

    #@c0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v3

    #@c4
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@c6
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 114
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@cb
    const/16 v3, 0x23

    #@cd
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d0
    move-result-object v3

    #@d1
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@d3
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    .line 115
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@d8
    const/16 v3, 0x26

    #@da
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd
    move-result-object v3

    #@de
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@e0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    .line 116
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@e5
    const/16 v3, 0x29

    #@e7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea
    move-result-object v3

    #@eb
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ed
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    .line 117
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@f2
    const/16 v3, 0x2a

    #@f4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f7
    move-result-object v3

    #@f8
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@fa
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    .line 118
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@ff
    const/16 v3, 0x2b

    #@101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@104
    move-result-object v3

    #@105
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@107
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 119
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@10c
    const/16 v3, 0x2c

    #@10e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@111
    move-result-object v3

    #@112
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@114
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    .line 120
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@119
    const/16 v3, 0x2d

    #@11b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11e
    move-result-object v3

    #@11f
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@121
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 121
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@126
    const/16 v3, 0x2e

    #@128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v3

    #@12c
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@12e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    .line 122
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@133
    const/16 v3, 0x2f

    #@135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v3

    #@139
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@13b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13e
    .line 123
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@140
    const/16 v3, 0x30

    #@142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@145
    move-result-object v3

    #@146
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@148
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14b
    .line 124
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@14d
    const/16 v3, 0x31

    #@14f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@152
    move-result-object v3

    #@153
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@155
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    .line 125
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@15a
    const/16 v3, 0x32

    #@15c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15f
    move-result-object v3

    #@160
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@162
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@165
    .line 126
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@167
    const/16 v3, 0x33

    #@169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16c
    move-result-object v3

    #@16d
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@16f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    .line 127
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@174
    const/16 v3, 0x34

    #@176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@179
    move-result-object v3

    #@17a
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@17c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17f
    .line 128
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@181
    const/16 v3, 0x35

    #@183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@186
    move-result-object v3

    #@187
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@189
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18c
    .line 129
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@18e
    const/16 v3, 0x37

    #@190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@193
    move-result-object v3

    #@194
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@196
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@199
    .line 131
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@19b
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19e
    move-result-object v2

    #@19f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a2
    move-result-object v1

    #@1a3
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a6
    move-result v2

    #@1a7
    if-eqz v2, :cond_0

    #@1a9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ac
    move-result-object v0

    #@1ad
    check-cast v0, Ljava/util/Map$Entry;

    #@1af
    .line 132
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;>;"
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP;->sRevEapIds:Ljava/util/Map;

    #@1b1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b4
    move-result-object v2

    #@1b5
    check-cast v2, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1b7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1ba
    move-result-object v3

    #@1bb
    check-cast v3, Ljava/lang/Integer;

    #@1bd
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c0
    goto :goto_0

    #@1c1
    .line 135
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;>;"
    :cond_0
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@1c3
    const/4 v3, 0x1

    #@1c4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c7
    move-result-object v3

    #@1c8
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1ca
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    .line 136
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@1cf
    const/4 v3, 0x2

    #@1d0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d3
    move-result-object v3

    #@1d4
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1d6
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d9
    .line 137
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@1db
    const/4 v3, 0x3

    #@1dc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1df
    move-result-object v3

    #@1e0
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1e2
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e5
    .line 138
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@1e7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ea
    move-result-object v3

    #@1eb
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1ed
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f0
    .line 139
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@1f2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f5
    move-result-object v3

    #@1f6
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1f8
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fb
    .line 140
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@1fd
    const/4 v3, 0x6

    #@1fe
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@201
    move-result-object v3

    #@202
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@204
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@207
    .line 141
    sget-object v2, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@209
    const/16 v3, 0xdd

    #@20b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20e
    move-result-object v3

    #@20f
    sget-object v4, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@211
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@214
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static mapAuthMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 2
    .param p0, "methodID"    # I

    #@0
    .prologue
    .line 153
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP;->sAuthIds:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@c
    return-object v0
.end method

.method public static mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 2
    .param p0, "methodID"    # I

    #@0
    .prologue
    .line 145
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP;->sEapIds:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@c
    return-object v0
.end method

.method public static mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;
    .locals 1
    .param p0, "methodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@0
    .prologue
    .line 149
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP;->sRevEapIds:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    return-object v0
.end method
