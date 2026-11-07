.class Landroid/media/quality/MediaQualityManager$2;
.super Landroid/media/quality/ISoundProfileCallback$Stub;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager;-><init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-direct {p0}, Landroid/media/quality/ISoundProfileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;I)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 199
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 201
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postError(Ljava/lang/String;I)V

    .line 202
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    goto :goto_11

    .line 203
    :cond_21
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p2, "caps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 193
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 194
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    goto :goto_11

    .line 195
    :cond_21
    monitor-exit v0

    .line 196
    return-void

    .line 195
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 166
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 168
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 169
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    goto :goto_11

    .line 170
    :cond_21
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 182
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 184
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 185
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    goto :goto_11

    .line 186
    :cond_21
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/SoundProfile;

    .line 174
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 175
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$2;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 176
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 177
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    goto :goto_11

    .line 178
    :cond_21
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
