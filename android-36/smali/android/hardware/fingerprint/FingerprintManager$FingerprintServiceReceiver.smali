.class Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FingerprintServiceReceiver"
.end annotation


# instance fields
.field private final blacklist mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$4tMjIMra5mfFUenZCSAjLmYHGUA(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onUdfpsPointerUp$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EP01_M5GmAMUcfSf5atyl-GZGQg(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onChallengeGenerated$6(JII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GVW7l7bYwRHo64GREc4Tka7hfHo(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onError$4(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J_QZ_Q514lPGzaiB7HXJ5gpc2mM(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onRemoved$5(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YpItk3s_PStDuSsRiTUZyrtXf-Y(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onFingerprintDetected$3(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_0NkQsr0St-Tl8nzWBxzCnscUmo(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onUdfpsPointerDown$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qJkN7o8WHeiQ9ZwiDCCCzJxCpXI(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onEnrollResult$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wcZms5DTCBGW5VTEeJRCWEIwTW4(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onAcquired$1(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ycc1XbEGUiXF4L2o8puCUBhiYp8(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->lambda$onAuthenticationSucceeded$2(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "fingerprintCallback"    # Landroid/hardware/fingerprint/FingerprintCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1561
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    .line 1562
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    .line 1563
    return-void
.end method

.method private synthetic blacklist lambda$onAcquired$1(II)V
    .registers 5
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1572
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmContext(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintCallback;->sendAcquiredResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$2(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 5
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1579
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintCallback;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onChallengeGenerated$6(JII)V
    .registers 6
    .param p1, "challenge"    # J
    .param p3, "sensorId"    # I
    .param p4, "userId"    # I

    .line 1607
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintCallback;->sendChallengeGenerated(JII)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnrollResult$0(I)V
    .registers 3
    .param p1, "remaining"    # I

    .line 1567
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintCallback;->sendEnrollResult(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$4(II)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 1596
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmContext(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintCallback;->sendErrorResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onFingerprintDetected$3(IIZ)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1585
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintCallback;->sendFingerprintDetected(IIZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoved$5(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1602
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintCallback;->sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onUdfpsPointerDown$7(I)V
    .registers 3
    .param p1, "sensorId"    # I

    .line 1613
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintCallback;->sendUdfpsPointerDown(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onUdfpsPointerUp$8(I)V
    .registers 3
    .param p1, "sensorId"    # I

    .line 1618
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintCallback;->sendUdfpsPointerUp(I)V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .registers 5
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1572
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1574
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .registers 4

    .line 1591
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/fingerprint/FingerprintCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1592
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 6
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1579
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1581
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .registers 12
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 1607
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda9;

    move-object v2, p0

    move v5, p1

    move v6, p2

    move-wide v3, p3

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "challenge":J
    .local v3, "challenge":J
    .local v5, "sensorId":I
    .local v6, "userId":I
    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;JII)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1609
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 5
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1567
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1568
    return-void
.end method

.method public blacklist onError(II)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 1596
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1598
    return-void
.end method

.method public blacklist onFingerprintDetected(IIZ)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1585
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1587
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 5
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 1602
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1603
    return-void
.end method

.method public blacklist onUdfpsOverlayShown()V
    .registers 4

    .line 1623
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->mFingerprintCallback:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/fingerprint/FingerprintCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1624
    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .registers 4
    .param p1, "sensorId"    # I

    .line 1613
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1614
    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .registers 4
    .param p1, "sensorId"    # I

    .line 1618
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1619
    return-void
.end method
