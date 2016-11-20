.class public Lorg/apache/http/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/16 v1, 0x10

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@c
    .line 64
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 82
    if-nez p1, :cond_0

    #@2
    .line 83
    return-void

    #@3
    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    .line 81
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 71
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/http/message/HeaderGroup;

    #@6
    .line 296
    .local v0, "clone":Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Ljava/util/ArrayList;

    #@8
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@a
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@d
    iput-object v1, v0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@f
    .line 297
    return-object v0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 249
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/http/Header;

    #@11
    .line 250
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 251
    const/4 v2, 0x1

    #@1c
    return v2

    #@1d
    .line 248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 255
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method public copy()Lorg/apache/http/message/HeaderGroup;
    .locals 3

    #@0
    .prologue
    .line 289
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    #@2
    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    #@5
    .line 290
    .local v0, "clone":Lorg/apache/http/message/HeaderGroup;
    iget-object v1, v0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@7
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@9
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@c
    .line 291
    return-object v0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 2

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@2
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Lorg/apache/http/Header;

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Lorg/apache/http/Header;

    #@10
    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/http/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    #@4
    move-result-object v0

    #@5
    .line 152
    .local v0, "headers":[Lorg/apache/http/Header;
    array-length v3, v0

    #@6
    if-nez v3, :cond_0

    #@8
    .line 153
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 154
    :cond_0
    array-length v3, v0

    #@b
    const/4 v4, 0x1

    #@c
    if-ne v3, v4, :cond_1

    #@e
    .line 155
    aget-object v3, v0, v5

    #@10
    return-object v3

    #@11
    .line 157
    :cond_1
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    #@13
    const/16 v3, 0x80

    #@15
    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 158
    .local v2, "valueBuffer":Lorg/apache/http/util/CharArrayBuffer;
    aget-object v3, v0, v5

    #@1a
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@21
    .line 159
    const/4 v1, 0x1

    #@22
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@23
    if-ge v1, v3, :cond_2

    #@25
    .line 160
    const-string/jumbo v3, ", "

    #@28
    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2b
    .line 161
    aget-object v3, v0, v1

    #@2d
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@34
    .line 159
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 164
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    #@39
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@3b
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    return-object v3
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 201
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/http/Header;

    #@11
    .line 202
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 203
    return-object v0

    #@1c
    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 206
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 181
    .local v1, "headersFound":Ljava/util/ArrayList;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@8
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_1

    #@e
    .line 182
    iget-object v3, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@10
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lorg/apache/http/Header;

    #@16
    .line 183
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 184
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 188
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    new-array v3, v3, [Lorg/apache/http/Header;

    #@2c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, [Lorg/apache/http/Header;

    #@32
    return-object v3
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 220
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/http/Header;

    #@12
    .line 221
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 222
    return-object v0

    #@1d
    .line 219
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 226
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_1
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method public iterator()Lorg/apache/http/HeaderIterator;
    .locals 3

    #@0
    .prologue
    .line 266
    new-instance v0, Lorg/apache/http/message/BasicListHeaderIterator;

    #@2
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    new-instance v0, Lorg/apache/http/message/BasicListHeaderIterator;

    #@2
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@4
    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    return-void

    #@3
    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8
    .line 93
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "headers"    # [Lorg/apache/http/Header;

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    #@3
    .line 130
    if-nez p1, :cond_0

    #@5
    .line 131
    return-void

    #@6
    .line 133
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 134
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@c
    aget-object v2, p1, v0

    #@e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 133
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 128
    :cond_1
    return-void
.end method

.method public updateHeader(Lorg/apache/http/Header;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 108
    if-nez p1, :cond_0

    #@2
    .line 109
    return-void

    #@3
    .line 111
    :cond_0
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_2

    #@c
    .line 112
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lorg/apache/http/Header;

    #@14
    .line 113
    .local v0, "current":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 114
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@24
    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 115
    return-void

    #@28
    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 118
    .end local v0    # "current":Lorg/apache/http/Header;
    :cond_2
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    #@2d
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    .line 107
    return-void
.end method
