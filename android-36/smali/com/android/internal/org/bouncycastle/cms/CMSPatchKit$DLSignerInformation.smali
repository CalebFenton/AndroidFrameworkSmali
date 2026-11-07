.class Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;
.super Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.source "CMSPatchKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DLSignerInformation"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .registers 2
    .param p1, "baseInfo"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getEncodedSignedAttributes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSPatchKit$DLSignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const-string v1, "DL"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
