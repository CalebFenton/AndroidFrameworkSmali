.class public Lorg/xml/sax/helpers/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field data:[Ljava/lang/String;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@6
    .line 61
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    #@6
    .line 73
    return-void
.end method

.method private badIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Attempt to modify attribute at illegal index: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 603
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 567
    if-gtz p1, :cond_0

    #@3
    .line 568
    return-void

    #@4
    .line 571
    :cond_0
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@a
    array-length v2, v2

    #@b
    if-nez v2, :cond_2

    #@d
    .line 572
    :cond_1
    const/16 v0, 0x19

    #@f
    .line 580
    .local v0, "max":I
    :goto_0
    mul-int/lit8 v2, p1, 0x5

    #@11
    if-ge v0, v2, :cond_4

    #@13
    .line 581
    mul-int/lit8 v0, v0, 0x2

    #@15
    goto :goto_0

    #@16
    .line 574
    .end local v0    # "max":I
    :cond_2
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@18
    array-length v2, v2

    #@19
    mul-int/lit8 v3, p1, 0x5

    #@1b
    if-lt v2, v3, :cond_3

    #@1d
    .line 575
    return-void

    #@1e
    .line 578
    :cond_3
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@20
    array-length v0, v2

    #@21
    .restart local v0    # "max":I
    goto :goto_0

    #@22
    .line 584
    :cond_4
    new-array v1, v0, [Ljava/lang/String;

    #@24
    .line 585
    .local v1, "newData":[Ljava/lang/String;
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@26
    if-lez v2, :cond_5

    #@28
    .line 586
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@2a
    iget v3, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2c
    mul-int/lit8 v3, v3, 0x5

    #@2e
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@31
    .line 588
    :cond_5
    iput-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@33
    .line 566
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 382
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-direct {p0, v0}, Lorg/xml/sax/helpers/AttributesImpl;->ensureCapacity(I)V

    #@7
    .line 383
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@b
    mul-int/lit8 v1, v1, 0x5

    #@d
    aput-object p1, v0, v1

    #@f
    .line 384
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@11
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@13
    mul-int/lit8 v1, v1, 0x5

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    aput-object p2, v0, v1

    #@19
    .line 385
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@1b
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@1d
    mul-int/lit8 v1, v1, 0x5

    #@1f
    add-int/lit8 v1, v1, 0x2

    #@21
    aput-object p3, v0, v1

    #@23
    .line 386
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@25
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@27
    mul-int/lit8 v1, v1, 0x5

    #@29
    add-int/lit8 v1, v1, 0x3

    #@2b
    aput-object p4, v0, v1

    #@2d
    .line 387
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@2f
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@31
    mul-int/lit8 v1, v1, 0x5

    #@33
    add-int/lit8 v1, v1, 0x4

    #@35
    aput-object p5, v0, v1

    #@37
    .line 388
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@3d
    .line 380
    return-void
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 329
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 330
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@8
    mul-int/lit8 v1, v1, 0x5

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 331
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@e
    aput-object v2, v1, v0

    #@10
    .line 330
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 333
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    #@14
    iput v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@16
    .line 327
    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    mul-int/lit8 v1, v2, 0x5

    #@4
    .line 221
    .local v1, "max":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 222
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    add-int/lit8 v3, v0, 0x2

    #@b
    aget-object v2, v2, v3

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 223
    div-int/lit8 v2, v0, 0x5

    #@15
    return v2

    #@16
    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x5

    #@18
    goto :goto_0

    #@19
    .line 226
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    mul-int/lit8 v1, v2, 0x5

    #@4
    .line 202
    .local v1, "max":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 203
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    aget-object v2, v2, v3

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 204
    div-int/lit8 v2, v0, 0x5

    #@1f
    return v2

    #@20
    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x5

    #@22
    goto :goto_0

    #@23
    .line 207
    :cond_1
    const/4 v2, -0x1

    #@24
    return v2
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 125
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 126
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 128
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 143
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 144
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x2

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 146
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 161
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 162
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x3

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 164
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 262
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    mul-int/lit8 v1, v2, 0x5

    #@4
    .line 263
    .local v1, "max":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 264
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    add-int/lit8 v3, v0, 0x2

    #@b
    aget-object v2, v2, v3

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 265
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@15
    add-int/lit8 v3, v0, 0x3

    #@17
    aget-object v2, v2, v3

    #@19
    return-object v2

    #@1a
    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x5

    #@1c
    goto :goto_0

    #@1d
    .line 268
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    mul-int/lit8 v1, v2, 0x5

    #@4
    .line 243
    .local v1, "max":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 244
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    aget-object v2, v2, v3

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 245
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@1f
    add-int/lit8 v3, v0, 0x3

    #@21
    aget-object v2, v2, v3

    #@23
    return-object v2

    #@24
    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x5

    #@26
    goto :goto_0

    #@27
    .line 248
    :cond_1
    const/4 v2, 0x0

    #@28
    return-object v2
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 107
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 108
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0

    #@d
    .line 110
    :cond_0
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 178
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 179
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x4

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0

    #@f
    .line 181
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    mul-int/lit8 v1, v2, 0x5

    #@4
    .line 305
    .local v1, "max":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 306
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    add-int/lit8 v3, v0, 0x2

    #@b
    aget-object v2, v2, v3

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 307
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@15
    add-int/lit8 v3, v0, 0x4

    #@17
    aget-object v2, v2, v3

    #@19
    return-object v2

    #@1a
    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x5

    #@1c
    goto :goto_0

    #@1d
    .line 310
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@2
    mul-int/lit8 v1, v2, 0x5

    #@4
    .line 285
    .local v1, "max":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 286
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    aget-object v2, v2, v3

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 287
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@1f
    add-int/lit8 v3, v0, 0x4

    #@21
    aget-object v2, v2, v3

    #@23
    return-object v2

    #@24
    .line 285
    :cond_0
    add-int/lit8 v0, v0, 0x5

    #@26
    goto :goto_0

    #@27
    .line 290
    :cond_1
    const/4 v2, 0x0

    #@28
    return-object v2
.end method

.method public removeAttribute(I)V
    .locals 7
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 438
    if-ltz p1, :cond_1

    #@3
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@5
    if-ge p1, v1, :cond_1

    #@7
    .line 439
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    if-ge p1, v1, :cond_0

    #@d
    .line 440
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@f
    add-int/lit8 v2, p1, 0x1

    #@11
    mul-int/lit8 v2, v2, 0x5

    #@13
    iget-object v3, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@15
    mul-int/lit8 v4, p1, 0x5

    #@17
    .line 441
    iget v5, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@19
    sub-int/2addr v5, p1

    #@1a
    add-int/lit8 v5, v5, -0x1

    #@1c
    mul-int/lit8 v5, v5, 0x5

    #@1e
    .line 440
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 443
    :cond_0
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@23
    add-int/lit8 v1, v1, -0x1

    #@25
    mul-int/lit8 p1, v1, 0x5

    #@27
    .line 444
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@29
    add-int/lit8 v0, p1, 0x1

    #@2b
    .end local p1    # "index":I
    .local v0, "index":I
    aput-object v6, v1, p1

    #@2d
    .line 445
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@2f
    add-int/lit8 p1, v0, 0x1

    #@31
    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    #@33
    .line 446
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@35
    add-int/lit8 v0, p1, 0x1

    #@37
    .end local p1    # "index":I
    .restart local v0    # "index":I
    aput-object v6, v1, p1

    #@39
    .line 447
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@3b
    add-int/lit8 p1, v0, 0x1

    #@3d
    .end local v0    # "index":I
    .restart local p1    # "index":I
    aput-object v6, v1, v0

    #@3f
    .line 448
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@41
    aput-object v6, v1, p1

    #@43
    .line 449
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@45
    add-int/lit8 v1, v1, -0x1

    #@47
    iput v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@49
    .line 436
    :goto_0
    return-void

    #@4a
    .line 451
    :cond_1
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@4d
    goto :goto_0
.end method

.method public setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 416
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 417
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    aput-object p2, v0, v1

    #@c
    .line 418
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@e
    mul-int/lit8 v1, p1, 0x5

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    aput-object p3, v0, v1

    #@14
    .line 419
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@16
    mul-int/lit8 v1, p1, 0x5

    #@18
    add-int/lit8 v1, v1, 0x2

    #@1a
    aput-object p4, v0, v1

    #@1c
    .line 420
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@1e
    mul-int/lit8 v1, p1, 0x5

    #@20
    add-int/lit8 v1, v1, 0x3

    #@22
    aput-object p5, v0, v1

    #@24
    .line 421
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@26
    mul-int/lit8 v1, p1, 0x5

    #@28
    add-int/lit8 v1, v1, 0x4

    #@2a
    aput-object p6, v0, v1

    #@2c
    .line 414
    :goto_0
    return-void

    #@2d
    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@30
    goto :goto_0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    #@3
    .line 348
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@9
    .line 349
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@b
    if-lez v1, :cond_0

    #@d
    .line 350
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@f
    mul-int/lit8 v1, v1, 0x5

    #@11
    new-array v1, v1, [Ljava/lang/String;

    #@13
    iput-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@15
    .line 351
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 352
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@1c
    mul-int/lit8 v2, v0, 0x5

    #@1e
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    aput-object v3, v1, v2

    #@24
    .line 353
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@26
    mul-int/lit8 v2, v0, 0x5

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    aput-object v3, v1, v2

    #@30
    .line 354
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@32
    mul-int/lit8 v2, v0, 0x5

    #@34
    add-int/lit8 v2, v2, 0x2

    #@36
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    aput-object v3, v1, v2

    #@3c
    .line 355
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@3e
    mul-int/lit8 v2, v0, 0x5

    #@40
    add-int/lit8 v2, v2, 0x3

    #@42
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    aput-object v3, v1, v2

    #@48
    .line 356
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@4a
    mul-int/lit8 v2, v0, 0x5

    #@4c
    add-int/lit8 v2, v2, 0x4

    #@4e
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    aput-object v3, v1, v2

    #@54
    .line 351
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_0

    #@57
    .line 345
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setLocalName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 488
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 489
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    aput-object p2, v0, v1

    #@e
    .line 486
    :goto_0
    return-void

    #@f
    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@12
    goto :goto_0
.end method

.method public setQName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 508
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 509
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x2

    #@c
    aput-object p2, v0, v1

    #@e
    .line 506
    :goto_0
    return-void

    #@f
    .line 511
    :cond_0
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@12
    goto :goto_0
.end method

.method public setType(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 527
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 528
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x3

    #@c
    aput-object p2, v0, v1

    #@e
    .line 525
    :goto_0
    return-void

    #@f
    .line 530
    :cond_0
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@12
    goto :goto_0
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 468
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 469
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    aput-object p2, v0, v1

    #@c
    .line 466
    :goto_0
    return-void

    #@d
    .line 471
    :cond_0
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@10
    goto :goto_0
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 546
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 547
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    #@8
    mul-int/lit8 v1, p1, 0x5

    #@a
    add-int/lit8 v1, v1, 0x4

    #@c
    aput-object p2, v0, v1

    #@e
    .line 544
    :goto_0
    return-void

    #@f
    .line 549
    :cond_0
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    #@12
    goto :goto_0
.end method
