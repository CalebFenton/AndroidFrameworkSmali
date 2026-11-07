.class public final synthetic Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Landroid/security/KeyStore2HalVersion$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0, p1}, Landroid/security/KeyStore2HalVersion;->lambda$getSupplementaryAttestationInfoHelper$0(ILandroid/system/keystore2/IKeystoreService;)[B

    move-result-object p1

    return-object p1
.end method
