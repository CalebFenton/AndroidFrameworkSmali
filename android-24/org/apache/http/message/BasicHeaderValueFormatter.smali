.class public Lorg/apache/http/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueFormatter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@2
    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@7
    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final formatElements([Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    if-nez p2, :cond_0

    #@3
    .line 106
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@5
    .line 107
    :cond_0
    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final formatHeaderElement(Lorg/apache/http/HeaderElement;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Lorg/apache/http/HeaderElement;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 174
    if-nez p2, :cond_0

    #@3
    .line 175
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@5
    .line 176
    :cond_0
    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final formatNameValuePair(Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 330
    if-nez p2, :cond_0

    #@3
    .line 331
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@5
    .line 332
    :cond_0
    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final formatParameters([Lorg/apache/http/NameValuePair;ZLorg/apache/http/message/HeaderValueFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p1, "quote"    # Z
    .param p2, "formatter"    # Lorg/apache/http/message/HeaderValueFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 262
    if-nez p2, :cond_0

    #@3
    .line 263
    sget-object p2, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@5
    .line 264
    :cond_0
    invoke-interface {p2, v0, p0, p1}, Lorg/apache/http/message/HeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method


# virtual methods
.method protected doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "quote"    # Z

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    .line 398
    if-nez p3, :cond_0

    #@4
    .line 399
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-ge v1, v2, :cond_0

    #@b
    if-eqz p3, :cond_3

    #@d
    .line 404
    .end local v1    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    #@f
    .line 405
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@12
    .line 407
    :cond_1
    const/4 v1, 0x0

    #@13
    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    if-ge v1, v2, :cond_4

    #@19
    .line 408
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 409
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 410
    const/16 v2, 0x5c

    #@25
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@28
    .line 412
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@2b
    .line 407
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 400
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v2

    #@32
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    #@35
    move-result p3

    #@36
    .line 399
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 414
    :cond_4
    if-eqz p3, :cond_5

    #@3b
    .line 415
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@3e
    .line 396
    :cond_5
    return-void
.end method

.method protected estimateElementsLen([Lorg/apache/http/HeaderElement;)I
    .locals 4
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;

    #@0
    .prologue
    .line 146
    if-eqz p1, :cond_0

    #@2
    array-length v2, p1

    #@3
    const/4 v3, 0x1

    #@4
    if-ge v2, v3, :cond_1

    #@6
    .line 147
    :cond_0
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 149
    :cond_1
    array-length v2, p1

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    mul-int/lit8 v1, v2, 0x2

    #@d
    .line 150
    .local v1, "result":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@f
    if-ge v0, v2, :cond_2

    #@11
    .line 151
    aget-object v2, p1, v0

    #@13
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    #@16
    move-result v2

    #@17
    add-int/2addr v1, v2

    #@18
    .line 150
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 154
    :cond_2
    return v1
.end method

.method protected estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I
    .locals 5
    .param p1, "elem"    # Lorg/apache/http/HeaderElement;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 223
    if-nez p1, :cond_0

    #@3
    .line 224
    return v4

    #@4
    .line 226
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    .line 227
    .local v2, "result":I
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 228
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@12
    .line 230
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v4, v4, 0x3

    #@18
    add-int/2addr v2, v4

    #@19
    .line 233
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    #@1c
    move-result v1

    #@1d
    .line 234
    .local v1, "parcnt":I
    if-lez v1, :cond_2

    #@1f
    .line 235
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@22
    .line 237
    invoke-interface {p1, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    #@29
    move-result v4

    #@2a
    .line 236
    add-int/lit8 v4, v4, 0x2

    #@2c
    add-int/2addr v2, v4

    #@2d
    .line 235
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 241
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method protected estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I
    .locals 3
    .param p1, "nvp"    # Lorg/apache/http/NameValuePair;

    #@0
    .prologue
    .line 371
    if-nez p1, :cond_0

    #@2
    .line 372
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 374
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    .line 375
    .local v0, "result":I
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 376
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@12
    .line 378
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    add-int/lit8 v2, v2, 0x3

    #@18
    add-int/2addr v0, v2

    #@19
    .line 380
    :cond_1
    return v0
.end method

.method protected estimateParametersLen([Lorg/apache/http/NameValuePair;)I
    .locals 4
    .param p1, "nvps"    # [Lorg/apache/http/NameValuePair;

    #@0
    .prologue
    .line 303
    if-eqz p1, :cond_0

    #@2
    array-length v2, p1

    #@3
    const/4 v3, 0x1

    #@4
    if-ge v2, v3, :cond_1

    #@6
    .line 304
    :cond_0
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 306
    :cond_1
    array-length v2, p1

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    mul-int/lit8 v1, v2, 0x2

    #@d
    .line 307
    .local v1, "result":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@f
    if-ge v0, v2, :cond_2

    #@11
    .line 308
    aget-object v2, p1, v0

    #@13
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    #@16
    move-result v2

    #@17
    add-int/2addr v1, v2

    #@18
    .line 307
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 311
    :cond_2
    return v1
.end method

.method public formatElements(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    #@0
    .prologue
    .line 115
    if-nez p2, :cond_0

    #@2
    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 117
    const-string/jumbo v3, "Header element array must not be null."

    #@7
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 120
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateElementsLen([Lorg/apache/http/HeaderElement;)I

    #@e
    move-result v1

    #@f
    .line 121
    .local v1, "len":I
    if-nez p1, :cond_2

    #@11
    .line 122
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    #@13
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@16
    .line 127
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_1
    array-length v2, p2

    #@18
    if-ge v0, v2, :cond_3

    #@1a
    .line 128
    if-lez v0, :cond_1

    #@1c
    .line 129
    const-string/jumbo v2, ", "

    #@1f
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@22
    .line 131
    :cond_1
    aget-object v2, p2, v0

    #@24
    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@27
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 124
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@2d
    goto :goto_0

    #@2e
    .line 134
    .restart local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method public formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "elem"    # Lorg/apache/http/HeaderElement;
    .param p3, "quote"    # Z

    #@0
    .prologue
    .line 184
    if-nez p2, :cond_0

    #@2
    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    .line 186
    const-string/jumbo v5, "Header element must not be null."

    #@7
    .line 185
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 189
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lorg/apache/http/HeaderElement;)I

    #@e
    move-result v1

    #@f
    .line 190
    .local v1, "len":I
    if-nez p1, :cond_2

    #@11
    .line 191
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    #@13
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@16
    .line 196
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1d
    .line 197
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 198
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@23
    .line 199
    const/16 v4, 0x3d

    #@25
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@28
    .line 200
    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    #@2b
    .line 203
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HeaderElement;->getParameterCount()I

    #@2e
    move-result v2

    #@2f
    .line 204
    .local v2, "parcnt":I
    if-lez v2, :cond_3

    #@31
    .line 205
    const/4 v0, 0x0

    #@32
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@34
    .line 206
    const-string/jumbo v4, "; "

    #@37
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3a
    .line 207
    invoke-interface {p2, v0}, Lorg/apache/http/HeaderElement;->getParameter(I)Lorg/apache/http/NameValuePair;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@41
    .line 205
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_1

    #@44
    .line 193
    .end local v0    # "i":I
    .end local v2    # "parcnt":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@47
    goto :goto_0

    #@48
    .line 211
    .restart local v2    # "parcnt":I
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    return-object p1
.end method

.method public formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvp"    # Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    #@0
    .prologue
    .line 340
    if-nez p2, :cond_0

    #@2
    .line 341
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 342
    const-string/jumbo v3, "NameValuePair must not be null."

    #@7
    .line 341
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 345
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lorg/apache/http/NameValuePair;)I

    #@e
    move-result v0

    #@f
    .line 346
    .local v0, "len":I
    if-nez p1, :cond_2

    #@11
    .line 347
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    #@13
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@16
    .line 352
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1d
    .line 353
    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 354
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@23
    .line 355
    const/16 v2, 0x3d

    #@25
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@28
    .line 356
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->doFormatValue(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Z)V

    #@2b
    .line 359
    :cond_1
    return-object p1

    #@2c
    .line 349
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@2f
    goto :goto_0
.end method

.method public formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "nvps"    # [Lorg/apache/http/NameValuePair;
    .param p3, "quote"    # Z

    #@0
    .prologue
    .line 272
    if-nez p2, :cond_0

    #@2
    .line 273
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 274
    const-string/jumbo v3, "Parameters must not be null."

    #@7
    .line 273
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 277
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->estimateParametersLen([Lorg/apache/http/NameValuePair;)I

    #@e
    move-result v1

    #@f
    .line 278
    .local v1, "len":I
    if-nez p1, :cond_2

    #@11
    .line 279
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    #@13
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@16
    .line 284
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_1
    array-length v2, p2

    #@18
    if-ge v0, v2, :cond_3

    #@1a
    .line 285
    if-lez v0, :cond_1

    #@1c
    .line 286
    const-string/jumbo v2, "; "

    #@1f
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@22
    .line 288
    :cond_1
    aget-object v2, p2, v0

    #@24
    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@27
    .line 284
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 281
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@2d
    goto :goto_0

    #@2e
    .line 291
    .restart local v0    # "i":I
    :cond_3
    return-object p1
.end method

.method protected isSeparator(C)Z
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 429
    const-string/jumbo v1, " ;,:@()<>\\\"/[]?={}\t"

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    if-ltz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method protected isUnsafe(C)Z
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 442
    const-string/jumbo v1, "\"\\"

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    if-ltz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method
