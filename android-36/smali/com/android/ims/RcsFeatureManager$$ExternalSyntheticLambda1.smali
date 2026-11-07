.class public final synthetic Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/internal/IImsServiceFeatureCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-static {v0}, Lcom/android/ims/RcsFeatureManager;->lambda$registerFeatureCallback$0(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    return-void
.end method
