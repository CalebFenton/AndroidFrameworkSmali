.class final Landroid/media/MediaRouter2Manager$CallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final blacklist mCallback:Landroid/media/MediaRouter2Manager$Callback;

.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaRouter2Manager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/MediaRouter2Manager$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object p2, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1063
    iput-object p3, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    .line 1064
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1068
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1069
    return v0

    .line 1071
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1072
    return v2

    .line 1074
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1079
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0}, Landroid/media/MediaRouter2Manager$Callback;->hashCode()I

    move-result v0

    return v0
.end method
