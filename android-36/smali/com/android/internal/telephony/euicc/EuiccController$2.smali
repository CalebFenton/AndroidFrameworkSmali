.class Lcom/android/internal/telephony/euicc/EuiccController$2;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;ZLjava/util/Set;)V
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

.field final synthetic blacklist val$existingSubscriptions:Ljava/util/Set;

.field final synthetic blacklist val$markAsOwnedByAdmin:Z

.field final synthetic blacklist val$portIndex:I

.field final synthetic blacklist val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic blacklist val$switchAfterDownload:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;ZLjava/lang/String;ILjava/util/Set;JI)V
    .registers 12
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

    .line 839
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    iput-boolean p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$markAsOwnedByAdmin:Z

    iput-object p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iput p7, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iput-object p8, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$existingSubscriptions:Ljava/util/Set;

    iput-wide p9, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iput p11, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDownloadComplete(Landroid/service/euicc/DownloadSubscriptionResult;)V
    .registers 20

    move-object/from16 v0, p0

    .line 842
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResult()I

    move-result v1

    const/4 v3, -0x2

    const/4 v11, 0x1

    if-eq v1, v3, :cond_81

    const/4 v3, -0x1

    if-eq v1, v3, :cond_65

    if-eqz v1, :cond_20

    .line 923
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResult()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    const/4 v11, 0x2

    goto/16 :goto_d3

    .line 849
    :cond_20
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;

    move-result-object v1

    .line 850
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "euicc_provisioned"

    .line 849
    invoke-static {v1, v3, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 853
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 856
    iget-boolean v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    move-object v3, v2

    const/4 v2, 0x0

    if-nez v1, :cond_52

    .line 859
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    move-object v4, v1

    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    move-object v5, v4

    iget-boolean v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$markAsOwnedByAdmin:Z

    move-object v6, v5

    iget-object v5, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    move-object v7, v6

    iget v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    move-object v8, v7

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$existingSubscriptions:Ljava/util/Set;

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;ZLjava/lang/String;ILjava/util/Set;)V

    return-void

    :cond_52
    move v1, v2

    move-object v2, v3

    .line 868
    iget-boolean v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$markAsOwnedByAdmin:Z

    if-eqz v3, :cond_63

    .line 869
    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget-object v6, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$existingSubscriptions:Ljava/util/Set;

    invoke-static {v3, v11, v4, v5, v6}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$mrefreshSubscriptionsOwnership(Lcom/android/internal/telephony/euicc/EuiccController;ZLjava/lang/String;ILjava/util/Set;)V

    :cond_63
    move v11, v1

    goto :goto_d3

    .line 875
    :cond_65
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iget-wide v5, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 880
    invoke-static {v5, v6, v3, v7, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget v9, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 875
    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    goto :goto_d3

    .line 893
    :cond_81
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v1}, Landroid/telephony/euicc/DownloadableSubscription;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v1

    if-eqz v1, :cond_b9

    .line 897
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v5

    iget-wide v12, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v14, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v15, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v17

    move-object/from16 v16, v3

    .line 902
    invoke-static/range {v12 .. v17}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget v9, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 897
    const-string v3, "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS"

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    goto :goto_d3

    .line 908
    :cond_b9
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 913
    invoke-static {v7, v8, v3, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget v9, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 908
    const-string v3, "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    .line 927
    :goto_d3
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v11, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
