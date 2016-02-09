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
    .line 191
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    #@6
    .line 192
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@9
    .line 193
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    #@b
    .line 194
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    #@d
    .line 191
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
    .line 465
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
    .line 466
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 468
    new-instance v0, Ljava/io/FileNotFoundException;

    #@13
    const-string/jumbo v1, "App op not allowed"

    #@16
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 471
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 473
    new-instance v0, Ljava/io/FileNotFoundException;

    #@22
    const-string/jumbo v1, "App op not allowed"

    #@25
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 464
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
    .line 480
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@6
    move-result v0

    #@7
    .line 481
    .local v0, "mode":I
    if-eqz v0, :cond_0

    #@9
    .line 482
    return v0

    #@a
    .line 485
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    #@c
    const/4 v2, -0x1

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 486
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
    .line 489
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
    .line 494
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@6
    move-result v0

    #@7
    .line 495
    .local v0, "mode":I
    if-eqz v0, :cond_0

    #@9
    .line 496
    return v0

    #@a
    .line 499
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    #@c
    const/4 v2, -0x1

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 500
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
    .line 503
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
    .line 288
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 289
    .local v1, "numOperations":I
    new-array v7, v1, [I

    #@9
    .line 290
    .local v7, "userIds":[I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@c
    .line 291
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/content/ContentProviderOperation;

    #@12
    .line 292
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    #@15
    move-result-object v6

    #@16
    .line 293
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@18
    invoke-static {v8, v6}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@1b
    .line 294
    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@1e
    move-result v8

    #@1f
    aput v8, v7, v0

    #@21
    .line 295
    aget v8, v7, v0

    #@23
    if-eq v8, v11, :cond_0

    #@25
    .line 297
    new-instance v3, Landroid/content/ContentProviderOperation;

    #@27
    const/4 v8, 0x1

    #@28
    invoke-direct {v3, v2, v8}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    #@2b
    .line 298
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-object v2, v3

    #@2f
    .line 300
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_1

    #@35
    .line 301
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_1

    #@3b
    .line 303
    new-instance v8, Landroid/content/OperationApplicationException;

    #@3d
    const-string/jumbo v9, "App op not allowed"

    #@40
    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    #@43
    throw v8

    #@44
    .line 306
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_2

    #@4a
    .line 307
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_2

    #@50
    .line 309
    new-instance v8, Landroid/content/OperationApplicationException;

    #@52
    const-string/jumbo v9, "App op not allowed"

    #@55
    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    #@58
    throw v8

    #@59
    .line 290
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 313
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@5e
    invoke-static {v8, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 315
    .local v4, "original":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@64
    invoke-virtual {v8, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    #@67
    move-result-object v5

    #@68
    .line 316
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_5

    #@6a
    .line 317
    const/4 v0, 0x0

    #@6b
    :goto_1
    array-length v8, v5

    #@6c
    if-ge v0, v8, :cond_5

    #@6e
    .line 318
    aget v8, v7, v0

    #@70
    if-eq v8, v11, :cond_4

    #@72
    .line 320
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
    .line 317
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 326
    :cond_5
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@82
    invoke-static {v8, v4}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@85
    .line 324
    return-object v5

    #@86
    .line 325
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    #@87
    .line 326
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@89
    invoke-static {v9, v4}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    .line 325
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
    .line 271
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 272
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object p2

    #@a
    .line 273
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 274
    return v2

    #@12
    .line 276
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 278
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
    .line 280
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@20
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 278
    return v1

    #@24
    .line 279
    :catchall_0
    move-exception v1

    #@25
    .line 280
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 279
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
    .line 396
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 398
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@8
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v1

    #@c
    .line 400
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@e
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@11
    .line 398
    return-object v1

    #@12
    .line 399
    :catchall_0
    move-exception v1

    #@13
    .line 400
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@15
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@18
    .line 399
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
    .line 433
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 434
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@9
    move-result v1

    #@a
    .line 435
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object p2

    #@e
    .line 436
    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 437
    return-object v3

    #@15
    .line 439
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@17
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 441
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
    .line 443
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 441
    return-object v2

    #@2b
    .line 442
    :catchall_0
    move-exception v2

    #@2c
    .line 443
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2e
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@31
    .line 442
    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    #@0
    .prologue
    .line 428
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
    .line 332
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 333
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object p2

    #@a
    .line 334
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 335
    return v2

    #@12
    .line 337
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 339
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
    .line 341
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@20
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 339
    return v1

    #@24
    .line 340
    :catchall_0
    move-exception v1

    #@25
    .line 341
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 340
    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 202
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
    .line 406
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 407
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p1

    #@9
    .line 408
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
    .line 248
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 249
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p1

    #@9
    .line 250
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
    .line 255
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 256
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@8
    move-result v1

    #@9
    .line 257
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@c
    move-result-object p2

    #@d
    .line 258
    const/4 v2, 0x0

    #@e
    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 259
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@16
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 261
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1d
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 263
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
    .line 265
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2d
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@30
    .line 263
    return-object v2

    #@31
    .line 264
    :catchall_0
    move-exception v2

    #@32
    .line 265
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@34
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@37
    .line 264
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
    .line 381
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 382
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 383
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@d
    .line 384
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@f
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 386
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@15
    .line 387
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@18
    move-result-object v2

    #@19
    .line 386
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .line 389
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1f
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@22
    .line 386
    return-object v1

    #@23
    .line 388
    :catchall_0
    move-exception v1

    #@24
    .line 389
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@26
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@29
    .line 388
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
    .line 365
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 366
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 367
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 368
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@e
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 370
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    .line 371
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@17
    move-result-object v2

    #@18
    .line 370
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v1

    #@1c
    .line 373
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1e
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@21
    .line 370
    return-object v1

    #@22
    .line 372
    :catchall_0
    move-exception v1

    #@23
    .line 373
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@25
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@28
    .line 372
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
    .line 414
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 415
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 416
    const-string/jumbo v1, "r"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@10
    .line 417
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@12
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 419
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@18
    .line 420
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@1b
    move-result-object v2

    #@1c
    .line 419
    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v1

    #@20
    .line 422
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@22
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@25
    .line 419
    return-object v1

    #@26
    .line 421
    :catchall_0
    move-exception v1

    #@27
    .line 422
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@29
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    .line 421
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
    .line 209
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@5
    .line 210
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@8
    move-result-object p2

    #@9
    .line 211
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 218
    if-eqz p3, :cond_0

    #@12
    .line 219
    new-instance v0, Landroid/database/MatrixCursor;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@18
    return-object v0

    #@19
    .line 226
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@1b
    .line 227
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
    .line 226
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@27
    move-result-object v7

    #@28
    .line 229
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    #@2a
    .line 230
    const/4 v0, 0x0

    #@2b
    return-object v0

    #@2c
    .line 234
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
    .line 236
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@39
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    .line 238
    .local v8, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3f
    .line 240
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
    .line 238
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result-object v0

    #@4c
    .line 242
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@4e
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@51
    .line 238
    return-object v0

    #@52
    .line 241
    :catchall_0
    move-exception v0

    #@53
    .line 242
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@55
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@58
    .line 241
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
    .line 449
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 450
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    #@9
    move-result v1

    #@a
    .line 451
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object p2

    #@e
    .line 452
    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 453
    return-object v3

    #@15
    .line 455
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@17
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 457
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
    .line 459
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 457
    return-object v2

    #@2b
    .line 458
    :catchall_0
    move-exception v2

    #@2c
    .line 459
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@2e
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@31
    .line 458
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
    .line 348
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@3
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    #@6
    .line 349
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object p2

    #@a
    .line 350
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 351
    return v2

    #@12
    .line 353
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@14
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 355
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
    .line 357
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@20
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@23
    .line 355
    return v1

    #@24
    .line 356
    :catchall_0
    move-exception v1

    #@25
    .line 357
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #@27
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    .line 356
    throw v1
.end method
