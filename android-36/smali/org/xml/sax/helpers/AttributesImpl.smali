.class public Lorg/xml/sax/helpers/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field greylist data:[Ljava/lang/String;

.field greylist length:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/Attributes;)V
    .registers 2
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 78
    return-void
.end method

.method private greylist badIndex(I)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist ensureCapacity(I)V
    .registers 7
    .param p1, "n"    # I

    .line 570
    if-gtz p1, :cond_3

    .line 571
    return-void

    .line 574
    :cond_3
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 577
    :cond_d
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x5

    if-lt v0, v1, :cond_15

    .line 578
    return-void

    .line 581
    :cond_15
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v0

    .local v0, "max":I
    goto :goto_1b

    .line 575
    .end local v0    # "max":I
    :cond_19
    :goto_19
    const/16 v0, 0x19

    .line 583
    .restart local v0    # "max":I
    :goto_1b
    mul-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_22

    .line 584
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1b

    .line 587
    :cond_22
    new-array v1, v0, [Ljava/lang/String;

    .line 588
    .local v1, "newData":[Ljava/lang/String;
    iget v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-lez v2, :cond_32

    .line 589
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v3, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v3, v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    :cond_32
    iput-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    .line 592
    return-void
.end method


# virtual methods
.method public whitelist test-api addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 384
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xml/sax/helpers/AttributesImpl;->ensureCapacity(I)V

    .line 385
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    .line 386
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 387
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 388
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 389
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    .line 390
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 391
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 331
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_13

    .line 333
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 335
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 336
    return-void
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 222
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 223
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 224
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 225
    div-int/lit8 v2, v1, 0x5

    return v2

    .line 223
    :cond_16
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 228
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 203
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 204
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_23

    .line 205
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 206
    div-int/lit8 v2, v1, 0x5

    return v2

    .line 204
    :cond_20
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 209
    .end local v1    # "i":I
    :cond_23
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 95
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    return v0
.end method

.method public whitelist test-api getLocalName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 127
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 128
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 130
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getQName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 145
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 146
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 148
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 163
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 164
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    .line 166
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 264
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 265
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 266
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 267
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x3

    aget-object v2, v2, v3

    return-object v2

    .line 265
    :cond_1a
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 270
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 244
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 245
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 246
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 247
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x3

    aget-object v2, v2, v3

    return-object v2

    .line 245
    :cond_24
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 250
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getURI(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 109
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_d

    .line 110
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    return-object v0

    .line 112
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 180
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 181
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    return-object v0

    .line 183
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 306
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 307
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 308
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 309
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x4

    aget-object v2, v2, v3

    return-object v2

    .line 307
    :cond_1a
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 312
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 286
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 287
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 288
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 289
    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x4

    aget-object v2, v2, v3

    return-object v2

    .line 287
    :cond_24
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 292
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api removeAttribute(I)V
    .registers 7
    .param p1, "index"    # I

    .line 440
    if-ltz p1, :cond_4b

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_4b

    .line 441
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_20

    .line 442
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v3, p1, 0x5

    iget v4, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    :cond_20
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    .line 446
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 447
    iget-object p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, p1, v1

    .line 448
    iget-object p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aput-object v2, p1, v0

    .line 449
    iget-object p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, p1, v1

    .line 450
    iget-object p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    aput-object v2, p1, v0

    .line 451
    iget p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    move p1, v0

    goto :goto_4e

    .line 453
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :cond_4b
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 455
    :goto_4e
    return-void
.end method

.method public whitelist test-api setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .line 418
    if-ltz p1, :cond_2d

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_2d

    .line 419
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 420
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 421
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    .line 422
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    .line 423
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    goto :goto_30

    .line 425
    :cond_2d
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 427
    :goto_30
    return-void
.end method

.method public whitelist test-api setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 6
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 349
    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 350
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    iput v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    .line 351
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-lez v0, :cond_57

    .line 352
    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge v0, v1, :cond_57

    .line 354
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 355
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 356
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 357
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 358
    iget-object v1, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 361
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method public whitelist test-api setLocalName(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .line 490
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 491
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    goto :goto_12

    .line 493
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 495
    :goto_12
    return-void
.end method

.method public whitelist test-api setQName(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "qName"    # Ljava/lang/String;

    .line 510
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 511
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    goto :goto_12

    .line 513
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 515
    :goto_12
    return-void
.end method

.method public whitelist test-api setType(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 529
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 530
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    goto :goto_12

    .line 532
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 534
    :goto_12
    return-void
.end method

.method public whitelist test-api setURI(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 470
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_d

    .line 471
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    goto :goto_10

    .line 473
    :cond_d
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 475
    :goto_10
    return-void
.end method

.method public whitelist test-api setValue(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 548
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 549
    iget-object v0, p0, Lorg/xml/sax/helpers/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    goto :goto_12

    .line 551
    :cond_f
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->badIndex(I)V

    .line 553
    :goto_12
    return-void
.end method
