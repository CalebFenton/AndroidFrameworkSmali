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
.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@5
    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 77
    if-ne p0, p1, :cond_0

    #@3
    .line 78
    return v3

    #@4
    .line 80
    :cond_0
    instance-of v1, p1, Ljava/security/cert/CertPath;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 81
    check-cast v0, Ljava/security/cert/CertPath;

    #@b
    .line 82
    .local v0, "o":Ljava/security/cert/CertPath;
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 83
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 84
    return v3

    #@28
    .line 88
    .end local v0    # "o":Ljava/security/cert/CertPath;
    :cond_1
    const/4 v1, 0x0

    #@29
    return v1
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
    .line 64
    iget-object v0, p0, Ljava/security/cert/CertPath;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 102
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    #@11
    move-result v2

    #@12
    add-int v0, v1, v2

    #@14
    .line 103
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 115
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " Cert Path, len="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 116
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    .line 117
    const-string/jumbo v3, ": [\n"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 118
    const/4 v1, 0x1

    #@21
    .line 119
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@24
    move-result-object v3

    #@25
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 120
    const-string/jumbo v3, "---------------certificate "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    .line 122
    const-string/jumbo v3, "---------------\n"

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Ljava/security/cert/Certificate;

    #@44
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 119
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 125
    :cond_0
    const-string/jumbo v3, "\n]"

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    return-object v3
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    :try_start_0
    new-instance v1, Ljava/security/cert/CertPath$CertPathRep;

    #@2
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getEncoded()[B

    #@9
    move-result-object v3

    #@a
    invoke-direct {v1, v2, v3}, Ljava/security/cert/CertPath$CertPathRep;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-object v1

    #@e
    .line 174
    :catch_0
    move-exception v0

    #@f
    .line 175
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/NotSerializableException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Could not create serialization object: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method
