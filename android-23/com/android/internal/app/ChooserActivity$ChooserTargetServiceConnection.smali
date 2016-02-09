.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserTargetServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;
    }
.end annotation


# instance fields
.field private final mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private final mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@0
    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1030
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    #@a
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    #@c
    .line 1044
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@e
    .line 1043
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1050
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;

    #@3
    move-result-object v1

    #@4
    .line 1052
    .local v1, "icts":Landroid/service/chooser/IChooserTargetService;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    #@9
    move-result-object v2

    #@a
    .line 1053
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@c
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@f
    move-result-object v3

    #@10
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@12
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    #@14
    .line 1052
    invoke-interface {v1, v2, v3, v4}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1048
    :goto_0
    return-void

    #@18
    .line 1054
    :catch_0
    move-exception v0

    #@19
    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ChooserActivity"

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Querying ChooserTargetService "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, " failed."

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 1056
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@3c
    invoke-virtual {v2, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    #@3f
    .line 1057
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@41
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@48
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    #@5
    .line 1065
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@7
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@e
    .line 1066
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@10
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1067
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@1c
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get0(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    #@1f
    move-result-object v0

    #@20
    const/4 v1, 0x2

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@24
    .line 1068
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    #@29
    .line 1062
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
