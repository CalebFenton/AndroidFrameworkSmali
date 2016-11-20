.class final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    #@3
    return-void
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 335
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@3
    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@0
    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 289
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 292
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 294
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@1e
    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-wrap3(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 286
    return-void

    #@25
    .line 295
    :catchall_0
    move-exception v2

    #@26
    .line 296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 295
    throw v2
.end method

.method public createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isPermanentGrant"    # Z

    #@0
    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, "android.permission.MANAGE_MEDIA_PROJECTION"

    #@9
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 226
    new-instance v3, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v4, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 229
    :cond_0
    if-eqz p2, :cond_1

    #@1a
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 230
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v4, "package name must not be empty"

    #@25
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 232
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2c
    move-result-wide v0

    #@2d
    .line 235
    .local v0, "callingToken":J
    :try_start_0
    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    #@2f
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@31
    invoke-direct {v2, v3, p3, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;)V

    #@34
    .line 236
    .local v2, "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    if-eqz p4, :cond_3

    #@36
    .line 237
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@38
    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get0(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    #@3b
    move-result-object v3

    #@3c
    .line 238
    iget v4, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    #@3e
    iget-object v5, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    #@40
    .line 237
    const/16 v6, 0x2e

    #@42
    .line 238
    const/4 v7, 0x0

    #@43
    .line 237
    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 241
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 243
    return-object v2

    #@4a
    .line 240
    .end local v2    # "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    :catchall_0
    move-exception v3

    #@4b
    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 240
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 318
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@a
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "android.permission.DUMP"

    #@11
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 320
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Permission Denial: can\'t dump MediaProjectionManager from from pid="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@26
    move-result v3

    #@27
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 321
    const-string/jumbo v3, ", uid="

    #@2e
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@35
    move-result v3

    #@36
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 322
    return-void

    #@42
    .line 325
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@45
    move-result-wide v0

    #@46
    .line 327
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@48
    invoke-static {v2, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-wrap4(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 316
    return-void

    #@4f
    .line 328
    :catchall_0
    move-exception v2

    #@50
    .line 329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 328
    throw v2
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 4

    #@0
    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 256
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 259
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 261
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@1e
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-wrap0(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v2

    #@22
    .line 263
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 261
    return-object v2

    #@26
    .line 262
    :catchall_0
    move-exception v2

    #@27
    .line 263
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 262
    throw v2
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5
    move-result-wide v2

    #@6
    .line 211
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "android.permission.CAPTURE_VIDEO_OUTPUT"

    #@9
    .line 210
    invoke-direct {p0, p2, v4}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 212
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@11
    invoke-static {v4}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get0(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    #@14
    move-result-object v4

    #@15
    .line 213
    const/16 v5, 0x2e

    #@17
    .line 212
    invoke-virtual {v4, v5, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_1

    #@1d
    .line 216
    .local v0, "hasPermission":Z
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 218
    return v0

    #@21
    .end local v0    # "hasPermission":Z
    :cond_1
    move v0, v1

    #@22
    .line 212
    goto :goto_0

    #@23
    .line 215
    :catchall_0
    move-exception v1

    #@24
    .line 216
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 215
    throw v1
.end method

.method public isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
    .locals 2
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    .line 249
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    .line 248
    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-wrap1(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@0
    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 304
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 307
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 309
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@1e
    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-wrap5(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 301
    return-void

    #@25
    .line 310
    :catchall_0
    move-exception v2

    #@26
    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 310
    throw v2
.end method

.method public stopActiveProjection()V
    .locals 4

    #@0
    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get2(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    #@9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 271
    new-instance v2, Ljava/lang/SecurityException;

    #@11
    const-string/jumbo v3, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 274
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 276
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@1e
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get5(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    #@21
    move-result-object v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 277
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@26
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get5(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 280
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 268
    return-void

    #@31
    .line 279
    :catchall_0
    move-exception v2

    #@32
    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 279
    throw v2
.end method
