.class Lcom/android/internal/telephony/euicc/EuiccCardController$5;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/service/euicc/EuiccProfileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

.field final synthetic blacklist val$iccid:Ljava/lang/String;

.field final synthetic blacklist val$port:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

.field final synthetic blacklist val$refresh:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 564
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$port:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$iccid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$refresh:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 3

    .line 594
    :try_start_0
    const-string v0, "getProfile in switchToProfile callback onException: "

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$mgetResultCode(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 597
    const-string p1, "switchToProfile callback failure."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$smloge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist onResult(Landroid/service/euicc/EuiccProfileInfo;)V
    .registers 5

    .line 567
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$5$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController$5;Landroid/service/euicc/EuiccProfileInfo;)V

    .line 588
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$port:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$iccid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->val$refresh:Z

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmEuiccMainThreadHandler(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, v1, v2, v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->switchToProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

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

    .line 564
    check-cast p1, Landroid/service/euicc/EuiccProfileInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$5;->onResult(Landroid/service/euicc/EuiccProfileInfo;)V

    return-void
.end method
