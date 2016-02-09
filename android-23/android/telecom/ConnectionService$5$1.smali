.class Landroid/telecom/ConnectionService$5$1;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$5;->onResult(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$5;

.field final synthetic val$componentNames:Ljava/util/List;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$5;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/ConnectionService$5;

    #@0
    .prologue
    .line 831
    .local p2, "val$componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p3, "val$services":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iput-object p1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    #@2
    iput-object p2, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    #@4
    iput-object p3, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 834
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    #@b
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 835
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    #@13
    iget-object v1, v1, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    #@15
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get6(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;

    #@18
    move-result-object v3

    #@19
    .line 836
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    #@1b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/content/ComponentName;

    #@21
    .line 837
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    #@23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/os/IBinder;

    #@29
    invoke-static {v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;

    #@2c
    move-result-object v2

    #@2d
    .line 835
    invoke-virtual {v3, v1, v2}, Landroid/telecom/RemoteConnectionManager;->addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V

    #@30
    .line 834
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 839
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    #@35
    iget-object v1, v1, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    #@37
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;)V

    #@3a
    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "remote connection services found: "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    const/4 v2, 0x0

    #@51
    new-array v2, v2, [Ljava/lang/Object;

    #@53
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@56
    .line 833
    return-void
.end method
