.class Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;
.super Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;
.source "SatelliteSOSMessageRecommender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/ims/ImsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteProvisionStateChanged(Z)V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSatelliteProvisionStateChanged: provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onSatelliteSubscriptionProvisionStateChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSatelliteSubscriptionProvisionStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;Ljava/lang/String;)V

    return-void
.end method
