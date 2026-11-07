.class Lcom/android/internal/telephony/euicc/EuiccCardController$18;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

.field final synthetic blacklist val$cardId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
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

    .line 1242
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$cardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 3

    .line 1258
    :try_start_0
    const-string v0, "loadBoundProfilePackage callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1259
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 1261
    const-string p1, "loadBoundProfilePackage callback failure."

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

    .line 1242
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->onResult([B)V

    return-void
.end method

.method public blacklist onResult([B)V
    .registers 5

    .line 1245
    const-string v0, "EuiccCardController"

    const-string v1, "Request subscription info list refresh after install."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmUiccController(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$cardId:Ljava/lang/String;

    .line 1247
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 1249
    :try_start_23
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$18;->val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 1251
    const-string p1, "loadBoundProfilePackage callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
