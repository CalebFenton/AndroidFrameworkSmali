.class public final Landroid/net/IpSecTransform;
.super Ljava/lang/Object;
.source "IpSecTransform.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecTransform$Builder;,
        Landroid/net/IpSecTransform$NattKeepaliveCallback;,
        Landroid/net/IpSecTransform$EncapType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ENCAP_ESPINUDP:I = 0x2

.field public static final greylist-max-o ENCAP_ESPINUDP_NON_IKE:I = 0x1

.field public static final greylist-max-o ENCAP_NONE:I = 0x0

.field public static final greylist-max-o MODE_TRANSPORT:I = 0x0

.field public static final greylist-max-o MODE_TUNNEL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecTransform"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mConfig:Landroid/net/IpSecConfig;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mResourceId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mactivate(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;
    .registers 1

    invoke-direct {p0}, Landroid/net/IpSecTransform;->activate()Landroid/net/IpSecTransform;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/IpSecConfig;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mLock:Ljava/lang/Object;

    .line 205
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 94
    iput-object p1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0, p2}, Landroid/net/IpSecConfig;-><init>(Landroid/net/IpSecConfig;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 97
    return-void
.end method

.method private greylist-max-o activate()Landroid/net/IpSecTransform;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/net/IpSecTransform;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/net/IpSecTransform;->getIpSecManager(Landroid/content/Context;)Landroid/net/IpSecManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object v4, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/IpSecManager;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v1

    .line 131
    .local v1, "result":Landroid/net/IpSecTransformResponse;
    iget v2, v1, Landroid/net/IpSecTransformResponse;->status:I

    .line 132
    .local v2, "status":I
    invoke-direct {p0, v2}, Landroid/net/IpSecTransform;->checkResultStatus(I)V

    .line 133
    iget v3, v1, Landroid/net/IpSecTransformResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 134
    const-string v3, "IpSecTransform"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added Transform with Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_44} :catch_49
    .catchall {:try_start_3 .. :try_end_44} :catchall_47

    .line 138
    .end local v1    # "result":Landroid/net/IpSecTransformResponse;
    .end local v2    # "status":I
    nop

    .line 139
    :try_start_45
    monitor-exit v0

    .line 141
    return-object p0

    .line 139
    :catchall_47
    move-exception v1

    goto :goto_4f

    .line 136
    :catch_49
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/IpSecTransform;
    throw v2

    .line 139
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/net/IpSecTransform;
    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_47

    throw v1
.end method

.method private greylist-max-o checkResultStatus(I)V
    .registers 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 108
    packed-switch p1, :pswitch_data_2e

    goto :goto_15

    .line 116
    :pswitch_4
    const-string v0, "IpSecTransform"

    const-string v1, "Attempting to use an SPI that was somehow not reserved"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 113
    :pswitch_c
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v1, "Failed to allocate a new IpSecTransform"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_14
    return-void

    .line 119
    :goto_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to Create a Transform with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist getIpSecManager(Landroid/content/Context;)Landroid/net/IpSecManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const-class v0, Landroid/net/IpSecManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$requestIpSecTransformState$0(Landroid/os/OutcomeReceiver;Landroid/net/IpSecTransformState;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "ipSecTransformState"    # Landroid/net/IpSecTransformState;

    .line 239
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method static synthetic blacklist lambda$requestIpSecTransformState$1(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalStateException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/IllegalStateException;

    .line 244
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 245
    return-void
.end method

.method static synthetic blacklist lambda$requestIpSecTransformState$2(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 249
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 250
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 165
    const-string v0, "IpSecTransform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Transform with Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Landroid/net/IpSecTransform;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_1d
    iget v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 170
    iget-object v1, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 171
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_71

    return-void

    .line 175
    :cond_29
    :try_start_29
    iget-object v1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/net/IpSecTransform;->getIpSecManager(Landroid/content/Context;)Landroid/net/IpSecManager;

    move-result-object v1

    iget v3, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v1, v3}, Landroid/net/IpSecManager;->deleteTransform(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_3e
    .catchall {:try_start_29 .. :try_end_34} :catchall_3c

    .line 181
    :try_start_34
    iput v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 182
    iget-object v1, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    :goto_38
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_71

    .line 183
    goto :goto_66

    .line 181
    :catchall_3c
    move-exception v1

    goto :goto_68

    .line 176
    :catch_3e
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3f
    const-string v3, "IpSecTransform"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_3c

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_61
    iput v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 182
    iget-object v1, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    goto :goto_38

    .line 184
    :goto_66
    monitor-exit v0

    .line 185
    return-void

    .line 181
    :goto_68
    iput v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 182
    iget-object v2, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 183
    nop

    .end local p0    # "this":Landroid/net/IpSecTransform;
    throw v1

    .line 184
    .restart local p0    # "this":Landroid/net/IpSecTransform;
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 149
    :cond_4
    instance-of v1, p1, Landroid/net/IpSecTransform;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 150
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/IpSecTransform;

    .line 151
    .local v1, "rhs":Landroid/net/IpSecTransform;
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/IpSecTransform;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/IpSecConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget v4, v1, Landroid/net/IpSecTransform;->mResourceId:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 193
    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->close()V

    .line 194
    return-void
.end method

.method greylist-max-o getConfig()Landroid/net/IpSecConfig;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public greylist-max-o getResourceId()I
    .registers 3

    .line 210
    iget-object v0, p0, Landroid/net/IpSecTransform;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    monitor-exit v0

    return v1

    .line 212
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist requestIpSecTransformState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/net/IpSecTransformState;",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/IpSecTransformState;Ljava/lang/RuntimeException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :try_start_6
    iget-object v0, p0, Landroid/net/IpSecTransform;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_9} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_22

    .line 235
    :try_start_9
    iget-object v1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/net/IpSecTransform;->getIpSecManager(Landroid/content/Context;)Landroid/net/IpSecManager;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/net/IpSecManager;->getTransformState(I)Landroid/net/IpSecTransformState;

    move-result-object v1

    .line 236
    .local v1, "ipSecTransformState":Landroid/net/IpSecTransformState;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1f

    .line 237
    :try_start_16
    new-instance v0, Landroid/net/IpSecTransform$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, v1}, Landroid/net/IpSecTransform$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/net/IpSecTransformState;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1e} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_22

    .end local v1    # "ipSecTransformState":Landroid/net/IpSecTransformState;
    goto :goto_35

    .line 236
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .end local p0    # "this":Landroid/net/IpSecTransform;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/IpSecTransformState;Ljava/lang/RuntimeException;>;"
    :try_start_21
    throw v1
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_22} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_22} :catch_22

    .line 246
    .restart local p0    # "this":Landroid/net/IpSecTransform;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/IpSecTransformState;Ljava/lang/RuntimeException;>;"
    :catch_22
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/net/IpSecTransform$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Landroid/net/IpSecTransform$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_36

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2c
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Landroid/net/IpSecTransform$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, v0}, Landroid/net/IpSecTransform$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalStateException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 251
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_35
    nop

    .line 252
    :goto_36
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    const-string v1, "IpSecTransform{resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    return-object v0
.end method
