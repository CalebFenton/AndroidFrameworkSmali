.class Landroid/telephony/SmsManager$4;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$deliveryIntents:Ljava/util/List;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$expectMore:Z

.field final synthetic blacklist val$finalPriority:I

.field final synthetic blacklist val$finalValidity:I

.field final synthetic blacklist val$parts:Ljava/util/List;

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntents:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 11
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

    .line 1386
    iput-object p2, p0, Landroid/telephony/SmsManager$4;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$4;->val$scAddress:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$4;->val$parts:Ljava/util/List;

    iput-object p5, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    iput-object p6, p0, Landroid/telephony/SmsManager$4;->val$deliveryIntents:Ljava/util/List;

    iput-boolean p7, p0, Landroid/telephony/SmsManager$4;->val$persistMessage:Z

    iput p8, p0, Landroid/telephony/SmsManager$4;->val$finalPriority:I

    iput-boolean p9, p0, Landroid/telephony/SmsManager$4;->val$expectMore:Z

    iput p10, p0, Landroid/telephony/SmsManager$4;->val$finalValidity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 1406
    iget-object v0, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    .line 1407
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 16
    .param p1, "subId"    # I

    .line 1390
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v1, v0

    .line 1391
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_23

    .line 1392
    iget-object v5, p0, Landroid/telephony/SmsManager$4;->val$destinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$4;->val$scAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$4;->val$parts:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    iget-object v9, p0, Landroid/telephony/SmsManager$4;->val$deliveryIntents:Ljava/util/List;

    iget-boolean v10, p0, Landroid/telephony/SmsManager$4;->val$persistMessage:Z

    iget v11, p0, Landroid/telephony/SmsManager$4;->val$finalPriority:I

    iget-boolean v12, p0, Landroid/telephony/SmsManager$4;->val$expectMore:Z

    iget v13, p0, Landroid/telephony/SmsManager$4;->val$finalValidity:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    .end local p1    # "subId":I
    .local v2, "subId":I
    :try_start_1c
    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_24

    .line 1397
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .line 1391
    .end local v2    # "subId":I
    .restart local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    .restart local p1    # "subId":I
    :cond_23
    move v2, p1

    .line 1401
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "subId":I
    .restart local v2    # "subId":I
    :goto_24
    goto :goto_4c

    .line 1397
    .end local v2    # "subId":I
    .restart local p1    # "subId":I
    :catch_25
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 1398
    .restart local v2    # "subId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1399
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    const-string v1, "SmsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    .line 1402
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method
