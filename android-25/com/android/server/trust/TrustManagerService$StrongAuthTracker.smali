.class Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1010
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2
    .line 1011
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    #@5
    .line 1008
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    #@c
    .line 1010
    return-void
.end method


# virtual methods
.method allowTrustFromUnlock(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1045
    if-gez p1, :cond_0

    #@2
    .line 1046
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "userId must be a valid user: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1048
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    #@1f
    move-result v0

    #@20
    .line 1049
    .local v0, "previous":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    #@22
    const/4 v2, 0x1

    #@23
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@26
    .line 1057
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    #@29
    move-result v1

    #@2a
    if-eq v1, v0, :cond_1

    #@2c
    .line 1058
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@2e
    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@31
    .line 1044
    :cond_1
    return-void
.end method

.method canAgentsRunForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1033
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    #@b
    move-result v0

    #@c
    .line 1032
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public onStrongAuthRequiredChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@5
    .line 1024
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    #@a
    .line 1028
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, p1, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    #@10
    .line 1015
    return-void
.end method
