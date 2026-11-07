.class public final Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$SHA384;
.super Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA384"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 168
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    .line 169
    return-void
.end method


# virtual methods
.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 172
    const-string v0, "SHA384withECDSA"

    return-object v0
.end method
