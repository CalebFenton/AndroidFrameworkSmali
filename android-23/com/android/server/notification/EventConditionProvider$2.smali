.class Lcom/android/server/notification/EventConditionProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "EventConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EventConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/EventConditionProvider;

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 318
    invoke-static {}, Lcom/android/server/notification/EventConditionProvider;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "ConditionProviders.ECP"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "onReceive "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider$2;->this$0:Lcom/android/server/notification/EventConditionProvider;

    #@26
    invoke-static {v0}, Lcom/android/server/notification/EventConditionProvider;->-wrap1(Lcom/android/server/notification/EventConditionProvider;)V

    #@29
    .line 317
    return-void
.end method
