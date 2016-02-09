.class Landroid/content/pm/LauncherApps$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    }
.end annotation


# static fields
.field private static final MSG_ADDED:I = 0x1

.field private static final MSG_AVAILABLE:I = 0x4

.field private static final MSG_CHANGED:I = 0x3

.field private static final MSG_REMOVED:I = 0x2

.field private static final MSG_UNAVAILABLE:I = 0x5


# instance fields
.field private mCallback:Landroid/content/pm/LauncherApps$Callback;


# direct methods
.method static synthetic -get0(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    #@0
    .prologue
    .line 442
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    .line 443
    iput-object p2, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@7
    .line 441
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6
    instance-of v1, v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@e
    .line 452
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 447
    :goto_0
    return-void

    #@14
    .line 449
    .end local v0    # "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    :cond_0
    return-void

    #@15
    .line 454
    .restart local v0    # "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    :pswitch_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@17
    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    #@19
    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@1b
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@1e
    goto :goto_0

    #@1f
    .line 457
    :pswitch_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@21
    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    #@23
    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@25
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@28
    goto :goto_0

    #@29
    .line 460
    :pswitch_2
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@2b
    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    #@2d
    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@2f
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@32
    goto :goto_0

    #@33
    .line 463
    :pswitch_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@35
    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    #@37
    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@39
    iget-boolean v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    #@3b
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    #@3e
    goto :goto_0

    #@3f
    .line 466
    :pswitch_4
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    #@41
    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    #@43
    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@45
    iget-boolean v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    #@47
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    #@4a
    goto :goto_0

    #@4b
    .line 452
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 472
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    #@6
    .line 473
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    #@8
    .line 474
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@a
    .line 475
    const/4 v1, 0x1

    #@b
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 471
    return-void
.end method

.method public postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 486
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    #@6
    .line 487
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    #@8
    .line 488
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@a
    .line 489
    const/4 v1, 0x3

    #@b
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 485
    return-void
.end method

.method public postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 479
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    #@6
    .line 480
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    #@8
    .line 481
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@a
    .line 482
    const/4 v1, 0x2

    #@b
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 478
    return-void
.end method

.method public postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    #@0
    .prologue
    .line 494
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    #@6
    .line 495
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    #@8
    .line 496
    iput-boolean p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    #@a
    .line 497
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@c
    .line 498
    const/4 v1, 0x4

    #@d
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 493
    return-void
.end method

.method public postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    #@0
    .prologue
    .line 503
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    #@6
    .line 504
    .local v0, "info":Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    #@8
    .line 505
    iput-boolean p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    #@a
    .line 506
    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    #@c
    .line 507
    const/4 v1, 0x5

    #@d
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 502
    return-void
.end method
