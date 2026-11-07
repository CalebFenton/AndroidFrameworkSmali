.class Lcom/android/internal/telephony/euicc/EuiccController$5;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic blacklist val$callbackIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$callingPackage:Ljava/lang/String;

.field final synthetic blacklist val$callingToken:J

.field final synthetic blacklist val$cardId:I

.field final synthetic blacklist val$portIndex:I

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$usePortIndex:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JIIIZLandroid/app/PendingIntent;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1508
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingToken:J

    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    iput p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$cardId:I

    iput p7, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$portIndex:I

    iput-boolean p8, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$usePortIndex:Z

    iput-object p9, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onSwitchComplete(I)V
    .registers 13

    .line 1511
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    if-eqz p1, :cond_11

    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    const/4 p1, 0x2

    goto :goto_2f

    :cond_11
    const/4 p1, 0x0

    goto :goto_2f

    .line 1519
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingPackage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callingToken:J

    iget p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    .line 1524
    invoke-static {v4, v5, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$cardId:I

    iget v8, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$portIndex:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$usePortIndex:Z

    iget v10, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$subscriptionId:I

    .line 1519
    const-string v2, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZI)V

    const/4 p1, 0x1

    .line 1533
    :goto_2f
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$5;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
