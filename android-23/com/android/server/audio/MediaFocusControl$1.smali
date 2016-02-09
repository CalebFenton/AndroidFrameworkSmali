.class Lcom/android/server/audio/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;

    #@0
    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 414
    if-ne p1, v0, :cond_1

    #@3
    .line 416
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get8()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-static {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->-set0(Lcom/android/server/audio/MediaFocusControl;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    monitor-exit v1

    #@f
    .line 413
    :cond_0
    return-void

    #@10
    .line 416
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 419
    :cond_1
    const/4 v0, 0x2

    #@14
    if-eq p1, v0, :cond_2

    #@16
    .line 420
    if-nez p1, :cond_0

    #@18
    .line 421
    :cond_2
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get8()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    monitor-enter v1

    #@1d
    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-static {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->-set0(Lcom/android/server/audio/MediaFocusControl;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    goto :goto_0

    #@24
    .line 421
    :catchall_1
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method
