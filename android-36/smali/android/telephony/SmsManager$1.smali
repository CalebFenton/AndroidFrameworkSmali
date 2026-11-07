.class Landroid/telephony/SmsManager$1;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$attributionTag:Ljava/lang/String;

.field final synthetic blacklist val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$messageId:J

.field final synthetic blacklist val$packageName:Ljava/lang/String;

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .registers 12
    .param p1, "this$0"    # Landroid/telephony/SmsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 735
    iput-object p2, p0, Landroid/telephony/SmsManager$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$1;->val$attributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$1;->val$destinationAddress:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$1;->val$scAddress:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/SmsManager$1;->val$text:Ljava/lang/String;

    iput-object p7, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Landroid/telephony/SmsManager$1;->val$deliveryIntent:Landroid/app/PendingIntent;

    iput-boolean p9, p0, Landroid/telephony/SmsManager$1;->val$persistMessage:Z

    iput-wide p10, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 752
    iget-object v0, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 753
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 15
    .param p1, "subId"    # I

    .line 738
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 740
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    :try_start_4
    iget-object v3, p0, Landroid/telephony/SmsManager$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$1;->val$attributionTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$1;->val$destinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$1;->val$scAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$1;->val$text:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Landroid/telephony/SmsManager$1;->val$deliveryIntent:Landroid/app/PendingIntent;

    iget-boolean v10, p0, Landroid/telephony/SmsManager$1;->val$persistMessage:Z

    iget-wide v11, p0, Landroid/telephony/SmsManager$1;->val$messageId:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_1e

    move v2, p1

    .end local p1    # "subId":I
    .local v2, "subId":I
    :try_start_17
    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 747
    goto :goto_55

    .line 743
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v2    # "subId":I
    .restart local p1    # "subId":I
    :catch_1e
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 744
    .restart local v2    # "subId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessageInternal: Couldn\'t send SMS, exception - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 745
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    invoke-static {v3, v4}, Landroid/telephony/SmsManager;->-$$Nest$smformatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    const-string v3, "SmsManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v3, 0x1f

    invoke-static {v0, v3}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 748
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_55
    return-void
.end method
