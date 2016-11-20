.class Lsun/security/provider/certpath/PKIX$CertStoreComparator;
.super Ljava/lang/Object;
.source "PKIX.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertStoreComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/CertStore;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lsun/security/provider/certpath/PKIX$CertStoreComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "store1"    # Ljava/lang/Object;
    .param p2, "store2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 304
    check-cast p1, Ljava/security/cert/CertStore;

    #@2
    .end local p1    # "store1":Ljava/lang/Object;
    check-cast p2, Ljava/security/cert/CertStore;

    #@4
    .end local p2    # "store2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;->compare(Ljava/security/cert/CertStore;Ljava/security/cert/CertStore;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/security/cert/CertStore;Ljava/security/cert/CertStore;)I
    .locals 2
    .param p1, "store1"    # Ljava/security/cert/CertStore;
    .param p2, "store2"    # Ljava/security/cert/CertStore;

    #@0
    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Collection"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 306
    invoke-virtual {p1}, Ljava/security/cert/CertStore;->getCertStoreParameters()Ljava/security/cert/CertStoreParameters;

    #@10
    move-result-object v0

    #@11
    instance-of v0, v0, Ljava/security/cert/CollectionCertStoreParameters;

    #@13
    .line 305
    if-eqz v0, :cond_1

    #@15
    .line 308
    :cond_0
    const/4 v0, -0x1

    #@16
    return v0

    #@17
    .line 310
    :cond_1
    const/4 v0, 0x1

    #@18
    return v0
.end method
