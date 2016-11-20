.class final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    .line 2098
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$InputFilterHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .locals 1

    #@0
    .prologue
    .line 2102
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    #@3
    .line 2101
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 10
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 2107
    if-nez p1, :cond_0

    #@2
    .line 2108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "event must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    #@d
    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    #@f
    monitor-enter v9

    #@10
    .line 2112
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    #@12
    if-nez v0, :cond_1

    #@14
    .line 2113
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    #@16
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get1(Lcom/android/server/input/InputManagerService;)J

    #@19
    move-result-wide v0

    #@1a
    .line 2115
    const/high16 v2, 0x4000000

    #@1c
    or-int v8, p2, v2

    #@1e
    .line 2113
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    .line 2114
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    move-object v2, p1

    #@24
    .line 2113
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->-wrap2(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_1
    monitor-exit v9

    #@28
    .line 2106
    return-void

    #@29
    .line 2111
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v9

    #@2b
    throw v0
.end method
