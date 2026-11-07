.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;
.super Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field final synthetic blacklist val$cardId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$zk4IuD-dF00hwmxVkscBp0gXrCA(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->lambda$onComplete$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->val$cardId:I

    invoke-direct {p0}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onComplete$0(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .registers 5

    .line 826
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;

    .line 827
    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;->onGetMetadataComplete(ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    .line 828
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .registers 6

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->this$1:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->val$callback:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;->val$cardId:I

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;ILandroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
