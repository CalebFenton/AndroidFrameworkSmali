.class Lcom/android/server/policy/PhoneWindowManager$8;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 5490
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 5492
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 5493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 5494
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@11
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@13
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@16
    .line 5495
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@18
    const/4 v2, 0x0

    #@19
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@1b
    .line 5496
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1d
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap13(Lcom/android/server/policy/PhoneWindowManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v1

    #@21
    .line 5491
    return-void

    #@22
    .line 5492
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method
