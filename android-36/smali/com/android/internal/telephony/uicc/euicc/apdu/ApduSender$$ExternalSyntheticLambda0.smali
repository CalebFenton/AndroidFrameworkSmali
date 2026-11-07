.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field public final synthetic blacklist f$1:Ljava/lang/Throwable;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$$ExternalSyntheticLambda0;->f$3:[B

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->$r8$lambda$P7ZxZiPUq_FOIZ3ViYO_Hr02xpI(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V

    return-void
.end method
