.class abstract Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;
.super Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ECB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$PKCS7Padding;,
        Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 4
    .param p1, "keymasterPadding"    # I

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi;-><init>(IIZ)V

    .line 50
    return-void
.end method
