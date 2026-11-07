.class Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController$5;->onResult(Landroid/service/euicc/EuiccProfileInfo;)V
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
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$5;

.field final synthetic blacklist val$profile:Landroid/service/euicc/EuiccProfileInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController$5;Landroid/service/euicc/EuiccProfileInfo;)V
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

    .line 567
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$5;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->val$profile:Landroid/service/euicc/EuiccProfileInfo;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 4

    .line 580
    :try_start_0
    const-string v0, "switchToProfile callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$5;

    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->val$profile:Landroid/service/euicc/EuiccProfileInfo;

    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 583
    const-string p1, "switchToProfile callback failure."

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

    .line 567
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public blacklist onResult(Ljava/lang/Void;)V
    .registers 3

    .line 571
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$5;

    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;->val$profile:Landroid/service/euicc/EuiccProfileInfo;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 573
    const-string p1, "switchToProfile callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
