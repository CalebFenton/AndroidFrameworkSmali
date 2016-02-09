.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final Q_VALUE:I = 0x0

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e

.field private static final WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContentParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataLength:I

.field mStringValue:Ljava/lang/String;

.field mUnsigned32bit:J

.field mWspData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x7

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 35
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 34
    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@c
    .line 38
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 37
    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@13
    .line 44
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "*/*"

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 45
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "text/*"

    #@28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 46
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "text/html"

    #@34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 47
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "text/plain"

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 48
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@45
    const/4 v1, 0x4

    #@46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v2, "text/x-hdml"

    #@4d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 49
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@52
    const/4 v1, 0x5

    #@53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, "text/x-ttml"

    #@5a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 50
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5f
    const/4 v1, 0x6

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v1

    #@64
    const-string/jumbo v2, "text/x-vCalendar"

    #@67
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 51
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@6c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v1

    #@70
    const-string/jumbo v2, "text/x-vCard"

    #@73
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 52
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@78
    const/16 v1, 0x8

    #@7a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v1

    #@7e
    const-string/jumbo v2, "text/vnd.wap.wml"

    #@81
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 53
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@86
    const/16 v1, 0x9

    #@88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v1

    #@8c
    const-string/jumbo v2, "text/vnd.wap.wmlscript"

    #@8f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 54
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@94
    const/16 v1, 0xa

    #@96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@99
    move-result-object v1

    #@9a
    const-string/jumbo v2, "text/vnd.wap.wta-event"

    #@9d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    .line 55
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@a2
    const/16 v1, 0xb

    #@a4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a7
    move-result-object v1

    #@a8
    const-string/jumbo v2, "multipart/*"

    #@ab
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 56
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@b0
    const/16 v1, 0xc

    #@b2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v1

    #@b6
    const-string/jumbo v2, "multipart/mixed"

    #@b9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 57
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@be
    const/16 v1, 0xd

    #@c0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v1

    #@c4
    const-string/jumbo v2, "multipart/form-data"

    #@c7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    .line 58
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@cc
    const/16 v1, 0xe

    #@ce
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d1
    move-result-object v1

    #@d2
    const-string/jumbo v2, "multipart/byterantes"

    #@d5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    .line 59
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@da
    const/16 v1, 0xf

    #@dc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v1

    #@e0
    const-string/jumbo v2, "multipart/alternative"

    #@e3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    .line 60
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@e8
    const/16 v1, 0x10

    #@ea
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ed
    move-result-object v1

    #@ee
    const-string/jumbo v2, "application/*"

    #@f1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f4
    .line 61
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@f6
    const/16 v1, 0x11

    #@f8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fb
    move-result-object v1

    #@fc
    const-string/jumbo v2, "application/java-vm"

    #@ff
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@102
    .line 62
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@104
    const/16 v1, 0x12

    #@106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@109
    move-result-object v1

    #@10a
    const-string/jumbo v2, "application/x-www-form-urlencoded"

    #@10d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 63
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@112
    const/16 v1, 0x13

    #@114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@117
    move-result-object v1

    #@118
    const-string/jumbo v2, "application/x-hdmlc"

    #@11b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11e
    .line 64
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@120
    const/16 v1, 0x14

    #@122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v1

    #@126
    const-string/jumbo v2, "application/vnd.wap.wmlc"

    #@129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    .line 65
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@12e
    const/16 v1, 0x15

    #@130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@133
    move-result-object v1

    #@134
    const-string/jumbo v2, "application/vnd.wap.wmlscriptc"

    #@137
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13a
    .line 66
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@13c
    const/16 v1, 0x16

    #@13e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@141
    move-result-object v1

    #@142
    const-string/jumbo v2, "application/vnd.wap.wta-eventc"

    #@145
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    .line 67
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@14a
    const/16 v1, 0x17

    #@14c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14f
    move-result-object v1

    #@150
    const-string/jumbo v2, "application/vnd.wap.uaprof"

    #@153
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@156
    .line 68
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@158
    const/16 v1, 0x18

    #@15a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15d
    move-result-object v1

    #@15e
    const-string/jumbo v2, "application/vnd.wap.wtls-ca-certificate"

    #@161
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@164
    .line 69
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@166
    const/16 v1, 0x19

    #@168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16b
    move-result-object v1

    #@16c
    const-string/jumbo v2, "application/vnd.wap.wtls-user-certificate"

    #@16f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    .line 70
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@174
    const/16 v1, 0x1a

    #@176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@179
    move-result-object v1

    #@17a
    const-string/jumbo v2, "application/x-x509-ca-cert"

    #@17d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@180
    .line 71
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@182
    const/16 v1, 0x1b

    #@184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@187
    move-result-object v1

    #@188
    const-string/jumbo v2, "application/x-x509-user-cert"

    #@18b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18e
    .line 72
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@190
    const/16 v1, 0x1c

    #@192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@195
    move-result-object v1

    #@196
    const-string/jumbo v2, "image/*"

    #@199
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19c
    .line 73
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@19e
    const/16 v1, 0x1d

    #@1a0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a3
    move-result-object v1

    #@1a4
    const-string/jumbo v2, "image/gif"

    #@1a7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1aa
    .line 74
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@1ac
    const/16 v1, 0x1e

    #@1ae
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b1
    move-result-object v1

    #@1b2
    const-string/jumbo v2, "image/jpeg"

    #@1b5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b8
    .line 75
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@1ba
    const/16 v1, 0x1f

    #@1bc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bf
    move-result-object v1

    #@1c0
    const-string/jumbo v2, "image/tiff"

    #@1c3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c6
    .line 76
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@1c8
    const/16 v1, 0x20

    #@1ca
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1cd
    move-result-object v1

    #@1ce
    const-string/jumbo v2, "image/png"

    #@1d1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d4
    .line 77
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@1d6
    const/16 v1, 0x21

    #@1d8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1db
    move-result-object v1

    #@1dc
    const-string/jumbo v2, "image/vnd.wap.wbmp"

    #@1df
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e2
    .line 78
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@1e4
    const/16 v1, 0x22

    #@1e6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e9
    move-result-object v1

    #@1ea
    const-string/jumbo v2, "application/vnd.wap.multipart.*"

    #@1ed
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f0
    .line 79
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@1f2
    const/16 v1, 0x23

    #@1f4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f7
    move-result-object v1

    #@1f8
    const-string/jumbo v2, "application/vnd.wap.multipart.mixed"

    #@1fb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fe
    .line 80
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@200
    const/16 v1, 0x24

    #@202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@205
    move-result-object v1

    #@206
    const-string/jumbo v2, "application/vnd.wap.multipart.form-data"

    #@209
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20c
    .line 81
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@20e
    const/16 v1, 0x25

    #@210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@213
    move-result-object v1

    #@214
    const-string/jumbo v2, "application/vnd.wap.multipart.byteranges"

    #@217
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21a
    .line 82
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@21c
    const/16 v1, 0x26

    #@21e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@221
    move-result-object v1

    #@222
    const-string/jumbo v2, "application/vnd.wap.multipart.alternative"

    #@225
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@228
    .line 83
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@22a
    const/16 v1, 0x27

    #@22c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22f
    move-result-object v1

    #@230
    const-string/jumbo v2, "application/xml"

    #@233
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@236
    .line 84
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@238
    const/16 v1, 0x28

    #@23a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23d
    move-result-object v1

    #@23e
    const-string/jumbo v2, "text/xml"

    #@241
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@244
    .line 85
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@246
    const/16 v1, 0x29

    #@248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24b
    move-result-object v1

    #@24c
    const-string/jumbo v2, "application/vnd.wap.wbxml"

    #@24f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@252
    .line 86
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@254
    const/16 v1, 0x2a

    #@256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@259
    move-result-object v1

    #@25a
    const-string/jumbo v2, "application/x-x968-cross-cert"

    #@25d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@260
    .line 87
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@262
    const/16 v1, 0x2b

    #@264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@267
    move-result-object v1

    #@268
    const-string/jumbo v2, "application/x-x968-ca-cert"

    #@26b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26e
    .line 88
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@270
    const/16 v1, 0x2c

    #@272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@275
    move-result-object v1

    #@276
    const-string/jumbo v2, "application/x-x968-user-cert"

    #@279
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27c
    .line 89
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@27e
    const/16 v1, 0x2d

    #@280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@283
    move-result-object v1

    #@284
    const-string/jumbo v2, "text/vnd.wap.si"

    #@287
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28a
    .line 90
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@28c
    const/16 v1, 0x2e

    #@28e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@291
    move-result-object v1

    #@292
    const-string/jumbo v2, "application/vnd.wap.sic"

    #@295
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@298
    .line 91
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@29a
    const/16 v1, 0x2f

    #@29c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29f
    move-result-object v1

    #@2a0
    const-string/jumbo v2, "text/vnd.wap.sl"

    #@2a3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a6
    .line 92
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2a8
    const/16 v1, 0x30

    #@2aa
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ad
    move-result-object v1

    #@2ae
    const-string/jumbo v2, "application/vnd.wap.slc"

    #@2b1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b4
    .line 93
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2b6
    const/16 v1, 0x31

    #@2b8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bb
    move-result-object v1

    #@2bc
    const-string/jumbo v2, "text/vnd.wap.co"

    #@2bf
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c2
    .line 94
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2c4
    const/16 v1, 0x32

    #@2c6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c9
    move-result-object v1

    #@2ca
    const-string/jumbo v2, "application/vnd.wap.coc"

    #@2cd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d0
    .line 95
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2d2
    const/16 v1, 0x33

    #@2d4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d7
    move-result-object v1

    #@2d8
    const-string/jumbo v2, "application/vnd.wap.multipart.related"

    #@2db
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2de
    .line 96
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2e0
    const/16 v1, 0x34

    #@2e2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e5
    move-result-object v1

    #@2e6
    const-string/jumbo v2, "application/vnd.wap.sia"

    #@2e9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ec
    .line 97
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2ee
    const/16 v1, 0x35

    #@2f0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f3
    move-result-object v1

    #@2f4
    const-string/jumbo v2, "text/vnd.wap.connectivity-xml"

    #@2f7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fa
    .line 98
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@2fc
    const/16 v1, 0x36

    #@2fe
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@301
    move-result-object v1

    #@302
    const-string/jumbo v2, "application/vnd.wap.connectivity-wbxml"

    #@305
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@308
    .line 99
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@30a
    const/16 v1, 0x37

    #@30c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30f
    move-result-object v1

    #@310
    const-string/jumbo v2, "application/pkcs7-mime"

    #@313
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@316
    .line 100
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@318
    const/16 v1, 0x38

    #@31a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31d
    move-result-object v1

    #@31e
    const-string/jumbo v2, "application/vnd.wap.hashed-certificate"

    #@321
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@324
    .line 101
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@326
    const/16 v1, 0x39

    #@328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32b
    move-result-object v1

    #@32c
    const-string/jumbo v2, "application/vnd.wap.signed-certificate"

    #@32f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@332
    .line 102
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@334
    const/16 v1, 0x3a

    #@336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@339
    move-result-object v1

    #@33a
    const-string/jumbo v2, "application/vnd.wap.cert-response"

    #@33d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@340
    .line 103
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@342
    const/16 v1, 0x3b

    #@344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@347
    move-result-object v1

    #@348
    const-string/jumbo v2, "application/xhtml+xml"

    #@34b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34e
    .line 104
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@350
    const/16 v1, 0x3c

    #@352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@355
    move-result-object v1

    #@356
    const-string/jumbo v2, "application/wml+xml"

    #@359
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35c
    .line 105
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@35e
    const/16 v1, 0x3d

    #@360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@363
    move-result-object v1

    #@364
    const-string/jumbo v2, "text/css"

    #@367
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36a
    .line 106
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@36c
    const/16 v1, 0x3e

    #@36e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@371
    move-result-object v1

    #@372
    const-string/jumbo v2, "application/vnd.wap.mms-message"

    #@375
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@378
    .line 107
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@37a
    const/16 v1, 0x3f

    #@37c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37f
    move-result-object v1

    #@380
    const-string/jumbo v2, "application/vnd.wap.rollover-certificate"

    #@383
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@386
    .line 108
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@388
    const/16 v1, 0x40

    #@38a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38d
    move-result-object v1

    #@38e
    const-string/jumbo v2, "application/vnd.wap.locc+wbxml"

    #@391
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@394
    .line 109
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@396
    const/16 v1, 0x41

    #@398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39b
    move-result-object v1

    #@39c
    const-string/jumbo v2, "application/vnd.wap.loc+xml"

    #@39f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a2
    .line 110
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3a4
    const/16 v1, 0x42

    #@3a6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a9
    move-result-object v1

    #@3aa
    const-string/jumbo v2, "application/vnd.syncml.dm+wbxml"

    #@3ad
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b0
    .line 111
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3b2
    const/16 v1, 0x43

    #@3b4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b7
    move-result-object v1

    #@3b8
    const-string/jumbo v2, "application/vnd.syncml.dm+xml"

    #@3bb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3be
    .line 112
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3c0
    const/16 v1, 0x44

    #@3c2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c5
    move-result-object v1

    #@3c6
    const-string/jumbo v2, "application/vnd.syncml.notification"

    #@3c9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3cc
    .line 113
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3ce
    const/16 v1, 0x45

    #@3d0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d3
    move-result-object v1

    #@3d4
    const-string/jumbo v2, "application/vnd.wap.xhtml+xml"

    #@3d7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3da
    .line 114
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3dc
    const/16 v1, 0x46

    #@3de
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e1
    move-result-object v1

    #@3e2
    const-string/jumbo v2, "application/vnd.wv.csp.cir"

    #@3e5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e8
    .line 115
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3ea
    const/16 v1, 0x47

    #@3ec
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ef
    move-result-object v1

    #@3f0
    const-string/jumbo v2, "application/vnd.oma.dd+xml"

    #@3f3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f6
    .line 116
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@3f8
    const/16 v1, 0x48

    #@3fa
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3fd
    move-result-object v1

    #@3fe
    const-string/jumbo v2, "application/vnd.oma.drm.message"

    #@401
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@404
    .line 117
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@406
    const/16 v1, 0x49

    #@408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40b
    move-result-object v1

    #@40c
    const-string/jumbo v2, "application/vnd.oma.drm.content"

    #@40f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@412
    .line 118
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@414
    const/16 v1, 0x4a

    #@416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@419
    move-result-object v1

    #@41a
    const-string/jumbo v2, "application/vnd.oma.drm.rights+xml"

    #@41d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@420
    .line 119
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@422
    const/16 v1, 0x4b

    #@424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@427
    move-result-object v1

    #@428
    const-string/jumbo v2, "application/vnd.oma.drm.rights+wbxml"

    #@42b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42e
    .line 120
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@430
    const/16 v1, 0x4c

    #@432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@435
    move-result-object v1

    #@436
    const-string/jumbo v2, "application/vnd.wv.csp+xml"

    #@439
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43c
    .line 121
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@43e
    const/16 v1, 0x4d

    #@440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@443
    move-result-object v1

    #@444
    const-string/jumbo v2, "application/vnd.wv.csp+wbxml"

    #@447
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44a
    .line 122
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@44c
    const/16 v1, 0x4e

    #@44e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@451
    move-result-object v1

    #@452
    const-string/jumbo v2, "application/vnd.syncml.ds.notification"

    #@455
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@458
    .line 123
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@45a
    const/16 v1, 0x4f

    #@45c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45f
    move-result-object v1

    #@460
    const-string/jumbo v2, "audio/*"

    #@463
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@466
    .line 124
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@468
    const/16 v1, 0x50

    #@46a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46d
    move-result-object v1

    #@46e
    const-string/jumbo v2, "video/*"

    #@471
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@474
    .line 125
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@476
    const/16 v1, 0x51

    #@478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47b
    move-result-object v1

    #@47c
    const-string/jumbo v2, "application/vnd.oma.dd2+xml"

    #@47f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@482
    .line 126
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@484
    const/16 v1, 0x52

    #@486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@489
    move-result-object v1

    #@48a
    const-string/jumbo v2, "application/mikey"

    #@48d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@490
    .line 127
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@492
    const/16 v1, 0x53

    #@494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@497
    move-result-object v1

    #@498
    const-string/jumbo v2, "application/vnd.oma.dcd"

    #@49b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49e
    .line 128
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4a0
    const/16 v1, 0x54

    #@4a2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a5
    move-result-object v1

    #@4a6
    const-string/jumbo v2, "application/vnd.oma.dcdc"

    #@4a9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ac
    .line 130
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4ae
    const/16 v1, 0x201

    #@4b0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b3
    move-result-object v1

    #@4b4
    const-string/jumbo v2, "application/vnd.uplanet.cacheop-wbxml"

    #@4b7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ba
    .line 131
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4bc
    const/16 v1, 0x202

    #@4be
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c1
    move-result-object v1

    #@4c2
    const-string/jumbo v2, "application/vnd.uplanet.signal"

    #@4c5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c8
    .line 132
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4ca
    const/16 v1, 0x203

    #@4cc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4cf
    move-result-object v1

    #@4d0
    const-string/jumbo v2, "application/vnd.uplanet.alert-wbxml"

    #@4d3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d6
    .line 133
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4d8
    const/16 v1, 0x204

    #@4da
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4dd
    move-result-object v1

    #@4de
    const-string/jumbo v2, "application/vnd.uplanet.list-wbxml"

    #@4e1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e4
    .line 134
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4e6
    const/16 v1, 0x205

    #@4e8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4eb
    move-result-object v1

    #@4ec
    const-string/jumbo v2, "application/vnd.uplanet.listcmd-wbxml"

    #@4ef
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f2
    .line 135
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@4f4
    const/16 v1, 0x206

    #@4f6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f9
    move-result-object v1

    #@4fa
    const-string/jumbo v2, "application/vnd.uplanet.channel-wbxml"

    #@4fd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@500
    .line 136
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@502
    const/16 v1, 0x207

    #@504
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@507
    move-result-object v1

    #@508
    const-string/jumbo v2, "application/vnd.uplanet.provisioning-status-uri"

    #@50b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50e
    .line 137
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@510
    const/16 v1, 0x208

    #@512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@515
    move-result-object v1

    #@516
    const-string/jumbo v2, "x-wap.multipart/vnd.uplanet.header-set"

    #@519
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51c
    .line 138
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@51e
    const/16 v1, 0x209

    #@520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@523
    move-result-object v1

    #@524
    const-string/jumbo v2, "application/vnd.uplanet.bearer-choice-wbxml"

    #@527
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52a
    .line 139
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@52c
    const/16 v1, 0x20a

    #@52e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@531
    move-result-object v1

    #@532
    const-string/jumbo v2, "application/vnd.phonecom.mmc-wbxml"

    #@535
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@538
    .line 140
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@53a
    const/16 v1, 0x20b

    #@53c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53f
    move-result-object v1

    #@540
    const-string/jumbo v2, "application/vnd.nokia.syncset+wbxml"

    #@543
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@546
    .line 141
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@548
    const/16 v1, 0x20c

    #@54a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54d
    move-result-object v1

    #@54e
    const-string/jumbo v2, "image/x-up-wpng"

    #@551
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@554
    .line 142
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@556
    const/16 v1, 0x300

    #@558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55b
    move-result-object v1

    #@55c
    const-string/jumbo v2, "application/iota.mmc-wbxml"

    #@55f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@562
    .line 143
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@564
    const/16 v1, 0x301

    #@566
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@569
    move-result-object v1

    #@56a
    const-string/jumbo v2, "application/iota.mmc-xml"

    #@56d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@570
    .line 144
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@572
    const/16 v1, 0x302

    #@574
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@577
    move-result-object v1

    #@578
    const-string/jumbo v2, "application/vnd.syncml+xml"

    #@57b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57e
    .line 145
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@580
    const/16 v1, 0x303

    #@582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@585
    move-result-object v1

    #@586
    const-string/jumbo v2, "application/vnd.syncml+wbxml"

    #@589
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58c
    .line 146
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@58e
    const/16 v1, 0x304

    #@590
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@593
    move-result-object v1

    #@594
    const-string/jumbo v2, "text/vnd.wap.emn+xml"

    #@597
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59a
    .line 147
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@59c
    const/16 v1, 0x305

    #@59e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a1
    move-result-object v1

    #@5a2
    const-string/jumbo v2, "text/calendar"

    #@5a5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a8
    .line 148
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5aa
    const/16 v1, 0x306

    #@5ac
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5af
    move-result-object v1

    #@5b0
    const-string/jumbo v2, "application/vnd.omads-email+xml"

    #@5b3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b6
    .line 149
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5b8
    const/16 v1, 0x307

    #@5ba
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5bd
    move-result-object v1

    #@5be
    const-string/jumbo v2, "application/vnd.omads-file+xml"

    #@5c1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c4
    .line 150
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5c6
    const/16 v1, 0x308

    #@5c8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5cb
    move-result-object v1

    #@5cc
    const-string/jumbo v2, "application/vnd.omads-folder+xml"

    #@5cf
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d2
    .line 151
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5d4
    const/16 v1, 0x309

    #@5d6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d9
    move-result-object v1

    #@5da
    const-string/jumbo v2, "text/directory;profile=vCard"

    #@5dd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e0
    .line 152
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5e2
    const/16 v1, 0x30a

    #@5e4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e7
    move-result-object v1

    #@5e8
    const-string/jumbo v2, "application/vnd.wap.emn+wbxml"

    #@5eb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5ee
    .line 153
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5f0
    const/16 v1, 0x30b

    #@5f2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f5
    move-result-object v1

    #@5f6
    const-string/jumbo v2, "application/vnd.nokia.ipdc-purchase-response"

    #@5f9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5fc
    .line 154
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@5fe
    const/16 v1, 0x30c

    #@600
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@603
    move-result-object v1

    #@604
    const-string/jumbo v2, "application/vnd.motorola.screen3+xml"

    #@607
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60a
    .line 155
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@60c
    const/16 v1, 0x30d

    #@60e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@611
    move-result-object v1

    #@612
    const-string/jumbo v2, "application/vnd.motorola.screen3+gzip"

    #@615
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@618
    .line 156
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@61a
    const/16 v1, 0x30e

    #@61c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61f
    move-result-object v1

    #@620
    const-string/jumbo v2, "application/vnd.cmcc.setting+wbxml"

    #@623
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@626
    .line 157
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@628
    const/16 v1, 0x30f

    #@62a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62d
    move-result-object v1

    #@62e
    const-string/jumbo v2, "application/vnd.cmcc.bombing+wbxml"

    #@631
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@634
    .line 158
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@636
    const/16 v1, 0x310

    #@638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63b
    move-result-object v1

    #@63c
    const-string/jumbo v2, "application/vnd.docomo.pf"

    #@63f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@642
    .line 159
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@644
    const/16 v1, 0x311

    #@646
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@649
    move-result-object v1

    #@64a
    const-string/jumbo v2, "application/vnd.docomo.ub"

    #@64d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@650
    .line 160
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@652
    const/16 v1, 0x312

    #@654
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@657
    move-result-object v1

    #@658
    const-string/jumbo v2, "application/vnd.omaloc-supl-init"

    #@65b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65e
    .line 161
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@660
    const/16 v1, 0x313

    #@662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@665
    move-result-object v1

    #@666
    const-string/jumbo v2, "application/vnd.oma.group-usage-list+xml"

    #@669
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66c
    .line 162
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@66e
    const/16 v1, 0x314

    #@670
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@673
    move-result-object v1

    #@674
    const-string/jumbo v2, "application/oma-directory+xml"

    #@677
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67a
    .line 163
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@67c
    const/16 v1, 0x315

    #@67e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@681
    move-result-object v1

    #@682
    const-string/jumbo v2, "application/vnd.docomo.pf2"

    #@685
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@688
    .line 164
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@68a
    const/16 v1, 0x316

    #@68c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68f
    move-result-object v1

    #@690
    const-string/jumbo v2, "application/vnd.oma.drm.roap-trigger+wbxml"

    #@693
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@696
    .line 165
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@698
    const/16 v1, 0x317

    #@69a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69d
    move-result-object v1

    #@69e
    const-string/jumbo v2, "application/vnd.sbm.mid2"

    #@6a1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a4
    .line 166
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@6a6
    const/16 v1, 0x318

    #@6a8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6ab
    move-result-object v1

    #@6ac
    const-string/jumbo v2, "application/vnd.wmf.bootstrap"

    #@6af
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b2
    .line 167
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@6b4
    const/16 v1, 0x319

    #@6b6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b9
    move-result-object v1

    #@6ba
    const-string/jumbo v2, "application/vnc.cmcc.dcd+xml"

    #@6bd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c0
    .line 168
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@6c2
    const/16 v1, 0x31a

    #@6c4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c7
    move-result-object v1

    #@6c8
    const-string/jumbo v2, "application/vnd.sbm.cid"

    #@6cb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6ce
    .line 169
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@6d0
    const/16 v1, 0x31b

    #@6d2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d5
    move-result-object v1

    #@6d6
    const-string/jumbo v2, "application/vnd.oma.bcast.provisioningtrigger"

    #@6d9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6dc
    .line 171
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@6de
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e1
    move-result-object v1

    #@6e2
    const-string/jumbo v2, "Q"

    #@6e5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e8
    .line 172
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@6ea
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6ed
    move-result-object v1

    #@6ee
    const-string/jumbo v2, "Charset"

    #@6f1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f4
    .line 173
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@6f6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f9
    move-result-object v1

    #@6fa
    const-string/jumbo v2, "Level"

    #@6fd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@700
    .line 174
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@702
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@705
    move-result-object v1

    #@706
    const-string/jumbo v2, "Type"

    #@709
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70c
    .line 175
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@70e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@711
    move-result-object v1

    #@712
    const-string/jumbo v2, "Differences"

    #@715
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@718
    .line 176
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@71a
    const/16 v1, 0x8

    #@71c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71f
    move-result-object v1

    #@720
    const-string/jumbo v2, "Padding"

    #@723
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@726
    .line 177
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@728
    const/16 v1, 0x9

    #@72a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72d
    move-result-object v1

    #@72e
    const-string/jumbo v2, "Type"

    #@731
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@734
    .line 178
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@736
    const/16 v1, 0xe

    #@738
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73b
    move-result-object v1

    #@73c
    const-string/jumbo v2, "Max-Age"

    #@73f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@742
    .line 179
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@744
    const/16 v1, 0x10

    #@746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@749
    move-result-object v1

    #@74a
    const-string/jumbo v2, "Secure"

    #@74d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@750
    .line 180
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@752
    const/16 v1, 0x11

    #@754
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@757
    move-result-object v1

    #@758
    const-string/jumbo v2, "SEC"

    #@75b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75e
    .line 181
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@760
    const/16 v1, 0x12

    #@762
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@765
    move-result-object v1

    #@766
    const-string/jumbo v2, "MAC"

    #@769
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76c
    .line 182
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@76e
    const/16 v1, 0x13

    #@770
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@773
    move-result-object v1

    #@774
    const-string/jumbo v2, "Creation-date"

    #@777
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77a
    .line 183
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@77c
    const/16 v1, 0x14

    #@77e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@781
    move-result-object v1

    #@782
    const-string/jumbo v2, "Modification-date"

    #@785
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@788
    .line 184
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@78a
    const/16 v1, 0x15

    #@78c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78f
    move-result-object v1

    #@790
    const-string/jumbo v2, "Read-date"

    #@793
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@796
    .line 185
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@798
    const/16 v1, 0x16

    #@79a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79d
    move-result-object v1

    #@79e
    const-string/jumbo v2, "Size"

    #@7a1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7a4
    .line 186
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7a6
    const/16 v1, 0x17

    #@7a8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7ab
    move-result-object v1

    #@7ac
    const-string/jumbo v2, "Name"

    #@7af
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b2
    .line 187
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7b4
    const/16 v1, 0x18

    #@7b6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b9
    move-result-object v1

    #@7ba
    const-string/jumbo v2, "Filename"

    #@7bd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c0
    .line 188
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7c2
    const/16 v1, 0x19

    #@7c4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c7
    move-result-object v1

    #@7c8
    const-string/jumbo v2, "Start"

    #@7cb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7ce
    .line 189
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7d0
    const/16 v1, 0x1a

    #@7d2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d5
    move-result-object v1

    #@7d6
    const-string/jumbo v2, "Start-info"

    #@7d9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7dc
    .line 190
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7de
    const/16 v1, 0x1b

    #@7e0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e3
    move-result-object v1

    #@7e4
    const-string/jumbo v2, "Comment"

    #@7e7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7ea
    .line 191
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7ec
    const/16 v1, 0x1c

    #@7ee
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f1
    move-result-object v1

    #@7f2
    const-string/jumbo v2, "Domain"

    #@7f5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f8
    .line 192
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@7fa
    const/16 v1, 0x1d

    #@7fc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7ff
    move-result-object v1

    #@800
    const-string/jumbo v2, "Path"

    #@803
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@806
    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "pdu"    # [B

    #@0
    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 207
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@5
    .line 206
    return-void
.end method

.method private decodeNoValue(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@4
    aget-byte v0, v0, p1

    #@6
    if-nez v0, :cond_0

    #@8
    .line 538
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@a
    .line 539
    return v2

    #@b
    .line 541
    :cond_0
    return v1
.end method

.method private expandWellKnownMimeType()V
    .locals 4

    #@0
    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 552
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@6
    long-to-int v0, v2

    #@7
    .line 553
    .local v0, "binaryContentType":I
    sget-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/String;

    #@13
    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@15
    .line 550
    .end local v0    # "binaryContentType":I
    :goto_0
    return-void

    #@16
    .line 555
    :cond_0
    const-wide/16 v2, -0x1

    #@18
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@1a
    goto :goto_0
.end method

.method private readContentParameters(III)Z
    .locals 12
    .param p1, "startIndex"    # I
    .param p2, "leftToRead"    # I
    .param p3, "accumulator"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 470
    if-lez p2, :cond_8

    #@4
    .line 471
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@6
    aget-byte v1, v6, p1

    #@8
    .line 472
    .local v1, "nextByte":B
    const/4 v4, 0x0

    #@9
    .line 473
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    #@a
    .line 474
    .local v2, "param":Ljava/lang/String;
    and-int/lit16 v6, v1, 0x80

    #@c
    if-nez v6, :cond_2

    #@e
    const/16 v6, 0x1f

    #@10
    if-le v1, v6, :cond_2

    #@12
    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    #@15
    .line 476
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@17
    .line 477
    .local v2, "param":Ljava/lang/String;
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@19
    add-int/lit8 v3, v6, 0x0

    #@1b
    .line 503
    .local v3, "totalRead":I
    :cond_0
    add-int v6, p1, v3

    #@1d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeNoValue(I)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_6

    #@23
    .line 504
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@25
    add-int/2addr v3, v6

    #@26
    .line 505
    const/4 v4, 0x0

    #@27
    .line 519
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    #@29
    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 520
    add-int v6, p1, v3

    #@2e
    sub-int v7, p2, v3

    #@30
    .line 521
    add-int v8, p3, v3

    #@32
    .line 520
    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    #@35
    move-result v6

    #@36
    return v6

    #@37
    .line 479
    .end local v3    # "totalRead":I
    .local v2, "param":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_5

    #@3d
    .line 480
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@3f
    add-int/lit8 v3, v6, 0x0

    #@41
    .line 481
    .restart local v3    # "totalRead":I
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@43
    long-to-int v5, v6

    #@44
    .line 482
    .local v5, "wellKnownParameterValue":I
    sget-object v6, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    #@46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    .end local v2    # "param":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@50
    .line 483
    .local v2, "param":Ljava/lang/String;
    if-nez v2, :cond_3

    #@52
    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "unassigned/0x"

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    int-to-long v8, v5

    #@5f
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 487
    :cond_3
    if-nez v5, :cond_0

    #@6d
    .line 488
    add-int v6, p1, v3

    #@6f
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_4

    #@75
    .line 489
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@77
    add-int/2addr v3, v6

    #@78
    .line 490
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@7a
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 491
    .local v4, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    #@80
    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 492
    add-int v6, p1, v3

    #@85
    sub-int v7, p2, v3

    #@87
    .line 493
    add-int v8, p3, v3

    #@89
    .line 492
    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    #@8c
    move-result v6

    #@8d
    return v6

    #@8e
    .line 495
    .local v4, "value":Ljava/lang/String;
    :cond_4
    return v10

    #@8f
    .line 499
    .end local v3    # "totalRead":I
    .end local v5    # "wellKnownParameterValue":I
    .local v2, "param":Ljava/lang/String;
    :cond_5
    return v10

    #@90
    .line 506
    .local v2, "param":Ljava/lang/String;
    .restart local v3    # "totalRead":I
    :cond_6
    add-int v6, p1, v3

    #@92
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    #@95
    move-result v6

    #@96
    if-eqz v6, :cond_7

    #@98
    .line 507
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@9a
    add-int/2addr v3, v6

    #@9b
    .line 508
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@9d
    long-to-int v0, v6

    #@9e
    .line 509
    .local v0, "intValue":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    .local v4, "value":Ljava/lang/String;
    goto :goto_0

    #@a3
    .line 511
    .end local v0    # "intValue":I
    .local v4, "value":Ljava/lang/String;
    :cond_7
    add-int v6, p1, v3

    #@a5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    #@a8
    .line 512
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@aa
    add-int/2addr v3, v6

    #@ab
    .line 513
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@ad
    .line 514
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v6, "\""

    #@b0
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b3
    move-result v6

    #@b4
    if-eqz v6, :cond_1

    #@b6
    .line 516
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b9
    move-result-object v4

    #@ba
    goto/16 :goto_0

    #@bc
    .line 524
    .end local v1    # "nextByte":B
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "totalRead":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_8
    iput p3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@be
    .line 525
    return v11
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 396
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@9
    .line 397
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 399
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public decodeContentLength(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 569
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public decodeContentLocation(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public decodeContentType(I)Z
    .locals 13
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 417
    new-instance v8, Ljava/util/HashMap;

    #@4
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@7
    iput-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    #@9
    .line 420
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    #@c
    move-result v8

    #@d
    if-nez v8, :cond_1

    #@f
    .line 421
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    #@12
    move-result v1

    #@13
    .line 422
    .local v1, "found":Z
    if-eqz v1, :cond_0

    #@15
    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    #@18
    .line 425
    :cond_0
    return v1

    #@19
    .line 427
    .end local v1    # "found":Z
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@1b
    long-to-int v2, v8

    #@1c
    .line 428
    .local v2, "headersLength":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@1f
    move-result v3

    #@20
    .line 429
    .local v3, "mediaPrefixLength":I
    add-int v8, p1, v3

    #@22
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_3

    #@28
    .line 430
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@2a
    add-int/2addr v8, v3

    #@2b
    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@2d
    .line 431
    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@2f
    .line 432
    .local v5, "readLength":I
    const/4 v8, 0x0

    #@30
    iput-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@32
    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    #@35
    .line 434
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@37
    .line 435
    .local v6, "wellKnownValue":J
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@39
    .line 436
    .local v4, "mimeType":Ljava/lang/String;
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@3b
    add-int/2addr v8, p1

    #@3c
    .line 437
    iget v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@3e
    sub-int/2addr v9, v3

    #@3f
    sub-int v9, v2, v9

    #@41
    const/4 v10, 0x0

    #@42
    .line 436
    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_2

    #@48
    .line 438
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@4a
    add-int/2addr v8, v5

    #@4b
    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@4d
    .line 439
    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@4f
    .line 440
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@51
    .line 441
    return v12

    #@52
    .line 443
    :cond_2
    return v11

    #@53
    .line 445
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "readLength":I
    .end local v6    # "wellKnownValue":J
    :cond_3
    add-int v8, p1, v3

    #@55
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    #@58
    move-result v8

    #@59
    if-eqz v8, :cond_4

    #@5b
    .line 446
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@5d
    add-int/2addr v8, v3

    #@5e
    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@60
    .line 447
    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@62
    .line 448
    .restart local v5    # "readLength":I
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    #@65
    .line 449
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@67
    .line 450
    .restart local v6    # "wellKnownValue":J
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@69
    .line 451
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@6b
    add-int/2addr v8, p1

    #@6c
    .line 452
    iget v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@6e
    sub-int/2addr v9, v3

    #@6f
    sub-int v9, v2, v9

    #@71
    const/4 v10, 0x0

    #@72
    .line 451
    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    #@75
    move-result v8

    #@76
    if-eqz v8, :cond_4

    #@78
    .line 453
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@7a
    add-int/2addr v8, v5

    #@7b
    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@7d
    .line 454
    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@7f
    .line 455
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 456
    return v12

    #@82
    .line 459
    .end local v2    # "headersLength":I
    .end local v3    # "mediaPrefixLength":I
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "readLength":I
    .end local v6    # "wellKnownValue":J
    :catch_0
    move-exception v0

    #@83
    .line 461
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v11

    #@84
    .line 463
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "headersLength":I
    .restart local v3    # "mediaPrefixLength":I
    :cond_4
    return v11
.end method

.method public decodeExtensionMedia(I)Z
    .locals 6
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    move v0, p1

    #@2
    .line 370
    .local v0, "index":I
    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@4
    .line 371
    const/4 v3, 0x0

    #@5
    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@7
    .line 372
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@9
    array-length v1, v3

    #@a
    .line 373
    .local v1, "length":I
    if-ge v0, v1, :cond_0

    #@c
    const/4 v2, 0x1

    #@d
    .line 375
    .local v2, "rtrn":Z
    :goto_0
    if-ge v0, v1, :cond_1

    #@f
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@11
    aget-byte v3, v3, v0

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 376
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 373
    .end local v2    # "rtrn":Z
    :cond_0
    const/4 v2, 0x0

    #@19
    .restart local v2    # "rtrn":Z
    goto :goto_0

    #@1a
    .line 379
    :cond_1
    sub-int v3, v0, p1

    #@1c
    add-int/lit8 v3, v3, 0x1

    #@1e
    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@20
    .line 380
    new-instance v3, Ljava/lang/String;

    #@22
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@24
    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@26
    add-int/lit8 v5, v5, -0x1

    #@28
    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    #@2b
    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@2d
    .line 382
    return v2
.end method

.method public decodeIntegerValue(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 305
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public decodeLongInteger(I)Z
    .locals 7
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 281
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@3
    aget-byte v2, v2, p1

    #@5
    and-int/lit16 v1, v2, 0xff

    #@7
    .line 283
    .local v1, "lengthMultiOctet":I
    const/16 v2, 0x1e

    #@9
    if-le v1, v2, :cond_0

    #@b
    .line 284
    const/4 v2, 0x0

    #@c
    return v2

    #@d
    .line 286
    :cond_0
    const-wide/16 v2, 0x0

    #@f
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@11
    .line 287
    const/4 v0, 0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    #@14
    .line 288
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@16
    const/16 v4, 0x8

    #@18
    shl-long/2addr v2, v4

    #@19
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@1b
    add-int v5, p1, v0

    #@1d
    aget-byte v4, v4, v5

    #@1f
    and-int/lit16 v4, v4, 0xff

    #@21
    int-to-long v4, v4

    #@22
    or-long/2addr v2, v4

    #@23
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@25
    .line 287
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 290
    :cond_1
    add-int/lit8 v2, v1, 0x1

    #@2a
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@2c
    .line 291
    return v6
.end method

.method public decodeShortInteger(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@4
    aget-byte v0, v0, p1

    #@6
    and-int/lit16 v0, v0, 0x80

    #@8
    if-nez v0, :cond_0

    #@a
    .line 264
    return v1

    #@b
    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@d
    aget-byte v0, v0, p1

    #@f
    and-int/lit8 v0, v0, 0x7f

    #@11
    int-to-long v0, v0

    #@12
    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@14
    .line 267
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@16
    .line 268
    return v2
.end method

.method public decodeTextString(I)Z
    .locals 5
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 220
    move v0, p1

    #@1
    .line 221
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@3
    aget-byte v1, v1, v0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 222
    add-int/lit8 v0, v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 224
    :cond_0
    sub-int v1, v0, p1

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@10
    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@12
    aget-byte v1, v1, p1

    #@14
    const/16 v2, 0x7f

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 226
    new-instance v1, Ljava/lang/String;

    #@1a
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@1c
    add-int/lit8 v3, p1, 0x1

    #@1e
    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@20
    add-int/lit8 v4, v4, -0x2

    #@22
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    #@25
    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@27
    .line 230
    :goto_1
    const/4 v1, 0x1

    #@28
    return v1

    #@29
    .line 228
    :cond_1
    new-instance v1, Ljava/lang/String;

    #@2b
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@2d
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@2f
    add-int/lit8 v3, v3, -0x1

    #@31
    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    #@34
    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@36
    goto :goto_1
.end method

.method public decodeTokenText(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 243
    move v0, p1

    #@1
    .line 244
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@3
    aget-byte v1, v1, v0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 245
    add-int/lit8 v0, v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 247
    :cond_0
    sub-int v1, v0, p1

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@10
    .line 248
    new-instance v1, Ljava/lang/String;

    #@12
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@14
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@1d
    .line 250
    const/4 v1, 0x1

    #@1e
    return v1
.end method

.method public decodeUintvarInteger(I)Z
    .locals 8
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/4 v7, 0x7

    #@1
    const/4 v6, 0x0

    #@2
    .line 320
    move v0, p1

    #@3
    .line 322
    .local v0, "index":I
    const-wide/16 v2, 0x0

    #@5
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@7
    .line 323
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@9
    aget-byte v1, v1, v0

    #@b
    and-int/lit16 v1, v1, 0x80

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 324
    sub-int v1, v0, p1

    #@11
    const/4 v2, 0x4

    #@12
    if-lt v1, v2, :cond_0

    #@14
    .line 325
    return v6

    #@15
    .line 327
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@17
    shl-long/2addr v2, v7

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@1a
    aget-byte v1, v1, v0

    #@1c
    and-int/lit8 v1, v1, 0x7f

    #@1e
    int-to-long v4, v1

    #@1f
    or-long/2addr v2, v4

    #@20
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@22
    .line 328
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 330
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@27
    shl-long/2addr v2, v7

    #@28
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@2a
    aget-byte v1, v1, v0

    #@2c
    and-int/lit8 v1, v1, 0x7f

    #@2e
    int-to-long v4, v1

    #@2f
    or-long/2addr v2, v4

    #@30
    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@32
    .line 331
    sub-int v1, v0, p1

    #@34
    add-int/lit8 v1, v1, 0x1

    #@36
    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@38
    .line 332
    const/4 v1, 0x1

    #@39
    return v1
.end method

.method public decodeValueLength(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    #@0
    .prologue
    const/16 v1, 0x1f

    #@2
    const/4 v2, 0x1

    #@3
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@5
    aget-byte v0, v0, p1

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 346
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@f
    aget-byte v0, v0, p1

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@15
    aget-byte v0, v0, p1

    #@17
    int-to-long v0, v0

    #@18
    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@1a
    .line 350
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@1c
    .line 355
    :goto_0
    return v2

    #@1d
    .line 352
    :cond_1
    add-int/lit8 v0, p1, 0x1

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@22
    .line 353
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@28
    goto :goto_0
.end method

.method public decodeXWapApplicationId(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 597
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@9
    .line 598
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public decodeXWapContentURI(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 677
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getContentParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    #@0
    .prologue
    .line 697
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    #@2
    return v0
.end method

.method public getValue32()J
    .locals 2

    #@0
    .prologue
    .line 704
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@2
    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public seekXWapApplicationId(II)Z
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    const/16 v7, 0x1f

    #@2
    const/4 v6, 0x0

    #@3
    .line 613
    move v2, p1

    #@4
    .line 616
    .local v2, "index":I
    move v2, p1

    #@5
    :goto_0
    if-gt v2, p2, :cond_9

    #@7
    .line 621
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@10
    move-result-wide v4

    #@11
    long-to-int v1, v4

    #@12
    .line 624
    .local v1, "fieldValue":I
    const/16 v4, 0x2f

    #@14
    if-ne v1, v4, :cond_1

    #@16
    .line 625
    add-int/lit8 v4, v2, 0x1

    #@18
    int-to-long v4, v4

    #@19
    iput-wide v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    #@1b
    .line 626
    const/4 v4, 0x1

    #@1c
    return v4

    #@1d
    .line 629
    .end local v1    # "fieldValue":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_1

    #@23
    return v6

    #@24
    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@27
    move-result v4

    #@28
    add-int/2addr v2, v4

    #@29
    .line 632
    if-le v2, p2, :cond_2

    #@2b
    return v6

    #@2c
    .line 645
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@2e
    aget-byte v3, v4, v2

    #@30
    .line 646
    .local v3, "val":B
    if-ltz v3, :cond_3

    #@32
    const/16 v4, 0x1e

    #@34
    if-gt v3, v4, :cond_3

    #@36
    .line 647
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    #@38
    aget-byte v4, v4, v2

    #@3a
    add-int/lit8 v4, v4, 0x1

    #@3c
    add-int/2addr v2, v4

    #@3d
    goto :goto_0

    #@3e
    .line 648
    :cond_3
    if-ne v3, v7, :cond_6

    #@40
    .line 649
    add-int/lit8 v4, v2, 0x1

    #@42
    if-lt v4, p2, :cond_4

    #@44
    return v6

    #@45
    .line 650
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@47
    .line 651
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@4a
    move-result v4

    #@4b
    if-nez v4, :cond_5

    #@4d
    return v6

    #@4e
    .line 652
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@51
    move-result v4

    #@52
    add-int/2addr v2, v4

    #@53
    goto :goto_0

    #@54
    .line 653
    :cond_6
    if-ge v7, v3, :cond_8

    #@56
    const/16 v4, 0x7f

    #@58
    if-gt v3, v4, :cond_8

    #@5a
    .line 654
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_7

    #@60
    return v6

    #@61
    .line 655
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    move-result v4

    #@65
    add-int/2addr v2, v4

    #@66
    goto :goto_0

    #@67
    .line 657
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 660
    .end local v3    # "val":B
    :catch_0
    move-exception v0

    #@6b
    .line 662
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v6

    #@6c
    .line 664
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    return v6
.end method
