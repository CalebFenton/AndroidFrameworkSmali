.class public final Lorg/apache/http/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SCHEME_NAME:Ljava/lang/String; = "http"


# instance fields
.field protected final hostname:Ljava/lang/String;

.field protected final lcHostname:Ljava/lang/String;

.field protected final port:I

.field protected final schemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@5
    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@4
    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    if-nez p1, :cond_0

    #@5
    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Host name may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    #@10
    .line 91
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    #@18
    .line 92
    if-eqz p3, :cond_1

    #@1a
    .line 93
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1c
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@22
    .line 97
    :goto_0
    iput p2, p0, Lorg/apache/http/HttpHost;->port:I

    #@24
    .line 85
    return-void

    #@25
    .line 95
    :cond_1
    const-string/jumbo v0, "http"

    #@28
    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@2a
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 3
    .param p1, "httphost"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 126
    iget-object v0, p1, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    #@2
    iget v1, p1, Lorg/apache/http/HttpHost;->port:I

    #@4
    iget-object v2, p1, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@6
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@9
    .line 125
    return-void
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
    .line 220
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 196
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 197
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 198
    :cond_1
    instance-of v2, p1, Lorg/apache/http/HttpHost;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 199
    check-cast v0, Lorg/apache/http/HttpHost;

    #@f
    .line 200
    .local v0, "that":Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    #@11
    iget-object v3, v0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 201
    iget v2, p0, Lorg/apache/http/HttpHost;->port:I

    #@1b
    iget v3, v0, Lorg/apache/http/HttpHost;->port:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 202
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@21
    iget-object v2, v0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 200
    :cond_2
    return v1

    #@28
    .line 204
    .end local v0    # "that":Lorg/apache/http/HttpHost;
    :cond_3
    return v1
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Lorg/apache/http/HttpHost;->port:I

    #@2
    return v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 212
    const/16 v0, 0x11

    #@2
    .line 213
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 214
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    #@d
    move-result v0

    #@e
    .line 215
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 216
    return v0
.end method

.method public toHostString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 180
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 181
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@c
    .line 182
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    #@e
    const/4 v2, -0x1

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 183
    const/16 v1, 0x3a

    #@13
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@16
    .line 184
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1f
    .line 186
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 162
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 163
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@c
    .line 164
    const-string/jumbo v1, "://"

    #@f
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@12
    .line 165
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@17
    .line 166
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    #@19
    const/4 v2, -0x1

    #@1a
    if-eq v1, v2, :cond_0

    #@1c
    .line 167
    const/16 v1, 0x3a

    #@1e
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@21
    .line 168
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2a
    .line 170
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method
