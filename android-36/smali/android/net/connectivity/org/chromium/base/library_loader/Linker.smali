.class Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
.super Ljava/lang/Object;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/library_loader/Linker$State;,
        Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;,
        Landroid/net/connectivity/org/chromium/base/library_loader/Linker$PreferAddress;,
        Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;,
        Landroid/net/connectivity/org/chromium/base/library_loader/Linker$RelroSharingMode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BASE_LOAD_ADDRESS:Ljava/lang/String; = "org.chromium.base.android.linker.base_load_address"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LINKER_JNI_LIBRARY:Ljava/lang/String; = "chromium_android_linker"

.field static final blacklist SHARED_RELROS:Ljava/lang/String; = "org.chromium.base.android.linker.shared_relros"

.field private static final blacklist TAG:Ljava/lang/String; = "Linker"

.field private static blacklist sLinkerForAssert:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

.field private static blacklist sNativesInstance:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;


# instance fields
.field protected blacklist mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

.field private final blacklist mLock:Ljava/lang/Object;

.field blacklist mRelroProducer:Z

.field private blacklist mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 71
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRelroProducer:Z

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    .line 161
    nop

    .line 162
    sput-object p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->sLinkerForAssert:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    .line 163
    return-void
.end method

.method private blacklist atomicReplaceRelroLocked(Z)V
    .registers 6
    .param p1, "relroAvailableImmediately"    # Z

    .line 570
    nop

    .line 571
    nop

    .line 572
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget v0, v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-void

    .line 580
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    if-nez v0, :cond_f

    return-void

    .line 581
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v1, v1, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->useRelros(JLandroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z

    .line 585
    const-string v0, "ChromiumAndroidLinker.RelroAvailableImmediately"

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 587
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->getRelroSharingResult()I

    move-result v0

    .line 588
    .local v0, "status":I
    nop

    .line 589
    const-string v1, "ChromiumAndroidLinker.RelroSharingStatus2"

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 591
    return-void
.end method

.method private blacklist attemptLoadLibraryLocked(Ljava/lang/String;I)V
    .registers 4
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "relroMode"    # I

    .line 350
    nop

    .line 351
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->loadLibraryImplLocked(Ljava/lang/String;I)V

    .line 359
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->shouldAtomicallyReplaceRelroAfterLoad()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->atomicReplaceRelroLocked(Z)V

    .line 362
    :cond_e
    return-void
.end method

.method private blacklist chooseAndReserveMemoryRange(ZIJ)V
    .registers 10
    .param p1, "asRelroProducer"    # Z
    .param p2, "preference"    # I
    .param p3, "addressHint"    # J

    .line 259
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 260
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRelroProducer:Z

    .line 261
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->loadLinkerJniLibraryLocked()V

    .line 262
    const-wide/16 v0, 0x0

    packed-switch p2, :pswitch_data_50

    goto :goto_4f

    .line 265
    :pswitch_12
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {v2, v3}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->findRegionReservedByWebViewZygote(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v2

    .line 266
    .local v2, "reservationFound":Z
    if-eqz v2, :cond_2c

    .line 267
    nop

    .line 268
    cmp-long v3, p3, v0

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v3, v3, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    cmp-long v3, p3, v3

    if-nez v3, :cond_2c

    .line 278
    :cond_2b
    return-void

    .line 283
    .end local v2    # "reservationFound":Z
    :cond_2c
    :pswitch_2c
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iput-wide p3, v2, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    .line 284
    cmp-long v2, p3, v0

    if-eqz v2, :cond_46

    .line 285
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {v2, v3}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->reserveMemoryForLibrary(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V

    .line 286
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v2, v2, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_46

    return-void

    .line 290
    :cond_46
    :pswitch_46
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->findMemoryRegionAtRandomAddress(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V

    .line 292
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_12
        :pswitch_2c
        :pswitch_46
    .end packed-switch
.end method

.method private blacklist ensureInitializedImplicitlyAsLastResort()V
    .registers 5

    .line 617
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitialized(ZIJ)V

    .line 619
    return-void
.end method

.method static blacklist extractLoadAddressFromBundle(Landroid/os/Bundle;)J
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 299
    const-string v0, "org.chromium.base.android.linker.base_load_address"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;
    .registers 1

    .line 808
    sget-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->sNativesInstance:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->sNativesInstance:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    return-object v0

    .line 809
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;-><init>()V

    return-object v0
.end method

.method private blacklist loadAndProduceSharedRelro(Ljava/lang/String;)V
    .registers 6
    .param p1, "libFilePath"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iput-object p1, v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLibFilePath:Ljava/lang/String;

    .line 489
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->loadLibrary(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    goto :goto_1e

    .line 498
    :cond_13
    const-string v0, "Linker"

    const-string v3, "Unable to load with Linker, using the system linker instead"

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iput v1, v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 502
    :goto_1e
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget v0, v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    if-eq v0, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    const-string v0, "ChromiumAndroidLinker.RelroProvidedSuccessfully"

    invoke-static {v0, v2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 504
    return-void
.end method

.method private blacklist loadLibraryImplLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "relroMode"    # I

    .line 523
    const-string v0, "monochrome"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 524
    :cond_9
    const-string v0, "loadLibraryImplLocked: %s, relroMode=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Linker"

    invoke-static {v2, v0, p1, v1}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    :goto_14
    nop

    .line 529
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "libFilePath":Ljava/lang/String;
    const/4 v1, 0x3

    if-nez p2, :cond_1f

    .line 532
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    goto :goto_2f

    .line 533
    :cond_1f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_29

    .line 534
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->loadAndProduceSharedRelro(Ljava/lang/String;)V

    .line 537
    const/4 v1, 0x2

    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    goto :goto_2f

    .line 539
    :cond_29
    nop

    .line 540
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->loadWithoutProducingRelro(Ljava/lang/String;)V

    .line 542
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    .line 553
    :goto_2f
    :try_start_2f
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2f .. :try_end_32} :catch_33

    .line 556
    goto :goto_39

    .line 554
    :catch_33
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Failed at System.loadLibrary()"

    invoke-direct {p0, v2, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->resetAndThrow(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)V

    .line 557
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_39
    return-void
.end method

.method private blacklist loadWithoutProducingRelro(Ljava/lang/String;)V
    .registers 5
    .param p1, "libFilePath"    # Ljava/lang/String;

    .line 476
    nop

    .line 477
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->getLinkerJni()Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 478
    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;->loadLibrary(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 479
    const-string v0, "Unable to load library: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->resetAndThrow(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)V

    .line 481
    :cond_1c
    nop

    .line 482
    return-void
.end method

.method private blacklist preferAddressToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "a"    # I

    .line 174
    packed-switch p1, :pswitch_data_12

    .line 182
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_8
    const-string v0, "RESERVE_RANDOM"

    return-object v0

    .line 178
    :pswitch_b
    const-string v0, "RESERVE_HINT"

    return-object v0

    .line 176
    :pswitch_e
    const-string v0, "FIND_RESERVED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist resetAndThrow(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/UnsatisfiedLinkError;

    .line 623
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    .line 624
    const-string v0, "Linker"

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    if-eqz p2, :cond_12

    .line 627
    invoke-virtual {v0, p2}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 629
    :cond_12
    throw v0
.end method

.method static blacklist setLinkerNativesForTesting(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;)V
    .registers 2
    .param p0, "instance"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    .line 802
    sput-object p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->sNativesInstance:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;

    .line 803
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->sLinkerForAssert:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    .line 804
    return-void
.end method

.method private blacklist shouldAtomicallyReplaceRelroAfterLoad()Z
    .registers 7

    .line 324
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    .line 336
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v2, v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    .line 338
    :cond_16
    return v1
.end method


# virtual methods
.method final blacklist ensureInitialized(ZIJ)V
    .registers 7
    .param p1, "asRelroProducer"    # Z
    .param p2, "preference"    # I
    .param p3, "addressHint"    # J

    .line 243
    nop

    .line 245
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_4
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    if-eqz v1, :cond_a

    monitor-exit v0

    return-void

    .line 247
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->chooseAndReserveMemoryRange(ZIJ)V

    .line 251
    const/4 v1, 0x1

    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method blacklist isNonZeroLoadAddress(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
    .registers 6
    .param p1, "libInfo"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 189
    if-eqz p1, :cond_c

    iget-wide v0, p1, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method final blacklist loadLibrary(Ljava/lang/String;)V
    .registers 7
    .param p1, "library"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->ensureInitializedImplicitlyAsLastResort()V

    .line 382
    nop

    .line 384
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRelroProducer:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x2

    .line 382
    :goto_e
    invoke-direct {p0, p1, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->attemptLoadLibraryLocked(Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_11} :catch_14
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    .line 395
    goto :goto_27

    .line 396
    :catchall_12
    move-exception v1

    goto :goto_33

    .line 385
    :catch_14
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_15
    const-string v2, "Linker"

    const-string v3, "Failed to load native library with shared RELRO, retrying without"

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 389
    :try_start_1c
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    .line 390
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->attemptLoadLibraryLocked(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1c .. :try_end_26} :catch_29
    .catchall {:try_start_1c .. :try_end_26} :catchall_12

    .line 394
    nop

    .line 396
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_27
    :try_start_27
    monitor-exit v0

    .line 397
    return-void

    .line 391
    .restart local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_29
    move-exception v2

    .line 392
    .local v2, "e2":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "Linker"

    const-string v4, "Failed to load native library without RELRO sharing"

    invoke-static {v3, v4}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    nop

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
    .end local p1    # "library":Ljava/lang/String;
    throw v2

    .line 396
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v2    # "e2":Ljava/lang/UnsatisfiedLinkError;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
    .restart local p1    # "library":Ljava/lang/String;
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_12

    throw v1
.end method

.method blacklist loadLinkerJniLibraryLocked()V
    .registers 2

    .line 598
    nop

    .line 600
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->setEnvForNative()V

    .line 606
    const-string v0, "chromium_android_linker"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method blacklist pretendLibraryIsLoadedForTesting()V
    .registers 3

    .line 151
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method blacklist putLoadAddressToBundle(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 309
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    nop

    .line 311
    :try_start_4
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v1, v1, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    .line 312
    const-string v1, "org.chromium.base.android.linker.base_load_address"

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget-wide v2, v2, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    :cond_1b
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    throw v1

    :catchall_1f
    move-exception v1

    goto :goto_1d
.end method

.method blacklist putSharedRelrosToBundle(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "relros":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_4
    iget v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 408
    nop

    .line 409
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLocalLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 411
    :cond_11
    const-string v2, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method blacklist takeSharedRelrosFromBundle(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 432
    const-string v0, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 433
    .local v0, "relros":Landroid/os/Bundle;
    if-nez v0, :cond_9

    return-void

    .line 434
    :cond_9
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->fromBundle(Landroid/os/Bundle;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    move-result-object v1

    .line 435
    .local v1, "newRemote":Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;
    if-nez v1, :cond_10

    return-void

    .line 436
    :cond_10
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 437
    :try_start_13
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    if-eqz v3, :cond_20

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    iget v3, v3, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 446
    monitor-exit v2

    return-void

    .line 448
    :cond_20
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mRemoteLibInfo:Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 449
    iget v3, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b

    .line 450
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->atomicReplaceRelroLocked(Z)V

    .line 452
    :cond_2b
    monitor-exit v2

    .line 453
    return-void

    .line 452
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    throw v3
.end method
