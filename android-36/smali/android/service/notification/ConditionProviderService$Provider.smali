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
.field final synthetic blacklist this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/notification/ConditionProviderService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/service/notification/IConditionProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onConnected()V
    .registers 3

    .line 246
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z

    .line 247
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-$$Nest$fgetmHandler(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void
.end method

.method public greylist-max-o onSubscribe(Landroid/net/Uri;)V
    .registers 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 252
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-$$Nest$fgetmHandler(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    return-void
.end method

.method public greylist-max-o onUnsubscribe(Landroid/net/Uri;)V
    .registers 4
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 257
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService$Provider;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v0}, Landroid/service/notification/ConditionProviderService;->-$$Nest$fgetmHandler(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/service/notification/ConditionProviderService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    return-void
.end method
