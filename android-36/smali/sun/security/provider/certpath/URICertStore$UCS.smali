.class Lsun/security/provider/certpath/URICertStore$UCS;
.super Ljava/security/cert/CertStore;
.source "URICertStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/URICertStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UCS"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .registers 5
    .param p1, "spi"    # Ljava/security/cert/CertStoreSpi;
    .param p2, "p"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/security/cert/CertStoreParameters;

    .line 488
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    .line 489
    return-void
.end method
