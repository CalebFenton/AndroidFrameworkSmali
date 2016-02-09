.class Lcom/android/server/am/ActivityManagerService$26;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$N:I

.field final synthetic val$newUserId:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/UserState;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$N"    # I
    .param p3, "val$uss"    # Lcom/android/server/am/UserState;
    .param p4, "val$oldUserId"    # I
    .param p5, "val$newUserId"    # I

    #@0
    .prologue
    .line 19962
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$N:I

    #@4
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$26;->val$uss:Lcom/android/server/am/UserState;

    #@6
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$oldUserId:I

    #@8
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$26;->val$newUserId:I

    #@a
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    #@d
    .line 19963
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$26;->mCount:I

    #@10
    .line 19962
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 19966
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    .line 19967
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurUserSwitchCallback:Ljava/lang/Object;

    #@7
    if-ne v0, p0, :cond_0

    #@9
    .line 19968
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$26;->mCount:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$26;->mCount:I

    #@f
    .line 19969
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$26;->mCount:I

    #@11
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$N:I

    #@13
    if-ne v0, v2, :cond_0

    #@15
    .line 19970
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@17
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$uss:Lcom/android/server/am/UserState;

    #@19
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$26;->val$oldUserId:I

    #@1b
    iget v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$newUserId:I

    #@1d
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v1

    #@21
    .line 19965
    return-void

    #@22
    .line 19966
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method
