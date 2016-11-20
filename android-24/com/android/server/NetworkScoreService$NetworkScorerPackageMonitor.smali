.class Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScorerPackageMonitor"
.end annotation


# instance fields
.field final mRegisteredPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "mRegisteredPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    .line 94
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mRegisteredPackage:Ljava/lang/String;

    #@7
    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "mRegisteredPackage"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "scorerPackageName"    # Ljava/lang/String;
    .param p2, "forceUnbind"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 128
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mRegisteredPackage:Ljava/lang/String;

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 134
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    #@b
    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-get0(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@12
    move-result-object v0

    #@13
    .line 135
    .local v0, "activeScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_1

    #@15
    .line 138
    const-string/jumbo v1, "NetworkScoreService"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Package "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mRegisteredPackage:Ljava/lang/String;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 139
    const-string/jumbo v3, " is no longer valid, disabling scoring."

    #@2d
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 140
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    #@3a
    invoke-static {v1, v4}, Lcom/android/server/NetworkScoreService;->-wrap0(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z

    #@3d
    .line 127
    .end local v0    # "activeScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 141
    .restart local v0    # "activeScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_1
    iget-object v1, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScoringServiceClassName:Ljava/lang/String;

    #@40
    if-nez v1, :cond_2

    #@42
    .line 143
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    #@44
    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-wrap3(Lcom/android/server/NetworkScoreService;)V

    #@47
    goto :goto_0

    #@48
    .line 145
    :cond_2
    if-eqz p2, :cond_3

    #@4a
    .line 146
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    #@4c
    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-wrap3(Lcom/android/server/NetworkScoreService;)V

    #@4f
    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    #@51
    invoke-static {v1, v0}, Lcom/android/server/NetworkScoreService;->-wrap1(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)V

    #@54
    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 114
    if-eqz p4, :cond_0

    #@2
    .line 115
    const/4 v1, 0x0

    #@3
    array-length v2, p2

    #@4
    :goto_0
    if-ge v1, v2, :cond_0

    #@6
    aget-object v0, p2, v1

    #@8
    .line 116
    .local v0, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    #@9
    invoke-direct {p0, v0, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@c
    .line 115
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 119
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 99
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 98
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 108
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 104
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 103
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    #@4
    .line 123
    return-void
.end method
