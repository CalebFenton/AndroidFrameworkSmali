.class public abstract Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CbTestBroadcastReceiver"
.end annotation


# instance fields
.field protected final blacklist mTestAction:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2253
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2254
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;->mTestAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract blacklist handleTestAction(Landroid/content/Intent;)V
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 2259
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received test intent action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$300(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    .line 2260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;->mTestAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2263
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p1, p1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 2264
    const-string v0, "phone_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_37

    goto :goto_3a

    .line 2267
    :cond_37
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;->handleTestAction(Landroid/content/Intent;)V

    :cond_3a
    :goto_3a
    return-void
.end method
