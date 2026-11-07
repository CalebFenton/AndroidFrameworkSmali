.class public final synthetic Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/service/wearable/WearableSensingDataRequester;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/RemoteCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist requestData(Landroid/app/wearable/WearableSensingDataRequest;Ljava/util/function/Consumer;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    invoke-static {v0, p1, p2}, Landroid/service/wearable/WearableSensingService;->lambda$createDataRequester$1(Landroid/os/RemoteCallback;Landroid/app/wearable/WearableSensingDataRequest;Ljava/util/function/Consumer;)V

    return-void
.end method
