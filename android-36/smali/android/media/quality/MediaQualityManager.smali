.class public final Landroid/media/quality/MediaQualityManager;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$PictureProfileCallback;,
        Landroid/media/quality/MediaQualityManager$ProfileQueryParams;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallback;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;,
        Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightEventTypes;
    }
.end annotation


# static fields
.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_DISABLED:I = 0x2

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_ENABLED:I = 0x1

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_INTERRUPTED:I = 0x4

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_METADATA:I = 0x3

.field public static final blacklist OPTION_INCLUDE_PARAMETERS:Ljava/lang/String; = "include_parameters"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaQualityManager"


# instance fields
.field private final blacklist mAbCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAbLock:Ljava/lang/Object;

.field private final blacklist mApListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPpLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/media/quality/IMediaQualityManager;

.field private final blacklist mSpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSpLock:Ljava/lang/Object;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAbCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAbLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApListenerRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/media/quality/IMediaQualityManager;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    .line 117
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 119
    iput-object p2, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    .line 120
    new-instance v0, Landroid/media/quality/MediaQualityManager$1;

    invoke-direct {v0, p0}, Landroid/media/quality/MediaQualityManager$1;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 163
    .local v0, "ppCallback":Landroid/media/quality/IPictureProfileCallback;
    new-instance v1, Landroid/media/quality/MediaQualityManager$2;

    invoke-direct {v1, p0}, Landroid/media/quality/MediaQualityManager$2;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 206
    .local v1, "spCallback":Landroid/media/quality/ISoundProfileCallback;
    new-instance v2, Landroid/media/quality/MediaQualityManager$3;

    invoke-direct {v2, p0}, Landroid/media/quality/MediaQualityManager$3;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 217
    .local v2, "abCallback":Landroid/media/quality/IAmbientBacklightCallback;
    new-instance v3, Landroid/media/quality/MediaQualityManager$4;

    invoke-direct {v3, p0}, Landroid/media/quality/MediaQualityManager$4;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 237
    .local v3, "apListener":Landroid/media/quality/IActiveProcessingPictureListener;
    :try_start_59
    iget-object v4, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    if-eqz v4, :cond_71

    .line 238
    iget-object v4, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v4, v0}, Landroid/media/quality/IMediaQualityManager;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    .line 239
    iget-object v4, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v4, v1}, Landroid/media/quality/IMediaQualityManager;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    .line 240
    iget-object v4, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v4, v2}, Landroid/media/quality/IMediaQualityManager;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V

    .line 241
    iget-object v4, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v4, v3}, Landroid/media/quality/IMediaQualityManager;->registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_71} :catch_73

    .line 245
    :cond_71
    nop

    .line 246
    return-void

    .line 243
    :catch_73
    move-exception v4

    .line 244
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method


# virtual methods
.method public whitelist addActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1185
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;>;"
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, v3}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    monitor-exit v0

    .line 1191
    return-void

    .line 1190
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist addGlobalActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1204
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;>;"
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    monitor-exit v0

    .line 1210
    return-void

    .line 1209
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist createPictureProfile(Landroid/media/quality/PictureProfile;)V
    .registers 4
    .param p1, "pp"    # Landroid/media/quality/PictureProfile;

    .line 434
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->createPictureProfile(Landroid/media/quality/PictureProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 437
    nop

    .line 438
    return-void

    .line 435
    :catch_d
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createSoundProfile(Landroid/media/quality/SoundProfile;)V
    .registers 4
    .param p1, "sp"    # Landroid/media/quality/SoundProfile;

    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->createSoundProfile(Landroid/media/quality/SoundProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 623
    nop

    .line 624
    return-void

    .line 621
    :catch_d
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailablePictureProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 5
    .param p1, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 343
    if-eqz p1, :cond_d

    :try_start_2
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 345
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 343
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 344
    .local v0, "includeParams":Z
    :goto_e
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getAvailablePictureProfiles(ZI)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_b

    return-object v1

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableSoundProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 5
    .param p1, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 563
    if-eqz p1, :cond_d

    :try_start_2
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 565
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 563
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 564
    .local v0, "includeParams":Z
    :goto_e
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getAvailableSoundProfiles(ZI)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_b

    return-object v1

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParameterCapabilities(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation

    .line 667
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 668
    :catch_d
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/PictureProfile;
    .registers 7
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    .line 297
    if-eqz p3, :cond_d

    :try_start_2
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 300
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 297
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 298
    .local v0, "includeParams":Z
    :goto_e
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 299
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 298
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_b

    return-object v1

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfileAllowList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileAllowList(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 686
    :catch_d
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPictureProfileForTvInput(Ljava/lang/String;)J
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;

    .line 406
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileForTvInput(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 407
    :catch_d
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPictureProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "id"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfileHandle;",
            ">;"
        }
    .end annotation

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 395
    :catch_d
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfilePackageNames()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilePackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 383
    :catch_d
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 322
    if-eqz p2, :cond_d

    :try_start_2
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 325
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 322
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 323
    .local v0, "includeParams":Z
    :goto_e
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 324
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 323
    invoke-interface {v1, p1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_b

    return-object v1

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/SoundProfile;
    .registers 7
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    .line 517
    if-eqz p3, :cond_d

    :try_start_2
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 519
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 517
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 518
    .local v0, "includeParams":Z
    :goto_e
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_b

    return-object v1

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfileAllowList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 717
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileAllowList(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 718
    :catch_d
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoundProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "id"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfileHandle;",
            ">;"
        }
    .end annotation

    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 419
    :catch_d
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfilePackageNames()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilePackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 604
    :catch_d
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 542
    if-eqz p2, :cond_d

    :try_start_2
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 545
    :catch_b
    move-exception v0

    goto :goto_1b

    .line 542
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 543
    .local v0, "includeParams":Z
    :goto_e
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 544
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 543
    invoke-interface {v1, p1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_b

    return-object v1

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientBacklightEnabled()Z
    .registers 3

    .line 889
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAmbientBacklightEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 890
    :catch_d
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAutoPictureQualityEnabled()Z
    .registers 3

    .line 772
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAutoPictureQualityEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 773
    :catch_d
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAutoSoundQualityEnabled()Z
    .registers 3

    .line 829
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAutoSoundQualityEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 830
    :catch_d
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSuperResolutionEnabled()Z
    .registers 3

    .line 800
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isSuperResolutionEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 801
    :catch_d
    move-exception v0

    .line 802
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupported()Z
    .registers 3

    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isSupported(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 744
    :catch_d
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAmbientBacklightCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    .line 842
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    monitor-exit v0

    .line 847
    return-void

    .line 846
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist registerPictureProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    .line 254
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist registerSoundProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    .line 475
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist removeActiveProcessingPictureListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1218
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1220
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1221
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    .line 1223
    .local v2, "record":Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->getListener()Ljava/util/function/Consumer;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 1224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1225
    goto :goto_23

    .line 1227
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    :cond_22
    goto :goto_c

    .line 1228
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 1229
    return-void

    .line 1228
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist removePictureProfile(Ljava/lang/String;)V
    .registers 4
    .param p1, "profileId"    # Ljava/lang/String;

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->removePictureProfile(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 466
    nop

    .line 467
    return-void

    .line 464
    :catch_d
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeSoundProfile(Ljava/lang/String;)V
    .registers 4
    .param p1, "profileId"    # Ljava/lang/String;

    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->removeSoundProfile(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 652
    nop

    .line 653
    return-void

    .line 650
    :catch_d
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAmbientBacklightEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 903
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 906
    nop

    .line 907
    return-void

    .line 904
    :catch_d
    move-exception v0

    .line 905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/quality/AmbientBacklightSettings;

    .line 876
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :try_start_3
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    .line 881
    nop

    .line 882
    return-void

    .line 879
    :catch_10
    move-exception v0

    .line 880
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAutoPictureQualityEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 761
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAutoPictureQualityEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 764
    nop

    .line 765
    return-void

    .line 762
    :catch_d
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAutoSoundQualityEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAutoSoundQualityEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 821
    nop

    .line 822
    return-void

    .line 819
    :catch_d
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultPictureProfile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pictureProfileId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setDefaultPictureProfile(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 366
    :catch_d
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultSoundProfile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "soundProfileId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 585
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setDefaultSoundProfile(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 586
    :catch_d
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPictureProfileAllowList(Ljava/util/List;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setPictureProfileAllowList(Ljava/util/List;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 702
    nop

    .line 703
    return-void

    .line 700
    :catch_d
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSoundProfileAllowList(Ljava/util/List;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setSoundProfileAllowList(Ljava/util/List;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 734
    nop

    .line 735
    return-void

    .line 732
    :catch_d
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSuperResolutionEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 789
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setSuperResolutionEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 792
    nop

    .line 793
    return-void

    .line 790
    :catch_d
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAmbientBacklightCallback(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    .line 855
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 858
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 859
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    .line 860
    .local v2, "record":Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 861
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 862
    goto :goto_23

    .line 864
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
    :cond_22
    goto :goto_c

    .line 865
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist unregisterPictureProfileCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    .line 265
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 270
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 272
    goto :goto_23

    .line 274
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    :cond_22
    goto :goto_c

    .line 275
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist unregisterSoundProfileCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    .line 486
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 491
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 493
    goto :goto_23

    .line 495
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    :cond_22
    goto :goto_c

    .line 496
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;>;"
    :cond_23
    :goto_23
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 5
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "pp"    # Landroid/media/quality/PictureProfile;

    .line 449
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 452
    nop

    .line 453
    return-void

    .line 450
    :catch_d
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 5
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "sp"    # Landroid/media/quality/SoundProfile;

    .line 635
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_d
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
