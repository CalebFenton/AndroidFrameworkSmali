.class public Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaCertStore;
.super Lcom/android/internal/org/bouncycastle/util/CollectionStore;
.source "JcaCertStore.java"


# direct methods
.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 3
    .param p1, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaCertStore;->convertCerts(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    .line 34
    return-void
.end method

.method private static blacklist convertCerts(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v0, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_4b

    .line 47
    move-object v3, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 51
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    :try_start_1e
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_2c

    .line 56
    nop

    .line 57
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_51

    .line 53
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    :catch_2c
    move-exception v4

    .line 55
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to read encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4b
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2    # "o":Ljava/lang/Object;
    :goto_51
    goto :goto_d

    .line 64
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_52
    return-object v0
.end method
