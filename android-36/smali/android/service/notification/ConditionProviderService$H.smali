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
.field private static final greylist-max-o ON_CONNECTED:I = 0x1

.field private static final greylist-max-o ON_SUBSCRIBE:I = 0x3

.field private static final greylist-max-o ON_UNSUBSCRIBE:I = 0x4


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

    .line 261
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-boolean v1, v1, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z

    if-nez v1, :cond_8

    .line 270
    return-void

    .line 273
    :cond_8
    :try_start_8
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    :pswitch_d
    goto :goto_34

    .line 283
    :pswitch_e
    const-string/jumbo v1, "onUnsubscribe"

    move-object v0, v1

    .line 284
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/service/notification/ConditionProviderService;->onUnsubscribe(Landroid/net/Uri;)V

    goto :goto_34

    .line 279
    :pswitch_1c
    const-string/jumbo v1, "onSubscribe"

    move-object v0, v1

    .line 280
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/service/notification/ConditionProviderService;->onSubscribe(Landroid/net/Uri;)V

    .line 281
    goto :goto_34

    .line 275
    :pswitch_2a
    const-string/jumbo v1, "onConnected"

    move-object v0, v1

    .line 276
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Landroid/service/notification/ConditionProviderService;->onConnected()V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_35

    .line 277
    nop

    .line 289
    :goto_34
    goto :goto_52

    .line 287
    :catchall_35
    move-exception v1

    .line 288
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v2}, Landroid/service/notification/ConditionProviderService;->-$$Nest$fgetTAG(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_d
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method
