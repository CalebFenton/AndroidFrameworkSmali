.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedSigner"
.end annotation


# instance fields
.field public final blacklist blockId:I

.field public final greylist-max-o certs:[Ljava/security/cert/X509Certificate;

.field public final blacklist contentDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public final blacklist por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

.field public final greylist-max-o verityRootHash:[B


# direct methods
.method public constructor blacklist <init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;[BLjava/util/Map;I)V
    .registers 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "por"    # Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .param p3, "verityRootHash"    # [B
    .param p5, "blockId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;I)V"
        }
    .end annotation

    .line 568
    .local p4, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    .line 570
    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    .line 571
    iput-object p3, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B

    .line 572
    iput-object p4, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 573
    iput p5, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I

    .line 574
    return-void
.end method
