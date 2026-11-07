.class Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetMetadataCommandCallback"
.end annotation


# instance fields
.field protected final blacklist mCallbackIntent:Landroid/app/PendingIntent;

.field protected final blacklist mCallingPackage:Ljava/lang/String;

.field protected final blacklist mCallingToken:J

.field protected final blacklist mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    .line 481
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 482
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 483
    iput-object p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method protected blacklist getOperationForDeactivateSim()Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 4

    .line 524
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingToken:J

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object p0

    return-object p0
.end method

.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .registers 13

    .line 489
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 491
    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    if-eqz v0, :cond_19

    .line 511
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getResult()I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    const/4 p1, 0x2

    goto :goto_37

    .line 494
    :cond_19
    const-string p1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

    .line 496
    invoke-virtual {p2}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object p2

    .line 494
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    goto :goto_37

    .line 500
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->getOperationForDeactivateSim()Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 500
    const-string v2, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    const/4 p1, 0x1

    .line 515
    :goto_37
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
