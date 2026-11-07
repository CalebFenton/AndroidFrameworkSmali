.class Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RevokedCertificatesEnumeration"
.end annotation


# instance fields
.field private final blacklist en:Ljava/util/Enumeration;


# direct methods
.method constructor blacklist <init>(Ljava/util/Enumeration;)V
    .registers 2
    .param p1, "en"    # Ljava/util/Enumeration;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method
