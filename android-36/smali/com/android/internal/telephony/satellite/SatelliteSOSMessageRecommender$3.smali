.class Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;
.super Ljava/lang/Object;
.source "SatelliteSOSMessageRecommender.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->requestIsSatelliteAllowedForCurrentLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/lang/Boolean;",
        "Landroid/telephony/satellite/SatelliteManager$SatelliteException;",
        ">;"
    }
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

    .line 802
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/satellite/SatelliteManager$SatelliteException;)V
    .registers 5

    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestIsSatelliteAllowedForCurrentLocation: onError, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;Ljava/lang/String;)V

    .line 813
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    .line 814
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x7

    .line 813
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 802
    check-cast p1, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->onError(Landroid/telephony/satellite/SatelliteManager$SatelliteException;)V

    return-void
.end method

.method public blacklist onResult(Ljava/lang/Boolean;)V
    .registers 5

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestIsSatelliteAllowedForCurrentLocation: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;Ljava/lang/String;)V

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->this$0:Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 802
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSOSMessageRecommender$3;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
