.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 1591
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    #@3
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1594
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@3
    iget-object v0, v5, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@5
    .line 1595
    .local v0, "a":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v4, 0x0

    #@6
    .line 1596
    .local v4, "stopProfiling":Z
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@8
    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@a
    if-eqz v5, :cond_0

    #@c
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@e
    iget-object v5, v5, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@10
    iget-object v5, v5, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 1597
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@16
    iget-object v5, v5, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@18
    iget-boolean v5, v5, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    #@1a
    .line 1596
    if-eqz v5, :cond_0

    #@1c
    .line 1598
    const/4 v4, 0x1

    #@1d
    .line 1600
    :cond_0
    if-eqz v0, :cond_3

    #@1f
    .line 1601
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@21
    iput-object v7, v5, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@23
    .line 1602
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@26
    move-result-object v1

    #@27
    .line 1609
    .local v1, "am":Landroid/app/IActivityManager;
    :cond_1
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@29
    if-eqz v5, :cond_2

    #@2b
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2d
    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    #@2f
    if-eqz v5, :cond_5

    #@31
    .line 1617
    :cond_2
    :goto_0
    move-object v3, v0

    #@32
    .line 1618
    .local v3, "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@34
    .line 1619
    iput-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@36
    .line 1620
    if-nez v0, :cond_1

    #@38
    .line 1622
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v3    # "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    if-eqz v4, :cond_4

    #@3a
    .line 1623
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@3c
    iget-object v5, v5, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@3e
    invoke-virtual {v5}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    #@41
    .line 1625
    :cond_4
    iget-object v5, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    #@43
    invoke-virtual {v5}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@46
    .line 1626
    const/4 v5, 0x0

    #@47
    return v5

    #@48
    .line 1611
    .restart local v1    # "am":Landroid/app/IActivityManager;
    :cond_5
    :try_start_0
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@4a
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@4c
    invoke-interface {v1, v5, v6, v4}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    #@4f
    .line 1612
    const/4 v5, 0x0

    #@50
    iput-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    goto :goto_0

    #@53
    .line 1613
    :catch_0
    move-exception v2

    #@54
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
