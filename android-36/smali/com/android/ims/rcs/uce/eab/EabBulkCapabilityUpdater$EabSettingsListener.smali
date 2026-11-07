.class Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;
.super Landroid/database/ContentObserver;
.source "EabBulkCapabilityUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EabSettingsListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    .line 122
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .line 127
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$misUserEnableUce(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Z

    move-result v0

    .line 128
    .local v0, "isUserEnableUce":Z
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAB user setting changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v0, :cond_36

    .line 130
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater-IA;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    .line 132
    :cond_36
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$munRegisterContactProviderListener(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    .line 133
    iget-object v1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$EabSettingsListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v2}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetmContext(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$mcancelTimeAlert(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Landroid/content/Context;)V

    .line 135
    :goto_46
    return-void
.end method
