.class Landroid/content/IntentSender$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "IntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedDispatcher"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mIntent:Landroid/content/Intent;

.field private final greylist-max-o mIntentSender:Landroid/content/IntentSender;

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Ljava/lang/String;

.field private greylist-max-o mResultExtras:Landroid/os/Bundle;

.field private final greylist-max-o mWho:Landroid/content/IntentSender$OnFinished;


# direct methods
.method constructor blacklist <init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "pi"    # Landroid/content/IntentSender;
    .param p2, "who"    # Landroid/content/IntentSender$OnFinished;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 137
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    .line 139
    iput-object p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    .line 140
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    .line 141
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

    .line 144
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 145
    iput p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    .line 146
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 148
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_10

    .line 149
    invoke-virtual {p0}, Landroid/content/IntentSender$FinishedDispatcher;->run()V

    goto :goto_15

    .line 151
    :cond_10
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    :goto_15
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 155
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    iget-object v1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    iget-object v2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/content/IntentSender$OnFinished;->onSendFinished(Landroid/content/IntentSender;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 157
    return-void
.end method
