.class Lcom/android/internal/telephony/euicc/EuiccCardController$22;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/telephony/euicc/EuiccNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
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

    .line 1448
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$22;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$22;->val$callback:Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 3

    .line 1461
    :try_start_0
    const-string v0, "retrieveNotification callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$22;->val$callback:Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$22;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 1464
    const-string p1, "retrieveNotification callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist onResult(Landroid/telephony/euicc/EuiccNotification;)V
    .registers 3

    .line 1452
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$22;->val$callback:Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 1454
    const-string p1, "retrieveNotification callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic blacklist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1448
    check-cast p1, Landroid/telephony/euicc/EuiccNotification;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$22;->onResult(Landroid/telephony/euicc/EuiccNotification;)V

    return-void
.end method
