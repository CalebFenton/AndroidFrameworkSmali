.class Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;
.super Ljava/lang/Object;
.source "EncodingInfo.java"

# interfaces
.implements Lorg/apache/xml/serializer/EncodingInfo$InEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodingImpl"
.end annotation


# static fields
.field private static final greylist RANGE:I = 0x80


# instance fields
.field private greylist m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final greylist m_alreadyKnown:[Z

.field private greylist m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final greylist m_encoding:Ljava/lang/String;

.field private final greylist m_explFirst:I

.field private final greylist m_explLast:I

.field private final greylist m_first:I

.field private final greylist m_isInEncoding:[Z

.field private final greylist m_last:I

.field final synthetic greylist this$0:Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xml/serializer/EncodingInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 340
    iget-object v2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    return-void
.end method

.method private constructor greylist <init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 330
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    .line 335
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    .line 346
    iput p3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    .line 347
    iput p4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    .line 351
    iput p5, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    add-int/lit8 p3, p5, 0x7f

    .line 352
    iput p3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    .line 354
    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    .line 356
    iget-object p2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz p2, :cond_93

    const/4 p3, 0x1

    if-ltz p5, :cond_80

    const/16 p4, 0x7f

    if-gt p5, p4, :cond_80

    .line 362
    const-string p5, "UTF8"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    const-string p2, "UTF-16"

    iget-object p5, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 363
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    const-string p2, "ASCII"

    iget-object p5, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 364
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    const-string p2, "US-ASCII"

    iget-object p5, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 365
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    const-string p2, "Unicode"

    iget-object p5, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 366
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    const-string p2, "UNICODE"

    iget-object p5, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 367
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    iget-object p2, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    const-string p5, "ISO8859"

    .line 368
    invoke-virtual {p2, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_80

    :cond_6a
    move p2, p3

    :goto_6b
    if-ge p2, p4, :cond_80

    .line 382
    iget p5, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    sub-int p5, p2, p5

    if-ltz p5, :cond_7d

    if-ge p5, v0, :cond_7d

    .line 384
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean p3, v1, p5

    .line 385
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p3, v1, p5

    :cond_7d
    add-int/lit8 p2, p2, 0x1

    goto :goto_6b

    .line 401
    :cond_80
    iget-object p1, p1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez p1, :cond_93

    const/4 p1, 0x0

    .line 402
    :goto_85
    iget-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    array-length p4, p2

    if-ge p1, p4, :cond_93

    .line 403
    aput-boolean p3, p2, p1

    .line 404
    iget-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_85

    :cond_93
    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;)V

    return-void
.end method


# virtual methods
.method public greylist isInEncoding(C)Z
    .registers 9

    .line 189
    invoke-static {p1}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(C)I

    move-result v5

    .line 190
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    const/4 v1, 0x1

    if-ge v5, v0, :cond_26

    .line 195
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v2, :cond_1f

    move v2, v0

    .line 196
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    move v3, v1

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    move v4, v2

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    move v6, v3

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    sub-int/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 202
    :cond_1f
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result p0

    return p0

    :cond_26
    move v4, v0

    move v6, v1

    .line 203
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v0, v5, :cond_48

    .line 208
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v1, :cond_41

    move v1, v0

    .line 209
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    move v2, v1

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    move v3, v2

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    add-int/2addr v3, v6

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 215
    :cond_41
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result p0

    return p0

    :cond_48
    sub-int/2addr v5, v4

    .line 221
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_54

    .line 222
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean p0, p0, v5

    return p0

    .line 226
    :cond_54
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/xml/serializer/EncodingInfo;->-$$Nest$sminEncoding(CLjava/lang/String;)Z

    move-result p1

    .line 227
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v6, v0, v5

    .line 228
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p1, p0, v5

    return p1
.end method

.method public greylist isInEncoding(CC)Z
    .registers 10

    .line 236
    invoke-static {p1, p2}, Lorg/apache/xml/serializer/Encodings;->toCodePoint(CC)I

    move-result v5

    .line 237
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explFirst:I

    const/4 v1, 0x1

    if-ge v5, v0, :cond_26

    .line 242
    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v2, :cond_1f

    move v2, v0

    .line 243
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    move v3, v1

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    move v4, v2

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    move v6, v3

    iget v3, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_first:I

    sub-int/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 249
    :cond_1f
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_before:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result p0

    return p0

    :cond_26
    move v4, v0

    move v6, v1

    .line 250
    iget v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_explLast:I

    if-ge v0, v5, :cond_48

    .line 255
    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v1, :cond_41

    move v1, v0

    .line 256
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    move v2, v1

    iget-object v1, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->this$0:Lorg/apache/xml/serializer/EncodingInfo;

    move v3, v2

    iget-object v2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    add-int/2addr v3, v6

    iget v4, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_last:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Ljava/lang/String;III)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 262
    :cond_41
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_after:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result p0

    return p0

    :cond_48
    sub-int/2addr v5, v4

    .line 268
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_54

    .line 269
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aget-boolean p0, p0, v5

    return p0

    .line 273
    :cond_54
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_encoding:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lorg/apache/xml/serializer/EncodingInfo;->-$$Nest$sminEncoding(CCLjava/lang/String;)Z

    move-result p1

    .line 274
    iget-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_alreadyKnown:[Z

    aput-boolean v6, p2, v5

    .line 275
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;->m_isInEncoding:[Z

    aput-boolean p1, p0, v5

    return p1
.end method
