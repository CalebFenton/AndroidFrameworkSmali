.class Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScorerChangedReceiver"
.end annotation


# instance fields
.field final mRegisteredPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->this$0:Lcom/android/server/NetworkScoreService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 74
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    #@7
    .line 73
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 81
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 80
    if-nez v1, :cond_0

    #@17
    .line 82
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 80
    if-eqz v1, :cond_1

    #@20
    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->this$0:Lcom/android/server/NetworkScoreService;

    #@22
    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-get0(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@29
    move-result-object v1

    #@2a
    if-nez v1, :cond_1

    #@2c
    .line 85
    const-string/jumbo v1, "NetworkScoreService"

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "Package "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 86
    const-string/jumbo v3, " is no longer valid, disabling scoring"

    #@44
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 87
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->this$0:Lcom/android/server/NetworkScoreService;

    #@51
    invoke-static {v1, v4}, Lcom/android/server/NetworkScoreService;->-wrap0(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z

    #@54
    .line 78
    :cond_1
    return-void
.end method
