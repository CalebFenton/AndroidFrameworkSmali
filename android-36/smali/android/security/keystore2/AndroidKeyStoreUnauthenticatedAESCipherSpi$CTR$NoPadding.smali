.class public Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR$NoPadding;
.super Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;-><init>(I)V

    .line 111
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

    .line 108
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;->finalize()V

    return-void
.end method

.method protected final blacklist getTransform()Ljava/lang/String;
    .registers 2

    .line 115
    const-string v0, "AES/CTR/NoPadding"

    return-object v0
.end method
