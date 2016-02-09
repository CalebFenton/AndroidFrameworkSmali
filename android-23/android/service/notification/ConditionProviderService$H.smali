.class final Landroid/service/notification/ConditionProviderService$H;
.super Landroid/os/Handler;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final ON_CONNECTED:I = 0x1

.field private static final ON_REQUEST_CONDITIONS:I = 0x2

.field private static final ON_SUBSCRIBE:I = 0x3

.field private static final ON_UNSUBSCRIBE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ConditionProviderService;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ConditionProviderService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    .line 140
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 137
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-void

    #@7
    .line 142
    .restart local v0    # "name":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "onConnected"

    #@a
    .line 143
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    #@c
    invoke-virtual {v2}, Landroid/service/notification/ConditionProviderService;->onConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    goto :goto_0

    #@10
    .line 158
    .end local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@11
    .line 159
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    #@13
    invoke-static {v2}, Landroid/service/notification/ConditionProviderService;->-get0(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Error running "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0

    #@2f
    .line 146
    .end local v1    # "t":Ljava/lang/Throwable;
    .local v0, "name":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    const-string/jumbo v0, "onRequestConditions"

    #@32
    .line 147
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    #@34
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@36
    invoke-virtual {v2, v3}, Landroid/service/notification/ConditionProviderService;->onRequestConditions(I)V

    #@39
    goto :goto_0

    #@3a
    .line 150
    .local v0, "name":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "onSubscribe"

    #@3d
    .line 151
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    #@3f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41
    check-cast v2, Landroid/net/Uri;

    #@43
    invoke-virtual {v3, v2}, Landroid/service/notification/ConditionProviderService;->onSubscribe(Landroid/net/Uri;)V

    #@46
    goto :goto_0

    #@47
    .line 154
    .local v0, "name":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "onUnsubscribe"

    #@4a
    .line 155
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    #@4c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v2, Landroid/net/Uri;

    #@50
    invoke-virtual {v3, v2}, Landroid/service/notification/ConditionProviderService;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    goto :goto_0

    #@54
    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
