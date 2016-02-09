.class public Lorg/apache/http/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ANY:Lorg/apache/http/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String; = null

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 80
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    #@2
    sget-object v1, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    #@4
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    #@6
    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    #@8
    const/4 v4, -0x1

    #@9
    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@c
    sput-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    #@e
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 150
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    #@2
    sget-object v1, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@7
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@5
    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    if-nez p1, :cond_2

    #@5
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    #@7
    :goto_0
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@9
    .line 115
    if-gez p2, :cond_0

    #@b
    const/4 p2, -0x1

    #@c
    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@e
    .line 116
    if-nez p3, :cond_1

    #@10
    sget-object p3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    #@12
    .end local p3    # "realm":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@14
    .line 117
    if-nez p4, :cond_3

    #@16
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    #@18
    :goto_1
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@1a
    .line 112
    return-void

    #@1b
    .line 114
    .restart local p2    # "port":I
    .restart local p3    # "realm":Ljava/lang/String;
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    goto :goto_0

    #@22
    .line 117
    .end local p2    # "port":I
    .end local p3    # "realm":Ljava/lang/String;
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@24
    invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 158
    if-nez p1, :cond_0

    #@5
    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Scope may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 161
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getHost()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@14
    .line 162
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getPort()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@1a
    .line 163
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getRealm()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@20
    .line 164
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthScope;->getScheme()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@26
    .line 156
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    if-nez p1, :cond_0

    #@3
    .line 241
    return v1

    #@4
    .line 243
    :cond_0
    if-ne p1, p0, :cond_1

    #@6
    .line 244
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 246
    :cond_1
    instance-of v2, p1, Lorg/apache/http/auth/AuthScope;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 247
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    :cond_2
    move-object v0, p1

    #@12
    .line 249
    check-cast v0, Lorg/apache/http/auth/AuthScope;

    #@14
    .line 251
    .local v0, "that":Lorg/apache/http/auth/AuthScope;
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@16
    iget-object v3, v0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@18
    invoke-static {v2, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_3

    #@1e
    .line 252
    iget v2, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@20
    iget v3, v0, Lorg/apache/http/auth/AuthScope;->port:I

    #@22
    if-ne v2, v3, :cond_3

    #@24
    .line 253
    iget-object v2, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@26
    iget-object v3, v0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@28
    invoke-static {v2, v3}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    .line 251
    if-eqz v2, :cond_3

    #@2e
    .line 254
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@30
    iget-object v2, v0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@32
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    .line 250
    :cond_3
    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@2
    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 290
    const/16 v0, 0x11

    #@2
    .line 291
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 292
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    #@d
    move-result v0

    #@e
    .line 293
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 294
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@16
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    .line 295
    return v0
.end method

.method public match(Lorg/apache/http/auth/AuthScope;)I
    .locals 4
    .param p1, "that"    # Lorg/apache/http/auth/AuthScope;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 203
    const/4 v0, 0x0

    #@2
    .line 204
    .local v0, "factor":I
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@4
    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@6
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_4

    #@c
    .line 205
    const/4 v0, 0x1

    #@d
    .line 211
    :cond_0
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@f
    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@11
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_5

    #@17
    .line 212
    add-int/lit8 v0, v0, 0x2

    #@19
    .line 218
    :cond_1
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@1b
    iget v2, p1, Lorg/apache/http/auth/AuthScope;->port:I

    #@1d
    if-ne v1, v2, :cond_6

    #@1f
    .line 219
    add-int/lit8 v0, v0, 0x4

    #@21
    .line 225
    :cond_2
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@23
    iget-object v2, p1, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@25
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_7

    #@2b
    .line 226
    add-int/lit8 v0, v0, 0x8

    #@2d
    .line 232
    :cond_3
    return v0

    #@2e
    .line 207
    :cond_4
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@30
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    #@32
    if-eq v1, v2, :cond_0

    #@34
    iget-object v1, p1, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@36
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    #@38
    if-eq v1, v2, :cond_0

    #@3a
    .line 208
    return v3

    #@3b
    .line 214
    :cond_5
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@3d
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    #@3f
    if-eq v1, v2, :cond_1

    #@41
    iget-object v1, p1, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@43
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    #@45
    if-eq v1, v2, :cond_1

    #@47
    .line 215
    return v3

    #@48
    .line 221
    :cond_6
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@4a
    if-eq v1, v3, :cond_2

    #@4c
    iget v1, p1, Lorg/apache/http/auth/AuthScope;->port:I

    #@4e
    if-eq v1, v3, :cond_2

    #@50
    .line 222
    return v3

    #@51
    .line 228
    :cond_7
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@53
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    #@55
    if-eq v1, v2, :cond_3

    #@57
    iget-object v1, p1, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@59
    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    #@5b
    if-eq v1, v2, :cond_3

    #@5d
    .line 229
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 263
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 264
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->scheme:Ljava/lang/String;

    #@d
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 265
    const/16 v1, 0x20

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 267
    :cond_0
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 269
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->realm:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 274
    :goto_0
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 275
    const/16 v1, 0x40

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    .line 276
    iget-object v1, p0, Lorg/apache/http/auth/AuthScope;->host:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 277
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@3a
    if-ltz v1, :cond_1

    #@3c
    .line 278
    const/16 v1, 0x3a

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@41
    .line 279
    iget v1, p0, Lorg/apache/http/auth/AuthScope;->port:I

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@46
    .line 282
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 272
    :cond_2
    const-string/jumbo v1, "<any realm>"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    goto :goto_0
.end method
