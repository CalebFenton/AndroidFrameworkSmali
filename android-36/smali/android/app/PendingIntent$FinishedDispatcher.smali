.class Landroid/app/PendingIntent$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "PendingIntent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedDispatcher"
.end annotation


# static fields
.field private static greylist-max-o sDefaultSystemHandler:Landroid/os/Handler;


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIntent:Landroid/content/Intent;

.field private final greylist-max-o mPendingIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Ljava/lang/String;

.field private greylist-max-o mResultExtras:Landroid/os/Bundle;

.field private final greylist-max-o mWho:Landroid/app/PendingIntent$OnFinished;


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "who"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 355
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 356
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    .line 357
    iput-object p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    .line 358
    if-nez p3, :cond_23

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 361
    sget-object v0, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    if-nez v0, :cond_1e

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    .line 364
    :cond_1e
    sget-object v0, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    goto :goto_25

    .line 366
    :cond_23
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 368
    :goto_25
    return-void
.end method


# virtual methods
.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "serialized"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 371
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 372
    iput p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    .line 373
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 374
    iput-object p4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 375
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 376
    invoke-virtual {p0}, Landroid/app/PendingIntent$FinishedDispatcher;->run()V

    goto :goto_15

    .line 378
    :cond_10
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    :goto_15
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 382
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    iget-object v1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 384
    return-void
.end method
