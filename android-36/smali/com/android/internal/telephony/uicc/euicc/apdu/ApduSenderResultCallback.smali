.class public abstract Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSenderResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist shouldContinueOnIntermediateResult(Lcom/android/internal/telephony/uicc/IccIoResult;)Z
.end method
