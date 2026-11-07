.class public Landroid/security/intrusiondetection/IntrusionDetectionManager;
.super Ljava/lang/Object;
.source "IntrusionDetectionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;,
        Landroid/security/intrusiondetection/IntrusionDetectionManager$IntrusionDetectionError;,
        Landroid/security/intrusiondetection/IntrusionDetectionManager$IntrusionDetectionState;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DATA_SOURCE_UNAVAILABLE:I = 0x4

.field public static final whitelist ERROR_PERMISSION_DENIED:I = 0x1

.field public static final whitelist ERROR_TRANSPORT_UNAVAILABLE:I = 0x3

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist STATE_DISABLED:I = 0x1

.field public static final whitelist STATE_ENABLED:I = 0x2

.field public static final whitelist STATE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IntrusionDetectionManager"


# instance fields
.field private final blacklist mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

.field private final blacklist mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/security/intrusiondetection/IIntrusionDetectionService;)V
    .registers 3
    .param p1, "service"    # Landroid/security/intrusiondetection/IIntrusionDetectionService;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist addStateCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 153
    const-string v0, "IntrusionDetectionManager"

    const-string v1, "addStateCallback callback already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 157
    :cond_16
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 165
    .local v0, "wrappedCallback":Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    :try_start_1b
    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    invoke-interface {v1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_27

    .line 168
    nop

    .line 170
    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void

    .line 166
    :catch_27
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist disable(Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    .line 244
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :try_start_6
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    new-instance v1, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V

    invoke-interface {v0, v1}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_12
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enable(Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    .line 211
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :try_start_6
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    new-instance v1, Landroid/security/intrusiondetection/IntrusionDetectionManager$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/security/intrusiondetection/IntrusionDetectionManager$2;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V

    invoke-interface {v0, v1}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    .line 227
    nop

    .line 228
    return-void

    .line 225
    :catch_12
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeStateCallback(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 182
    const-string v0, "IntrusionDetectionManager"

    const-string/jumbo v1, "removeStateCallback callback not present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_14
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    .line 189
    .local v0, "wrappedCallback":Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
    :try_start_1c
    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    invoke-interface {v1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_28

    .line 192
    nop

    .line 194
    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void

    .line 190
    :catch_28
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
