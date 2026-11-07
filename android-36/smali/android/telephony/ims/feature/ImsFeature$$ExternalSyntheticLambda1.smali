.class public final synthetic Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/ims/internal/IImsFeatureStatusCallback;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/ImsFeature;->lambda$notifyFeatureState$0(ILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method
