.class Lcom/android/internal/telephony/LocaleTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LocaleTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LocaleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/LocaleTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/LocaleTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 176
    const-string p1, "phone"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/LocaleTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_6b

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    const-string p1, "android.telephony.extra.SIM_STATE"

    .line 179
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    .line 178
    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 182
    :cond_30
    const-string p1, "com.android.internal.telephony.action.COUNTRY_OVERRIDE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 184
    const-string p1, "country"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    const-string v1, "reset"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4b

    const/4 p1, 0x0

    .line 187
    :cond_4b
    iget-object p2, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received country override: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/LocaleTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/LocaleTracker;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6b
    return-void
.end method
