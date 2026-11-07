.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createPublishProcessor(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
    .registers 5

    .line 0
    invoke-static {p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->lambda$new$0(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object p1

    return-object p1
.end method
