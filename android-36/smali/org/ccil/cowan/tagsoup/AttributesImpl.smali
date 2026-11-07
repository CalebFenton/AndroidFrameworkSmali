.class public Lorg/ccil/cowan/tagsoup/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field greylist data:[Ljava/lang/String;

.field greylist length:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/Attributes;)V
    .registers 2
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 84
    return-void
.end method

.method private greylist-max-o badIndex(I)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 7
    .param p1, "n"    # I

    .line 575
    if-gtz p1, :cond_3

    .line 576
    return-void

    .line 579
    :cond_3
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 582
    :cond_d
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v1, p1, 0x5

    if-lt v0, v1, :cond_15

    .line 583
    return-void

    .line 586
    :cond_15
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v0

    .local v0, "max":I
    goto :goto_1b

    .line 580
    .end local v0    # "max":I
    :cond_19
    :goto_19
    const/16 v0, 0x19

    .line 588
    .restart local v0    # "max":I
    :goto_1b
    mul-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_22

    .line 589
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1b

    .line 592
    :cond_22
    new-array v1, v0, [Ljava/lang/String;

    .line 593
    .local v1, "newData":[Ljava/lang/String;
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-lez v2, :cond_32

    .line 594
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v3, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v3, v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    :cond_32
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    .line 597
    return-void
.end method


# virtual methods
.method public greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 390
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->ensureCapacity(I)V

    .line 391
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    .line 392
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 393
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 394
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 395
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    .line 396
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 397
    return-void
.end method

.method public greylist clear()V
    .registers 4

    .line 337
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_13

    .line 339
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 341
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 342
    return-void
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 228
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 229
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 230
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 231
    div-int/lit8 v2, v1, 0x5

    return v2

    .line 229
    :cond_16
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 234
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 209
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 210
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_23

    .line 211
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 212
    div-int/lit8 v2, v1, 0x5

    return v2

    .line 210
    :cond_20
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 215
    .end local v1    # "i":I
    :cond_23
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 101
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    return v0
.end method

.method public whitelist test-api getLocalName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 133
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 134
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 136
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getQName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 151
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 152
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 154
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 169
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 170
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    .line 172
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 270
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 271
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 272
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 273
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x3

    aget-object v2, v2, v3

    return-object v2

    .line 271
    :cond_1a
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 276
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 250
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 251
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 252
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 253
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x3

    aget-object v2, v2, v3

    return-object v2

    .line 251
    :cond_24
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 256
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getURI(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 115
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_d

    .line 116
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    return-object v0

    .line 118
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 186
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 187
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    return-object v0

    .line 189
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 312
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 313
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 314
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 315
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x4

    aget-object v2, v2, v3

    return-object v2

    .line 313
    :cond_1a
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 318
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 292
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    .line 293
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 294
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 295
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x4

    aget-object v2, v2, v3

    return-object v2

    .line 293
    :cond_24
    add-int/lit8 v1, v1, 0x5

    goto :goto_5

    .line 298
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist removeAttribute(I)V
    .registers 7
    .param p1, "index"    # I

    .line 446
    if-ltz p1, :cond_4b

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_4b

    .line 447
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_20

    .line 448
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v3, p1, 0x5

    iget v4, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    :cond_20
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    .line 452
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 453
    iget-object p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, p1, v1

    .line 454
    iget-object p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aput-object v2, p1, v0

    .line 455
    iget-object p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v2, p1, v1

    .line 456
    iget-object p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aput-object v2, p1, v0

    .line 457
    iget p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    move p1, v0

    goto :goto_4e

    .line 459
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :cond_4b
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 461
    :goto_4e
    return-void
.end method

.method public greylist setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "qName"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .line 424
    if-ltz p1, :cond_2d

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_2d

    .line 425
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    .line 426
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 427
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    .line 428
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    .line 429
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    goto :goto_30

    .line 431
    :cond_2d
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 433
    :goto_30
    return-void
.end method

.method public greylist setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 6
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 355
    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->clear()V

    .line 356
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    .line 357
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-lez v0, :cond_57

    .line 358
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge v0, v1, :cond_57

    .line 360
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 361
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 362
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 363
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 364
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 367
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method public greylist setLocalName(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "localName"    # Ljava/lang/String;

    .line 496
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 497
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    goto :goto_12

    .line 499
    :cond_f
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 501
    :goto_12
    return-void
.end method

.method public greylist setQName(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "qName"    # Ljava/lang/String;

    .line 516
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 517
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    goto :goto_12

    .line 519
    :cond_f
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 521
    :goto_12
    return-void
.end method

.method public greylist setType(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 535
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 536
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    goto :goto_12

    .line 538
    :cond_f
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 540
    :goto_12
    return-void
.end method

.method public greylist setURI(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 476
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_d

    .line 477
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    goto :goto_10

    .line 479
    :cond_d
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 481
    :goto_10
    return-void
.end method

.method public greylist setValue(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 554
    if-ltz p1, :cond_f

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_f

    .line 555
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    goto :goto_12

    .line 557
    :cond_f
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    .line 559
    :goto_12
    return-void
.end method
