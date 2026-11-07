.class public final synthetic Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda1;
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

    iput p1, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    invoke-static {v0, p1}, Lcom/android/ims/RcsFeatureManager$1;->lambda$onRequestPublishCapabilities$0(ILcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V

    return-void
.end method
