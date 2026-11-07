.class Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;
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
    name = "SyncContactRunnable"
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

    .line 165
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;-><init>(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sync contact from contact provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$msyncContactAndRefreshCapabilities(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    .line 170
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$mregisterContactProviderListener(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    .line 171
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$SyncContactRunnable;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$mregisterEabUserSettingsListener(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    .line 172
    return-void
.end method
