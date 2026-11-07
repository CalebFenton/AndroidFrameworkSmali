.class public Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiProcessMediator"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist LINKER_HISTOGRAM_PREFIX:Ljava/lang/String; = "ChromiumAndroidLinker."


# instance fields
.field private volatile blacklist mCreatedIn:I

.field private volatile blacklist mInitDone:Z

.field private blacklist mLoadAddress:J

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrecordLoadTimeHistogram(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->recordLoadTimeHistogram(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    const-class v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    return-void
.end method

.method private blacklist creationAsString()Ljava/lang/String;
    .registers 2

    .line 380
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    packed-switch v0, :pswitch_data_12

    .line 388
    goto :goto_f

    .line 386
    :pswitch_6
    const-string v0, "Child"

    return-object v0

    .line 384
    :pswitch_9
    const-string v0, "Zygote"

    return-object v0

    .line 382
    :pswitch_c
    const-string v0, "Browser"

    return-object v0

    .line 389
    :goto_f
    const-string v0, ""

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist getLoadAddress()J
    .registers 4

    .line 216
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 217
    :try_start_7
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mLoadAddress:J

    monitor-exit v0

    return-wide v1

    .line 218
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist recordLoadTimeHistogram(J)V
    .registers 5
    .param p1, "loadTimeMs"    # J

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChromiumAndroidLinker."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->creationAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LoadTime2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    .line 398
    return-void
.end method


# virtual methods
.method public blacklist ensureInitializedInMainProcess()V
    .registers 7

    .line 226
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    if-eqz v0, :cond_5

    return-void

    .line 227
    :cond_5
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 228
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    .line 249
    .local v0, "attemptProduceRelro":Z
    if-eqz v0, :cond_16

    .line 250
    const/4 v2, 0x2

    goto :goto_17

    .line 251
    :cond_16
    move v2, v1

    :goto_17
    nop

    .line 252
    .local v2, "preferAddress":I
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v3

    .line 253
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    .line 256
    .end local v0    # "attemptProduceRelro":Z
    .end local v2    # "preferAddress":I
    :cond_23
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    .line 258
    return-void
.end method

.method public blacklist initInAppZygote()V
    .registers 6

    .line 277
    nop

    .line 278
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 279
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 280
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    goto :goto_22

    .line 286
    :cond_1d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$fputmFallbackToSystemLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;Z)V

    .line 288
    :goto_22
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    .line 290
    return-void
.end method

.method public blacklist initInChildProcess()V
    .registers 6

    .line 297
    nop

    .line 298
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 299
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    .line 300
    return-void

    .line 302
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mainProcessIntendsToProvideRelroFd()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 306
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 310
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->getLoadAddress()J

    move-result-wide v3

    .line 307
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    goto :goto_4a

    .line 311
    :cond_22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isLoadedByZygote()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_4a

    .line 319
    :cond_2b
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    if-ne v0, v1, :cond_3d

    .line 323
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 327
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->getLoadAddress()J

    move-result-wide v3

    .line 324
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    goto :goto_4a

    .line 346
    :cond_3d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 350
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->getLoadAddress()J

    move-result-wide v3

    .line 347
    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    .line 352
    :goto_4a
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    if-eq v0, v1, :cond_51

    const/4 v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mCreatedIn:I

    .line 353
    :cond_51
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mInitDone:Z

    .line 354
    return-void
.end method

.method public blacklist putLoadAddressToBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 266
    nop

    .line 267
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->putLoadAddressToBundle(Landroid/os/Bundle;)V

    .line 270
    :cond_12
    return-void
.end method

.method public blacklist putSharedRelrosToBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 373
    nop

    .line 374
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 375
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->putSharedRelrosToBundle(Landroid/os/Bundle;)V

    .line 377
    :cond_12
    return-void
.end method

.method public blacklist recordLoadThreadTimeHistogram(J)V
    .registers 5
    .param p1, "threadLoadTimeMs"    # J

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChromiumAndroidLinker."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->creationAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ThreadLoadTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    .line 404
    return-void
.end method

.method public blacklist takeLoadAddressFromBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 211
    nop

    .line 212
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->extractLoadAddressFromBundle(Landroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->mLoadAddress:J

    .line 213
    return-void
.end method

.method public blacklist takeSharedRelrosFromBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 362
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 363
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->takeSharedRelrosFromBundle(Landroid/os/Bundle;)V

    .line 365
    :cond_11
    return-void
.end method
