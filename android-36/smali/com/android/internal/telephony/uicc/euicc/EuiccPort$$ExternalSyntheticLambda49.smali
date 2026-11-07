.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;->f$0:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    return-void
.end method


# virtual methods
.method public final blacklist handleException(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;->f$0:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$EGQloVE5ZJw-zQr1fb0lrYE5gfE(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    return-void
.end method
