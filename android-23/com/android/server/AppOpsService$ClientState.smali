.class public final Lcom/android/server/AppOpsService$ClientState;
.super Landroid/os/Binder;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClientState"
.end annotation


# instance fields
.field final mAppToken:Landroid/os/IBinder;

.field final mPid:I

.field final mStartedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Op;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    .line 200
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    #@7
    .line 201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lcom/android/server/AppOpsService$ClientState;->mPid:I

    #@d
    .line 202
    instance-of v1, p2, Landroid/os/Binder;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 204
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@14
    .line 199
    :goto_0
    return-void

    #@15
    .line 206
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@1c
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 209
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    #@2
    monitor-enter v2

    #@3
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 226
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    #@f
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/AppOpsService$Op;

    #@17
    invoke-virtual {v3, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    #@1a
    .line 225
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    #@1f
    iget-object v1, v1, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@21
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    #@23
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v2

    #@27
    .line 223
    return-void

    #@28
    .line 224
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ClientState{mAppToken="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 217
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    #@e
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 218
    const-string/jumbo v1, ", "

    #@15
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 218
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "pid="

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget v2, p0, Lcom/android/server/AppOpsService$ClientState;->mPid:I

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 216
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 219
    const/16 v1, 0x7d

    #@39
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0

    #@42
    .line 218
    :cond_0
    const-string/jumbo v0, "local"

    #@45
    goto :goto_0
.end method
