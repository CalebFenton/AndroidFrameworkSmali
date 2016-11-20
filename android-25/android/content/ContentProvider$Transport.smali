.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/ContentProvider;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 192
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    #@6
    .line 193
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@9
    .line 194
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    #@b
    .line 195
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    #@d
    .line 192
    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    if-eqz p3, :cond_0

    #@2
    const/16 v0, 0x77

    #@4
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 469
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 471
    new-instance v0, Ljava/io/FileNotFoundException;

    #@13
    const-string/jumbo v1, "App op not allowed"

    #@16
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 474
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 476
    new-instance v0, Ljava/io/FileNotFoundException;

    #@22
    const-string/jumbo v1, "App op not allowed"

    #@25
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 467
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 483
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@6
    move-result v0

    #@7
    .line 484
    .local v0, "mode":I
    if-eqz v0, :cond_0

    #@9
    .line 485
    return v0

    #@a
    .line 488
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    #@c
    const/4 v2, -0x1

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 489
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@11
    iget v2, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    #@13
    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 492
    :cond_1
    return v3
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 497
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@6
    move-result v0

    #@7
    .line 498
    .local v0, "mode":I
    if-eqz v0, :cond_0

    #@9
    .line 499
    return v0

    #@a
    .line 502
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    #@c
    const/4 v2, -0x1

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 503
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@11
    iget v2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    #@13
    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 506
    :cond_1
    return v3
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, -0x2

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 289
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 290
    .local v1, "numOperations":I
    new-array v7, v1, [I

    #@9
    .line 291
    .local v7, "userIds":[I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@c
    .line 292
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/content/ContentProviderOperation;

    #@12
    .line 293
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    #@15
    move-result-object v6

    #@16
    .line 294
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@18
    invoke-static {v8, v6}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@1b
    .line 295
    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@1e
    move-result v8

    #@1f
    aput v8, v7, v0

    #@21
    .line 296
    aget v8, v7, v0

    #@23
    if-eq v8, v11, :cond_0

    #@25
    .line 298
    new-instance v3, Landroid/content/ContentProviderOperation;

    #@27
    const/4 v8, 0x1

    #@28
    invoke-direct {v3, v2, v8}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    #@2b
    .line 299
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-object v2, v3

    #@2f
    .line 301
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_1

    #@35
    .line 302
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_1

    #@3b
    .line 304
    new-instance v8, Landroid/content/OperationApplicationException;

    #@3d
    const-string/jumbo v9, "App op not allowed"

    #@40
    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    #@43
    throw v8

    #@44
    .line 307
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_2

    #@4a
    .line 308
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_2

    #@50
    .line 310
    new-instance v8, Landroid/content/OperationApplicationException;

    #@52
    const-string/jumbo v9, "App op not allowed"

    #@55
    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    #@58
    throw v8

    #@59
    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 314
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@5e
    invoke-static {v8, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 316
    .local v4, "original":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@64
    invoke-virtual {v8, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    #@67
    move-result-object v5

    #@68
    .line 317
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_5

    #@6a
    .line 318
    const/4 v0, 0x0

    #@6b
    :goto_1
    array-length v8, v5

    #@6c
    if-ge v0, v8, :cond_5

    #@6e
    .line 319
    aget v8, v7, v0

    #@70
    if-eq v8, v11, :cond_4

    #@72
    .line 321
    new-instance v8, Landroid/content/ContentProviderResult;

    #@74
    aget-object v9, v5, v0

    #@76
    aget v10, v7, v0

    #@78
    invoke-direct {v8, v9, v10}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    #@7b
    aput-object v8, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7d
    .line 318
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 327
    :cond_5
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@82
    invoke-static {v8, v4}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@85
    .line 325
    return-object v5

    #@86
    .line 326
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    #@87
    .line 327
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@89
    invoke-static {v9, v4}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    .line 326
    throw v8
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 272
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 273
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object p2

    #@a
    .line 274
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 275
    return v2

    #@12
    .line 277
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 279
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1a
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    .line 281
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@20
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 279
    return v1

    #@24
    .line 280
    :catchall_0
    move-exception v1

    #@25
    .line 281
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 280
    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 397
    const/4 v1, 0x1

    #@1
    invoke-static {p4, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 398
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@6
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 400
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@c
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v1

    #@10
    .line 402
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@12
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@15
    .line 400
    return-object v1

    #@16
    .line 401
    :catchall_0
    move-exception v1

    #@17
    .line 402
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@19
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    .line 401
    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 436
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 437
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@9
    move-result v1

    #@a
    .line 438
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object p2

    #@e
    .line 439
    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 440
    return-object v3

    #@15
    .line 442
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@17
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 444
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1d
    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    #@20
    move-result-object v2

    #@21
    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v2

    #@25
    .line 446
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 444
    return-object v2

    #@2b
    .line 445
    :catchall_0
    move-exception v2

    #@2c
    .line 446
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2e
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@31
    .line 445
    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    #@0
    .prologue
    .line 431
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 333
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 334
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object p2

    #@a
    .line 335
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 336
    return v2

    #@12
    .line 338
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 340
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1a
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    .line 342
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@20
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 340
    return v1

    #@24
    .line 341
    :catchall_0
    move-exception v1

    #@25
    .line 342
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 341
    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 409
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p1

    #@9
    .line 410
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 250
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p1

    #@9
    .line 251
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@b
    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 256
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 257
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@8
    move-result v1

    #@9
    .line 258
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@c
    move-result-object p2

    #@d
    .line 259
    const/4 v2, 0x0

    #@e
    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 260
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@16
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 262
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1d
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 264
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@23
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@26
    move-result-object v2

    #@27
    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result-object v2

    #@2b
    .line 266
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2d
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@30
    .line 264
    return-object v2

    #@31
    .line 265
    :catchall_0
    move-exception v2

    #@32
    .line 266
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@34
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@37
    .line 265
    throw v2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 383
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 384
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@d
    .line 385
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@f
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 387
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@15
    .line 388
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@18
    move-result-object v2

    #@19
    .line 387
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .line 390
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1f
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@22
    .line 387
    return-object v1

    #@23
    .line 389
    :catchall_0
    move-exception v1

    #@24
    .line 390
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@26
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@29
    .line 389
    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .param p5, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 367
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 368
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 369
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@e
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 371
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    .line 372
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@17
    move-result-object v2

    #@18
    .line 371
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v1

    #@1c
    .line 374
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1e
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@21
    .line 371
    return-object v1

    #@22
    .line 373
    :catchall_0
    move-exception v1

    #@23
    .line 374
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@25
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@28
    .line 373
    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    const/4 v1, 0x1

    #@1
    invoke-static {p4, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@4
    .line 417
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@6
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@9
    .line 418
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@c
    move-result-object p2

    #@d
    .line 419
    const-string/jumbo v1, "r"

    #@10
    const/4 v2, 0x0

    #@11
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@14
    .line 420
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@16
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 422
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1c
    .line 423
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@1f
    move-result-object v2

    #@20
    .line 422
    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v1

    #@24
    .line 425
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@26
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@29
    .line 422
    return-object v1

    #@2a
    .line 424
    :catchall_0
    move-exception v1

    #@2b
    .line 425
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2d
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@30
    .line 424
    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 211
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 212
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 219
    if-eqz p3, :cond_0

    #@12
    .line 220
    new-instance v0, Landroid/database/MatrixCursor;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@18
    return-object v0

    #@19
    .line 227
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1b
    .line 228
    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@1e
    move-result-object v6

    #@1f
    move-object v1, p2

    #@20
    move-object v2, p3

    #@21
    move-object v3, p4

    #@22
    move-object v4, p5

    #@23
    move-object v5, p6

    #@24
    .line 227
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@27
    move-result-object v7

    #@28
    .line 230
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    #@2a
    .line 231
    const/4 v0, 0x0

    #@2b
    return-object v0

    #@2c
    .line 235
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    #@2e
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    const/4 v2, 0x0

    #@33
    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@36
    return-object v0

    #@37
    .line 237
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@39
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    .line 239
    .local v8, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3f
    .line 241
    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@42
    move-result-object v6

    #@43
    move-object v1, p2

    #@44
    move-object v2, p3

    #@45
    move-object v3, p4

    #@46
    move-object v4, p5

    #@47
    move-object v5, p6

    #@48
    .line 239
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result-object v0

    #@4c
    .line 243
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@4e
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@51
    .line 239
    return-object v0

    #@52
    .line 242
    :catchall_0
    move-exception v0

    #@53
    .line 243
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@55
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@58
    .line 242
    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 452
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 453
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@9
    move-result v1

    #@a
    .line 454
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object p2

    #@e
    .line 455
    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 456
    return-object v3

    #@15
    .line 458
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@17
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 460
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1d
    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    #@20
    move-result-object v2

    #@21
    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v2

    #@25
    .line 462
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 460
    return-object v2

    #@2b
    .line 461
    :catchall_0
    move-exception v2

    #@2c
    .line 462
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2e
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@31
    .line 461
    throw v2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 349
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 350
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object p2

    #@a
    .line 351
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 352
    return v2

    #@12
    .line 354
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 356
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1a
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v1

    #@1e
    .line 358
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@20
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 356
    return v1

    #@24
    .line 357
    :catchall_0
    move-exception v1

    #@25
    .line 358
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 357
    throw v1
.end method
