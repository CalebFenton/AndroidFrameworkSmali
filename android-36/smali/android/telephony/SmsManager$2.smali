.class Landroid/telephony/SmsManager$2;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$expectMore:Z

.field final synthetic blacklist val$finalPriority:I

.field final synthetic blacklist val$finalValidity:I

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
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

    .line 850
    iput-object p1, p0, Landroid/telephony/SmsManager$2;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$2;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$2;->val$scAddress:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$2;->val$text:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Landroid/telephony/SmsManager$2;->val$deliveryIntent:Landroid/app/PendingIntent;

    iput-boolean p7, p0, Landroid/telephony/SmsManager$2;->val$persistMessage:Z

    iput p8, p0, Landroid/telephony/SmsManager$2;->val$finalPriority:I

    iput-boolean p9, p0, Landroid/telephony/SmsManager$2;->val$expectMore:Z

    iput p10, p0, Landroid/telephony/SmsManager$2;->val$finalValidity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 871
    iget-object v0, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 872
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 16
    .param p1, "subId"    # I

    .line 854
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v1, v0

    .line 855
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_28

    .line 856
    iget-object v0, p0, Landroid/telephony/SmsManager$2;->this$0:Landroid/telephony/SmsManager;

    .line 857
    invoke-static {v0}, Landroid/telephony/SmsManager;->-$$Nest$mgetAttributionTag(Landroid/telephony/SmsManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/SmsManager$2;->val$destinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$2;->val$scAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$2;->val$text:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Landroid/telephony/SmsManager$2;->val$deliveryIntent:Landroid/app/PendingIntent;

    iget-boolean v10, p0, Landroid/telephony/SmsManager$2;->val$persistMessage:Z

    iget v11, p0, Landroid/telephony/SmsManager$2;->val$finalPriority:I

    iget-boolean v12, p0, Landroid/telephony/SmsManager$2;->val$expectMore:Z

    iget v13, p0, Landroid/telephony/SmsManager$2;->val$finalValidity:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_2a

    .line 856
    const/4 v3, 0x0

    move v2, p1

    .end local p1    # "subId":I
    .local v2, "subId":I
    :try_start_21
    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    .line 862
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_25
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .line 855
    .end local v2    # "subId":I
    .restart local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    .restart local p1    # "subId":I
    :cond_28
    move v2, p1

    .line 866
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "subId":I
    .restart local v2    # "subId":I
    :goto_29
    goto :goto_51

    .line 862
    .end local v2    # "subId":I
    .restart local p1    # "subId":I
    :catch_2a
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 863
    .restart local v2    # "subId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessageInternal: Couldn\'t send SMS, exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 864
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    const-string v1, "SmsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 867
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_51
    return-void
.end method
