.class public abstract Ljava/security/cert/CertPath;
.super Ljava/lang/Object;
.source "CertPath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/CertPath$CertPathRep;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x543789977dd3e5fbL


# instance fields
.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 179
    if-ne p0, p1, :cond_4

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_4
    instance-of v0, p1, Ljava/security/cert/CertPath;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 183
    return v1

    .line 185
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/security/cert/CertPath;

    .line 186
    .local v0, "otherCP":Ljava/security/cert/CertPath;
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 187
    return v1

    .line 189
    :cond_1a
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, "thisCertList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "otherCertList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public abstract whitelist test-api getCertificates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getEncoded(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getEncodings()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 210
    iget-object v0, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 211
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 212
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    nop

    .line 225
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    .local v1, "stringIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cert Path: length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v2, "[\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/4 v2, 0x1

    .line 231
    .local v2, "i":I
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========================================================Certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 235
    .local v3, "stringCert":Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n=========================================================Certificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end.\n\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    nop

    .end local v3    # "stringCert":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v2, 0x1

    .line 239
    goto :goto_44

    .line 241
    :cond_93
    const-string v3, "\n]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected whitelist test-api writeReplace()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 287
    :try_start_0
    new-instance v0, Ljava/security/cert/CertPath$CertPathRep;

    iget-object v1, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPath$CertPathRep;-><init>(Ljava/lang/String;[B)V
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 288
    :catch_c
    move-exception v0

    .line 289
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java.security.cert.CertPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v1, v0}, Ljava/io/NotSerializableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 293
    throw v1
.end method
