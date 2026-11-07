.class Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
.super Ljava/lang/Exception;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlatformNotSupportedException"
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 581
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 582
    return-void
.end method
