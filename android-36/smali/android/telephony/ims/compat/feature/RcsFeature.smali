.class public Landroid/telephony/ims/compat/feature/RcsFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "RcsFeature.java"


# instance fields
.field private final greylist-max-o mImsRcsBinder:Lcom/android/ims/internal/IImsRcsFeature;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    .line 30
    new-instance v0, Landroid/telephony/ims/compat/feature/RcsFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/RcsFeature$1;-><init>(Landroid/telephony/ims/compat/feature/RcsFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/RcsFeature;->mImsRcsBinder:Lcom/android/ims/internal/IImsRcsFeature;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .registers 2

    .line 28
    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/RcsFeature;->getBinder()Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Lcom/android/ims/internal/IImsRcsFeature;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/RcsFeature;->mImsRcsBinder:Lcom/android/ims/internal/IImsRcsFeature;

    return-object v0
.end method

.method public greylist-max-o onFeatureReady()V
    .registers 1

    .line 42
    return-void
.end method

.method public greylist-max-o onFeatureRemoved()V
    .registers 1

    .line 47
    return-void
.end method
