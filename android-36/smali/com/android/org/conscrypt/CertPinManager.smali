.class public interface abstract Lcom/android/org/conscrypt/CertPinManager;
.super Ljava/lang/Object;
.source "CertPinManager.java"


# virtual methods
.method public abstract greylist-max-o checkChainPinning(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method
