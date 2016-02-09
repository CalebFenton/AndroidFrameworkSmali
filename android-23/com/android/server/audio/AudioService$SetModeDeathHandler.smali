.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    #@2
    return v0
.end method

.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    #@0
    .prologue
    .line 2080
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2078
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    #@8
    .line 2081
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    #@a
    .line 2082
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    #@c
    .line 2080
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    #@0
    .prologue
    .line 2086
    const/4 v3, 0x0

    #@1
    .line 2087
    .local v3, "newModeOwnerPid":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@3
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@6
    move-result-object v5

    #@7
    monitor-enter v5

    #@8
    .line 2088
    :try_start_0
    const-string/jumbo v4, "AudioService"

    #@b
    const-string/jumbo v6, "setMode() client died"

    #@e
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 2089
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@13
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1a
    move-result v2

    #@1b
    .line 2090
    .local v2, "index":I
    if-gez v2, :cond_1

    #@1d
    .line 2091
    const-string/jumbo v4, "AudioService"

    #@20
    const-string/jumbo v6, "unregistered setMode() client died"

    #@23
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :goto_0
    monitor-exit v5

    #@27
    .line 2098
    if-eqz v3, :cond_0

    #@29
    .line 2099
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2c
    move-result-wide v0

    #@2d
    .line 2100
    .local v0, "ident":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2f
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->-wrap13(Lcom/android/server/audio/AudioService;I)V

    #@32
    .line 2101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 2085
    .end local v0    # "ident":J
    :cond_0
    return-void

    #@36
    .line 2093
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@38
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    #@3a
    iget v7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    #@3c
    const-string/jumbo v8, "AudioService"

    #@3f
    const/4 v9, 0x0

    #@40
    invoke-static {v4, v9, v6, v7, v8}, Lcom/android/server/audio/AudioService;->-wrap7(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result v3

    #@44
    goto :goto_0

    #@45
    .line 2087
    .end local v2    # "index":I
    :catchall_0
    move-exception v4

    #@46
    monitor-exit v5

    #@47
    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 2118
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 2114
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    #@2
    return v0
.end method

.method public getPid()I
    .locals 1

    #@0
    .prologue
    .line 2106
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    #@2
    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2110
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    #@2
    .line 2109
    return-void
.end method
