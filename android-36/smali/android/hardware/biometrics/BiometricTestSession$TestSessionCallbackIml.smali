.class Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;
.super Landroid/hardware/biometrics/ITestSessionCallback$Stub;
.source "BiometricTestSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricTestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestSessionCallbackIml"
.end annotation


# instance fields
.field private final blacklist mSensorId:I

.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricTestSession;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/biometrics/BiometricTestSession;I)V
    .registers 3
    .param p2, "sensorId"    # I
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

    .line 73
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;-><init>()V

    .line 74
    iput p2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->mSensorId:I

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/biometrics/BiometricTestSession;ILandroid/hardware/biometrics/BiometricTestSession-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;-><init>(Landroid/hardware/biometrics/BiometricTestSession;I)V

    return-void
.end method


# virtual methods
.method public blacklist onCleanupFinished(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 84
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupFinished, sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->mSensorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remaining users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 90
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "counting down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    :cond_72
    return-void
.end method

.method public blacklist onCleanupStarted(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 79
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->this$0:Landroid/hardware/biometrics/BiometricTestSession;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricTestSession;->-$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupStarted, sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;->mSensorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
