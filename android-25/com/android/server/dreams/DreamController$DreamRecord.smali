.class final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DreamRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamController$DreamRecord$-void__init__com_android_server_dreams_DreamController_this$0_android_os_Binder_token_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_android_os_PowerManager$WakeLock_wakeLock_LambdaImpl0;,
        Lcom/android/server/dreams/DreamController$DreamRecord$1;
    }
.end annotation


# instance fields
.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field final mDreamingStartedCallback:Landroid/os/IRemoteCallback;

.field public final mIsTest:Z

.field public final mName:Landroid/content/ComponentName;

.field final mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

.field public mSentStartBroadcast:Z

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;
    .param p2, "token"    # Landroid/os/Binder;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "isTest"    # Z
    .param p5, "canDoze"    # Z
    .param p6, "userId"    # I
    .param p7, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    #@0
    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 363
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$-void__init__com_android_server_dreams_DreamController_this$0_android_os_Binder_token_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_android_os_PowerManager$WakeLock_wakeLock_LambdaImpl0;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$-void__init__com_android_server_dreams_DreamController_this$0_android_os_Binder_token_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_android_os_PowerManager$WakeLock_wakeLock_LambdaImpl0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    #@a
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    #@c
    .line 365
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    #@11
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    #@13
    .line 298
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    #@15
    .line 299
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    #@17
    .line 300
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsTest:Z

    #@19
    .line 301
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    #@1b
    .line 302
    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    #@1d
    .line 303
    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1f
    .line 306
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@21
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@24
    .line 307
    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    #@2a
    const-wide/16 v2, 0x2710

    #@2c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2f
    .line 297
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_dreams_DreamController$DreamRecord-mthref-0()V
    .locals 0

    #@0
    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    #@3
    return-void
.end method

.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$2;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$2;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 312
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$3;

    #@8
    invoke-direct {v1, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$3;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 326
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$4;

    #@8
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$4;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 343
    return-void
.end method

.method releaseWakeLockIfNeeded()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 356
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 357
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@a
    .line 358
    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@c
    .line 359
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@e
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    #@14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@17
    .line 355
    :cond_0
    return-void
.end method
