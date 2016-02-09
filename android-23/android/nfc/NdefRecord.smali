.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NdefRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field private static final MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final RTD_ALTERNATIVE_CARRIER:[B

.field public static final RTD_ANDROID_APP:[B

.field public static final RTD_HANDOVER_CARRIER:[B

.field public static final RTD_HANDOVER_REQUEST:[B

.field public static final RTD_HANDOVER_SELECT:[B

.field public static final RTD_SMART_POSTER:[B

.field public static final RTD_TEXT:[B

.field public static final RTD_URI:[B

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x2

    #@3
    .line 174
    new-array v0, v4, [B

    #@5
    const/16 v1, 0x54

    #@7
    aput-byte v1, v0, v3

    #@9
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    #@b
    .line 180
    new-array v0, v4, [B

    #@d
    const/16 v1, 0x55

    #@f
    aput-byte v1, v0, v3

    #@11
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    #@13
    .line 186
    new-array v0, v2, [B

    #@15
    fill-array-data v0, :array_0

    #@18
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    #@1a
    .line 192
    new-array v0, v2, [B

    #@1c
    fill-array-data v0, :array_1

    #@1f
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    #@21
    .line 198
    new-array v0, v2, [B

    #@23
    fill-array-data v0, :array_2

    #@26
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    #@28
    .line 204
    new-array v0, v2, [B

    #@2a
    fill-array-data v0, :array_3

    #@2d
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    #@2f
    .line 210
    new-array v0, v2, [B

    #@31
    fill-array-data v0, :array_4

    #@34
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    #@36
    .line 224
    const-string/jumbo v0, "android.com:pkg"

    #@39
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    #@3f
    .line 237
    const/16 v0, 0x24

    #@41
    new-array v0, v0, [Ljava/lang/String;

    #@43
    .line 238
    const-string/jumbo v1, ""

    #@46
    aput-object v1, v0, v3

    #@48
    .line 239
    const-string/jumbo v1, "http://www."

    #@4b
    aput-object v1, v0, v4

    #@4d
    .line 240
    const-string/jumbo v1, "https://www."

    #@50
    aput-object v1, v0, v2

    #@52
    .line 241
    const-string/jumbo v1, "http://"

    #@55
    const/4 v2, 0x3

    #@56
    aput-object v1, v0, v2

    #@58
    .line 242
    const-string/jumbo v1, "https://"

    #@5b
    const/4 v2, 0x4

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 243
    const-string/jumbo v1, "tel:"

    #@61
    const/4 v2, 0x5

    #@62
    aput-object v1, v0, v2

    #@64
    .line 244
    const-string/jumbo v1, "mailto:"

    #@67
    const/4 v2, 0x6

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 245
    const-string/jumbo v1, "ftp://anonymous:anonymous@"

    #@6d
    const/4 v2, 0x7

    #@6e
    aput-object v1, v0, v2

    #@70
    .line 246
    const-string/jumbo v1, "ftp://ftp."

    #@73
    const/16 v2, 0x8

    #@75
    aput-object v1, v0, v2

    #@77
    .line 247
    const-string/jumbo v1, "ftps://"

    #@7a
    const/16 v2, 0x9

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 248
    const-string/jumbo v1, "sftp://"

    #@81
    const/16 v2, 0xa

    #@83
    aput-object v1, v0, v2

    #@85
    .line 249
    const-string/jumbo v1, "smb://"

    #@88
    const/16 v2, 0xb

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 250
    const-string/jumbo v1, "nfs://"

    #@8f
    const/16 v2, 0xc

    #@91
    aput-object v1, v0, v2

    #@93
    .line 251
    const-string/jumbo v1, "ftp://"

    #@96
    const/16 v2, 0xd

    #@98
    aput-object v1, v0, v2

    #@9a
    .line 252
    const-string/jumbo v1, "dav://"

    #@9d
    const/16 v2, 0xe

    #@9f
    aput-object v1, v0, v2

    #@a1
    .line 253
    const-string/jumbo v1, "news:"

    #@a4
    const/16 v2, 0xf

    #@a6
    aput-object v1, v0, v2

    #@a8
    .line 254
    const-string/jumbo v1, "telnet://"

    #@ab
    const/16 v2, 0x10

    #@ad
    aput-object v1, v0, v2

    #@af
    .line 255
    const-string/jumbo v1, "imap:"

    #@b2
    const/16 v2, 0x11

    #@b4
    aput-object v1, v0, v2

    #@b6
    .line 256
    const-string/jumbo v1, "rtsp://"

    #@b9
    const/16 v2, 0x12

    #@bb
    aput-object v1, v0, v2

    #@bd
    .line 257
    const-string/jumbo v1, "urn:"

    #@c0
    const/16 v2, 0x13

    #@c2
    aput-object v1, v0, v2

    #@c4
    .line 258
    const-string/jumbo v1, "pop:"

    #@c7
    const/16 v2, 0x14

    #@c9
    aput-object v1, v0, v2

    #@cb
    .line 259
    const-string/jumbo v1, "sip:"

    #@ce
    const/16 v2, 0x15

    #@d0
    aput-object v1, v0, v2

    #@d2
    .line 260
    const-string/jumbo v1, "sips:"

    #@d5
    const/16 v2, 0x16

    #@d7
    aput-object v1, v0, v2

    #@d9
    .line 261
    const-string/jumbo v1, "tftp:"

    #@dc
    const/16 v2, 0x17

    #@de
    aput-object v1, v0, v2

    #@e0
    .line 262
    const-string/jumbo v1, "btspp://"

    #@e3
    const/16 v2, 0x18

    #@e5
    aput-object v1, v0, v2

    #@e7
    .line 263
    const-string/jumbo v1, "btl2cap://"

    #@ea
    const/16 v2, 0x19

    #@ec
    aput-object v1, v0, v2

    #@ee
    .line 264
    const-string/jumbo v1, "btgoep://"

    #@f1
    const/16 v2, 0x1a

    #@f3
    aput-object v1, v0, v2

    #@f5
    .line 265
    const-string/jumbo v1, "tcpobex://"

    #@f8
    const/16 v2, 0x1b

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 266
    const-string/jumbo v1, "irdaobex://"

    #@ff
    const/16 v2, 0x1c

    #@101
    aput-object v1, v0, v2

    #@103
    .line 267
    const-string/jumbo v1, "file://"

    #@106
    const/16 v2, 0x1d

    #@108
    aput-object v1, v0, v2

    #@10a
    .line 268
    const-string/jumbo v1, "urn:epc:id:"

    #@10d
    const/16 v2, 0x1e

    #@10f
    aput-object v1, v0, v2

    #@111
    .line 269
    const-string/jumbo v1, "urn:epc:tag:"

    #@114
    const/16 v2, 0x1f

    #@116
    aput-object v1, v0, v2

    #@118
    .line 270
    const-string/jumbo v1, "urn:epc:pat:"

    #@11b
    const/16 v2, 0x20

    #@11d
    aput-object v1, v0, v2

    #@11f
    .line 271
    const-string/jumbo v1, "urn:epc:raw:"

    #@122
    const/16 v2, 0x21

    #@124
    aput-object v1, v0, v2

    #@126
    .line 272
    const-string/jumbo v1, "urn:epc:"

    #@129
    const/16 v2, 0x22

    #@12b
    aput-object v1, v0, v2

    #@12d
    .line 273
    const-string/jumbo v1, "urn:nfc:"

    #@130
    const/16 v2, 0x23

    #@132
    aput-object v1, v0, v2

    #@134
    .line 237
    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    #@136
    .line 278
    new-array v0, v3, [B

    #@138
    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@13a
    .line 991
    new-instance v0, Landroid/nfc/NdefRecord$1;

    #@13c
    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    #@13f
    .line 990
    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@141
    .line 88
    return-void

    #@142
    .line 186
    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    #@147
    .line 192
    nop

    #@148
    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    #@14d
    .line 198
    nop

    #@14e
    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    #@153
    .line 204
    nop

    #@154
    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    #@159
    .line 210
    nop

    #@15a
    :array_4
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 2
    .param p1, "tnf"    # S
    .param p2, "type"    # [B
    .param p3, "id"    # [B
    .param p4, "payload"    # [B

    #@0
    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 558
    if-nez p2, :cond_0

    #@5
    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@7
    .line 559
    :cond_0
    if-nez p3, :cond_1

    #@9
    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@b
    .line 560
    :cond_1
    if-nez p4, :cond_2

    #@d
    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@f
    .line 562
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 563
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@15
    .line 564
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 567
    :cond_3
    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@1d
    .line 568
    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@1f
    .line 569
    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@21
    .line 570
    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@23
    .line 556
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 590
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    .line 591
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    #@9
    invoke-static {v0, v2}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    #@c
    move-result-object v1

    #@d
    .line 593
    .local v1, "rs":[Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@10
    move-result v2

    #@11
    if-lez v2, :cond_0

    #@13
    .line 594
    new-instance v2, Landroid/nfc/FormatException;

    #@15
    const-string/jumbo v3, "data too long"

    #@18
    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 597
    :cond_0
    aget-object v2, v1, v3

    #@1e
    iget-short v2, v2, Landroid/nfc/NdefRecord;->mTnf:S

    #@20
    iput-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@22
    .line 598
    aget-object v2, v1, v3

    #@24
    iget-object v2, v2, Landroid/nfc/NdefRecord;->mType:[B

    #@26
    iput-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@28
    .line 599
    aget-object v2, v1, v3

    #@2a
    iget-object v2, v2, Landroid/nfc/NdefRecord;->mId:[B

    #@2c
    iput-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@2e
    .line 600
    aget-object v2, v1, v3

    #@30
    iget-object v2, v2, Landroid/nfc/NdefRecord;->mPayload:[B

    #@32
    iput-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@34
    .line 589
    return-void
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "bs"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1051
    .local v1, "s":Ljava/lang/StringBuilder;
    array-length v4, p0

    #@7
    move v2, v3

    #@8
    :goto_0
    if-ge v2, v4, :cond_0

    #@a
    aget-byte v0, p0, v2

    #@c
    .line 1052
    .local v0, "b":B
    const-string/jumbo v5, "%02X"

    #@f
    const/4 v6, 0x1

    #@10
    new-array v6, v6, [Ljava/lang/Object;

    #@12
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@15
    move-result-object v7

    #@16
    aput-object v7, v6, v3

    #@18
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1051
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1054
    .end local v0    # "b":B
    :cond_0
    return-object v1
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 312
    if-nez p0, :cond_0

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "packageName is null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "packageName is empty"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 315
    :cond_1
    new-instance v0, Landroid/nfc/NdefRecord;

    #@1d
    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    #@1f
    .line 316
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@21
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@24
    move-result-object v2

    #@25
    .line 315
    const/4 v3, 0x4

    #@26
    invoke-direct {v0, v3, v1, v4, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@29
    return-object v0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 7
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 458
    if-nez p0, :cond_0

    #@4
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v4, "domain is null"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 459
    :cond_0
    if-nez p1, :cond_1

    #@f
    new-instance v3, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v4, "type is null"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 461
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_2

    #@32
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v4, "domain is empty"

    #@37
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 465
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_3

    #@41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v4, "type is empty"

    #@46
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v3

    #@4a
    .line 467
    :cond_3
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4c
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@4f
    move-result-object v1

    #@50
    .line 468
    .local v1, "byteDomain":[B
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@52
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@55
    move-result-object v2

    #@56
    .line 469
    .local v2, "byteType":[B
    array-length v3, v1

    #@57
    add-int/lit8 v3, v3, 0x1

    #@59
    array-length v4, v2

    #@5a
    add-int/2addr v3, v4

    #@5b
    new-array v0, v3, [B

    #@5d
    .line 470
    .local v0, "b":[B
    array-length v3, v1

    #@5e
    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@61
    .line 471
    array-length v3, v1

    #@62
    const/16 v4, 0x3a

    #@64
    aput-byte v4, v0, v3

    #@66
    .line 472
    array-length v3, v1

    #@67
    add-int/lit8 v3, v3, 0x1

    #@69
    array-length v4, v2

    #@6a
    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6d
    .line 474
    new-instance v3, Landroid/nfc/NdefRecord;

    #@6f
    const/4 v4, 0x4

    #@70
    invoke-direct {v3, v4, v0, v6, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@73
    return-object v3
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "mimeData"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 412
    if-nez p0, :cond_0

    #@3
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "mimeType is null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 417
    :cond_0
    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v3, "mimeType is empty"

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 419
    :cond_1
    const/16 v2, 0x2f

    #@21
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v0

    #@25
    .line 420
    .local v0, "slashIndex":I
    if-nez v0, :cond_2

    #@27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v3, "mimeType must have major type"

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 421
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@33
    move-result v2

    #@34
    add-int/lit8 v2, v2, -0x1

    #@36
    if-ne v0, v2, :cond_3

    #@38
    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v3, "mimeType must have minor type"

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 427
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@43
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@46
    move-result-object v1

    #@47
    .line 428
    .local v1, "typeBytes":[B
    new-instance v2, Landroid/nfc/NdefRecord;

    #@49
    const/4 v3, 0x2

    #@4a
    invoke-direct {v2, v3, v1, v4, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@4d
    return-object v2
.end method

.method public static createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 9
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 491
    if-nez p1, :cond_0

    #@4
    new-instance v4, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v5, "text is null"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 493
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@12
    move-result-object v3

    #@13
    .line 495
    .local v3, "textBytes":[B
    const/4 v1, 0x0

    #@14
    .line 496
    .local v1, "languageCodeBytes":[B
    if-eqz p0, :cond_1

    #@16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 499
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 500
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@26
    .line 499
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@29
    move-result-object v1

    #@2a
    .line 503
    .local v1, "languageCodeBytes":[B
    :goto_0
    array-length v4, v1

    #@2b
    const/16 v5, 0x40

    #@2d
    if-lt v4, v5, :cond_3

    #@2f
    .line 504
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v5, "language code is too long, must be <64 bytes."

    #@34
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 497
    .local v1, "languageCodeBytes":[B
    :cond_2
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@3a
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@3d
    move-result-object v1

    #@3e
    .local v1, "languageCodeBytes":[B
    goto :goto_0

    #@3f
    .line 506
    :cond_3
    array-length v4, v1

    #@40
    add-int/lit8 v4, v4, 0x1

    #@42
    array-length v5, v3

    #@43
    add-int/2addr v4, v5

    #@44
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@47
    move-result-object v0

    #@48
    .line 508
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v4, v1

    #@49
    and-int/lit16 v4, v4, 0xff

    #@4b
    int-to-byte v2, v4

    #@4c
    .line 509
    .local v2, "status":B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@4f
    .line 510
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@52
    .line 511
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@55
    .line 513
    new-instance v4, Landroid/nfc/NdefRecord;

    #@57
    sget-object v5, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    #@59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@5c
    move-result-object v6

    #@5d
    invoke-direct {v4, v8, v5, v7, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@60
    return-object v4
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 341
    if-nez p0, :cond_0

    #@5
    new-instance v5, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v6, "uri is null"

    #@a
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    #@11
    move-result-object p0

    #@12
    .line 344
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 345
    .local v4, "uriString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_1

    #@1c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v6, "uri is empty"

    #@21
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v5

    #@25
    .line 347
    :cond_1
    const/4 v1, 0x0

    #@26
    .line 348
    .local v1, "prefix":B
    const/4 v0, 0x1

    #@27
    .local v0, "i":I
    :goto_0
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    #@29
    array-length v5, v5

    #@2a
    if-ge v0, v5, :cond_2

    #@2c
    .line 349
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    #@2e
    aget-object v5, v5, v0

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 350
    int-to-byte v1, v0

    #@37
    .line 351
    .local v1, "prefix":B
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    #@39
    aget-object v5, v5, v0

    #@3b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@3e
    move-result v5

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 355
    .end local v1    # "prefix":B
    :cond_2
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@48
    move-result-object v3

    #@49
    .line 356
    .local v3, "uriBytes":[B
    array-length v5, v3

    #@4a
    add-int/lit8 v5, v5, 0x1

    #@4c
    new-array v2, v5, [B

    #@4e
    .line 357
    .local v2, "recordBytes":[B
    aput-byte v1, v2, v6

    #@50
    .line 358
    array-length v5, v3

    #@51
    invoke-static {v3, v6, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@54
    .line 359
    new-instance v5, Landroid/nfc/NdefRecord;

    #@56
    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    #@58
    invoke-direct {v5, v7, v6, v8, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@5b
    return-object v5

    #@5c
    .line 348
    .end local v2    # "recordBytes":[B
    .end local v3    # "uriBytes":[B
    .local v1, "prefix":B
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 384
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static ensureSanePayloadSize(J)V
    .locals 4
    .param p0, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 888
    const-wide/32 v0, 0xa00000

    #@3
    cmp-long v0, p0, v0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 889
    new-instance v0, Landroid/nfc/FormatException;

    #@9
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "payload above max limit: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " > "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const/high16 v2, 0xa00000

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 889
    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 887
    :cond_0
    return-void
.end method

.method static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 32
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "ignoreMbMe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 785
    new-instance v22, Ljava/util/ArrayList;

    #@2
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 788
    .local v22, "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    const/16 v25, 0x0

    #@7
    .line 789
    .local v25, "type":[B
    const/4 v11, 0x0

    #@8
    .line 790
    .local v11, "id":[B
    const/16 v19, 0x0

    #@a
    .line 791
    .local v19, "payload":[B
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    #@c
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 792
    .local v6, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v14, 0x0

    #@10
    .line 793
    .local v14, "inChunk":Z
    const/4 v5, -0x1

    #@11
    .line 794
    .local v5, "chunkTnf":S
    const/16 v16, 0x0

    #@13
    .line 796
    .end local v5    # "chunkTnf":S
    .end local v11    # "id":[B
    .end local v19    # "payload":[B
    .end local v25    # "type":[B
    .local v16, "me":Z
    :cond_0
    :goto_0
    if-nez v16, :cond_1e

    #@15
    .line 797
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@18
    move-result v9

    #@19
    .line 799
    .local v9, "flag":B
    and-int/lit8 v27, v9, -0x80

    #@1b
    if-eqz v27, :cond_3

    #@1d
    const/4 v15, 0x1

    #@1e
    .line 800
    .local v15, "mb":Z
    :goto_1
    and-int/lit8 v27, v9, 0x40

    #@20
    if-eqz v27, :cond_4

    #@22
    const/16 v16, 0x1

    #@24
    .line 801
    :goto_2
    and-int/lit8 v27, v9, 0x20

    #@26
    if-eqz v27, :cond_5

    #@28
    const/4 v4, 0x1

    #@29
    .line 802
    .local v4, "cf":Z
    :goto_3
    and-int/lit8 v27, v9, 0x10

    #@2b
    if-eqz v27, :cond_6

    #@2d
    const/16 v23, 0x1

    #@2f
    .line 803
    .local v23, "sr":Z
    :goto_4
    and-int/lit8 v27, v9, 0x8

    #@31
    if-eqz v27, :cond_7

    #@33
    const/4 v13, 0x1

    #@34
    .line 804
    .local v13, "il":Z
    :goto_5
    and-int/lit8 v27, v9, 0x7

    #@36
    move/from16 v0, v27

    #@38
    int-to-short v0, v0

    #@39
    move/from16 v24, v0

    #@3b
    .line 806
    .local v24, "tnf":S
    if-nez v15, :cond_1

    #@3d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@40
    move-result v27

    #@41
    if-nez v27, :cond_1

    #@43
    if-eqz v14, :cond_8

    #@45
    .line 808
    :cond_1
    if-eqz v15, :cond_2

    #@47
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@4a
    move-result v27

    #@4b
    if-eqz v27, :cond_2

    #@4d
    if-eqz p1, :cond_9

    #@4f
    .line 810
    :cond_2
    if-eqz v14, :cond_a

    #@51
    if-eqz v13, :cond_a

    #@53
    .line 811
    new-instance v27, Landroid/nfc/FormatException;

    #@55
    const-string/jumbo v28, "unexpected IL flag in non-leading chunk"

    #@58
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v27
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 881
    .end local v4    # "cf":Z
    .end local v6    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v9    # "flag":B
    .end local v13    # "il":Z
    .end local v14    # "inChunk":Z
    .end local v15    # "mb":Z
    .end local v16    # "me":Z
    .end local v23    # "sr":Z
    .end local v24    # "tnf":S
    :catch_0
    move-exception v7

    #@5d
    .line 882
    .local v7, "e":Ljava/nio/BufferUnderflowException;
    new-instance v27, Landroid/nfc/FormatException;

    #@5f
    const-string/jumbo v28, "expected more data"

    #@62
    move-object/from16 v0, v27

    #@64
    move-object/from16 v1, v28

    #@66
    invoke-direct {v0, v1, v7}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    throw v27

    #@6a
    .line 799
    .end local v7    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v6    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v9    # "flag":B
    .restart local v14    # "inChunk":Z
    .restart local v16    # "me":Z
    :cond_3
    const/4 v15, 0x0

    #@6b
    .restart local v15    # "mb":Z
    goto :goto_1

    #@6c
    .line 800
    :cond_4
    const/16 v16, 0x0

    #@6e
    goto :goto_2

    #@6f
    .line 801
    :cond_5
    const/4 v4, 0x0

    #@70
    .restart local v4    # "cf":Z
    goto :goto_3

    #@71
    .line 802
    :cond_6
    const/16 v23, 0x0

    #@73
    .restart local v23    # "sr":Z
    goto :goto_4

    #@74
    .line 803
    :cond_7
    const/4 v13, 0x0

    #@75
    .restart local v13    # "il":Z
    goto :goto_5

    #@76
    .line 806
    .restart local v24    # "tnf":S
    :cond_8
    if-nez p1, :cond_1

    #@78
    .line 807
    :try_start_1
    new-instance v27, Landroid/nfc/FormatException;

    #@7a
    const-string/jumbo v28, "expected MB flag"

    #@7d
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@80
    throw v27

    #@81
    .line 809
    :cond_9
    new-instance v27, Landroid/nfc/FormatException;

    #@83
    const-string/jumbo v28, "unexpected MB flag"

    #@86
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@89
    throw v27

    #@8a
    .line 812
    :cond_a
    if-eqz v4, :cond_b

    #@8c
    if-eqz v16, :cond_b

    #@8e
    .line 813
    new-instance v27, Landroid/nfc/FormatException;

    #@90
    const-string/jumbo v28, "unexpected ME flag in non-trailing chunk"

    #@93
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@96
    throw v27

    #@97
    .line 814
    :cond_b
    if-eqz v14, :cond_c

    #@99
    const/16 v27, 0x6

    #@9b
    move/from16 v0, v24

    #@9d
    move/from16 v1, v27

    #@9f
    if-eq v0, v1, :cond_c

    #@a1
    .line 815
    new-instance v27, Landroid/nfc/FormatException;

    #@a3
    const-string/jumbo v28, "expected TNF_UNCHANGED in non-leading chunk"

    #@a6
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v27

    #@aa
    .line 816
    :cond_c
    if-nez v14, :cond_d

    #@ac
    const/16 v27, 0x6

    #@ae
    move/from16 v0, v24

    #@b0
    move/from16 v1, v27

    #@b2
    if-ne v0, v1, :cond_d

    #@b4
    .line 817
    new-instance v27, Landroid/nfc/FormatException;

    #@b6
    const-string/jumbo v28, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    #@b9
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v27

    #@bd
    .line 821
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@c0
    move-result v27

    #@c1
    move/from16 v0, v27

    #@c3
    and-int/lit16 v0, v0, 0xff

    #@c5
    move/from16 v26, v0

    #@c7
    .line 822
    .local v26, "typeLength":I
    if-eqz v23, :cond_e

    #@c9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@cc
    move-result v27

    #@cd
    move/from16 v0, v27

    #@cf
    and-int/lit16 v0, v0, 0xff

    #@d1
    move/from16 v27, v0

    #@d3
    move/from16 v0, v27

    #@d5
    int-to-long v0, v0

    #@d6
    move-wide/from16 v20, v0

    #@d8
    .line 823
    .local v20, "payloadLength":J
    :goto_6
    if-eqz v13, :cond_f

    #@da
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    #@dd
    move-result v27

    #@de
    move/from16 v0, v27

    #@e0
    and-int/lit16 v12, v0, 0xff

    #@e2
    .line 825
    .local v12, "idLength":I
    :goto_7
    if-eqz v14, :cond_10

    #@e4
    if-eqz v26, :cond_10

    #@e6
    .line 826
    new-instance v27, Landroid/nfc/FormatException;

    #@e8
    const-string/jumbo v28, "expected zero-length type in non-leading chunk"

    #@eb
    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v27

    #@ef
    .line 822
    .end local v12    # "idLength":I
    .end local v20    # "payloadLength":J
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@f2
    move-result v27

    #@f3
    move/from16 v0, v27

    #@f5
    int-to-long v0, v0

    #@f6
    move-wide/from16 v28, v0

    #@f8
    const-wide v30, 0xffffffffL

    #@fd
    and-long v20, v28, v30

    #@ff
    .restart local v20    # "payloadLength":J
    goto :goto_6

    #@100
    .line 823
    :cond_f
    const/4 v12, 0x0

    #@101
    .restart local v12    # "idLength":I
    goto :goto_7

    #@102
    .line 829
    :cond_10
    if-nez v14, :cond_11

    #@104
    .line 830
    if-lez v26, :cond_15

    #@106
    move/from16 v0, v26

    #@108
    new-array v0, v0, [B

    #@10a
    move-object/from16 v25, v0

    #@10c
    .line 831
    .local v25, "type":[B
    :goto_8
    if-lez v12, :cond_16

    #@10e
    new-array v11, v12, [B

    #@110
    .line 832
    .local v11, "id":[B
    :goto_9
    move-object/from16 v0, p0

    #@112
    move-object/from16 v1, v25

    #@114
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@117
    .line 833
    move-object/from16 v0, p0

    #@119
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@11c
    .line 836
    .end local v11    # "id":[B
    .end local v25    # "type":[B
    :cond_11
    invoke-static/range {v20 .. v21}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    #@11f
    .line 837
    const-wide/16 v28, 0x0

    #@121
    cmp-long v27, v20, v28

    #@123
    if-lez v27, :cond_17

    #@125
    move-wide/from16 v0, v20

    #@127
    long-to-int v0, v0

    #@128
    move/from16 v27, v0

    #@12a
    move/from16 v0, v27

    #@12c
    new-array v0, v0, [B

    #@12e
    move-object/from16 v19, v0

    #@130
    .line 838
    .local v19, "payload":[B
    :goto_a
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, v19

    #@134
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@137
    .line 840
    if-eqz v4, :cond_12

    #@139
    if-eqz v14, :cond_18

    #@13b
    .line 845
    :cond_12
    :goto_b
    if-nez v4, :cond_13

    #@13d
    if-eqz v14, :cond_14

    #@13f
    .line 847
    :cond_13
    move-object/from16 v0, v19

    #@141
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@144
    .line 849
    :cond_14
    if-nez v4, :cond_1b

    #@146
    if-eqz v14, :cond_1b

    #@148
    .line 851
    const-wide/16 v20, 0x0

    #@14a
    .line 852
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14d
    move-result-object v18

    #@14e
    .local v18, "p$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@151
    move-result v27

    #@152
    if-eqz v27, :cond_19

    #@154
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@157
    move-result-object v17

    #@158
    check-cast v17, [B

    #@15a
    .line 853
    .local v17, "p":[B
    move-object/from16 v0, v17

    #@15c
    array-length v0, v0

    #@15d
    move/from16 v27, v0

    #@15f
    move/from16 v0, v27

    #@161
    int-to-long v0, v0

    #@162
    move-wide/from16 v28, v0

    #@164
    add-long v20, v20, v28

    #@166
    goto :goto_c

    #@167
    .line 830
    .end local v17    # "p":[B
    .end local v18    # "p$iterator":Ljava/util/Iterator;
    .end local v19    # "payload":[B
    :cond_15
    sget-object v25, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@169
    .restart local v25    # "type":[B
    goto :goto_8

    #@16a
    .line 831
    :cond_16
    sget-object v11, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@16c
    .restart local v11    # "id":[B
    goto :goto_9

    #@16d
    .line 837
    .end local v11    # "id":[B
    .end local v25    # "type":[B
    :cond_17
    sget-object v19, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    #@16f
    .restart local v19    # "payload":[B
    goto :goto_a

    #@170
    .line 842
    :cond_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@173
    .line 843
    move/from16 v5, v24

    #@175
    .local v5, "chunkTnf":S
    goto :goto_b

    #@176
    .line 855
    .end local v5    # "chunkTnf":S
    .restart local v18    # "p$iterator":Ljava/util/Iterator;
    :cond_19
    invoke-static/range {v20 .. v21}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    #@179
    .line 856
    move-wide/from16 v0, v20

    #@17b
    long-to-int v0, v0

    #@17c
    move/from16 v27, v0

    #@17e
    move/from16 v0, v27

    #@180
    new-array v0, v0, [B

    #@182
    move-object/from16 v19, v0

    #@184
    .line 857
    const/4 v10, 0x0

    #@185
    .line 858
    .local v10, "i":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@188
    move-result-object v18

    #@189
    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@18c
    move-result v27

    #@18d
    if-eqz v27, :cond_1a

    #@18f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@192
    move-result-object v17

    #@193
    check-cast v17, [B

    #@195
    .line 859
    .restart local v17    # "p":[B
    move-object/from16 v0, v17

    #@197
    array-length v0, v0

    #@198
    move/from16 v27, v0

    #@19a
    const/16 v28, 0x0

    #@19c
    move-object/from16 v0, v17

    #@19e
    move/from16 v1, v28

    #@1a0
    move-object/from16 v2, v19

    #@1a2
    move/from16 v3, v27

    #@1a4
    invoke-static {v0, v1, v2, v10, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a7
    .line 860
    move-object/from16 v0, v17

    #@1a9
    array-length v0, v0

    #@1aa
    move/from16 v27, v0

    #@1ac
    add-int v10, v10, v27

    #@1ae
    goto :goto_d

    #@1af
    .line 862
    .end local v17    # "p":[B
    :cond_1a
    move/from16 v24, v5

    #@1b1
    .line 864
    .end local v10    # "i":I
    .end local v18    # "p$iterator":Ljava/util/Iterator;
    :cond_1b
    if-eqz v4, :cond_1c

    #@1b3
    .line 866
    const/4 v14, 0x1

    #@1b4
    .line 867
    goto/16 :goto_0

    #@1b6
    .line 869
    :cond_1c
    const/4 v14, 0x0

    #@1b7
    .line 872
    move/from16 v0, v24

    #@1b9
    move-object/from16 v1, v25

    #@1bb
    move-object/from16 v2, v19

    #@1bd
    invoke-static {v0, v1, v11, v2}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    #@1c0
    move-result-object v8

    #@1c1
    .line 873
    .local v8, "error":Ljava/lang/String;
    if-eqz v8, :cond_1d

    #@1c3
    .line 874
    new-instance v27, Landroid/nfc/FormatException;

    #@1c5
    move-object/from16 v0, v27

    #@1c7
    invoke-direct {v0, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@1ca
    throw v27

    #@1cb
    .line 876
    :cond_1d
    new-instance v27, Landroid/nfc/NdefRecord;

    #@1cd
    move-object/from16 v0, v27

    #@1cf
    move/from16 v1, v24

    #@1d1
    move-object/from16 v2, v25

    #@1d3
    move-object/from16 v3, v19

    #@1d5
    invoke-direct {v0, v1, v2, v11, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@1d8
    move-object/from16 v0, v22

    #@1da
    move-object/from16 v1, v27

    #@1dc
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    #@1df
    .line 877
    if-eqz p1, :cond_0

    #@1e1
    .line 884
    .end local v4    # "cf":Z
    .end local v8    # "error":Ljava/lang/String;
    .end local v9    # "flag":B
    .end local v12    # "idLength":I
    .end local v13    # "il":Z
    .end local v15    # "mb":Z
    .end local v19    # "payload":[B
    .end local v20    # "payloadLength":J
    .end local v23    # "sr":Z
    .end local v24    # "tnf":S
    .end local v26    # "typeLength":I
    :cond_1e
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@1e4
    move-result v27

    #@1e5
    move/from16 v0, v27

    #@1e7
    new-array v0, v0, [Landroid/nfc/NdefRecord;

    #@1e9
    move-object/from16 v27, v0

    #@1eb
    move-object/from16 v0, v22

    #@1ed
    move-object/from16 v1, v27

    #@1ef
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f2
    move-result-object v27

    #@1f3
    check-cast v27, [Landroid/nfc/NdefRecord;

    #@1f5
    return-object v27
.end method

.method private parseWktUri()Landroid/net/Uri;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 755
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@4
    array-length v3, v3

    #@5
    const/4 v4, 0x2

    #@6
    if-ge v3, v4, :cond_0

    #@8
    .line 756
    return-object v6

    #@9
    .line 761
    :cond_0
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@b
    aget-byte v3, v3, v5

    #@d
    and-int/lit8 v1, v3, -0x1

    #@f
    .line 762
    .local v1, "prefixIndex":I
    if-ltz v1, :cond_1

    #@11
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    #@13
    array-length v3, v3

    #@14
    if-lt v1, v3, :cond_2

    #@16
    .line 763
    :cond_1
    return-object v6

    #@17
    .line 765
    :cond_2
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    #@19
    aget-object v0, v3, v1

    #@1b
    .line 766
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    #@1d
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@1f
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@21
    array-length v4, v4

    #@22
    const/4 v5, 0x1

    #@23
    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@26
    move-result-object v3

    #@27
    .line 767
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@29
    .line 766
    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@2c
    .line 768
    .local v2, "suffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@40
    move-result-object v3

    #@41
    return-object v3
.end method

.method private toUri(Z)Landroid/net/Uri;
    .locals 10
    .param p1, "inSmartPoster"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 718
    iget-short v6, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@3
    packed-switch v6, :pswitch_data_0

    #@6
    .line 747
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    #@7
    .line 720
    :pswitch_1
    iget-object v6, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@9
    sget-object v7, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    #@b
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_1

    #@11
    if-eqz p1, :cond_3

    #@13
    .line 731
    :cond_1
    iget-object v6, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@15
    sget-object v7, Landroid/nfc/NdefRecord;->RTD_URI:[B

    #@17
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 732
    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    #@20
    move-result-object v4

    #@21
    .line 733
    .local v4, "wktUri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    #@23
    invoke-virtual {v4}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    #@26
    move-result-object v5

    #@27
    :cond_2
    return-object v5

    #@28
    .line 723
    .end local v4    # "wktUri":Landroid/net/Uri;
    :cond_3
    :try_start_0
    new-instance v1, Landroid/nfc/NdefMessage;

    #@2a
    iget-object v6, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@2c
    invoke-direct {v1, v6}, Landroid/nfc/NdefMessage;-><init>([B)V

    #@2f
    .line 724
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    #@32
    move-result-object v7

    #@33
    const/4 v6, 0x0

    #@34
    array-length v8, v7

    #@35
    :goto_1
    if-ge v6, v8, :cond_0

    #@37
    aget-object v2, v7, v6

    #@39
    .line 725
    .local v2, "nestedRecord":Landroid/nfc/NdefRecord;
    const/4 v9, 0x1

    #@3a
    invoke-direct {v2, v9}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    move-result-object v3

    #@3e
    .line 726
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_4

    #@40
    .line 727
    return-object v3

    #@41
    .line 724
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_1

    #@44
    .line 738
    .end local v1    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v2    # "nestedRecord":Landroid/nfc/NdefRecord;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v5, Ljava/lang/String;

    #@46
    iget-object v6, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@48
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4a
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@4d
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@50
    move-result-object v3

    #@51
    .line 739
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    #@54
    move-result-object v5

    #@55
    return-object v5

    #@56
    .line 742
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_3
    if-nez p1, :cond_0

    #@58
    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v6, "vnd.android.nfc://ext/"

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    new-instance v6, Ljava/lang/String;

    #@66
    iget-object v7, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@68
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@6a
    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@78
    move-result-object v5

    #@79
    return-object v5

    #@7a
    .line 730
    :catch_0
    move-exception v0

    #@7b
    .local v0, "e":Landroid/nfc/FormatException;
    goto :goto_0

    #@7c
    .line 718
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static validateTnf(S[B[B[B)Ljava/lang/String;
    .locals 4
    .param p0, "tnf"    # S
    .param p1, "type"    # [B
    .param p2, "id"    # [B
    .param p3, "payload"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 907
    packed-switch p0, :pswitch_data_0

    #@5
    .line 927
    const-string/jumbo v0, "unexpected tnf value: 0x%02x"

    #@8
    const/4 v1, 0x1

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v1, v3

    #@11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 909
    :pswitch_0
    array-length v0, p1

    #@17
    if-nez v0, :cond_0

    #@19
    array-length v0, p2

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 910
    :cond_0
    const-string/jumbo v0, "unexpected data in TNF_EMPTY record"

    #@1f
    return-object v0

    #@20
    .line 909
    :cond_1
    array-length v0, p3

    #@21
    if-nez v0, :cond_0

    #@23
    .line 912
    return-object v1

    #@24
    .line 917
    :pswitch_1
    return-object v1

    #@25
    .line 920
    :pswitch_2
    array-length v0, p1

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 921
    const-string/jumbo v0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    #@2b
    return-object v0

    #@2c
    .line 923
    :cond_2
    return-object v1

    #@2d
    .line 925
    :pswitch_3
    const-string/jumbo v0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    #@30
    return-object v0

    #@31
    .line 907
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 976
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1030
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1031
    :cond_0
    if-nez p1, :cond_1

    #@7
    return v3

    #@8
    .line 1032
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 1033
    check-cast v0, Landroid/nfc/NdefRecord;

    #@16
    .line 1034
    .local v0, "other":Landroid/nfc/NdefRecord;
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@18
    iget-object v2, v0, Landroid/nfc/NdefRecord;->mId:[B

    #@1a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    return v3

    #@21
    .line 1035
    :cond_3
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@23
    iget-object v2, v0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@25
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_4

    #@2b
    return v3

    #@2c
    .line 1036
    :cond_4
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@2e
    iget-short v2, v0, Landroid/nfc/NdefRecord;->mTnf:S

    #@30
    if-eq v1, v2, :cond_5

    #@32
    return v3

    #@33
    .line 1037
    :cond_5
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@35
    iget-object v2, v0, Landroid/nfc/NdefRecord;->mType:[B

    #@37
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@3a
    move-result v1

    #@3b
    return v1
.end method

.method getByteLength()I
    .locals 5

    #@0
    .prologue
    .line 963
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@2
    array-length v3, v3

    #@3
    add-int/lit8 v3, v3, 0x3

    #@5
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@7
    array-length v4, v4

    #@8
    add-int/2addr v3, v4

    #@9
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@b
    array-length v4, v4

    #@c
    add-int v1, v3, v4

    #@e
    .line 965
    .local v1, "length":I
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@10
    array-length v3, v3

    #@11
    const/16 v4, 0x100

    #@13
    if-ge v3, v4, :cond_2

    #@15
    const/4 v2, 0x1

    #@16
    .line 966
    .local v2, "sr":Z
    :goto_0
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@18
    array-length v3, v3

    #@19
    if-lez v3, :cond_3

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 968
    .local v0, "il":Z
    :goto_1
    if-nez v2, :cond_0

    #@1e
    add-int/lit8 v1, v1, 0x3

    #@20
    .line 969
    :cond_0
    if-eqz v0, :cond_1

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    .line 971
    :cond_1
    return v1

    #@25
    .line 965
    .end local v0    # "il":Z
    .end local v2    # "sr":Z
    :cond_2
    const/4 v2, 0x0

    #@26
    .restart local v2    # "sr":Z
    goto :goto_0

    #@27
    .line 966
    :cond_3
    const/4 v0, 0x0

    #@28
    .restart local v0    # "il":Z
    goto :goto_1
.end method

.method public getId()[B
    .locals 1

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getTnf()S
    .locals 1

    #@0
    .prologue
    .line 609
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@2
    return v0
.end method

.method public getType()[B
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1015
    const/16 v0, 0x1f

    #@2
    .line 1017
    .local v0, "prime":I
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@4
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 1018
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@e
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@11
    move-result v3

    #@12
    add-int v1, v2, v3

    #@14
    .line 1019
    mul-int/lit8 v2, v1, 0x1f

    #@16
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@18
    add-int v1, v2, v3

    #@1a
    .line 1020
    mul-int/lit8 v2, v1, 0x1f

    #@1c
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@1e
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@21
    move-result v3

    #@22
    add-int v1, v2, v3

    #@24
    .line 1021
    return v1
.end method

.method public toByteArray()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 659
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    #@4
    move-result v1

    #@5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    .line 660
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0, v2, v2}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    #@c
    .line 661
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public toMimeType()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 680
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 690
    :cond_0
    const/4 v1, 0x0

    #@6
    return-object v1

    #@7
    .line 682
    :pswitch_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@9
    sget-object v2, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    #@b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 683
    const-string/jumbo v1, "text/plain"

    #@14
    return-object v1

    #@15
    .line 687
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    #@17
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@19
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@1b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1e
    .line 688
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 680
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const-string/jumbo v1, "NdefRecord tnf=%X"

    #@6
    const/4 v2, 0x1

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@b
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v2, v4

    #@11
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    .line 1043
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@1a
    array-length v1, v1

    #@1b
    if-lez v1, :cond_0

    #@1d
    const-string/jumbo v1, " type="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@26
    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2d
    .line 1044
    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@2f
    array-length v1, v1

    #@30
    if-lez v1, :cond_1

    #@32
    const-string/jumbo v1, " id="

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@3b
    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@42
    .line 1045
    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@44
    array-length v1, v1

    #@45
    if-lez v1, :cond_2

    #@47
    const-string/jumbo v1, " payload="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@50
    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@57
    .line 1046
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    return-object v1
.end method

.method public toUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 714
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "mb"    # Z
    .param p3, "me"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 937
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@3
    array-length v4, v4

    #@4
    const/16 v5, 0x100

    #@6
    if-ge v4, v5, :cond_2

    #@8
    const/4 v2, 0x1

    #@9
    .line 938
    .local v2, "sr":Z
    :goto_0
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@b
    array-length v4, v4

    #@c
    if-lez v4, :cond_3

    #@e
    const/4 v1, 0x1

    #@f
    .line 940
    .local v1, "il":Z
    :goto_1
    if-eqz p2, :cond_4

    #@11
    const/16 v4, -0x80

    #@13
    move v5, v4

    #@14
    :goto_2
    if-eqz p3, :cond_5

    #@16
    const/16 v4, 0x40

    #@18
    :goto_3
    or-int/2addr v5, v4

    #@19
    .line 941
    if-eqz v2, :cond_6

    #@1b
    const/16 v4, 0x10

    #@1d
    .line 940
    :goto_4
    or-int/2addr v4, v5

    #@1e
    .line 941
    if-eqz v1, :cond_0

    #@20
    const/16 v3, 0x8

    #@22
    .line 940
    :cond_0
    or-int/2addr v3, v4

    #@23
    .line 941
    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@25
    .line 940
    or-int/2addr v3, v4

    #@26
    int-to-byte v0, v3

    #@27
    .line 942
    .local v0, "flags":B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@2a
    .line 944
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@2c
    array-length v3, v3

    #@2d
    int-to-byte v3, v3

    #@2e
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@31
    .line 945
    if-eqz v2, :cond_7

    #@33
    .line 946
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@35
    array-length v3, v3

    #@36
    int-to-byte v3, v3

    #@37
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3a
    .line 950
    :goto_5
    if-eqz v1, :cond_1

    #@3c
    .line 951
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@3e
    array-length v3, v3

    #@3f
    int-to-byte v3, v3

    #@40
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@43
    .line 954
    :cond_1
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@45
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@48
    .line 955
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@4a
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@4d
    .line 956
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@4f
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@52
    .line 936
    return-void

    #@53
    .line 937
    .end local v0    # "flags":B
    .end local v1    # "il":Z
    .end local v2    # "sr":Z
    :cond_2
    const/4 v2, 0x0

    #@54
    .restart local v2    # "sr":Z
    goto :goto_0

    #@55
    .line 938
    :cond_3
    const/4 v1, 0x0

    #@56
    .restart local v1    # "il":Z
    goto :goto_1

    #@57
    :cond_4
    move v5, v3

    #@58
    .line 940
    goto :goto_2

    #@59
    :cond_5
    move v4, v3

    #@5a
    goto :goto_3

    #@5b
    :cond_6
    move v4, v3

    #@5c
    .line 941
    goto :goto_4

    #@5d
    .line 948
    .restart local v0    # "flags":B
    :cond_7
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@5f
    array-length v3, v3

    #@60
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@63
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 981
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 982
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@7
    array-length v0, v0

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 983
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    .line 984
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@12
    array-length v0, v0

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 985
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1b
    .line 986
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@1d
    array-length v0, v0

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 987
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@26
    .line 980
    return-void
.end method
