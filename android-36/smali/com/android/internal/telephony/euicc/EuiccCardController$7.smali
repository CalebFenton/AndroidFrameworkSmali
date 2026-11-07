.class Lcom/android/internal/telephony/euicc/EuiccCardController$7;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

.field final synthetic blacklist val$cardId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
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

    .line 681
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$cardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$callback:Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 3

    .line 697
    :try_start_0
    const-string v0, "deleteProfile callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$callback:Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 700
    const-string p1, "deleteProfile callback failure."

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

    .line 681
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public blacklist onResult(Ljava/lang/Void;)V
    .registers 4

    .line 684
    const-string p1, "EuiccCardController"

    const-string v0, "Request subscription info list refresh after delete."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmUiccController(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$cardId:Ljava/lang/String;

    .line 686
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 685
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 688
    :try_start_23
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$callback:Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 690
    const-string p1, "deleteProfile callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
