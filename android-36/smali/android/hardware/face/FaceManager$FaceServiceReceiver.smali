.class Landroid/hardware/face/FaceManager$FaceServiceReceiver;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceServiceReceiver"
.end annotation


# instance fields
.field private final blacklist mFaceCallback:Landroid/hardware/face/FaceCallback;

.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$5ZQE9cPX995-rHNQ0ywmvjTBM_4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onAcquired$1(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7STVOSRVrY4ZbXpdAo2LEUcH4to(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onFaceDetected$3(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D0-1KD0HKCQ4Y56pKIV5gykuuCo(Landroid/hardware/face/FaceManager$FaceServiceReceiver;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onEnrollResult$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dha-SQYqX53c7KPHRZwdLzwKvd4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Z[I[Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onFeatureGet$7(Z[I[Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NikGuFvxPGSJpH9YDB7slq_vksw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onRemoved$5(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bYhK8f1cgGkYM4erR1GeyaNMrQw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onError$4(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fSFISv16PZSxcy_5x41wYAaddC4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onFeatureSet$6(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gQgYQB_FBwOCTzuNOYPGFFSmuJ4(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onAuthenticationFrame$9(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m92pSXpcpAaBUgTarV1O-C3h3_k(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onAuthenticationSucceeded$2(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$veoW_45VDEkaMcHO7b-7juodSaw(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onEnrollmentFrame$10(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zBJEQ84q2Vv7VdwGTaKs9QAAJ04(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->lambda$onChallengeGenerated$8(IIJ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceCallback;)V
    .registers 3
    .param p2, "faceCallback"    # Landroid/hardware/face/FaceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    .line 113
    iput-object p2, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    .line 114
    return-void
.end method

.method private synthetic blacklist lambda$onAcquired$1(II)V
    .registers 5
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 123
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/face/FaceCallback;->sendAcquiredResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationFrame$9(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 4
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 178
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/face/FaceCallback;->sendAuthenticationFrame(Landroid/content/Context;Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAuthenticationSucceeded$2(Landroid/hardware/face/Face;IZ)V
    .registers 5
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 129
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceCallback;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onChallengeGenerated$8(IIJ)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 172
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceCallback;->sendChallengeGenerated(IIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnrollResult$0(I)V
    .registers 3
    .param p1, "remaining"    # I

    .line 118
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceCallback;->sendEnrollResult(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnrollmentFrame$10(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 4
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 183
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/face/FaceCallback;->sendEnrollmentFrame(Landroid/content/Context;Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$4(II)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 146
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/face/FaceCallback;->sendErrorResult(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onFaceDetected$3(IIZ)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 135
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceCallback;->sendFaceDetected(IIZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureGet$7(Z[I[Z)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 166
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceCallback;->sendGetFeatureCompleted(Z[I[Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureSet$6(ZI)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 161
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceCallback;->sendSetFeatureCompleted(ZI)V

    return-void
.end method

.method private synthetic blacklist lambda$onRemoved$5(Landroid/hardware/face/Face;I)V
    .registers 4
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 151
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceCallback;->sendRemovedResult(Landroid/hardware/face/Face;I)V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .registers 5
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 123
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .registers 4

    .line 141
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->mFaceCallback:Landroid/hardware/face/FaceCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/face/FaceCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public blacklist onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 4
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 178
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda11;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceAuthenticationFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .registers 6
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 129
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .registers 12
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 172
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .end local p1    # "sensorId":I
    .end local p2    # "userId":I
    .end local p3    # "challenge":J
    .local v3, "sensorId":I
    .local v4, "userId":I
    .local v5, "challenge":J
    invoke-direct/range {v1 .. v6}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIJ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/face/Face;I)V
    .registers 5
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 118
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public blacklist onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 4
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 183
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/FaceEnrollFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public blacklist onError(II)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 146
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;II)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public blacklist onFaceDetected(IIZ)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 135
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public blacklist onFeatureGet(Z[I[Z)V
    .registers 6
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 166
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Z[I[Z)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public blacklist onFeatureSet(ZI)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 161
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda9;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/face/Face;I)V
    .registers 7
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 151
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmExecutor(Landroid/hardware/face/FaceManager;)Landroid/os/HandlerExecutor;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/face/FaceManager$FaceServiceReceiver$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/face/FaceManager$FaceServiceReceiver;Landroid/hardware/face/Face;I)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    if-nez p2, :cond_21

    .line 153
    iget-object v0, p0, Landroid/hardware/face/FaceManager$FaceServiceReceiver;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "face_unlock_re_enroll"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 157
    :cond_21
    return-void
.end method
