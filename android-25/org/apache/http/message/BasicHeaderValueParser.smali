.class public Lorg/apache/http/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALL_DELIMITERS:[C

.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

.field private static final ELEM_DELIMITER:C = ','

.field private static final PARAM_DELIMITER:C = ';'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueParser;

    #@2
    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@7
    .line 81
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [C

    #@a
    fill-array-data v0, :array_0

    #@d
    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    #@f
    .line 68
    return-void

    #@10
    .line 81
    :array_0
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isOneOf(C[C)Z
    .locals 2
    .param p0, "ch"    # C
    .param p1, "chs"    # [C

    #@0
    .prologue
    .line 310
    if-eqz p1, :cond_1

    #@2
    .line 311
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 312
    aget-char v1, p1, v0

    #@8
    if-ne p0, v1, :cond_0

    #@a
    .line 313
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 317
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public static final parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    if-nez p0, :cond_0

    #@2
    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 104
    const-string/jumbo v3, "Value to parse may not be null"

    #@7
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 107
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 108
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@f
    .line 110
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 111
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 112
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 113
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static final parseHeaderElement(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/HeaderElement;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    if-nez p0, :cond_0

    #@2
    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 155
    const-string/jumbo v3, "Value to parse may not be null"

    #@7
    .line 154
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 158
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 159
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@f
    .line 161
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 162
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 163
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 164
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static final parseNameValuePair(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/NameValuePair;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    if-nez p0, :cond_0

    #@2
    .line 289
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 290
    const-string/jumbo v3, "Value to parse may not be null"

    #@7
    .line 289
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 293
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 294
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@f
    .line 296
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 297
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 298
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 299
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static final parseParameters(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/NameValuePair;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    if-nez p0, :cond_0

    #@2
    .line 219
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 220
    const-string/jumbo v3, "Value to parse may not be null"

    #@7
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 223
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 224
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@f
    .line 226
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 227
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 228
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    #@1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@25
    .line 229
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;

    #@0
    .prologue
    .line 201
    new-instance v0, Lorg/apache/http/message/BasicHeaderElement;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    #@5
    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    #@2
    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    #@0
    .prologue
    .line 121
    if-nez p1, :cond_0

    #@2
    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Char array buffer may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 124
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Parser cursor may not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 128
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 129
    .local v1, "elements":Ljava/util/List;
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_4

    #@21
    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    #@24
    move-result-object v0

    #@25
    .line 131
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_3

    #@2f
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 132
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 136
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@3c
    move-result v2

    #@3d
    new-array v2, v2, [Lorg/apache/http/HeaderElement;

    #@3f
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, [Lorg/apache/http/HeaderElement;

    #@45
    .line 135
    return-object v2
.end method

.method public parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    #@0
    .prologue
    .line 172
    if-nez p1, :cond_0

    #@2
    .line 173
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Char array buffer may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 175
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 176
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "Parser cursor may not be null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 179
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    #@19
    move-result-object v1

    #@1a
    .line 180
    .local v1, "nvp":Lorg/apache/http/NameValuePair;
    const/4 v2, 0x0

    #@1b
    .line 181
    .local v2, "params":[Lorg/apache/http/NameValuePair;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_2

    #@21
    .line 182
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@24
    move-result v3

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@2a
    move-result v0

    #@2b
    .line 183
    .local v0, "ch":C
    const/16 v3, 0x2c

    #@2d
    if-eq v0, v3, :cond_2

    #@2f
    .line 184
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    #@32
    move-result-object v2

    #@33
    .line 187
    .end local v0    # "ch":C
    .end local v2    # "params":[Lorg/apache/http/NameValuePair;
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    #@0
    .prologue
    .line 306
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;
    .locals 14
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # [C

    #@0
    .prologue
    .line 324
    if-nez p1, :cond_0

    #@2
    .line 325
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v13, "Char array buffer may not be null"

    #@7
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v12

    #@b
    .line 327
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 328
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v13, "Parser cursor may not be null"

    #@12
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v12

    #@16
    .line 331
    :cond_1
    const/4 v10, 0x0

    #@17
    .line 333
    .local v10, "terminated":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@1a
    move-result v8

    #@1b
    .line 334
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@1e
    move-result v5

    #@1f
    .line 335
    .local v5, "indexFrom":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    #@22
    move-result v6

    #@23
    .line 338
    .local v6, "indexTo":I
    const/4 v7, 0x0

    #@24
    .line 339
    .local v7, "name":Ljava/lang/String;
    :goto_0
    if-ge v8, v6, :cond_2

    #@26
    .line 340
    invoke-virtual {p1, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@29
    move-result v1

    #@2a
    .line 341
    .local v1, "ch":C
    const/16 v12, 0x3d

    #@2c
    if-ne v1, v12, :cond_3

    #@2e
    .line 351
    .end local v1    # "ch":C
    :cond_2
    :goto_1
    if-ne v8, v6, :cond_5

    #@30
    .line 352
    const/4 v10, 0x1

    #@31
    .line 353
    invoke-virtual {p1, v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    .line 359
    .local v7, "name":Ljava/lang/String;
    :goto_2
    if-eqz v10, :cond_6

    #@37
    .line 360
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v8}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@3c
    .line 361
    const/4 v12, 0x0

    #@3d
    invoke-virtual {p0, v7, v12}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    #@40
    move-result-object v12

    #@41
    return-object v12

    #@42
    .line 344
    .restart local v1    # "ch":C
    .local v7, "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    #@44
    invoke-static {v1, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    #@47
    move-result v12

    #@48
    if-eqz v12, :cond_4

    #@4a
    .line 345
    const/4 v10, 0x1

    #@4b
    .line 346
    goto :goto_1

    #@4c
    .line 348
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 355
    .end local v1    # "ch":C
    :cond_5
    invoke-virtual {p1, v5, v8}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    .line 356
    .local v7, "name":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    #@55
    goto :goto_2

    #@56
    .line 365
    :cond_6
    const/4 v11, 0x0

    #@57
    .line 366
    .local v11, "value":Ljava/lang/String;
    move v3, v8

    #@58
    .line 368
    .local v3, "i1":I
    const/4 v9, 0x0

    #@59
    .line 369
    .local v9, "qouted":Z
    const/4 v2, 0x0

    #@5a
    .line 370
    .local v2, "escaped":Z
    :goto_3
    if-ge v8, v6, :cond_c

    #@5c
    .line 371
    invoke-virtual {p1, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@5f
    move-result v1

    #@60
    .line 372
    .restart local v1    # "ch":C
    const/16 v12, 0x22

    #@62
    if-ne v1, v12, :cond_7

    #@64
    if-eqz v2, :cond_9

    #@66
    .line 375
    :cond_7
    :goto_4
    if-nez v9, :cond_8

    #@68
    if-eqz v2, :cond_b

    #@6a
    .line 379
    :cond_8
    if-eqz v2, :cond_d

    #@6c
    .line 380
    const/4 v2, 0x0

    #@6d
    .line 384
    :goto_5
    add-int/lit8 v8, v8, 0x1

    #@6f
    goto :goto_3

    #@70
    .line 373
    :cond_9
    if-eqz v9, :cond_a

    #@72
    const/4 v9, 0x0

    #@73
    goto :goto_4

    #@74
    :cond_a
    const/4 v9, 0x1

    #@75
    goto :goto_4

    #@76
    .line 375
    :cond_b
    move-object/from16 v0, p3

    #@78
    invoke-static {v1, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    #@7b
    move-result v12

    #@7c
    if-eqz v12, :cond_8

    #@7e
    .line 376
    const/4 v10, 0x1

    #@7f
    .line 387
    .end local v1    # "ch":C
    :cond_c
    move v4, v8

    #@80
    .line 389
    .local v4, "i2":I
    :goto_6
    if-ge v3, v4, :cond_f

    #@82
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@85
    move-result v12

    #@86
    invoke-static {v12}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@89
    move-result v12

    #@8a
    if-eqz v12, :cond_f

    #@8c
    .line 390
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_6

    #@8f
    .line 382
    .end local v4    # "i2":I
    .restart local v1    # "ch":C
    :cond_d
    if-eqz v9, :cond_e

    #@91
    const/16 v12, 0x5c

    #@93
    if-ne v1, v12, :cond_e

    #@95
    const/4 v2, 0x1

    #@96
    goto :goto_5

    #@97
    :cond_e
    const/4 v2, 0x0

    #@98
    goto :goto_5

    #@99
    .line 393
    .end local v1    # "ch":C
    .restart local v4    # "i2":I
    :cond_f
    :goto_7
    if-le v4, v3, :cond_10

    #@9b
    add-int/lit8 v12, v4, -0x1

    #@9d
    invoke-virtual {p1, v12}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@a0
    move-result v12

    #@a1
    invoke-static {v12}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@a4
    move-result v12

    #@a5
    if-eqz v12, :cond_10

    #@a7
    .line 394
    add-int/lit8 v4, v4, -0x1

    #@a9
    goto :goto_7

    #@aa
    .line 397
    :cond_10
    sub-int v12, v4, v3

    #@ac
    const/4 v13, 0x2

    #@ad
    if-lt v12, v13, :cond_11

    #@af
    .line 398
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@b2
    move-result v12

    #@b3
    const/16 v13, 0x22

    #@b5
    if-ne v12, v13, :cond_11

    #@b7
    .line 399
    add-int/lit8 v12, v4, -0x1

    #@b9
    invoke-virtual {p1, v12}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@bc
    move-result v12

    #@bd
    const/16 v13, 0x22

    #@bf
    if-ne v12, v13, :cond_11

    #@c1
    .line 400
    add-int/lit8 v3, v3, 0x1

    #@c3
    .line 401
    add-int/lit8 v4, v4, -0x1

    #@c5
    .line 403
    :cond_11
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@c8
    move-result-object v11

    #@c9
    .line 404
    .local v11, "value":Ljava/lang/String;
    if-eqz v10, :cond_12

    #@cb
    .line 405
    add-int/lit8 v8, v8, 0x1

    #@cd
    .line 407
    :cond_12
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v8}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@d2
    .line 408
    invoke-virtual {p0, v7, v11}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    #@d5
    move-result-object v12

    #@d6
    return-object v12
.end method

.method public parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;
    .locals 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    #@0
    .prologue
    .line 238
    if-nez p1, :cond_0

    #@2
    .line 239
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "Char array buffer may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 241
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 242
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v6, "Parser cursor may not be null"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 245
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@19
    move-result v4

    #@1a
    .line 246
    .local v4, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    #@1d
    move-result v1

    #@1e
    .line 248
    .local v1, "indexTo":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@20
    .line 249
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 250
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 251
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 256
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@30
    .line 257
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 258
    const/4 v5, 0x0

    #@37
    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    #@39
    return-object v5

    #@3a
    .line 261
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@3f
    .line 262
    .local v3, "params":Ljava/util/List;
    :cond_4
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@42
    move-result v5

    #@43
    if-nez v5, :cond_5

    #@45
    .line 263
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    #@48
    move-result-object v2

    #@49
    .line 264
    .local v2, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 265
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    #@4f
    move-result v5

    #@50
    add-int/lit8 v5, v5, -0x1

    #@52
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@55
    move-result v0

    #@56
    .line 266
    .restart local v0    # "ch":C
    const/16 v5, 0x2c

    #@58
    if-ne v0, v5, :cond_4

    #@5a
    .line 272
    .end local v0    # "ch":C
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@5d
    move-result v5

    #@5e
    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    #@60
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@63
    move-result-object v5

    #@64
    check-cast v5, [Lorg/apache/http/NameValuePair;

    #@66
    .line 271
    return-object v5
.end method
