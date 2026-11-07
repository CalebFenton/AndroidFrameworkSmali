.class Landroid/telephony/SmsManager$8;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$configOverrides:Landroid/os/Bundle;

.field final synthetic blacklist val$contentUri:Landroid/net/Uri;

.field final synthetic blacklist val$downloadedIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$locationUrl:Ljava/lang/String;

.field final synthetic blacklist val$m:Landroid/telephony/MmsManager;

.field final synthetic blacklist val$messageId:J


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 9
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

    .line 3048
    iput-object p2, p0, Landroid/telephony/SmsManager$8;->val$m:Landroid/telephony/MmsManager;

    iput-object p3, p0, Landroid/telephony/SmsManager$8;->val$locationUrl:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$8;->val$contentUri:Landroid/net/Uri;

    iput-object p5, p0, Landroid/telephony/SmsManager$8;->val$configOverrides:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/telephony/SmsManager$8;->val$downloadedIntent:Landroid/app/PendingIntent;

    iput-wide p7, p0, Landroid/telephony/SmsManager$8;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 3057
    iget-object v0, p0, Landroid/telephony/SmsManager$8;->val$downloadedIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 3058
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 10
    .param p1, "subId"    # I

    .line 3051
    iget-object v0, p0, Landroid/telephony/SmsManager$8;->val$m:Landroid/telephony/MmsManager;

    iget-object v2, p0, Landroid/telephony/SmsManager$8;->val$locationUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/SmsManager$8;->val$contentUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/telephony/SmsManager$8;->val$configOverrides:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/telephony/SmsManager$8;->val$downloadedIntent:Landroid/app/PendingIntent;

    iget-wide v6, p0, Landroid/telephony/SmsManager$8;->val$messageId:J

    move v1, p1

    .end local p1    # "subId":I
    .local v1, "subId":I
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/MmsManager;->downloadMultimediaMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 3053
    return-void
.end method
