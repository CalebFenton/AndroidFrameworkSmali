.class Lcom/android/internal/telephony/ims/ImsResolver$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$2;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_66

    goto :goto_45

    :sswitch_1a
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_45

    :cond_23
    const/4 v2, 0x3

    goto :goto_45

    :sswitch_25
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v2, 0x2

    goto :goto_45

    :sswitch_30
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_45

    :cond_39
    move v2, p1

    goto :goto_45

    :sswitch_3b
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v0

    :goto_45
    packed-switch v2, :pswitch_data_78

    return-void

    .line 283
    :pswitch_49
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$2;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 280
    :pswitch_57
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$2;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        -0x304ed112 -> :sswitch_3b
        0xa480416 -> :sswitch_30
        0x1f50b9c2 -> :sswitch_25
        0x5c1076e2 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_57
        :pswitch_57
        :pswitch_49
        :pswitch_57
    .end packed-switch
.end method
