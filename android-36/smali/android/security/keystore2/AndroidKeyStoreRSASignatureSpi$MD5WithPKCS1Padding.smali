.class public final Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding;
.super Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MD5WithPKCS1Padding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;-><init>(I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "MD5withRSA"

    return-object v0
.end method
