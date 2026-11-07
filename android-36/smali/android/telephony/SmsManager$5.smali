.class Landroid/telephony/SmsManager$5;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$data:[B

.field final synthetic blacklist val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$destinationPort:S

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "this$0"    # Landroid/telephony/SmsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1543
    iput-object p1, p0, Landroid/telephony/SmsManager$5;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iput-short p4, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    iput-object p5, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iput-object p6, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p7, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 1557
    iget-object v0, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 1558
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 13
    .param p1, "subId"    # I

    .line 1547
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v1, v0

    .line 1548
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    iget-object v0, p0, Landroid/telephony/SmsManager$5;->this$0:Landroid/telephony/SmsManager;

    invoke-static {v0}, Landroid/telephony/SmsManager;->-$$Nest$mgetAttributionTag(Landroid/telephony/SmsManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iget-short v0, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    const v2, 0xffff

    and-int v7, v0, v2

    iget-object v8, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iget-object v9, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v10, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_25

    const/4 v3, 0x0

    move v2, p1

    .end local p1    # "subId":I
    .local v2, "subId":I
    :try_start_1e
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    .line 1553
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    goto :goto_4c

    .line 1550
    :catch_22
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .end local v2    # "subId":I
    .restart local p1    # "subId":I
    :catch_25
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 1551
    .restart local v2    # "subId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDataMessage: Couldn\'t send SMS - Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 1554
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method
