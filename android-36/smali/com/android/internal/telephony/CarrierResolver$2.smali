.class Lcom/android/internal/telephony/CarrierResolver$2;
.super Landroid/content/BroadcastReceiver;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$2;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$2;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierResolver;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 150
    const-string v0, "override_carrier_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 152
    const-string v0, "override_specific_carrier_id"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 153
    const-string v0, "override_mno_carrier_id"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 154
    const-string v0, "override_carrier_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "override_specific_carrier_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v2, "sub_id"

    .line 157
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    .line 156
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-gtz v3, :cond_3b

    .line 160
    const-string p0, "Override carrier id must be greater than 0."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    return-void

    .line 162
    :cond_3b
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierResolver$2;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierResolver;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-eq p2, v2, :cond_4d

    .line 163
    const-string p0, "Override carrier id failed. The sub id doesn\'t same as phone\'s sub id."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    return-void

    .line 167
    :cond_4d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override carrier id to: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override specific carrier id to: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override mno carrier id to: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override carrier name to: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override specific carrier name to: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$smlogd(Ljava/lang/String;I)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierResolver$2;->this$0:Lcom/android/internal/telephony/CarrierResolver;

    .line 173
    const-string p0, ""

    if-eqz v0, :cond_b9

    move-object v4, v0

    goto :goto_ba

    :cond_b9
    move-object v4, p0

    :goto_ba
    if-eqz v1, :cond_be

    move-object v6, v0

    goto :goto_bf

    :cond_be
    move-object v6, p0

    :goto_bf
    const/4 v8, 0x0

    .line 172
    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierResolver;->-$$Nest$mupdateCarrierIdAndName(Lcom/android/internal/telephony/CarrierResolver;ILjava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method
