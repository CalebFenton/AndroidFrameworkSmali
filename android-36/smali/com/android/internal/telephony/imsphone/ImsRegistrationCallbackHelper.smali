.class public Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;
.super Ljava/lang/Object;
.source "ImsRegistrationCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;
    }
.end annotation


# instance fields
.field private final blacklist mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mImsRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRegistrationState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmImsRegistrationUpdate(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mImsRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mRegistrationState:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 107
    invoke-virtual {v0, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mImsRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    return-object p0
.end method

.method public blacklist getCallbackBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getImsRegistrationState()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mRegistrationState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist isImsRegistered()Z
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getImsRegistrationState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist reset()V
    .registers 3

    .line 115
    const-string v0, "ImsRegCallbackHelper"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->updateRegistrationState(I)V

    return-void
.end method

.method public declared-synchronized blacklist updateRegistrationState(I)V
    .registers 6

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_34

    .line 125
    :try_start_4
    const-string v1, "ImsRegCallbackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRegistrationState: registration state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mRegistrationState:I

    .line 126
    invoke-static {v3}, Landroid/telephony/ims/RegistrationManager;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {p1}, Landroid/telephony/ims/RegistrationManager;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->mRegistrationState:I

    .line 129
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_31

    .line 130
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    .line 129
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p1

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw p1
.end method
