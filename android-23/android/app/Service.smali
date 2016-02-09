.class public abstract Landroid/app/Service;
.super Landroid/content/ContextWrapper;
.source "Service.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final START_CONTINUATION_MASK:I = 0xf

.field public static final START_FLAG_REDELIVERY:I = 0x1

.field public static final START_FLAG_RETRY:I = 0x2

.field public static final START_NOT_STICKY:I = 0x2

.field public static final START_REDELIVER_INTENT:I = 0x3

.field public static final START_STICKY:I = 0x1

.field public static final START_STICKY_COMPATIBILITY:I = 0x0

.field public static final START_TASK_REMOVED_COMPLETE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Service"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mApplication:Landroid/app/Application;

.field private mClassName:Ljava/lang/String;

.field private mStartCompatibility:Z

.field private mThread:Landroid/app/ActivityThread;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 304
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 719
    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    #@6
    .line 720
    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@8
    .line 721
    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@a
    .line 722
    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    #@c
    .line 723
    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@e
    .line 724
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    #@11
    .line 303
    return-void
.end method


# virtual methods
.method public final attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/app/ActivityThread;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "application"    # Landroid/app/Application;
    .param p6, "activityManager"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 704
    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 705
    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    #@5
    .line 706
    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@7
    .line 707
    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@9
    .line 708
    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    #@b
    .line 709
    check-cast p6, Landroid/app/IActivityManager;

    #@d
    .end local p6    # "activityManager":Ljava/lang/Object;
    iput-object p6, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@f
    .line 710
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v0

    #@13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@15
    .line 711
    const/4 v1, 0x5

    #@16
    .line 710
    if-ge v0, v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    #@1b
    .line 703
    return-void

    #@1c
    .line 710
    :cond_0
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 692
    const-string/jumbo v0, "nothing to dump"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 691
    return-void
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method final getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 472
    return-void
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 315
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 469
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 475
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 533
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 322
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    #@0
    .prologue
    .line 459
    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    #@3
    .line 460
    iget-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 546
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 478
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 519
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final setForeground(Z)V
    .locals 3
    .param p1, "isForeground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 624
    const-string/jumbo v0, "Service"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "setForeground: ignoring old API call on "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Landroid/app/Service;->getClass()Ljava/lang/Class;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 623
    return-void
.end method

.method public final startForeground(ILandroid/app/Notification;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 653
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    .line 654
    new-instance v1, Landroid/content/ComponentName;

    #@4
    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@6
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@b
    .line 655
    const/4 v5, 0x1

    #@c
    move v3, p1

    #@d
    move-object v4, p2

    #@e
    .line 653
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 651
    :goto_0
    return-void

    #@12
    .line 656
    :catch_0
    move-exception v6

    #@13
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final stopForeground(Z)V
    .locals 7
    .param p1, "removeNotification"    # Z

    #@0
    .prologue
    .line 670
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    .line 671
    new-instance v1, Landroid/content/ComponentName;

    #@4
    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@6
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    move v5, p1

    #@e
    .line 670
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 668
    :goto_0
    return-void

    #@12
    .line 673
    :catch_0
    move-exception v6

    #@13
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final stopSelf()V
    .locals 1

    #@0
    .prologue
    .line 556
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    #@4
    .line 555
    return-void
.end method

.method public final stopSelf(I)V
    .locals 4
    .param p1, "startId"    # I

    #@0
    .prologue
    .line 565
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 566
    return-void

    #@5
    .line 569
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@7
    .line 570
    new-instance v2, Landroid/content/ComponentName;

    #@9
    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@b
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@10
    .line 569
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 564
    :goto_0
    return-void

    #@14
    .line 571
    :catch_0
    move-exception v0

    #@15
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final stopSelfResult(I)Z
    .locals 5
    .param p1, "startId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 597
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 598
    return v4

    #@6
    .line 601
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@8
    .line 602
    new-instance v2, Landroid/content/ComponentName;

    #@a
    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@c
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@f
    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@11
    .line 601
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 603
    :catch_0
    move-exception v0

    #@17
    .line 605
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method
