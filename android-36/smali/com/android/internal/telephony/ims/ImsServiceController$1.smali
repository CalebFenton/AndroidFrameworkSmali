.class Lcom/android/internal/telephony/ims/ImsServiceController$1;
.super Landroid/telephony/ims/ImsService$Listener;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Landroid/telephony/ims/ImsService$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSupportedImsFeatures to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$1;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method
