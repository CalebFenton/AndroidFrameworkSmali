.class Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final blacklist en:Ljava/util/Enumeration;


# direct methods
.method constructor blacklist <init>(Ljava/util/Enumeration;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object p0

    return-object p0
.end method
