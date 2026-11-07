.class Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;
.super Landroid/database/ContentObserver;
.source "EabBulkCapabilityUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactChangedListener"
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

    .line 104
    iput-object p1, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    .line 105
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 110
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$fgetTAG(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Contact changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater$ContactChangedListener;->this$0:Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;->-$$Nest$msyncContactAndRefreshCapabilities(Lcom/android/ims/rcs/uce/eab/EabBulkCapabilityUpdater;)V

    .line 112
    return-void
.end method
