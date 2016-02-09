.class public Landroid/net/http/HttpAuthHeader;
.super Ljava/lang/Object;
.source "HttpAuthHeader.java"


# static fields
.field private static final ALGORITHM_TOKEN:Ljava/lang/String; = "algorithm"

.field public static final BASIC:I = 0x1

.field public static final BASIC_TOKEN:Ljava/lang/String; = "Basic"

.field public static final DIGEST:I = 0x2

.field public static final DIGEST_TOKEN:Ljava/lang/String; = "Digest"

.field private static final NONCE_TOKEN:Ljava/lang/String; = "nonce"

.field private static final OPAQUE_TOKEN:Ljava/lang/String; = "opaque"

.field private static final QOP_TOKEN:Ljava/lang/String; = "qop"

.field private static final REALM_TOKEN:Ljava/lang/String; = "realm"

.field private static final STALE_TOKEN:Ljava/lang/String; = "stale"

.field public static final UNKNOWN:I


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mIsProxy:Z

.field private mNonce:Ljava/lang/String;

.field private mOpaque:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mQop:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mScheme:I

.field private mStale:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    if-eqz p1, :cond_0

    #@5
    .line 118
    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseHeader(Ljava/lang/String;)V

    #@8
    .line 116
    :cond_0
    return-void
.end method

.method private parseHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    if-eqz p1, :cond_0

    #@2
    .line 266
    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseScheme(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 267
    .local v0, "parameters":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .line 269
    iget v1, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 270
    invoke-direct {p0, v0}, Landroid/net/http/HttpAuthHeader;->parseParameters(Ljava/lang/String;)V

    #@f
    .line 260
    .end local v0    # "parameters":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseParameter(Ljava/lang/String;)V
    .locals 5
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 336
    if-eqz p1, :cond_0

    #@3
    .line 338
    const/16 v3, 0x3d

    #@5
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v0

    #@9
    .line 339
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@b
    .line 340
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 342
    .local v1, "token":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    #@15
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v3}, Landroid/net/http/HttpAuthHeader;->trimDoubleQuotesIfAny(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 350
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "realm"

    #@24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 351
    iput-object v2, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    #@2c
    .line 335
    .end local v0    # "i":I
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 353
    .restart local v0    # "i":I
    .restart local v1    # "token":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@2f
    const/4 v4, 0x2

    #@30
    if-ne v3, v4, :cond_0

    #@32
    .line 354
    invoke-direct {p0, v1, v2}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    goto :goto_0
.end method

.method private parseParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    if-eqz p1, :cond_4

    #@2
    if-eqz p2, :cond_4

    #@4
    .line 367
    const-string/jumbo v0, "nonce"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 368
    iput-object p2, p0, Landroid/net/http/HttpAuthHeader;->mNonce:Ljava/lang/String;

    #@f
    .line 369
    return-void

    #@10
    .line 372
    :cond_0
    const-string/jumbo v0, "stale"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 373
    invoke-direct {p0, p2}, Landroid/net/http/HttpAuthHeader;->parseStale(Ljava/lang/String;)V

    #@1c
    .line 374
    return-void

    #@1d
    .line 377
    :cond_1
    const-string/jumbo v0, "opaque"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 378
    iput-object p2, p0, Landroid/net/http/HttpAuthHeader;->mOpaque:Ljava/lang/String;

    #@28
    .line 379
    return-void

    #@29
    .line 382
    :cond_2
    const-string/jumbo v0, "qop"

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 383
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@34
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    #@3a
    .line 384
    return-void

    #@3b
    .line 387
    :cond_3
    const-string/jumbo v0, "algorithm"

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 388
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@46
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    #@4c
    .line 389
    return-void

    #@4d
    .line 365
    :cond_4
    return-void
.end method

.method private parseParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameters"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 316
    if-eqz p1, :cond_1

    #@3
    .line 319
    :cond_0
    const/16 v1, 0x2c

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v0

    #@9
    .line 320
    .local v0, "i":I
    if-gez v0, :cond_2

    #@b
    .line 322
    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;)V

    #@e
    .line 327
    :goto_0
    if-gez v0, :cond_0

    #@10
    .line 310
    .end local v0    # "i":I
    :cond_1
    return-void

    #@11
    .line 324
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v1}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;)V

    #@18
    .line 325
    add-int/lit8 v1, v0, 0x1

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    goto :goto_0
.end method

.method private parseScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 284
    if-eqz p1, :cond_2

    #@4
    .line 285
    const/16 v2, 0x20

    #@6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    .line 286
    .local v0, "i":I
    if-ltz v0, :cond_2

    #@c
    .line 287
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 288
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "Digest"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 289
    const/4 v2, 0x2

    #@1e
    iput v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@20
    .line 292
    const-string/jumbo v2, "md5"

    #@23
    iput-object v2, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    #@25
    .line 299
    :cond_0
    :goto_0
    add-int/lit8 v2, v0, 0x1

    #@27
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 294
    :cond_1
    const-string/jumbo v2, "Basic"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 295
    const/4 v2, 0x1

    #@36
    iput v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@38
    goto :goto_0

    #@39
    .line 303
    .end local v0    # "i":I
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private parseStale(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    if-eqz p1, :cond_0

    #@2
    .line 400
    const-string/jumbo v0, "true"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 401
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mStale:Z

    #@e
    .line 398
    :cond_0
    return-void
.end method

.method private static trimDoubleQuotesIfAny(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x22

    #@2
    .line 412
    if-eqz p0, :cond_0

    #@4
    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    .line 414
    .local v0, "len":I
    const/4 v1, 0x2

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 415
    const/4 v1, 0x0

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    if-ne v1, v2, :cond_0

    #@12
    add-int/lit8 v1, v0, -0x1

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v1

    #@18
    if-ne v1, v2, :cond_0

    #@1a
    .line 416
    add-int/lit8 v1, v0, -0x1

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 420
    .end local v0    # "len":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mNonce:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mOpaque:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mPassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@2
    return v0
.end method

.method public getStale()Z
    .locals 1

    #@0
    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mStale:Z

    #@2
    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mUsername:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isBasic()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 168
    iget v1, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isDigest()Z
    .locals 2

    #@0
    .prologue
    .line 175
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isProxy()Z
    .locals 1

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mIsProxy:Z

    #@2
    return v0
.end method

.method public isSupportedScheme()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 241
    iget-object v2, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 242
    iget v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@8
    if-ne v2, v0, :cond_0

    #@a
    .line 243
    return v0

    #@b
    .line 245
    :cond_0
    iget v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    #@d
    const/4 v3, 0x2

    #@e
    if-ne v2, v3, :cond_3

    #@10
    .line 247
    iget-object v2, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    #@12
    const-string/jumbo v3, "md5"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 248
    iget-object v1, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    #@21
    const-string/jumbo v1, "auth"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    .line 246
    :cond_1
    :goto_0
    return v0

    #@29
    :cond_2
    move v0, v1

    #@2a
    .line 247
    goto :goto_0

    #@2b
    .line 253
    :cond_3
    return v1
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Landroid/net/http/HttpAuthHeader;->mPassword:Ljava/lang/String;

    #@2
    .line 160
    return-void
.end method

.method public setProxy()V
    .locals 1

    #@0
    .prologue
    .line 133
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mIsProxy:Z

    #@3
    .line 132
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Landroid/net/http/HttpAuthHeader;->mUsername:Ljava/lang/String;

    #@2
    .line 146
    return-void
.end method
