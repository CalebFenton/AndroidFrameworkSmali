.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;
.super Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyImsFeatureStatus(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyImsFeatureStatus: slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmFeatureType(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v2

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "ImsServiceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmRepo(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/ims/ImsFeatureBinderRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback$1;->this$1:Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmFeatureType(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository;->notifyFeatureStateChanged(III)V

    return-void
.end method
