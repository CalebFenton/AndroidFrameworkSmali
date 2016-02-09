.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@0
    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@2
    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public sendResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1033
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@2
    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@6
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-get0(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v2

    #@e
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V

    #@15
    .line 1035
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@18
    move-result-object v0

    #@19
    .line 1036
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@1a
    iput v1, v0, Landroid/os/Message;->what:I

    #@1c
    .line 1037
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    #@1e
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@20
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->-get0(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@23
    move-result-object v2

    #@24
    .line 1038
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@26
    .line 1037
    invoke-direct {v1, v2, p1, v3}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    #@29
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    .line 1039
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    #@2d
    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2f
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@36
    .line 1032
    return-void
.end method
