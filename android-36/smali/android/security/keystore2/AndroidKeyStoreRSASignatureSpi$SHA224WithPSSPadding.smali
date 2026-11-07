.class public final Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA224WithPSSPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 142
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;-><init>(I)V

    .line 143
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, "SHA224withRSA/PSS"

    return-object v0
.end method
