.class public Lcom/google/android/mms/pdu/PduPart;
.super Ljava/lang/Object;
.source "PduPart.java"


# static fields
.field public static final blacklist CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field static final blacklist DISPOSITION_ATTACHMENT:[B

.field static final blacklist DISPOSITION_FROM_DATA:[B

.field static final blacklist DISPOSITION_INLINE:[B

.field public static final blacklist P_7BIT:Ljava/lang/String; = "7bit"

.field public static final blacklist P_8BIT:Ljava/lang/String; = "8bit"

.field public static final blacklist P_BASE64:Ljava/lang/String; = "base64"

.field public static final blacklist P_BINARY:Ljava/lang/String; = "binary"

.field public static final blacklist P_CHARSET:I = 0x81

.field public static final blacklist P_COMMENT:I = 0x9b

.field public static final blacklist P_CONTENT_DISPOSITION:I = 0xc5

.field public static final blacklist P_CONTENT_ID:I = 0xc0

.field public static final blacklist P_CONTENT_LOCATION:I = 0x8e

.field public static final blacklist P_CONTENT_TRANSFER_ENCODING:I = 0xc8

.field public static final blacklist P_CONTENT_TYPE:I = 0x91

.field public static final blacklist P_CREATION_DATE:I = 0x93

.field public static final blacklist P_CT_MR_TYPE:I = 0x89

.field public static final blacklist P_DEP_COMMENT:I = 0x8c

.field public static final blacklist P_DEP_CONTENT_DISPOSITION:I = 0xae

.field public static final blacklist P_DEP_DOMAIN:I = 0x8d

.field public static final blacklist P_DEP_FILENAME:I = 0x86

.field public static final blacklist P_DEP_NAME:I = 0x85

.field public static final blacklist P_DEP_PATH:I = 0x8f

.field public static final blacklist P_DEP_START:I = 0x8a

.field public static final blacklist P_DEP_START_INFO:I = 0x8b

.field public static final blacklist P_DIFFERENCES:I = 0x87

.field public static final blacklist P_DISPOSITION_ATTACHMENT:I = 0x81

.field public static final blacklist P_DISPOSITION_FROM_DATA:I = 0x80

.field public static final blacklist P_DISPOSITION_INLINE:I = 0x82

.field public static final blacklist P_DOMAIN:I = 0x9c

.field public static final blacklist P_FILENAME:I = 0x98

.field public static final blacklist P_LEVEL:I = 0x82

.field public static final blacklist P_MAC:I = 0x92

.field public static final blacklist P_MAX_AGE:I = 0x8e

.field public static final blacklist P_MODIFICATION_DATE:I = 0x94

.field public static final blacklist P_NAME:I = 0x97

.field public static final blacklist P_PADDING:I = 0x88

.field public static final blacklist P_PATH:I = 0x9d

.field public static final blacklist P_Q:I = 0x80

.field public static final blacklist P_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final blacklist P_READ_DATE:I = 0x95

.field public static final blacklist P_SEC:I = 0x91

.field public static final blacklist P_SECURE:I = 0x90

.field public static final blacklist P_SIZE:I = 0x96

.field public static final blacklist P_START:I = 0x99

.field public static final blacklist P_START_INFO:I = 0x9a

.field public static final blacklist P_TYPE:I = 0x83

.field private static final blacklist TAG:Ljava/lang/String; = "PduPart"


# instance fields
.field private blacklist mPartData:[B

.field private blacklist mPartHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    const-string v0, "from-data"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    .line 99
    const-string v0, "attachment"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    .line 100
    const-string v0, "inline"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    .line 117
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mUri:Landroid/net/Uri;

    .line 122
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    .line 132
    return-void
.end method


# virtual methods
.method public greylist generateLocation()Ljava/lang/String;
    .registers 5

    .line 422
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 423
    .local v0, "location":[B
    if-nez v0, :cond_30

    .line 424
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v2, 0x98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    .line 426
    if-nez v0, :cond_30

    .line 427
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v2, 0x8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    .line 431
    :cond_30
    if-nez v0, :cond_59

    .line 432
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 433
    .local v1, "contentId":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 435
    .end local v1    # "contentId":[B
    :cond_59
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public greylist getCharset()I
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 254
    .local v0, "charset":Ljava/lang/Integer;
    if-nez v0, :cond_12

    .line 255
    const/4 v1, 0x0

    return v1

    .line 257
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public greylist getContentDisposition()[B
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getContentId()[B
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getContentLocation()[B
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getContentTransferEncoding()[B
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getContentType()[B
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getData()[B
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    if-nez v0, :cond_6

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 161
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    return-object v0
.end method

.method public greylist-max-r getDataLength()I
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    if-eqz v0, :cond_8

    .line 171
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    array-length v0, v0

    return v0

    .line 173
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getDataUri()Landroid/net/Uri;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist getFilename()[B
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getName()[B
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist setCharset(I)V
    .registers 5
    .param p1, "charset"    # I

    .line 243
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public greylist setContentDisposition([B)V
    .registers 4
    .param p1, "contentDisposition"    # [B

    .line 300
    if-eqz p1, :cond_e

    .line 304
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void

    .line 301
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-disposition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentId([B)V
    .registers 8
    .param p1, "contentId"    # [B

    .line 206
    if-eqz p1, :cond_3f

    array-length v0, p1

    if-eqz v0, :cond_3f

    .line 211
    array-length v0, p1

    const/16 v1, 0xc0

    const/16 v2, 0x3e

    const/16 v3, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v5, :cond_26

    aget-byte v0, p1, v4

    int-to-char v0, v0

    if-ne v0, v3, :cond_26

    array-length v0, p1

    sub-int/2addr v0, v5

    aget-byte v0, p1, v0

    int-to-char v0, v0

    if-ne v0, v2, :cond_26

    .line 214
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void

    .line 219
    :cond_26
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 220
    .local v0, "buffer":[B
    aput-byte v3, v0, v4

    .line 221
    array-length v3, v0

    sub-int/2addr v3, v5

    aput-byte v2, v0, v3

    .line 222
    array-length v2, p1

    invoke-static {p1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void

    .line 207
    .end local v0    # "buffer":[B
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Id may not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentLocation([B)V
    .registers 4
    .param p1, "contentLocation"    # [B

    .line 269
    if-eqz p1, :cond_e

    .line 273
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void

    .line 270
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-location"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentTransferEncoding([B)V
    .registers 4
    .param p1, "contentTransferEncoding"    # [B

    .line 350
    if-eqz p1, :cond_e

    .line 354
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-void

    .line 351
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-transfer-encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContentType([B)V
    .registers 4
    .param p1, "contentType"    # [B

    .line 325
    if-eqz p1, :cond_e

    .line 329
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void

    .line 326
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setData([B)V
    .registers 5
    .param p1, "data"    # [B

    .line 141
    if-nez p1, :cond_3

    .line 142
    return-void

    .line 145
    :cond_3
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    .line 146
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    return-void
.end method

.method public greylist setDataUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 185
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPart;->mUri:Landroid/net/Uri;

    .line 186
    return-void
.end method

.method public greylist setFilename([B)V
    .registers 4
    .param p1, "fileName"    # [B

    .line 400
    if-eqz p1, :cond_e

    .line 404
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void

    .line 401
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setName([B)V
    .registers 4
    .param p1, "name"    # [B

    .line 375
    if-eqz p1, :cond_e

    .line 379
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-void

    .line 376
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
