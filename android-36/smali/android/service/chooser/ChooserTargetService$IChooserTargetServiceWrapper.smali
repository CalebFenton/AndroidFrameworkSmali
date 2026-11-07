.class Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
.super Landroid/service/chooser/IChooserTargetService$Stub;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IChooserTargetServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/chooser/ChooserTargetService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/chooser/ChooserTargetService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .registers 8
    .param p1, "targetComponentName"    # Landroid/content/ComponentName;
    .param p2, "matchedFilter"    # Landroid/content/IntentFilter;
    .param p3, "result"    # Landroid/service/chooser/IChooserTargetResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->clearCallingIdentity()J

    move-result-wide v1

    .line 154
    .local v1, "id":J
    :try_start_5
    iget-object v3, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v3, p1, p2}, Landroid/service/chooser/ChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_13

    .line 156
    .end local v0    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {v1, v2}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    .line 157
    invoke-interface {p3, v3}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 159
    nop

    .line 160
    return-void

    .line 156
    .end local v3    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .restart local v0    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    :catchall_13
    move-exception v3

    invoke-static {v1, v2}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    .line 157
    invoke-interface {p3, v0}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 159
    throw v3
.end method
