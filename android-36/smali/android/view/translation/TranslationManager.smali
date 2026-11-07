.class public final Landroid/view/translation/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_CAPABILITIES:Ljava/lang/String; = "translation_capabilities"

.field private static final blacklist ID_GENERATOR:Ljava/security/SecureRandom;

.field public static final blacklist STATUS_SYNC_CALL_FAIL:I = 0x2

.field public static final blacklist STATUS_SYNC_CALL_SUCCESS:I = 0x1

.field static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0xea60

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationManager"

.field private static final blacklist sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist mCapabilityCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTranslatorIds:Landroid/util/IntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$1IjILc_K4abGsuTe6FkDEBl34Mw(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/translation/TranslationManager;->lambda$createOnDeviceTranslator$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/translation/ITranslationManager;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    .line 117
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method static synthetic blacklist lambda$addOnDeviceTranslationCapabilityUpdateListener$5(Landroid/util/Pair;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "formats"    # Landroid/util/Pair;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 155
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$2(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "translator"    # Landroid/view/translation/Translator;

    .line 163
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "translator"    # Landroid/view/translation/Translator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$createOnDeviceTranslator$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Ljava/util/function/Consumer;
    .param p3, "tId"    # I
    .param p4, "translator"    # Landroid/view/translation/Translator;

    .line 153
    if-nez p4, :cond_b

    .line 154
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 156
    return-void

    .line 159
    :cond_b
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_e
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 161
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    .line 162
    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p4}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 164
    return-void

    .line 161
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public greylist addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 8
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    const-string v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_8
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .local v1, "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    nop

    .end local v1    # "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist addOnDeviceTranslationCapabilityUpdateListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p2, "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string v0, "capability listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_d
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 287
    const-string v1, "TranslationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnDeviceTranslationCapabilityUpdateListener: the listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered; ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return-void

    .line 291
    :cond_35
    new-instance v1, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_54

    .line 294
    .local v1, "remoteCallback":Landroid/os/IRemoteCallback;
    :try_start_3a
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 294
    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_4e
    .catchall {:try_start_3a .. :try_end_45} :catchall_54

    .line 298
    nop

    .line 299
    :try_start_46
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    nop

    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    monitor-exit v0

    .line 301
    return-void

    .line 296
    .restart local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    :catch_4e
    move-exception v2

    .line 297
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/translation/TranslationManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    throw v3

    .line 300
    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/translation/TranslationManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public greylist addTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    .line 332
    return-void
.end method

.method public greylist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .registers 11
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :goto_9
    :try_start_9
    sget-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v5, v0

    .line 189
    .local v5, "translatorId":I
    if-eqz v5, :cond_59

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v0, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_59

    .line 191
    new-instance v2, Landroid/view/translation/Translator;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_5c

    move-object v6, p0

    move-object v4, p1

    .end local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    .local v4, "translationContext":Landroid/view/translation/TranslationContext;
    :try_start_28
    invoke-direct/range {v2 .. v8}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V

    .line 194
    .local v2, "newTranslator":Landroid/view/translation/Translator;
    invoke-virtual {v2}, Landroid/view/translation/Translator;->start()V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_62

    .line 196
    const/4 p1, 0x0

    :try_start_2f
    invoke-virtual {v2}, Landroid/view/translation/Translator;->isSessionCreated()Z

    move-result v0
    :try_end_33
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_2f .. :try_end_33} :catch_3e
    .catchall {:try_start_2f .. :try_end_33} :catchall_62

    if-nez v0, :cond_37

    .line 197
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_62

    return-object p1

    .line 199
    :cond_37
    :try_start_37
    iget-object v0, v6, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V
    :try_end_3c
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_37 .. :try_end_3c} :catch_3e
    .catchall {:try_start_37 .. :try_end_3c} :catchall_62

    .line 200
    :try_start_3c
    monitor-exit v1

    return-object v2

    .line 201
    :catch_3e
    move-exception v0

    .line 204
    .local v0, "e":Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    const-string v3, "TranslationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timed out getting create session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit v1

    return-object p1

    .line 189
    .end local v0    # "e":Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    .end local v2    # "newTranslator":Landroid/view/translation/Translator;
    .end local v4    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    :cond_59
    move-object v6, p0

    move-object v4, p1

    .end local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local v4    # "translationContext":Landroid/view/translation/TranslationContext;
    goto :goto_9

    .line 207
    .end local v4    # "translationContext":Landroid/view/translation/TranslationContext;
    .end local v5    # "translatorId":I
    .restart local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    :catchall_5c
    move-exception v0

    move-object v6, p0

    move-object v4, p1

    move-object p1, v0

    .end local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local v4    # "translationContext":Landroid/view/translation/TranslationContext;
    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_62

    throw p1

    :catchall_62
    move-exception v0

    move-object p1, v0

    goto :goto_60
.end method

.method public whitelist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationContext;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/Translator;>;"
    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :goto_13
    :try_start_13
    sget-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 148
    .local v0, "translatorId":I
    if-eqz v0, :cond_3d

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_3d

    .line 149
    move v6, v0

    .line 151
    .local v6, "tId":I
    new-instance v3, Landroid/view/translation/Translator;

    iget-object v4, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    new-instance v10, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, p2, p3, v6}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_3f

    move-object v7, p0

    move-object v5, p1

    .end local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    .local v5, "translationContext":Landroid/view/translation/TranslationContext;
    :try_start_37
    invoke-direct/range {v3 .. v10}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V

    .line 165
    nop

    .end local v0    # "translatorId":I
    .end local v6    # "tId":I
    monitor-exit v1

    .line 166
    return-void

    .line 148
    .end local v5    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local v0    # "translatorId":I
    .restart local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    :cond_3d
    move-object v5, p1

    .end local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local v5    # "translationContext":Landroid/view/translation/TranslationContext;
    goto :goto_13

    .line 165
    .end local v0    # "translatorId":I
    .end local v5    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    :catchall_3f
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "translationContext":Landroid/view/translation/TranslationContext;
    .restart local v5    # "translationContext":Landroid/view/translation/TranslationContext;
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_44

    throw p1

    :catchall_44
    move-exception v0

    move-object p1, v0

    goto :goto_42
.end method

.method public greylist createTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .registers 3
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-virtual {p0, p1}, Landroid/view/translation/TranslationManager;->createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 3

    .line 446
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    sget-object v1, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v0

    return-object v1

    .line 448
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getOnDeviceTranslationCapabilities(II)Ljava/util/Set;
    .registers 8
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .line 241
    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    invoke-direct {v0}, Landroid/os/SynchronousResultReceiver;-><init>()V

    .line 242
    .local v0, "receiver":Landroid/os/SynchronousResultReceiver;
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 242
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/view/translation/ITranslationManager;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    .line 244
    nop

    .line 245
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 246
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget v2, v1, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 249
    :cond_22
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "translation_capabilities"

    const-class v4, Landroid/content/pm/ParceledListSlice;

    .line 250
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 251
    .local v2, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/translation/TranslationCapability;>;"
    new-instance v3, Landroid/util/ArraySet;

    .line 252
    if-nez v2, :cond_35

    const/4 v4, 0x0

    goto :goto_39

    :cond_35
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    :goto_39
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 253
    .local v3, "capabilities":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/translation/TranslationCapability;>;"
    return-object v3

    .line 256
    .end local v0    # "receiver":Landroid/os/SynchronousResultReceiver;
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/translation/TranslationCapability;>;"
    .end local v3    # "capabilities":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/translation/TranslationCapability;>;"
    :catch_3d
    move-exception v0

    .line 257
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out getting supported translation capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 254
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_5b
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .registers 5

    .line 415
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const v1, 0xea60

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 417
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_8
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/view/translation/ITranslationManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_25

    .line 420
    nop

    .line 422
    :try_start_14
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;
    :try_end_1a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v1

    .line 423
    :catch_1b
    move-exception v1

    .line 424
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    const-string v2, "TranslationManager"

    const-string v3, "Fail to get translation service settings activity."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v2, 0x0

    return-object v2

    .line 418
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_25
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getTranslationCapabilities(II)Ljava/util/Set;
    .registers 4
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationCapabilities(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    invoke-virtual {p0}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public greylist removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 10
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    const-string v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_8
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .local v1, "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 375
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    .line 376
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 377
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 378
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 380
    :cond_2f
    const-string v3, "TranslationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :goto_4d
    goto :goto_6c

    .line 384
    :cond_4e
    const-string v2, "TranslationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format pair="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v1    # "formatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_6c
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public whitelist removeOnDeviceTranslationCapabilityUpdateListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p1, "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    const-string v0, "capability callback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_8
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 346
    .local v1, "remoteCallback":Landroid/os/IRemoteCallback;
    if-nez v1, :cond_1c

    .line 347
    const-string v2, "TranslationManager"

    const-string/jumbo v3, "removeOnDeviceTranslationCapabilityUpdateListener: the capability listener not found; ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_36

    return-void

    .line 352
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 352
    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_30
    .catchall {:try_start_1c .. :try_end_27} :catchall_36

    .line 356
    nop

    .line 357
    :try_start_28
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    nop

    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    monitor-exit v0

    .line 359
    return-void

    .line 354
    .restart local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    :catch_30
    move-exception v2

    .line 355
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/view/translation/TranslationManager;
    .end local p1    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    throw v3

    .line 358
    .end local v1    # "remoteCallback":Landroid/os/IRemoteCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/view/translation/TranslationManager;
    .restart local p1    # "capabilityListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public greylist removeTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    .line 401
    return-void
.end method

.method blacklist removeTranslator(I)V
    .registers 5
    .param p1, "id"    # I

    .line 437
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 439
    .local v1, "index":I
    if-ltz v1, :cond_10

    .line 440
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 442
    .end local v1    # "index":I
    :cond_10
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
