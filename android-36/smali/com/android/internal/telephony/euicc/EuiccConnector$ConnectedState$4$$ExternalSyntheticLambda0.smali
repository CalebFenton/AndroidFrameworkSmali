.class public final synthetic Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field public final synthetic blacklist f$2:Landroid/service/euicc/DownloadSubscriptionResult;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/DownloadSubscriptionResult;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;->f$2:Landroid/service/euicc/DownloadSubscriptionResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4$$ExternalSyntheticLambda0;->f$2:Landroid/service/euicc/DownloadSubscriptionResult;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;->$r8$lambda$IaGzurhqMEJBG8ZvBJ1lhuTGnQw(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;Landroid/service/euicc/DownloadSubscriptionResult;)V

    return-void
.end method
