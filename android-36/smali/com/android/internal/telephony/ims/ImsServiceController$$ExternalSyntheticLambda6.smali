.class public final synthetic Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;->f$0:I

    check-cast p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->$r8$lambda$vbEjzEYY6bxqBtyCa8XckQ5uyXM(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method
