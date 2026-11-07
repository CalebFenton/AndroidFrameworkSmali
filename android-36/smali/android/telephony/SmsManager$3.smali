.class Landroid/telephony/SmsManager$3;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$attributionTag:Ljava/lang/String;

.field final synthetic blacklist val$deliveryIntents:Ljava/util/List;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$messageId:J

.field final synthetic blacklist val$packageName:Ljava/lang/String;

.field final synthetic blacklist val$parts:Ljava/util/List;

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntents:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
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

    .line 1150
    iput-object p2, p0, Landroid/telephony/SmsManager$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$3;->val$attributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$3;->val$destinationAddress:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$3;->val$scAddress:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/SmsManager$3;->val$parts:Ljava/util/List;

    iput-object p7, p0, Landroid/telephony/SmsManager$3;->val$sentIntents:Ljava/util/List;

    iput-object p8, p0, Landroid/telephony/SmsManager$3;->val$deliveryIntents:Ljava/util/List;

    iput-boolean p9, p0, Landroid/telephony/SmsManager$3;->val$persistMessage:Z

    iput-wide p10, p0, Landroid/telephony/SmsManager$3;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 1167
    iget-object v0, p0, Landroid/telephony/SmsManager$3;->val$sentIntents:Ljava/util/List;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    .line 1168
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 15
    .param p1, "subId"    # I

    .line 1154
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v1, v0

    .line 1155
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    iget-object v3, p0, Landroid/telephony/SmsManager$3;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$3;->val$attributionTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$3;->val$destinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$3;->val$scAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$3;->val$parts:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/SmsManager$3;->val$sentIntents:Ljava/util/List;

    iget-object v9, p0, Landroid/telephony/SmsManager$3;->val$deliveryIntents:Ljava/util/List;

    iget-boolean v10, p0, Landroid/telephony/SmsManager$3;->val$persistMessage:Z

    iget-wide v11, p0, Landroid/telephony/SmsManager$3;->val$messageId:J
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_1f

    move v2, p1

    .end local p1    # "subId":I
    .local v2, "subId":I
    :try_start_18
    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 1162
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    goto :goto_56

    .line 1158
    :catch_1c
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v2    # "subId":I
    .restart local p1    # "subId":I
    :catch_1f
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 1159
    .restart local v2    # "subId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1160
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/telephony/SmsManager$3;->val$messageId:J

    invoke-static {v3, v4}, Landroid/telephony/SmsManager;->-$$Nest$smformatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    const-string v1, "SmsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Landroid/telephony/SmsManager$3;->val$sentIntents:Ljava/util/List;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    .line 1163
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_56
    return-void
.end method
