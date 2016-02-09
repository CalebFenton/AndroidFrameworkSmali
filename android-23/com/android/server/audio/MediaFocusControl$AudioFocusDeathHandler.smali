.class public Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 615
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    #@7
    .line 614
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 619
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get1()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 620
    :try_start_0
    const-string/jumbo v0, "MediaFocusControl"

    #@8
    const-string/jumbo v2, "  AudioFocus   audio focus client died"

    #@b
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 621
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@10
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    #@12
    invoke-static {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->-wrap7(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 618
    return-void

    #@17
    .line 619
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    #@2
    return-object v0
.end method
