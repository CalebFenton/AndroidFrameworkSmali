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

.field private final revocationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V
    .locals 0
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
    .line 55
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@5
    .line 58
    iput-object p2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@7
    .line 59
    iput-object p3, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    #@9
    .line 60
    iput-object p4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@b
    .line 56
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v3

    #@7
    .line 131
    .local v3, "size":I
    new-instance v6, Ljava/util/HashMap;

    #@9
    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    #@c
    iput-object v6, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@e
    .line 132
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@11
    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 134
    .local v2, "oid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    #@1a
    move-result v0

    #@1b
    .line 135
    .local v0, "critical":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@1e
    move-result v5

    #@1f
    .line 136
    .local v5, "valueLen":I
    new-array v4, v5, [B

    #@21
    .line 137
    .local v4, "value":[B
    invoke-virtual {p1, v4}, Ljava/io/ObjectInputStream;->read([B)I

    #@24
    .line 138
    iget-object v6, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@26
    .line 139
    new-instance v7, Lorg/apache/harmony/security/x509/Extension;

    #@28
    invoke-direct {v7, v2, v0, v4}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    #@2b
    .line 138
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 132
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 127
    .end local v0    # "critical":Z
    .end local v2    # "oid":Ljava/lang/String;
    .end local v4    # "value":[B
    .end local v5    # "valueLen":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 146
    iget-object v3, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@5
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@8
    move-result v3

    #@9
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@c
    .line 147
    iget-object v3, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@e
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/security/cert/Extension;

    #@22
    .line 148
    .local v0, "e":Ljava/security/cert/Extension;
    invoke-interface {v0}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@29
    .line 149
    invoke-interface {v0}, Ljava/security/cert/Extension;->isCritical()Z

    #@2c
    move-result v3

    #@2d
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    #@30
    .line 150
    invoke-interface {v0}, Ljava/security/cert/Extension;->getValue()[B

    #@33
    move-result-object v2

    #@34
    .line 151
    .local v2, "value":[B
    array-length v3, v2

    #@35
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@38
    .line 152
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->write([B)V

    #@3b
    goto :goto_0

    #@3c
    .line 143
    .end local v0    # "e":Ljava/security/cert/Extension;
    .end local v2    # "value":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthorityName()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 67
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
    .line 74
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInvalidityDate()Ljava/util/Date;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 82
    iget-object v3, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 83
    return-object v5

    #@6
    .line 86
    :cond_0
    iget-object v3, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    #@8
    const-string/jumbo v4, "2.5.29.24"

    #@b
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/security/cert/Extension;

    #@11
    .line 87
    .local v2, "invalidityDateExtension":Ljava/security/cert/Extension;
    if-nez v2, :cond_1

    #@13
    .line 88
    return-object v5

    #@14
    .line 92
    :cond_1
    :try_start_0
    new-instance v1, Lorg/apache/harmony/security/x509/InvalidityDate;

    #@16
    invoke-interface {v2}, Ljava/security/cert/Extension;->getValue()[B

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v1, v3}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    #@1d
    .line 93
    .local v1, "invalidityDate":Lorg/apache/harmony/security/x509/InvalidityDate;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/InvalidityDate;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v3

    #@21
    return-object v3

    #@22
    .line 94
    .end local v1    # "invalidityDate":Lorg/apache/harmony/security/x509/InvalidityDate;
    :catch_0
    move-exception v0

    #@23
    .line 95
    .local v0, "e":Ljava/io/IOException;
    return-object v5
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "Certificate was revoked"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 104
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 105
    const-string/jumbo v1, " on "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    #@15
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 107
    :cond_0
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 108
    const-string/jumbo v1, " due to "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2c
    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 117
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
    .line 124
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    #@2
    return-object v0
.end method
