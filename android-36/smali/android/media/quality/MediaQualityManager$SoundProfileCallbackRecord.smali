.class final Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoundProfileCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$SoundProfileCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$SoundProfileCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    .line 977
    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 978
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/quality/MediaQualityManager$SoundProfileCallback;
    .registers 2

    .line 981
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    return-object v0
.end method

.method public blacklist postError(Ljava/lang/String;I)V
    .registers 5
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 1023
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method public blacklist postParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;)V"
        }
    .end annotation

    .line 1014
    .local p2, "caps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$4;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1020
    return-void
.end method

.method public blacklist postSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 986
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$1;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 992
    return-void
.end method

.method public blacklist postSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 1004
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method

.method public blacklist postSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 995
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$2;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1001
    return-void
.end method
