.class public Ljava/security/cert/CertificateRevokedException;
.super Ljava/security/cert/CertificateException;
.source "CertificateRevokedException.java"


# static fields
.field private static final serialVersionUID:J = 0x6ccd4365f915b433L


# instance fields
.field private final authority:Ljavax/security/auth/x500/X500Principal;

.field private transient extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final reason:Ljava/security/cert/CRLReason;

.field private revocationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V
    .locals 4
    .param p1, "revocationDate"    # Ljava/util/Date;
    .param p2, "reason"    # Ljava/security/cert/CRLReason;
    .param p3, "authority"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/CRLReason;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    #@3
    .line 91
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v0

    #@d
    .line 91
    :cond_1
    if-eqz p3, :cond_0

    #@f
    .line 92
    if-eqz p4, :cond_0

    #@11
    .line 95
    new-instance v0, Ljava/util/Date;

    #@13
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@16
    move-result-wide v2

    #@17
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1a
    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@1c
    .line 96
    iput-object p2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@1e
    .line 97
    iput-object p3, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    #@20
    .line 98
    new-instance v0, Ljava/util/HashMap;

    #@22
    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@25
    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@27
    .line 90
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 222
    new-instance v7, Ljava/util/Date;

    #@5
    iget-object v8, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@7
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    #@a
    move-result-wide v8

    #@b
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@e
    iput-object v7, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@10
    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@13
    move-result v6

    #@14
    .line 227
    .local v6, "size":I
    if-nez v6, :cond_0

    #@16
    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@19
    move-result-object v7

    #@1a
    iput-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@1c
    .line 234
    :goto_0
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_1

    #@1f
    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Ljava/lang/String;

    #@25
    .line 236
    .local v5, "oid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    #@28
    move-result v0

    #@29
    .line 237
    .local v0, "critical":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@2c
    move-result v4

    #@2d
    .line 238
    .local v4, "length":I
    new-array v2, v4, [B

    #@2f
    .line 239
    .local v2, "extVal":[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    #@32
    .line 241
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    #@34
    invoke-direct {v7, v5}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@37
    .line 240
    invoke-static {v7, v0, v2}, Lsun/security/x509/Extension;->newExtension(Lsun/security/util/ObjectIdentifier;Z[B)Lsun/security/x509/Extension;

    #@3a
    move-result-object v1

    #@3b
    .line 242
    .local v1, "ext":Ljava/security/cert/Extension;
    iget-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@3d
    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 234
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_1

    #@43
    .line 230
    .end local v0    # "critical":Z
    .end local v1    # "ext":Ljava/security/cert/Extension;
    .end local v2    # "extVal":[B
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "oid":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    #@45
    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(I)V

    #@48
    iput-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@4a
    goto :goto_0

    #@4b
    .line 216
    .restart local v3    # "i":I
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 195
    iget-object v4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@5
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@8
    move-result v4

    #@9
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@c
    .line 202
    iget-object v4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@e
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/security/cert/Extension;

    #@28
    .line 204
    .local v2, "ext":Ljava/security/cert/Extension;
    invoke-interface {v2}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2f
    .line 205
    invoke-interface {v2}, Ljava/security/cert/Extension;->isCritical()Z

    #@32
    move-result v4

    #@33
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    #@36
    .line 206
    invoke-interface {v2}, Ljava/security/cert/Extension;->getValue()[B

    #@39
    move-result-object v3

    #@3a
    .line 207
    .local v3, "extVal":[B
    array-length v4, v3

    #@3b
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@3e
    .line 208
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->write([B)V

    #@41
    goto :goto_0

    #@42
    .line 189
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    .end local v2    # "ext":Ljava/security/cert/Extension;
    .end local v3    # "extVal":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthorityName()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInvalidityDate()Ljava/util/Date;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 146
    invoke-virtual {p0}, Ljava/security/cert/CertificateRevokedException;->getExtensions()Ljava/util/Map;

    #@4
    move-result-object v3

    #@5
    const-string/jumbo v4, "2.5.29.24"

    #@8
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/security/cert/Extension;

    #@e
    .line 147
    .local v0, "ext":Ljava/security/cert/Extension;
    if-nez v0, :cond_0

    #@10
    .line 148
    return-object v6

    #@11
    .line 152
    :cond_0
    :try_start_0
    invoke-static {v0}, Lsun/security/x509/InvalidityDateExtension;->toImpl(Ljava/security/cert/Extension;)Lsun/security/x509/InvalidityDateExtension;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, "DATE"

    #@18
    invoke-virtual {v3, v4}, Lsun/security/x509/InvalidityDateExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/util/Date;

    #@1e
    .line 153
    .local v1, "invalidity":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    #@20
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@23
    move-result-wide v4

    #@24
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    return-object v3

    #@28
    .line 154
    .end local v1    # "invalidity":Ljava/util/Date;
    :catch_0
    move-exception v2

    #@29
    .line 155
    .local v2, "ioe":Ljava/io/IOException;
    return-object v6
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Certificate has been revoked, reason: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 176
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@e
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 176
    const-string/jumbo v1, ", revocation date: "

    #@15
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 176
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@1b
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 177
    const-string/jumbo v1, ", authority: "

    #@22
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 177
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    #@28
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 177
    const-string/jumbo v1, ", extensions: "

    #@2f
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 177
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@35
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@2
    return-object v0
.end method
