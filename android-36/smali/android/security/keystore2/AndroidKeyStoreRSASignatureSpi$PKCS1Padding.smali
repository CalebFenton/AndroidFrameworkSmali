.class abstract Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PKCS1Padding"
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "keymasterDigest"    # I

    .line 37
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;-><init>(II)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final blacklist getAdditionalEntropyAmountForSign()I
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method
