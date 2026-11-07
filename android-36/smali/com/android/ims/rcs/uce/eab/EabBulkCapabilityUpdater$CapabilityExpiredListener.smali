.class Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;
.super Ljava/lang/Object;
.source "EabBulkCapabilityUpdater.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityExpiredListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;


# direct methods
.method private constructor blacklist <init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    return-void
.end method


# virtual methods
.method public whitelist onAlarm()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capability expired."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_b
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$mgetExpiredContactList(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "expiredContactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2d

    .line 86
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmUceControllerCallback(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    .line 87
    invoke-static {v2}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$mgetExpiredContactList(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v3}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmRcsUceControllerCallback(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v3

    .line 86
    invoke-interface {v1, v2, v3}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->refreshCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    goto :goto_38

    .line 90
    :cond_2d
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expiredContactList is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_38} :catch_39

    .line 94
    .end local v0    # "expiredContactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :goto_38
    goto :goto_45

    .line 92
    :catch_39
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$CapabilityExpiredListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityExpiredListener RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_45
    return-void
.end method
