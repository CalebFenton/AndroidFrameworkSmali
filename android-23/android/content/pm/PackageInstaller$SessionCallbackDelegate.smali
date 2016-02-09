.class Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
.super Landroid/content/pm/IPackageInstallerCallback$Stub;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 514
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerCallback$Stub;-><init>()V

    #@3
    .line 515
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    #@5
    .line 516
    new-instance v0, Landroid/os/Handler;

    #@7
    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@a
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@c
    .line 514
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 521
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4
    .line 522
    .local v1, "sessionId":I
    iget v4, p1, Landroid/os/Message;->what:I

    #@6
    packed-switch v4, :pswitch_data_0

    #@9
    .line 540
    return v2

    #@a
    .line 524
    :pswitch_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    #@c
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onCreated(I)V

    #@f
    .line 525
    return v3

    #@10
    .line 527
    :pswitch_1
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    #@12
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller$SessionCallback;->onBadgingChanged(I)V

    #@15
    .line 528
    return v3

    #@16
    .line 530
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@18
    if-eqz v2, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 531
    .local v0, "active":Z
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    #@1d
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageInstaller$SessionCallback;->onActiveChanged(IZ)V

    #@20
    .line 532
    return v3

    #@21
    .line 530
    .end local v0    # "active":Z
    :cond_0
    const/4 v0, 0x0

    #@22
    .restart local v0    # "active":Z
    goto :goto_0

    #@23
    .line 534
    .end local v0    # "active":Z
    :pswitch_3
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    #@25
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v2, Ljava/lang/Float;

    #@29
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@2c
    move-result v2

    #@2d
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onProgressChanged(IF)V

    #@30
    .line 535
    return v3

    #@31
    .line 537
    :pswitch_4
    iget-object v4, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    #@33
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@35
    if-eqz v5, :cond_1

    #@37
    move v2, v3

    #@38
    :cond_1
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onFinished(IZ)V

    #@3b
    .line 538
    return v3

    #@3c
    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSessionActiveChanged(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    #@0
    .prologue
    .line 555
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/4 v2, 0x3

    #@6
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 554
    return-void

    #@e
    .line 555
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public onSessionBadgingChanged(I)V
    .locals 3
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 549
    return-void
.end method

.method public onSessionCreated(I)V
    .locals 3
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 544
    return-void
.end method

.method public onSessionFinished(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    #@0
    .prologue
    .line 567
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/4 v2, 0x5

    #@6
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 566
    return-void

    #@e
    .line 567
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public onSessionProgressChanged(IF)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x4

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 560
    return-void
.end method
