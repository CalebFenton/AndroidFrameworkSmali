.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedSigner"
.end annotation


# instance fields
.field public final greylist-max-o certs:[[Ljava/security/cert/X509Certificate;

.field public final blacklist contentDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public final greylist-max-o verityRootHash:[B


# direct methods
.method public constructor blacklist <init>([[Ljava/security/cert/X509Certificate;[BLjava/util/Map;)V
    .registers 4
    .param p1, "certs"    # [[Ljava/security/cert/X509Certificate;
    .param p2, "verityRootHash"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/security/cert/X509Certificate;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 434
    .local p3, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 436
    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B

    .line 437
    iput-object p3, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 438
    return-void
.end method
