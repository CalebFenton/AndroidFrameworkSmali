.class public Ljava/security/cert/CertificateRevokedException;
.super Ljava/security/cert/CertificateException;
.source "CertificateRevokedException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x6ccd4365f915b433L


# instance fields
.field private final greylist-max-o authority:Ljavax/security/auth/x500/X500Principal;

.field private transient greylist-max-o extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o reason:Ljava/security/cert/CRLReason;

.field private greylist-max-o revocationDate:Ljava/util/Date;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V
    .registers 8
    .param p1, "revocationDate"    # Ljava/util/Date;
    .param p2, "reason"    # Ljava/security/cert/CRLReason;
    .param p3, "authority"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/CRLReason;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 90
    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    if-eqz p3, :cond_2f

    if-eqz p4, :cond_2f

    .line 94
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    .line 95
    iput-object p2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    .line 96
    iput-object p3, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/security/cert/Extension;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 100
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 101
    return-void

    .line 92
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 224
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 229
    .local v0, "size":I
    if-nez v0, :cond_1d

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    goto :goto_24

    .line 232
    :cond_1d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 236
    :goto_24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_4b

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "oid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    .line 239
    .local v3, "critical":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 240
    .local v4, "length":I
    new-array v5, v4, [B

    .line 241
    .local v5, "extVal":[B
    invoke-virtual {p1, v5}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 242
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {v6, v3, v5}, Lsun/security/x509/Extension;->newExtension(Lsun/security/util/ObjectIdentifier;Z[B)Lsun/security/x509/Extension;

    move-result-object v6

    .line 244
    .local v6, "ext":Ljava/security/cert/Extension;
    iget-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v2    # "oid":Ljava/lang/String;
    .end local v3    # "critical":Z
    .end local v4    # "length":I
    .end local v5    # "extVal":[B
    .end local v6    # "ext":Ljava/security/cert/Extension;
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 246
    .end local v1    # "i":I
    :cond_4b
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 197
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 204
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Extension;

    .line 206
    .local v2, "ext":Ljava/security/cert/Extension;
    invoke-interface {v2}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    invoke-interface {v2}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 208
    invoke-interface {v2}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v3

    .line 209
    .local v3, "extVal":[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 210
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 211
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    .end local v2    # "ext":Ljava/security/cert/Extension;
    .end local v3    # "extVal":[B
    goto :goto_16

    .line 212
    :cond_42
    return-void
.end method


# virtual methods
.method public whitelist test-api getAuthorityName()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 131
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist test-api getExtensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInvalidityDate()Ljava/util/Date;
    .registers 7

    .line 148
    invoke-virtual {p0}, Ljava/security/cert/CertificateRevokedException;->getExtensions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "2.5.29.24"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Extension;

    .line 149
    .local v0, "ext":Ljava/security/cert/Extension;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 150
    return-object v1

    .line 153
    :cond_10
    :try_start_10
    invoke-static {v0}, Lsun/security/x509/InvalidityDateExtension;->toImpl(Ljava/security/cert/Extension;)Lsun/security/x509/InvalidityDateExtension;

    move-result-object v2

    const-string v3, "DATE"

    invoke-virtual {v2, v3}, Lsun/security/x509/InvalidityDateExtension;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 154
    .local v2, "invalidity":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_24

    return-object v3

    .line 155
    .end local v2    # "invalidity":Ljava/util/Date;
    :catch_24
    move-exception v2

    .line 156
    .local v2, "ioe":Ljava/io/IOException;
    return-object v1
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate has been revoked, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revocation date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extension OIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 179
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public whitelist test-api getRevocationDate()Ljava/util/Date;
    .registers 2

    .line 111
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getRevocationReason()Ljava/security/cert/CRLReason;
    .registers 2

    .line 120
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    return-object v0
.end method
