.class Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;
.super Ljava/lang/Object;
.source "EabBulkCapabilityUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "retryRunnable"
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

    .line 178
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retry refreshCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_b
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmUceControllerCallback(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmRefreshContactList(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v2}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmRcsUceControllerCallback(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->refreshCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_21

    .line 188
    goto :goto_2d

    .line 186
    :catch_21
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$retryRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "refreshCapabilities RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method
