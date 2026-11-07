.class public Lcom/android/internal/net/eap/EapAuthenticator;
.super Landroid/os/Handler;
.source "EapAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/EapAuthenticator$EapContext;,
        Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_TIMEOUT_MILLIS:J = 0x1b58L

.field private static final blacklist EAP_TAG:Ljava/lang/String; = "EAP"

.field public static final blacklist LOG:Lcom/android/internal/net/utils/Log;

.field private static final blacklist LOG_SENSITIVE:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCallbackFired:Z

.field private final blacklist mCb:Lcom/android/internal/net/eap/IEapCallback;

.field private final blacklist mStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

.field private final blacklist mTimeoutMillis:J

.field private final blacklist mWorkerPool:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$AXV5EGvlrOe2tgAbY1VDQkD7MJ0(Lcom/android/internal/net/eap/EapAuthenticator;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/EapAuthenticator;->lambda$processEapMessage$2([B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$U9OKqNcPBrmXHveHhKUjy8GNgbE(Lcom/android/internal/net/eap/EapAuthenticator;Lcom/android/internal/net/eap/EapResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/EapAuthenticator;->lambda$processEapMessage$1(Lcom/android/internal/net/eap/EapResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v1Uqpln-jWJv7JscBj5F4kgA_Nk(Lcom/android/internal/net/eap/EapAuthenticator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/eap/EapAuthenticator;->lambda$processEapMessage$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/android/internal/net/utils/Log;

    const-string v1, "EAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/utils/Log;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 48
    const-class v0, Lcom/android/internal/net/eap/EapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/net/eap/IEapCallback;Lcom/android/internal/net/eap/statemachine/EapStateMachine;Ljava/util/concurrent/Executor;J)V
    .registers 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cb"    # Lcom/android/internal/net/eap/IEapCallback;
    .param p3, "eapStateMachine"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "timeoutMillis"    # J

    .line 85
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCallbackFired:Z

    .line 87
    iput-object p2, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCb:Lcom/android/internal/net/eap/IEapCallback;

    .line 88
    iput-object p3, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    .line 89
    iput-object p4, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mWorkerPool:Ljava/util/concurrent/Executor;

    .line 90
    iput-wide p5, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mTimeoutMillis:J

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/EapAuthenticator$EapContext;Lcom/android/internal/net/eap/IEapCallback;Landroid/net/eap/EapSessionConfig;)V
    .registers 11
    .param p1, "eapContext"    # Lcom/android/internal/net/eap/EapAuthenticator$EapContext;
    .param p2, "cb"    # Lcom/android/internal/net/eap/IEapCallback;
    .param p3, "eapSessionConfig"    # Landroid/net/eap/EapSessionConfig;

    .line 67
    nop

    .line 68
    invoke-interface {p1}, Lcom/android/internal/net/eap/EapAuthenticator$EapContext;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    .line 71
    invoke-interface {p1}, Lcom/android/internal/net/eap/EapAuthenticator$EapContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-interface {p1}, Lcom/android/internal/net/eap/EapAuthenticator$EapContext;->getRandomnessFactory()Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/net/eap/EapAuthenticator;->createNewRandomIfNull(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v3, v0, p3, v2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;-><init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig;Ljava/security/SecureRandom;)V

    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 67
    const-wide/16 v5, 0x1b58

    move-object v0, p0

    move-object v2, p2

    .end local p2    # "cb":Lcom/android/internal/net/eap/IEapCallback;
    .local v2, "cb":Lcom/android/internal/net/eap/IEapCallback;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/eap/EapAuthenticator;-><init>(Landroid/os/Looper;Lcom/android/internal/net/eap/IEapCallback;Lcom/android/internal/net/eap/statemachine/EapStateMachine;Ljava/util/concurrent/Executor;J)V

    .line 76
    return-void
.end method

.method private static blacklist createNewRandomIfNull(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;
    .registers 2
    .param p0, "random"    # Ljava/security/SecureRandom;

    .line 94
    if-nez p0, :cond_8

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method private synthetic blacklist lambda$processEapMessage$0()V
    .registers 4

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCallbackFired:Z

    if-nez v0, :cond_1c

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCallbackFired:Z

    .line 135
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->TAG:Ljava/lang/String;

    const-string v2, "Timeout occurred in EapStateMachine"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCb:Lcom/android/internal/net/eap/IEapCallback;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timeout while processing message"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/net/eap/IEapCallback;->onError(Ljava/lang/Throwable;)V

    .line 138
    :cond_1c
    return-void
.end method

.method private synthetic blacklist lambda$processEapMessage$1(Lcom/android/internal/net/eap/EapResult;)V
    .registers 8
    .param p1, "finalProcessResponse"    # Lcom/android/internal/net/eap/EapResult;

    .line 160
    iget-boolean v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCallbackFired:Z

    if-nez v0, :cond_ba

    .line 161
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EapStateMachine returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    instance-of v0, p1, Lcom/android/internal/net/eap/EapResult$EapResponse;

    if-eqz v0, :cond_3b

    .line 169
    iget-object v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCb:Lcom/android/internal/net/eap/IEapCallback;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/net/eap/EapResult$EapResponse;

    iget-object v1, v1, Lcom/android/internal/net/eap/EapResult$EapResponse;->packet:[B

    move-object v2, p1

    check-cast v2, Lcom/android/internal/net/eap/EapResult$EapResponse;

    iget v2, v2, Lcom/android/internal/net/eap/EapResult$EapResponse;->flagMask:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/net/eap/IEapCallback;->onResponse([BI)V

    goto/16 :goto_b4

    .line 172
    :cond_3b
    instance-of v0, p1, Lcom/android/internal/net/eap/EapResult$EapError;

    if-eqz v0, :cond_66

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/eap/EapResult$EapError;

    .line 174
    .local v0, "eapError":Lcom/android/internal/net/eap/EapResult$EapError;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EapError returned with cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCb:Lcom/android/internal/net/eap/IEapCallback;

    iget-object v2, v0, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/android/internal/net/eap/IEapCallback;->onError(Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "eapError":Lcom/android/internal/net/eap/EapResult$EapError;
    goto :goto_b4

    :cond_66
    instance-of v0, p1, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    if-eqz v0, :cond_af

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    .line 180
    .local v0, "eapSuccess":Lcom/android/internal/net/eap/EapResult$EapSuccess;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EapSuccess with MSK="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->msk:[B

    .line 184
    invoke-virtual {v4, v5}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EMSK="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->emsk:[B

    .line 186
    invoke-virtual {v4, v5}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCb:Lcom/android/internal/net/eap/IEapCallback;

    iget-object v2, v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->msk:[B

    iget-object v3, v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->emsk:[B

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/net/eap/EapResult$EapSuccess;->getEapInfo()Landroid/net/eap/EapInfo;

    move-result-object v4

    .line 187
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/net/eap/IEapCallback;->onSuccess([B[BLandroid/net/eap/EapInfo;)V

    .line 191
    .end local v0    # "eapSuccess":Lcom/android/internal/net/eap/EapResult$EapSuccess;
    goto :goto_b4

    .line 192
    :cond_af
    iget-object v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCb:Lcom/android/internal/net/eap/IEapCallback;

    invoke-interface {v0}, Lcom/android/internal/net/eap/IEapCallback;->onFail()V

    .line 195
    :goto_b4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCallbackFired:Z

    .line 198
    invoke-virtual {p0, p0}, Lcom/android/internal/net/eap/EapAuthenticator;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    :cond_ba
    return-void
.end method

.method private synthetic blacklist lambda$processEapMessage$2([B)V
    .registers 6
    .param p1, "msgBytes"    # [B

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/EapResult;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 154
    .local v0, "processResponse":Lcom/android/internal/net/eap/EapResult;
    goto :goto_19

    .line 151
    .end local v0    # "processResponse":Lcom/android/internal/net/eap/EapResult;
    :catch_9
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "Exception thrown while processing message"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 156
    .local v0, "processResponse":Lcom/android/internal/net/eap/EapResult;
    :goto_19
    move-object v1, v0

    .line 157
    .local v1, "finalProcessResponse":Lcom/android/internal/net/eap/EapResult;
    new-instance v2, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/net/eap/EapAuthenticator;Lcom/android/internal/net/eap/EapResult;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/net/eap/EapAuthenticator;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 116
    return-void
.end method

.method public blacklist processEapMessage([B)V
    .registers 5
    .param p1, "msgBytes"    # [B

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mCallbackFired:Z

    .line 130
    new-instance v0, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/eap/EapAuthenticator;)V

    iget-wide v1, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mTimeoutMillis:J

    invoke-virtual {p0, v0, p0, v1, v2}, Lcom/android/internal/net/eap/EapAuthenticator;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 143
    iget-object v0, p0, Lcom/android/internal/net/eap/EapAuthenticator;->mWorkerPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/net/eap/EapAuthenticator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/eap/EapAuthenticator;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method
