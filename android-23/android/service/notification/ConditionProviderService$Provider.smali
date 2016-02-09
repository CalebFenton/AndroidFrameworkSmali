.class final Landroid/service/notification/ConditionProviderService$Provider;
.super Landroid/service/notification/IConditionProvider$Stub;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Provider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ConditionProviderService;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    #@2
    invoke-direct {p0}, Landroid/service/notification/IConditionProvider$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$Provider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ConditionProviderService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    #@2
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 110
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    #@2
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 115
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    #@2
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 120
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    #@2
    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 125
    return-void
.end method
