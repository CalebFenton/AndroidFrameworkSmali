.class public Lorg/apache/http/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lorg/apache/http/HeaderElement;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lorg/apache/http/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    #@4
    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/apache/http/NameValuePair;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    if-nez p1, :cond_0

    #@5
    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Name may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    #@10
    .line 111
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@12
    .line 112
    if-eqz p3, :cond_1

    #@14
    .line 113
    iput-object p3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@16
    .line 105
    :goto_0
    return-void

    #@17
    .line 115
    :cond_1
    const/4 v0, 0x0

    #@18
    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    #@1a
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 205
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 206
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 207
    :cond_1
    instance-of v2, p1, Lorg/apache/http/HeaderElement;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 208
    check-cast v0, Lorg/apache/http/message/BasicHeaderElement;

    #@f
    .line 209
    .local v0, "that":Lorg/apache/http/message/BasicHeaderElement;
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    #@11
    iget-object v3, v0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 210
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@1b
    iget-object v3, v0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@1d
    invoke-static {v2, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 209
    if-eqz v2, :cond_2

    #@23
    .line 211
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@25
    iget-object v2, v0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@27
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 209
    :cond_2
    return v1

    #@2c
    .line 213
    .end local v0    # "that":Lorg/apache/http/message/BasicHeaderElement;
    :cond_3
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParameter(I)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    if-nez p1, :cond_0

    #@2
    .line 191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Name may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 193
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 194
    .local v1, "found":Lorg/apache/http/NameValuePair;
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@f
    array-length v3, v3

    #@10
    if-ge v2, v3, :cond_1

    #@12
    .line 195
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@14
    aget-object v0, v3, v2

    #@16
    .line 196
    .local v0, "current":Lorg/apache/http/NameValuePair;
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 197
    move-object v1, v0

    #@21
    .line 201
    .end local v0    # "current":Lorg/apache/http/NameValuePair;
    .end local v1    # "found":Lorg/apache/http/NameValuePair;
    :cond_1
    return-object v1

    #@22
    .line 194
    .restart local v0    # "current":Lorg/apache/http/NameValuePair;
    .restart local v1    # "found":Lorg/apache/http/NameValuePair;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0
.end method

.method public getParameterCount()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getParameters()[Lorg/apache/http/NameValuePair;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lorg/apache/http/NameValuePair;

    #@8
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 218
    const/16 v0, 0x11

    #@2
    .line 219
    .local v0, "hash":I
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    #@4
    invoke-static {v0, v2}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 220
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@a
    invoke-static {v0, v2}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 221
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@11
    array-length v2, v2

    #@12
    if-ge v1, v2, :cond_0

    #@14
    .line 222
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@16
    aget-object v2, v2, v1

    #@18
    invoke-static {v0, v2}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    .line 221
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 224
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 228
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v2, 0x40

    #@4
    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 229
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@c
    .line 230
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 231
    const-string/jumbo v2, "="

    #@13
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@16
    .line 232
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 234
    :cond_0
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@1e
    array-length v2, v2

    #@1f
    if-ge v1, v2, :cond_1

    #@21
    .line 235
    const-string/jumbo v2, "; "

    #@24
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@27
    .line 236
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    #@29
    aget-object v2, v2, v1

    #@2b
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/Object;)V

    #@2e
    .line 234
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 238
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2
.end method
