.class public final Landroid/net/wifi/aware/AwarePairingConfig$Builder;
.super Ljava/lang/Object;
.source "AwarePairingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/AwarePairingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBootStrappingMethods:I

.field private blacklist mCipherSuites:I

.field private blacklist mPairingCache:Z

.field private blacklist mPairingSetup:Z

.field private blacklist mPairingVerification:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingSetup:Z

    .line 233
    iput-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingCache:Z

    .line 234
    iput-boolean v0, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingVerification:Z

    .line 235
    iput v0, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mBootStrappingMethods:I

    .line 236
    const/16 v0, 0x10

    iput v0, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mCipherSuites:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/aware/AwarePairingConfig;
    .registers 7

    .line 299
    new-instance v0, Landroid/net/wifi/aware/AwarePairingConfig;

    iget-boolean v1, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingSetup:Z

    iget-boolean v2, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingCache:Z

    iget-boolean v3, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingVerification:Z

    iget v4, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mBootStrappingMethods:I

    iget v5, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mCipherSuites:I

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/AwarePairingConfig;-><init>(ZZZII)V

    return-object v0
.end method

.method public whitelist setBootstrappingMethods(I)Landroid/net/wifi/aware/AwarePairingConfig$Builder;
    .registers 2
    .param p1, "methods"    # I

    .line 276
    iput p1, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mBootStrappingMethods:I

    .line 277
    return-object p0
.end method

.method public whitelist setPairingCacheEnabled(Z)Landroid/net/wifi/aware/AwarePairingConfig$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 266
    iput-boolean p1, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingCache:Z

    .line 267
    return-object p0
.end method

.method public whitelist setPairingSetupEnabled(Z)Landroid/net/wifi/aware/AwarePairingConfig$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 245
    iput-boolean p1, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingSetup:Z

    .line 246
    return-object p0
.end method

.method public whitelist setPairingVerificationEnabled(Z)Landroid/net/wifi/aware/AwarePairingConfig$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 256
    iput-boolean p1, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mPairingVerification:Z

    .line 257
    return-object p0
.end method

.method public whitelist setSupportedCipherSuites(I)Landroid/net/wifi/aware/AwarePairingConfig$Builder;
    .registers 2
    .param p1, "cipherSuites"    # I

    .line 289
    iput p1, p0, Landroid/net/wifi/aware/AwarePairingConfig$Builder;->mCipherSuites:I

    .line 290
    return-object p0
.end method
