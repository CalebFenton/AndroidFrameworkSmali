.class public Lcom/google/android/mms/pdu/PduPart;
.super Ljava/lang/Object;
.source "PduPart.java"


# static fields
.field public static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field static final DISPOSITION_ATTACHMENT:[B

.field static final DISPOSITION_FROM_DATA:[B

.field static final DISPOSITION_INLINE:[B

.field public static final P_7BIT:Ljava/lang/String; = "7bit"

.field public static final P_8BIT:Ljava/lang/String; = "8bit"

.field public static final P_BASE64:Ljava/lang/String; = "base64"

.field public static final P_BINARY:Ljava/lang/String; = "binary"

.field public static final P_CHARSET:I = 0x81

.field public static final P_COMMENT:I = 0x9b

.field public static final P_CONTENT_DISPOSITION:I = 0xc5

.field public static final P_CONTENT_ID:I = 0xc0

.field public static final P_CONTENT_LOCATION:I = 0x8e

.field public static final P_CONTENT_TRANSFER_ENCODING:I = 0xc8

.field public static final P_CONTENT_TYPE:I = 0x91

.field public static final P_CREATION_DATE:I = 0x93

.field public static final P_CT_MR_TYPE:I = 0x89

.field public static final P_DEP_COMMENT:I = 0x8c

.field public static final P_DEP_CONTENT_DISPOSITION:I = 0xae

.field public static final P_DEP_DOMAIN:I = 0x8d

.field public static final P_DEP_FILENAME:I = 0x86

.field public static final P_DEP_NAME:I = 0x85

.field public static final P_DEP_PATH:I = 0x8f

.field public static final P_DEP_START:I = 0x8a

.field public static final P_DEP_START_INFO:I = 0x8b

.field public static final P_DIFFERENCES:I = 0x87

.field public static final P_DISPOSITION_ATTACHMENT:I = 0x81

.field public static final P_DISPOSITION_FROM_DATA:I = 0x80

.field public static final P_DISPOSITION_INLINE:I = 0x82

.field public static final P_DOMAIN:I = 0x9c

.field public static final P_FILENAME:I = 0x98

.field public static final P_LEVEL:I = 0x82

.field public static final P_MAC:I = 0x92

.field public static final P_MAX_AGE:I = 0x8e

.field public static final P_MODIFICATION_DATE:I = 0x94

.field public static final P_NAME:I = 0x97

.field public static final P_PADDING:I = 0x88

.field public static final P_PATH:I = 0x9d

.field public static final P_Q:I = 0x80

.field public static final P_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final P_READ_DATE:I = 0x95

.field public static final P_SEC:I = 0x91

.field public static final P_SECURE:I = 0x90

.field public static final P_SIZE:I = 0x96

.field public static final P_START:I = 0x99

.field public static final P_START_INFO:I = 0x9a

.field public static final P_TYPE:I = 0x83

.field private static final TAG:Ljava/lang/String; = "PduPart"


# instance fields
.field private mPartData:[B

.field private mPartHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    const-string/jumbo v0, "from-data"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    #@9
    .line 97
    const-string/jumbo v0, "attachment"

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    #@12
    .line 98
    const-string/jumbo v0, "inline"

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    #@1b
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 110
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@6
    .line 115
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mUri:Landroid/net/Uri;

    #@8
    .line 120
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@a
    .line 128
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@11
    .line 127
    return-void
.end method


# virtual methods
.method public generateLocation()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 397
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v3, 0x97

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [B

    #@e
    .line 398
    .local v1, "location":[B
    if-nez v1, :cond_0

    #@10
    .line 399
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@12
    const/16 v3, 0x98

    #@14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .end local v1    # "location":[B
    check-cast v1, [B

    #@1e
    .line 401
    .restart local v1    # "location":[B
    if-nez v1, :cond_0

    #@20
    .line 402
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@22
    const/16 v3, 0x8e

    #@24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    .end local v1    # "location":[B
    check-cast v1, [B

    #@2e
    .line 406
    .restart local v1    # "location":[B
    :cond_0
    if-nez v1, :cond_1

    #@30
    .line 407
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@32
    const/16 v3, 0xc0

    #@34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v3

    #@38
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, [B

    #@3e
    .line 408
    .local v0, "contentId":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "cid:"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    new-instance v3, Ljava/lang/String;

    #@4c
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 410
    .end local v0    # "contentId":[B
    :cond_1
    new-instance v2, Ljava/lang/String;

    #@5a
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    #@5d
    return-object v2
.end method

.method public getCharset()I
    .locals 3

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v2, 0x81

    #@4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 242
    .local v0, "charset":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@10
    .line 243
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 245
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public getContentDisposition()[B
    .locals 2

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0xc5

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getContentId()[B
    .locals 2

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0xc0

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getContentLocation()[B
    .locals 2

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getContentTransferEncoding()[B
    .locals 2

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0xc8

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0x91

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getData()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 151
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 152
    return-object v2

    #@7
    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 156
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@e
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 157
    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 165
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@6
    array-length v0, v0

    #@7
    return v0

    #@8
    .line 167
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getFilename()[B
    .locals 2

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public getName()[B
    .locals 2

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public setCharset(I)V
    .locals 3
    .param p1, "charset"    # I

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@2
    const/16 v1, 0x81

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 231
    return-void
.end method

.method public setContentDisposition([B)V
    .locals 2
    .param p1, "contentDisposition"    # [B

    #@0
    .prologue
    .line 285
    if-nez p1, :cond_0

    #@2
    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null content-disposition"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@d
    const/16 v1, 0xc5

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 284
    return-void
.end method

.method public setContentId([B)V
    .locals 7
    .param p1, "contentId"    # [B

    #@0
    .prologue
    const/16 v6, 0xc0

    #@2
    const/16 v5, 0x3e

    #@4
    const/16 v4, 0x3c

    #@6
    const/4 v3, 0x1

    #@7
    const/4 v2, 0x0

    #@8
    .line 197
    if-eqz p1, :cond_0

    #@a
    array-length v1, p1

    #@b
    if-nez v1, :cond_1

    #@d
    .line 198
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    .line 199
    const-string/jumbo v2, "Content-Id may not be null or empty."

    #@12
    .line 198
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 202
    :cond_1
    array-length v1, p1

    #@17
    if-le v1, v3, :cond_2

    #@19
    .line 203
    aget-byte v1, p1, v2

    #@1b
    int-to-char v1, v1

    #@1c
    if-ne v1, v4, :cond_2

    #@1e
    .line 204
    array-length v1, p1

    #@1f
    add-int/lit8 v1, v1, -0x1

    #@21
    aget-byte v1, p1, v1

    #@23
    int-to-char v1, v1

    #@24
    if-ne v1, v5, :cond_2

    #@26
    .line 205
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@28
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 206
    return-void

    #@30
    .line 210
    :cond_2
    array-length v1, p1

    #@31
    add-int/lit8 v1, v1, 0x2

    #@33
    new-array v0, v1, [B

    #@35
    .line 211
    .local v0, "buffer":[B
    aput-byte v4, v0, v2

    #@37
    .line 212
    array-length v1, v0

    #@38
    add-int/lit8 v1, v1, -0x1

    #@3a
    aput-byte v5, v0, v1

    #@3c
    .line 213
    array-length v1, p1

    #@3d
    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@40
    .line 214
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v2

    #@46
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 196
    return-void
.end method

.method public setContentLocation([B)V
    .locals 2
    .param p1, "contentLocation"    # [B

    #@0
    .prologue
    .line 256
    if-nez p1, :cond_0

    #@2
    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null content-location"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@d
    const/16 v1, 0x8e

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 255
    return-void
.end method

.method public setContentTransferEncoding([B)V
    .locals 2
    .param p1, "contentTransferEncoding"    # [B

    #@0
    .prologue
    .line 331
    if-nez p1, :cond_0

    #@2
    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null content-transfer-encoding"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@d
    const/16 v1, 0xc8

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 330
    return-void
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "contentType"    # [B

    #@0
    .prologue
    .line 308
    if-nez p1, :cond_0

    #@2
    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null content-type"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@d
    const/16 v1, 0x91

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 307
    return-void
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 137
    if-nez p1, :cond_0

    #@3
    .line 138
    return-void

    #@4
    .line 141
    :cond_0
    array-length v0, p1

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@9
    .line 142
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    #@b
    array-length v1, p1

    #@c
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 136
    return-void
.end method

.method public setDataUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPart;->mUri:Landroid/net/Uri;

    #@2
    .line 177
    return-void
.end method

.method public setFilename([B)V
    .locals 2
    .param p1, "fileName"    # [B

    #@0
    .prologue
    .line 377
    if-nez p1, :cond_0

    #@2
    .line 378
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null content-id"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@d
    const/16 v1, 0x98

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 376
    return-void
.end method

.method public setName([B)V
    .locals 2
    .param p1, "name"    # [B

    #@0
    .prologue
    .line 354
    if-nez p1, :cond_0

    #@2
    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null content-id"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    #@d
    const/16 v1, 0x97

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 353
    return-void
.end method
