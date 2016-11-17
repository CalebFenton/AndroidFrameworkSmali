.class Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustAnchorComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/TrustAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CERT_COMPARATOR:Lcom/android/org/conscrypt/CertificatePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 647
    new-instance v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;

    #@2
    invoke-direct {v0}, Lcom/android/org/conscrypt/CertificatePriorityComparator;-><init>()V

    #@5
    .line 646
    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;->CERT_COMPARATOR:Lcom/android/org/conscrypt/CertificatePriorityComparator;

    #@7
    .line 645
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 649
    check-cast p1, Ljava/security/cert/TrustAnchor;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/security/cert/TrustAnchor;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;->compare(Ljava/security/cert/TrustAnchor;Ljava/security/cert/TrustAnchor;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/security/cert/TrustAnchor;Ljava/security/cert/TrustAnchor;)I
    .locals 3
    .param p1, "lhs"    # Ljava/security/cert/TrustAnchor;
    .param p2, "rhs"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 650
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    .line 651
    .local v0, "lhsCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@7
    move-result-object v1

    #@8
    .line 652
    .local v1, "rhsCert":Ljava/security/cert/X509Certificate;
    sget-object v2, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;->CERT_COMPARATOR:Lcom/android/org/conscrypt/CertificatePriorityComparator;

    #@a
    invoke-virtual {v2, v0, v1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    #@d
    move-result v2

    #@e
    return v2
.end method
