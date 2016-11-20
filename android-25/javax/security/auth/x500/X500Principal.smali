.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient thisX500Name:Lsun/security/x509/X500Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    if-nez p1, :cond_0

    #@5
    .line 241
    new-instance v4, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v5, "provided null input stream"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 246
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v4, v4, 0x1

    #@1a
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    #@1d
    .line 247
    :cond_1
    new-instance v0, Lsun/security/util/DerValue;

    #@1f
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@22
    .line 248
    .local v0, "der":Lsun/security/util/DerValue;
    new-instance v4, Lsun/security/x509/X500Name;

    #@24
    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@26
    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@29
    iput-object v4, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 239
    return-void

    #@2c
    .line 249
    .end local v0    # "der":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    #@2d
    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    .line 252
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@36
    .line 261
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@38
    .line 262
    const-string/jumbo v4, "improperly specified input stream"

    #@3b
    .line 261
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    .line 263
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@41
    .line 264
    throw v2

    #@42
    .line 253
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    #@43
    .line 254
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@45
    .line 255
    const-string/jumbo v4, "improperly specified input stream and unable to reset input stream"

    #@48
    .line 254
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    .line 257
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4e
    .line 258
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@2
    invoke-direct {p0, p1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    #@5
    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    if-nez p1, :cond_0

    #@5
    .line 156
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    .line 158
    const-string/jumbo v3, "provided.null.name"

    #@a
    .line 157
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 156
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 160
    :cond_0
    if-nez p2, :cond_1

    #@14
    .line 161
    new-instance v2, Ljava/lang/NullPointerException;

    #@16
    .line 163
    const-string/jumbo v3, "provided.null.keyword.map"

    #@19
    .line 162
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 161
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 167
    :cond_1
    :try_start_0
    new-instance v2, Lsun/security/x509/X500Name;

    #@23
    invoke-direct {v2, p1, p2}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    #@26
    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 154
    return-void

    #@29
    .line 168
    :catch_0
    move-exception v0

    #@2a
    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2c
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "improperly specified input name: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 169
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    .line 171
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@46
    .line 172
    throw v1
.end method

.method constructor <init>(Lsun/security/x509/X500Name;)V
    .locals 0
    .param p1, "x500Name"    # Lsun/security/x509/X500Name;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@5
    .line 95
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "name"    # [B

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 212
    :try_start_0
    new-instance v2, Lsun/security/x509/X500Name;

    #@5
    invoke-direct {v2, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    #@8
    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 210
    return-void

    #@b
    .line 213
    :catch_0
    move-exception v0

    #@c
    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    .line 215
    const-string/jumbo v2, "improperly specified input name"

    #@11
    .line 214
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    .line 216
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@17
    .line 217
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    new-instance v1, Lsun/security/x509/X500Name;

    #@2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([B)V

    #@b
    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@d
    .line 494
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@9
    .line 484
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 454
    if-ne p0, p1, :cond_0

    #@2
    .line 455
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 457
    :cond_0
    instance-of v1, p1, Ljavax/security/auth/x500/X500Principal;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 458
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 460
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    #@d
    .line 461
    .local v0, "other":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@f
    iget-object v2, v0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@11
    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getEncoded()[B
    .locals 3

    #@0
    .prologue
    .line 419
    :try_start_0
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@2
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 420
    :catch_0
    move-exception v0

    #@8
    .line 421
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "unable to get encoding"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 278
    const-string/jumbo v0, "RFC2253"

    #@3
    invoke-virtual {p0, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    if-eqz p1, :cond_2

    #@2
    .line 345
    const-string/jumbo v0, "RFC1779"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 346
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@d
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC1779Name()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 347
    :cond_0
    const-string/jumbo v0, "RFC2253"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 348
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@1d
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 349
    :cond_1
    const-string/jumbo v0, "CANONICAL"

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 350
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@2d
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    .line 353
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "invalid format specified"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 391
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    #@2
    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 394
    const-string/jumbo v1, "provided.null.OID.map"

    #@7
    .line 393
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 392
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 396
    :cond_0
    if-eqz p1, :cond_2

    #@11
    .line 397
    const-string/jumbo v0, "RFC1779"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 398
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@1c
    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 399
    :cond_1
    const-string/jumbo v0, "RFC2253"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 400
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@2c
    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 403
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v1, "invalid format specified"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
