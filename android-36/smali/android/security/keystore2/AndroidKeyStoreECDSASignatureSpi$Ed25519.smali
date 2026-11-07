.class public final Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$Ed25519;
.super Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ed25519"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    .line 128
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 132
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
