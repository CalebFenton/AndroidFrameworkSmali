.class public final Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1WithPSSPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;-><init>(I)V

    .line 133
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 136
    const-string v0, "SHA1withRSA/PSS"

    return-object v0
.end method
