.class public Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;
.super Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEPWithSHA256AndMGF1Padding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 371
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;-><init>(I)V

    .line 372
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 369
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->finalize()V

    return-void
.end method
