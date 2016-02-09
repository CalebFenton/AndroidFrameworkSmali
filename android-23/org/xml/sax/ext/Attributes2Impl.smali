.class public Lorg/xml/sax/ext/Attributes2Impl;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "Attributes2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private declared:[Z

.field private specified:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@3
    .line 48
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    #@5
    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@7
    .line 49
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    #@9
    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@b
    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    #@3
    .line 67
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 243
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 245
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    #@8
    move-result v0

    #@9
    .line 247
    .local v0, "length":I
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@b
    array-length v4, v4

    #@c
    if-le v0, v4, :cond_0

    #@e
    .line 248
    new-array v1, v0, [Z

    #@10
    .line 249
    .local v1, "newFlags":[Z
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@12
    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@14
    array-length v5, v5

    #@15
    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@18
    .line 250
    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@1a
    .line 252
    new-array v1, v0, [Z

    #@1c
    .line 253
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@1e
    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@20
    array-length v5, v5

    #@21
    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@24
    .line 254
    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@26
    .line 257
    .end local v1    # "newFlags":[Z
    :cond_0
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@28
    add-int/lit8 v5, v0, -0x1

    #@2a
    aput-boolean v3, v4, v5

    #@2c
    .line 258
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@2e
    add-int/lit8 v5, v0, -0x1

    #@30
    const-string/jumbo v6, "CDATA"

    #@33
    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_1

    #@39
    :goto_0
    aput-boolean v2, v4, v5

    #@3b
    .line 241
    return-void

    #@3c
    :cond_1
    move v2, v3

    #@3d
    .line 258
    goto :goto_0
.end method

.method public isDeclared(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 84
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 85
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "No attribute at index: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 87
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@24
    aget-boolean v0, v0, p1

    #@26
    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 115
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such attribute: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 118
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@22
    aget-boolean v1, v1, v0

    #@24
    return v1
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 99
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such attribute: local="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 102
    const-string/jumbo v3, ", namespace="

    #@1b
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 103
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@2d
    aget-boolean v1, v1, v0

    #@2f
    return v1
.end method

.method public isSpecified(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 132
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 133
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "No attribute at index: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 135
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@24
    aget-boolean v0, v0, p1

    #@26
    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 173
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such attribute: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 176
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@22
    aget-boolean v1, v1, v0

    #@24
    return v1
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 153
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such attribute: local="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 156
    const-string/jumbo v3, ", namespace="

    #@1b
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 154
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 157
    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@2d
    aget-boolean v1, v1, v0

    #@2f
    return v1
.end method

.method public removeAttribute(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .line 267
    .local v0, "origMax":I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    #@9
    .line 268
    if-eq p1, v0, :cond_0

    #@b
    .line 269
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@d
    add-int/lit8 v2, p1, 0x1

    #@f
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@11
    .line 270
    sub-int v4, v0, p1

    #@13
    .line 269
    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@16
    .line 271
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@18
    add-int/lit8 v2, p1, 0x1

    #@1a
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@1c
    .line 272
    sub-int v4, v0, p1

    #@1e
    .line 271
    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@21
    .line 263
    :cond_0
    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 198
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    #@4
    move-result v2

    #@5
    .line 200
    .local v2, "length":I
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    #@8
    .line 201
    new-array v3, v2, [Z

    #@a
    iput-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@c
    .line 202
    new-array v3, v2, [Z

    #@e
    iput-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@10
    .line 204
    instance-of v3, p1, Lorg/xml/sax/ext/Attributes2;

    #@12
    if-eqz v3, :cond_0

    #@14
    move-object v0, p1

    #@15
    .line 205
    check-cast v0, Lorg/xml/sax/ext/Attributes2;

    #@17
    .line 206
    .local v0, "a2":Lorg/xml/sax/ext/Attributes2;
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@1a
    .line 207
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@1c
    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    #@1f
    move-result v4

    #@20
    aput-boolean v4, v3, v1

    #@22
    .line 208
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@24
    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    #@27
    move-result v4

    #@28
    aput-boolean v4, v3, v1

    #@2a
    .line 206
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 211
    .end local v0    # "a2":Lorg/xml/sax/ext/Attributes2;
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@30
    .line 212
    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@32
    const-string/jumbo v3, "CDATA"

    #@35
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    const/4 v3, 0x0

    #@40
    :goto_2
    aput-boolean v3, v5, v1

    #@42
    .line 213
    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@44
    aput-boolean v4, v3, v1

    #@46
    .line 211
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    :cond_1
    move v3, v4

    #@4a
    .line 212
    goto :goto_2

    #@4b
    .line 196
    :cond_2
    return-void
.end method

.method public setDeclared(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 290
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 291
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "No attribute at index: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 293
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    #@24
    aput-boolean p2, v0, p1

    #@26
    .line 288
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 309
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 310
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "No attribute at index: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 310
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 312
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    #@24
    aput-boolean p2, v0, p1

    #@26
    .line 307
    return-void
.end method
