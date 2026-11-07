.class public Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;
.super Ljava/lang/Object;
.source "SatelliteController.java"

# interfaces
.implements Landroid/uwb/UwbManager$AdapterStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UwbAdapterStateCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1217
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onStateChanged(II)V
    .registers 6

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UwbAdapterStateCallback#onStateChanged() called, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter state changed reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    if-nez p1, :cond_42

    .line 1240
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetUwbEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1241
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    goto :goto_48

    .line 1243
    :cond_42
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetUwbEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1245
    :goto_48
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUwbStateEnabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$UwbAdapterStateCallback;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetUwbEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist toString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    .line 1231
    const-string p0, ""

    return-object p0

    .line 1228
    :cond_b
    const-string p0, "Active"

    return-object p0

    .line 1225
    :cond_e
    const-string p0, "Inactive"

    return-object p0

    .line 1222
    :cond_11
    const-string p0, "Disabled"

    return-object p0
.end method
