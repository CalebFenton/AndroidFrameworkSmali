.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final whitelist test-api RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final whitelist test-api RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final whitelist serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient greylist-max-o thisX500Name:Lsun/security/x509/X500Name;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-eqz p1, :cond_46

    .line 259
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 261
    :cond_14
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 262
    .local v0, "der":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/X500Name;

    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_24

    .line 279
    .end local v0    # "der":Lsun/security/util/DerValue;
    nop

    .line 280
    return-void

    .line 263
    :catch_24
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 266
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 273
    goto :goto_3b

    .line 267
    :catch_2f
    move-exception v1

    .line 268
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "improperly specified input stream and unable to reset input stream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 272
    throw v2

    .line 275
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3b
    :goto_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "improperly specified input stream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 278
    throw v1

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provided null input stream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-eqz p1, :cond_39

    .line 174
    if-eqz p2, :cond_2d

    .line 181
    :try_start_7
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1, p2}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_10

    .line 187
    nop

    .line 188
    return-void

    .line 182
    :catch_10
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "improperly specified input name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 186
    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 177
    const-string v1, "provided.null.keyword.map"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    .line 172
    const-string v1, "provided.null.name"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Lsun/security/x509/X500Name;)V
    .registers 2
    .param p1, "x500Name"    # Lsun/security/x509/X500Name;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    .line 97
    return-void
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 5
    .param p1, "name"    # [B

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    :try_start_3
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    .line 232
    nop

    .line 233
    return-void

    .line 227
    :catch_c
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "improperly specified input name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 231
    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 511
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lsun/security/x509/X500Name;-><init>([B)V

    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    .line 512
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 500
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 468
    if-ne p0, p1, :cond_4

    .line 469
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_4
    instance-of v0, p1, Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_a

    .line 472
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_a
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    .line 475
    .local v0, "other":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    iget-object v2, v0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4

    .line 433
    :try_start_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getEncoded()[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 434
    :catch_7
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to get encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 292
    const-string v0, "RFC2253"

    invoke-virtual {p0, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;

    .line 358
    if-eqz p1, :cond_2f

    .line 359
    const-string v0, "RFC1779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 360
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC1779Name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_11
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 362
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_20
    const-string v0, "CANONICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 364
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid format specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 405
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2a

    .line 410
    if-eqz p1, :cond_22

    .line 411
    const-string v0, "RFC1779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 412
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_13
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 414
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid format specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 408
    const-string v1, "provided.null.OID.map"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 487
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
