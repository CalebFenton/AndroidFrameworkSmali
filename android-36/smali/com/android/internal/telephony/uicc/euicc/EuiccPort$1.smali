.class Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;
.super Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;
.source "EuiccPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

.field final synthetic blacklist val$exceptionHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;

.field final synthetic blacklist val$intermediateResultHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;

.field final synthetic blacklist val$responseHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;)V
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

    .line 1208
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$responseHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$intermediateResultHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;

    iput-object p5, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$exceptionHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onException(Ljava/lang/Throwable;)V
    .registers 2

    .line 1231
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$exceptionHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;->handleException(Ljava/lang/Throwable;)V

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

    .line 1208
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->onResult([B)V

    return-void
.end method

.method public blacklist onResult([B)V
    .registers 6

    .line 1212
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$responseHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;->handleResult([B)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Lcom/android/internal/telephony/uicc/euicc/EuiccCardException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception p1

    goto :goto_30

    .line 1216
    :goto_10
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    goto :goto_35

    .line 1214
    :goto_30
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    :goto_35
    return-void
.end method

.method public blacklist shouldContinueOnIntermediateResult(Lcom/android/internal/telephony/uicc/IccIoResult;)Z
    .registers 2

    .line 1223
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;->val$intermediateResultHandler:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1226
    :cond_6
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;->shouldContinue(Lcom/android/internal/telephony/uicc/IccIoResult;)Z

    move-result p0

    return p0
.end method
