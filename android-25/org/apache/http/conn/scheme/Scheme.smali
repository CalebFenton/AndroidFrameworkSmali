.class public final Lorg/apache/http/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/http/conn/scheme/SocketFactory;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    if-nez p1, :cond_0

    #@5
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 98
    const-string/jumbo v1, "Scheme name may not be null"

    #@a
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 100
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 102
    const-string/jumbo v1, "Socket factory may not be null"

    #@15
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 104
    :cond_1
    if-lez p3, :cond_2

    #@1b
    const v0, 0xffff

    #@1e
    if-le p3, v0, :cond_3

    #@20
    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Port is invalid: "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 109
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@3c
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    #@42
    .line 110
    iput-object p2, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    #@44
    .line 111
    iput p3, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@46
    .line 112
    instance-of v0, p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    #@48
    iput-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    #@4a
    .line 94
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 201
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 202
    :cond_1
    instance-of v2, p1, Lorg/apache/http/conn/scheme/Scheme;

    #@a
    if-nez v2, :cond_2

    #@c
    return v1

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 204
    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;

    #@10
    .line 205
    .local v0, "s":Lorg/apache/http/conn/scheme/Scheme;
    iget-object v2, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    #@12
    iget-object v3, v0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 206
    iget v2, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@1c
    iget v3, v0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@1e
    if-ne v2, v3, :cond_3

    #@20
    .line 207
    iget-boolean v2, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    #@22
    iget-boolean v3, v0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 208
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    #@28
    iget-object v2, v0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    .line 205
    :cond_3
    return v1
.end method

.method public final getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@2
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 220
    const/16 v0, 0x11

    #@2
    .line 221
    .local v0, "hash":I
    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    #@7
    move-result v0

    #@8
    .line 222
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 223
    iget-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    #@10
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(IZ)I

    #@13
    move-result v0

    #@14
    .line 224
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    #@16
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    .line 225
    return v0
.end method

.method public final isLayered()Z
    .locals 1

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    #@2
    return v0
.end method

.method public final resolvePort(I)I
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    .line 169
    if-lez p1, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    :cond_0
    iget p1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@9
    .end local p1    # "port":I
    :cond_1
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 180
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 182
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 183
    const/16 v1, 0x3a

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 184
    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    #@22
    .line 187
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    #@24
    return-object v1
.end method
