.class final Landroid/app/InstantAppResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_GET_INSTANT_APP_INTENT_FILTER:I = 0x2

.field public static final greylist-max-o MSG_GET_INSTANT_APP_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method public constructor blacklist <init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 326
    iput-object p1, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 327
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    .line 334
    .local v0, "action":I
    const-string v1, ", userId: "

    const-string v2, "["

    const-string v3, "PackageManager"

    packed-switch v0, :pswitch_data_dc

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :pswitch_24
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 352
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/InstantAppRequestInfo;

    .line 353
    .local v5, "request":Landroid/content/pm/InstantAppRequestInfo;
    iget-object v6, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/IRemoteCallback;

    .line 354
    .local v6, "callback":Landroid/os/IRemoteCallback;
    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 355
    invoke-static {}, Landroid/app/InstantAppResolverService;->-$$Nest$sfgetDEBUG_INSTANT()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] Phase2 request; prefix: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getHostDigestPrefix()[I

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_73
    iget-object v1, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    new-instance v2, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v6}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter(Landroid/content/pm/InstantAppRequestInfo;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 363
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "request":Landroid/content/pm/InstantAppRequestInfo;
    .end local v6    # "callback":Landroid/os/IRemoteCallback;
    goto :goto_db

    .line 336
    :pswitch_7f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 337
    .restart local v4    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/InstantAppRequestInfo;

    .line 338
    .restart local v5    # "request":Landroid/content/pm/InstantAppRequestInfo;
    iget-object v6, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/IRemoteCallback;

    .line 339
    .restart local v6    # "callback":Landroid/os/IRemoteCallback;
    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 340
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 341
    .local v7, "sequence":I
    invoke-static {}, Landroid/app/InstantAppResolverService;->-$$Nest$sfgetDEBUG_INSTANT()Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "] Phase1 request; prefix: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getHostDigestPrefix()[I

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_d0
    iget-object v1, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    new-instance v2, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    invoke-direct {v2, v7, v6}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo(Landroid/content/pm/InstantAppRequestInfo;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 348
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v5    # "request":Landroid/content/pm/InstantAppRequestInfo;
    .end local v6    # "callback":Landroid/os/IRemoteCallback;
    .end local v7    # "sequence":I
    nop

    .line 369
    :goto_db
    return-void

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_24
    .end packed-switch
.end method
