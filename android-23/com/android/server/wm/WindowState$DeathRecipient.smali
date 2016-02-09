.class Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;)V

    #@3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    #@0
    .prologue
    .line 1208
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@2
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1209
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@9
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v4, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@d
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@f
    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@13
    const/4 v6, 0x0

    #@14
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    #@17
    move-result-object v1

    #@18
    .line 1210
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const-string/jumbo v2, "WindowState"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "WIN DEATH: "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1211
    if-eqz v1, :cond_1

    #@34
    .line 1212
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@36
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    #@3c
    .line 1206
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-void

    #@3d
    .line 1213
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@3f
    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@41
    if-eqz v2, :cond_0

    #@43
    .line 1214
    const-string/jumbo v2, "WindowState"

    #@46
    const-string/jumbo v4, "!!! LEAK !!! Window removed but surface still valid."

    #@49
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 1215
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@4e
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@50
    iget-object v4, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@52
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1208
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    #@57
    :try_start_4
    monitor-exit v3

    #@58
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    #@59
    .line 1218
    :catch_0
    move-exception v0

    #@5a
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method
