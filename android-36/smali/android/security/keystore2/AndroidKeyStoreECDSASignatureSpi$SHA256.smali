.class public final Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA256;
.super Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 158
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    .line 159
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 162
    const-string v0, "SHA256withECDSA"

    return-object v0
.end method
