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
.field final synthetic this$0:Landroid/service/chooser/ChooserTargetService;


# direct methods
.method private constructor <init>(Landroid/service/chooser/ChooserTargetService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/chooser/ChooserTargetService;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    #@2
    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/chooser/ChooserTargetService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;)V

    #@3
    return-void
.end method


# virtual methods
.method public getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .locals 2
    .param p1, "targetComponentName"    # Landroid/content/ComponentName;
    .param p2, "matchedFilter"    # Landroid/content/IntentFilter;
    .param p3, "result"    # Landroid/service/chooser/IChooserTargetResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    .line 147
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    :try_start_0
    iget-object v1, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    #@3
    invoke-virtual {v1, p1, p2}, Landroid/service/chooser/ChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    .line 149
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-interface {p3, v0}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    #@a
    .line 140
    return-void

    #@b
    .line 148
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    :catchall_0
    move-exception v1

    #@c
    .line 149
    invoke-interface {p3, v0}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    #@f
    .line 148
    throw v1
.end method
