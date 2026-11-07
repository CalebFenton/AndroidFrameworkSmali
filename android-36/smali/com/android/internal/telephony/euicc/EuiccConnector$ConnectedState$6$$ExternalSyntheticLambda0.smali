.class public final synthetic Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$3:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6$$ExternalSyntheticLambda0;->f$3:Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;->$r8$lambda$IyLUZmjBRR648bfIxLubGus2AzI(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V

    return-void
.end method
