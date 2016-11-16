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
.field private static final serialVersionUID:J = 0x543789977dd3e5fbL


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@5
    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 179
    if-ne p0, p1, :cond_0

    #@3
    .line 180
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 182
    :cond_0
    instance-of v3, p1, Ljava/security/cert/CertPath;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 183
    return v5

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 185
    check-cast v0, Ljava/security/cert/CertPath;

    #@d
    .line 186
    .local v0, "otherCP":Ljava/security/cert/CertPath;
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    iget-object v4, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_2

    #@19
    .line 187
    return v5

    #@1a
    .line 189
    :cond_2
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    .line 190
    .local v2, "thisCertList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@21
    move-result-object v1

    #@22
    .line 191
    .local v1, "otherCertList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    return v3
.end method

.method public abstract getCertificates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getEncoded(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getEncodings()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 210
    iget-object v1, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 211
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 212
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 225
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .line 227
    .local v3, "stringIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "\n"

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    iget-object v5, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, " Cert Path: length = "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 228
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@29
    move-result-object v5

    #@2a
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@2d
    move-result v5

    #@2e
    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 228
    const-string/jumbo v5, ".\n"

    #@35
    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    .line 229
    const-string/jumbo v4, "[\n"

    #@43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 230
    const/4 v0, 0x1

    #@47
    .line 231
    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_0

    #@4d
    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "=========================================================Certificate "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 233
    const-string/jumbo v5, " start.\n"

    #@60
    .line 232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 234
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v2

    #@6f
    check-cast v2, Ljava/security/cert/Certificate;

    #@71
    .line 235
    .local v2, "stringCert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@78
    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v5, "\n=========================================================Certificate "

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 237
    const-string/jumbo v5, " end.\n\n\n"

    #@8b
    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@96
    .line 238
    add-int/lit8 v0, v0, 0x1

    #@98
    goto :goto_0

    #@99
    .line 241
    .end local v2    # "stringCert":Ljava/security/cert/Certificate;
    :cond_0
    const-string/jumbo v4, "\n]"

    #@9c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@a2
    move-result-object v4

    #@a3
    return-object v4
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    :try_start_0
    new-instance v2, Ljava/security/cert/CertPath$CertPathRep;

    #@2
    iget-object v3, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@4
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getEncoded()[B

    #@7
    move-result-object v4

    #@8
    invoke-direct {v2, v3, v4}, Ljava/security/cert/CertPath$CertPathRep;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    return-object v2

    #@c
    .line 288
    :catch_0
    move-exception v0

    #@d
    .line 290
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/NotSerializableException;

    #@f
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "java.security.cert.CertPath: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    iget-object v3, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 290
    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@28
    .line 292
    .local v1, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v1, v0}, Ljava/io/NotSerializableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2b
    .line 293
    throw v1
.end method
