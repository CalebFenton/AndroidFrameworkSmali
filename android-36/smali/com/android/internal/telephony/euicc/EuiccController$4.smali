.class Lcom/android/internal/telephony/euicc/EuiccController$4;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic blacklist val$callbackIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1112
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDeleteComplete(I)V
    .registers 4

    .line 1115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_15

    .line 1125
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    .line 1129
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    .line 1120
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$4;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
