.class public final Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA512WithPSSPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 172
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;-><init>(I)V

    .line 173
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 176
    const-string v0, "SHA512withRSA/PSS"

    return-object v0
.end method
