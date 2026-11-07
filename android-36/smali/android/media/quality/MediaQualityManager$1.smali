.class Landroid/media/quality/MediaQualityManager$1;
.super Landroid/media/quality/IPictureProfileCallback$Stub;
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

    .line 120
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-direct {p0}, Landroid/media/quality/IPictureProfileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;I)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "err"    # I

    .line 156
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 158
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postError(Ljava/lang/String;I)V

    .line 159
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    goto :goto_11

    .line 160
    :cond_21
    monitor-exit v0

    .line 161
    return-void

    .line 160
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

    .line 148
    .local p2, "caps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 150
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    goto :goto_11

    .line 152
    :cond_21
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;

    .line 123
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 125
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 126
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    goto :goto_11

    .line 127
    :cond_21
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;

    .line 139
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 140
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 141
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 142
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    goto :goto_11

    .line 143
    :cond_21
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 6
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;

    .line 131
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_7
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$1;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 133
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 134
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    goto :goto_11

    .line 135
    :cond_21
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
