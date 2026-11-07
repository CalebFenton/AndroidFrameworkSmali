.class public Landroid/hardware/biometrics/BiometricTestSession;
.super Ljava/lang/Object;
.source "BiometricTestSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;,
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    }
.end annotation


# static fields
.field private static final blacklist BASE_TAG:Ljava/lang/String; = "BiometricTestSession"


# instance fields
.field private blacklist mCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mSensorId:I

.field private blacklist mTestSession:Landroid/hardware/biometrics/ITestSession;

.field private final blacklist mTestSessionsForAllSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ITestSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTestedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsersCleaningUp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "sensorId"    # I
    .param p4, "testSessionProvider"    # Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;I",
            "Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    .local p2, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/SensorProperties;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    .line 101
    iput p3, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorProperties;

    .line 105
    .local v1, "sensor":Landroid/hardware/biometrics/SensorProperties;
    invoke-virtual {v1}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v2

    .line 106
    .local v2, "id":I
    new-instance v3, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionCallbackIml;-><init>(Landroid/hardware/biometrics/BiometricTestSession;ILandroid/hardware/biometrics/BiometricTestSession-IA;)V

    invoke-interface {p4, p1, v2, v3}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;->createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 108
    .local v3, "session":Landroid/hardware/biometrics/ITestSession;
    iget-object v4, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    if-ne v2, p3, :cond_33

    .line 110
    iput-object v3, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    .line 112
    .end local v1    # "sensor":Landroid/hardware/biometrics/SensorProperties;
    .end local v2    # "id":I
    .end local v3    # "session":Landroid/hardware/biometrics/ITestSession;
    :cond_33
    goto :goto_10

    .line 114
    :cond_34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 117
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Opening BiometricTestSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method private blacklist getTag()Ljava/lang/String;
    .registers 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiometricTestSession_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setTestHalEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    .line 133
    .local v1, "session":Landroid/hardware/biometrics/ITestSession;
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTestHalEnabled, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/hardware/biometrics/ITestSession;->getSensorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/ITestSession;->setTestHalEnabled(Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_41

    .line 136
    .end local v1    # "session":Landroid/hardware/biometrics/ITestSession;
    goto :goto_6

    .line 139
    :cond_3f
    nop

    .line 140
    return-void

    .line 137
    :catch_41
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist acceptAuthentication(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->acceptAuthentication(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catch_7
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cleanupInternalState(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 249
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup already in progress for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_26
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSessionsForAllSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/ITestSession;

    .line 253
    .local v1, "session":Landroid/hardware/biometrics/ITestSession;
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupInternalState for sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/hardware/biometrics/ITestSession;->getSensorId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 256
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/ITestSession;->cleanupInternalState(I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6a} :catch_93

    .line 259
    :try_start_6a
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Awaiting latch..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 261
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Finished awaiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_85} :catch_86
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_85} :catch_93

    .line 264
    goto :goto_90

    .line 262
    :catch_86
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_87
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Latch interrupted"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_90} :catch_93

    .line 265
    .end local v1    # "session":Landroid/hardware/biometrics/ITestSession;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_90
    goto :goto_2c

    .line 268
    :cond_91
    nop

    .line 269
    return-void

    .line 266
    :catch_93
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 274
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close, mTestedUsers size; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 278
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 279
    .local v1, "user":I
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/BiometricTestSession;->cleanupInternalState(I)V

    .line 280
    .end local v1    # "user":I
    goto :goto_2e

    .line 283
    :cond_42
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 285
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup not finished before shutdown - pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 286
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_6a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 291
    return-void
.end method

.method public blacklist finishEnroll(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->finishEnroll(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 169
    nop

    .line 170
    return-void

    .line 167
    :catch_10
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyAcquired(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyAcquired(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 216
    nop

    .line 217
    return-void

    .line 214
    :catch_7
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyError(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyError(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 235
    nop

    .line 236
    return-void

    .line 233
    :catch_7
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rejectAuthentication(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->rejectAuthentication(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 197
    nop

    .line 198
    return-void

    .line 195
    :catch_7
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startEnroll(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->startEnroll(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 154
    nop

    .line 155
    return-void

    .line 152
    :catch_10
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
