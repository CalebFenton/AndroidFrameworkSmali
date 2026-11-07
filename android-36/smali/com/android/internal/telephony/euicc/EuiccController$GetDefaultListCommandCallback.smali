.class Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetDefaultListCommandCallback"
.end annotation


# instance fields
.field final blacklist mCallbackIntent:Landroid/app/PendingIntent;

.field final blacklist mCallingPackage:Ljava/lang/String;

.field final blacklist mCallingToken:J

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1008
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 1010
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 1011
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onGetDefaultListComplete(ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .registers 13

    .line 1017
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1019
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_38

    if-eqz v0, :cond_19

    .line 1043
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    const/4 p1, 0x2

    goto :goto_4d

    .line 1022
    :cond_19
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getDownloadableSubscriptions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 1023
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_36

    .line 1026
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/telephony/euicc/DownloadableSubscription;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 1024
    const-string p2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_36
    const/4 p1, 0x0

    goto :goto_4d

    .line 1031
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 1036
    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1031
    const-string v2, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    const/4 p1, 0x1

    .line 1047
    :goto_4d
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, p0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
