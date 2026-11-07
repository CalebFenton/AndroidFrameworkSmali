.class public interface abstract Lcom/android/org/conscrypt/ConscryptCertStore;
.super Ljava/lang/Object;
.source "ConscryptCertStore.java"


# virtual methods
.method public abstract blacklist findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end method
