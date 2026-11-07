.class public interface abstract Landroid/service/voice/SandboxedDetectionInitializer;
.super Ljava/lang/Object;
.source "SandboxedDetectionInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist INITIALIZATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist INITIALIZATION_STATUS_UNKNOWN:I = 0x64

.field public static final blacklist KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final blacklist MAXIMUM_NUMBER_OF_INITIALIZATION_STATUS_CUSTOM_ERROR:I = 0x2


# direct methods
.method public static blacklist createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;
    .registers 3
    .param p0, "callback"    # Landroid/os/IRemoteCallback;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "intConsumer":Ljava/util/function/IntConsumer;
    if-eqz p0, :cond_9

    .line 78
    new-instance v1, Landroid/service/voice/SandboxedDetectionInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/voice/SandboxedDetectionInitializer$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    move-object v0, v1

    .line 94
    :cond_9
    return-object v0
.end method

.method public static whitelist getMaxCustomInitializationStatus()I
    .registers 1

    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public static synthetic blacklist lambda$createInitializationStatusConsumer$0(Landroid/os/IRemoteCallback;I)V
    .registers 5
    .param p0, "callback"    # Landroid/os/IRemoteCallback;
    .param p1, "value"    # I

    .line 80
    nop

    .line 81
    invoke-static {}, Landroid/service/voice/SandboxedDetectionInitializer;->getMaxCustomInitializationStatus()I

    move-result v0

    if-gt p1, v0, :cond_1d

    .line 86
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "status":Landroid/os/Bundle;
    const-string/jumbo v1, "initialization_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    .line 91
    .end local v0    # "status":Landroid/os/Bundle;
    nop

    .line 92
    return-void

    .line 89
    :catch_17
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The initialization status is invalid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
.end method
