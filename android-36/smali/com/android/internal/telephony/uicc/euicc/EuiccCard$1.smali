.class Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->loadEidAndNotifyRegistrants()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$fgetmEidReadyRegistrants(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$fgetmEidReadyRegistrants(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 146
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$fputmEid(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$102(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    const-string p0, "EuiccCard"

    const-string v0, "Failed loading eid"

    invoke-static {p0, v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 127
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onResult(Ljava/lang/String;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$fputmEid(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->access$002(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 133
    const-string p1, "eid is loaded but empty "

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 135
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$fgetmEidReadyRegistrants(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->-$$Nest$fgetmEidReadyRegistrants(Lcom/android/internal/telephony/uicc/euicc/EuiccCard;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_2c
    return-void
.end method
