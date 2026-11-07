.class public final Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384WithPSSPadding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 162
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;-><init>(I)V

    .line 163
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 166
    const-string v0, "SHA384withRSA/PSS"

    return-object v0
.end method
