.class Lcom/android/server/policy/PhoneWindowManager$9;
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
    .line 4794
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

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
    .line 4796
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 4797
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4798
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@11
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    #@13
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@16
    .line 4799
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@18
    const/4 v2, 0x0

    #@19
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v1

    #@1c
    .line 4795
    return-void

    #@1d
    .line 4796
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
