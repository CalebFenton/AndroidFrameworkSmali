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

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1

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
    .line 333
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 778
    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    #@6
    .line 779
    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@8
    .line 780
    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@a
    .line 781
    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    #@c
    .line 782
    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@e
    .line 783
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    #@11
    .line 332
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
    .line 763
    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 764
    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    #@5
    .line 765
    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@7
    .line 766
    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@9
    .line 767
    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    #@b
    .line 768
    check-cast p6, Landroid/app/IActivityManager;

    #@d
    .end local p6    # "activityManager":Ljava/lang/Object;
    iput-object p6, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@f
    .line 769
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v0

    #@13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@15
    .line 770
    const/4 v1, 0x5

    #@16
    .line 769
    if-ge v0, v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    #@1b
    .line 762
    return-void

    #@1c
    .line 769
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
    .line 751
    const-string/jumbo v0, "nothing to dump"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 750
    return-void
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method final getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 774
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
    .line 522
    return-void
.end method

.method public onCreate()V
    .locals 0

    #@0
    .prologue
    .line 344
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 519
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 525
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 583
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
    .line 351
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    #@0
    .prologue
    .line 509
    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    #@3
    .line 510
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
    .line 596
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 528
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 569
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
    .line 674
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
    .line 673
    return-void
.end method

.method public final startForeground(ILandroid/app/Notification;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    .line 704
    new-instance v1, Landroid/content/ComponentName;

    #@4
    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@6
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@b
    .line 705
    const/4 v5, 0x0

    #@c
    move v3, p1

    #@d
    move-object v4, p2

    #@e
    .line 703
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 701
    :goto_0
    return-void

    #@12
    .line 706
    :catch_0
    move-exception v6

    #@13
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final stopForeground(I)V
    .locals 7
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    .line 731
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
    .line 730
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 728
    :goto_0
    return-void

    #@12
    .line 732
    :catch_0
    move-exception v6

    #@13
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final stopForeground(Z)V
    .locals 1
    .param p1, "removeNotification"    # Z

    #@0
    .prologue
    .line 718
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    #@6
    .line 717
    return-void

    #@7
    .line 718
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final stopSelf()V
    .locals 1

    #@0
    .prologue
    .line 606
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    #@4
    .line 605
    return-void
.end method

.method public final stopSelf(I)V
    .locals 4
    .param p1, "startId"    # I

    #@0
    .prologue
    .line 615
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 616
    return-void

    #@5
    .line 619
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@7
    .line 620
    new-instance v2, Landroid/content/ComponentName;

    #@9
    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@b
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@e
    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@10
    .line 619
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 614
    :goto_0
    return-void

    #@14
    .line 621
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
    .line 647
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 648
    return v4

    #@6
    .line 651
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    #@8
    .line 652
    new-instance v2, Landroid/content/ComponentName;

    #@a
    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    #@c
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@f
    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    #@11
    .line 651
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 653
    :catch_0
    move-exception v0

    #@17
    .line 655
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method
