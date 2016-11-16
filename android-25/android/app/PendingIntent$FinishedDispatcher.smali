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
.field private static sDefaultSystemHandler:Landroid/os/Handler;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field private mResultExtras:Landroid/os/Bundle;

.field private final mWho:Landroid/app/PendingIntent$OnFinished;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "who"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 212
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@3
    .line 213
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    .line 214
    iput-object p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    #@7
    .line 215
    if-nez p3, :cond_1

    #@9
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 218
    sget-object v0, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 219
    new-instance v0, Landroid/os/Handler;

    #@15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1c
    sput-object v0, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    #@1e
    .line 221
    :cond_0
    sget-object v0, Landroid/app/PendingIntent$FinishedDispatcher;->sDefaultSystemHandler:Landroid/os/Handler;

    #@20
    iput-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    #@22
    .line 212
    :goto_0
    return-void

    #@23
    .line 223
    :cond_1
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    #@25
    goto :goto_0
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "serialized"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    #@2
    .line 229
    iput p2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    #@4
    .line 230
    iput-object p3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    #@6
    .line 231
    iput-object p4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    #@8
    .line 232
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 233
    invoke-virtual {p0}, Landroid/app/PendingIntent$FinishedDispatcher;->run()V

    #@f
    .line 227
    :goto_0
    return-void

    #@10
    .line 235
    :cond_0
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    #@12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15
    goto :goto_0
.end method

.method public run()V
    .locals 6

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mWho:Landroid/app/PendingIntent$OnFinished;

    #@2
    iget-object v1, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mPendingIntent:Landroid/app/PendingIntent;

    #@4
    iget-object v2, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    #@6
    iget v3, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultCode:I

    #@8
    .line 240
    iget-object v4, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultData:Ljava/lang/String;

    #@a
    iget-object v5, p0, Landroid/app/PendingIntent$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    #@c
    .line 239
    invoke-interface/range {v0 .. v5}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    #@f
    .line 238
    return-void
.end method
