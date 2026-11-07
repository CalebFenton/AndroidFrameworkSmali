.class Lcom/android/internal/telephony/ims/ImsResolver$4;
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

    .line 328
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$4;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 331
    const-string p1, "ImsResolver"

    const-string p2, "Received BOOT_COMPLETED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$4;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
