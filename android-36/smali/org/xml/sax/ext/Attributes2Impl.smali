.class public Lorg/xml/sax/ext/Attributes2Impl;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "Attributes2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private greylist declared:[Z

.field private greylist specified:[Z


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 53
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 54
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/Attributes;)V
    .registers 2
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 74
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist test-api addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 248
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "uri":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    .local p2, "uri":Ljava/lang/String;
    .local p3, "localName":Ljava/lang/String;
    .local p4, "qName":Ljava/lang/String;
    .local p5, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v1

    .line 252
    .local v1, "length":I
    iget-object v2, p1, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v2, v2

    if-le v1, v2, :cond_2b

    .line 253
    new-array v2, v1, [Z

    .line 254
    .local v2, "newFlags":[Z
    iget-object v3, p1, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    iget-object v4, p1, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iput-object v2, p1, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 257
    new-array v2, v1, [Z

    .line 258
    iget-object v3, p1, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    iget-object v4, p1, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v2, p1, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 262
    .end local v2    # "newFlags":[Z
    :cond_2b
    iget-object v2, p1, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 263
    iget-object v2, p1, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v3, v1, -0x1

    const-string v5, "CDATA"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    aput-boolean v4, v2, v3

    .line 264
    return-void
.end method

.method public whitelist test-api isDeclared(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 89
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 92
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 90
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isDeclared(Ljava/lang/String;)Z
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 123
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1

    .line 121
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 108
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1

    .line 105
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api isSpecified(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 137
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 140
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 138
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isSpecified(Ljava/lang/String;)Z
    .registers 6
    .param p1, "qName"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 181
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1

    .line 179
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 162
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1

    .line 159
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api removeAttribute(I)V
    .registers 7
    .param p1, "index"    # I

    .line 270
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 272
    .local v0, "origMax":I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    .line 273
    if-eq p1, v0, :cond_21

    .line 274
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    :cond_21
    return-void
.end method

.method public whitelist test-api setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 203
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 205
    .local v0, "length":I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 206
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    .line 207
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    .line 209
    instance-of v1, p1, Lorg/xml/sax/ext/Attributes2;

    if-eqz v1, :cond_2d

    .line 210
    move-object v1, p1

    check-cast v1, Lorg/xml/sax/ext/Attributes2;

    .line 211
    .local v1, "a2":Lorg/xml/sax/ext/Attributes2;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_2c

    .line 212
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v4

    aput-boolean v4, v3, v2

    .line 213
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v4

    aput-boolean v4, v3, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 215
    .end local v1    # "a2":Lorg/xml/sax/ext/Attributes2;
    .end local v2    # "i":I
    :cond_2c
    goto :goto_47

    .line 216
    :cond_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_47

    .line 217
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    const-string v3, "CDATA"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    aput-boolean v3, v2, v1

    .line 218
    iget-object v2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean v4, v2, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 221
    .end local v1    # "i":I
    :cond_47
    :goto_47
    return-void
.end method

.method public whitelist test-api setDeclared(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 295
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 298
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aput-boolean p2, v0, p1

    .line 299
    return-void

    .line 296
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setSpecified(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 314
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 317
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean p2, v0, p1

    .line 318
    return-void

    .line 315
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
