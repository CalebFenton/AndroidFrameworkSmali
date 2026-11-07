.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r AID_APP_END:I = 0x4e1f

.field public static final greylist-max-r AID_APP_START:I = 0x2710

.field public static final greylist-max-r AID_CACHE_GID_START:I = 0x4e20

.field public static final greylist-max-r AID_ROOT:I = 0x0

.field public static final greylist-max-r AID_SHARED_GID_START:I = 0xc350

.field public static final whitelist ALL:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist CACHED_USER_HANDLES:[Landroid/os/UserHandle;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CURRENT:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final greylist-max-r ERR_GID:I = -0x1

.field public static final blacklist MAX_EXTRA_USER_HANDLE_CACHE_SIZE:I = 0x20

.field public static final blacklist MAX_SECONDARY_USER_ID:I = 0x53e1

.field public static final blacklist MIN_SECONDARY_USER_ID:I = 0xa

.field public static final greylist MU_ENABLED:Z = true

.field private static final blacklist NULL:Landroid/os/UserHandle;

.field private static final blacklist NUM_CACHED_USERS:I = 0x8

.field public static final greylist OWNER:Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist PER_USER_RANGE:I = 0x186a0

.field public static final whitelist SYSTEM:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist USER_ALL:I = -0x1

.field public static final greylist USER_CURRENT:I = -0x2

.field public static final greylist USER_CURRENT_OR_SELF:I = -0x3

.field public static final greylist USER_NULL:I = -0x2710

.field public static final greylist USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r USER_SERIAL_SYSTEM:I

.field public static final greylist USER_SYSTEM:I

.field public static final blacklist sExtraUserHandleCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 56
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 65
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 77
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 84
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, -0x2710

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    .line 102
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 115
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v1, v1

    if-ge v0, v1, :cond_51

    .line 172
    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    new-instance v2, Landroid/os/UserHandle;

    add-int/lit8 v3, v0, 0xa

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    aput-object v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 664
    .end local v0    # "i":I
    :cond_51
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    .line 593
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    .line 689
    return-void
.end method

.method public static whitelist formatUid(I)Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-p formatUid(Ljava/io/PrintWriter;I)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I

    .line 515
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 516
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_51

    .line 518
    :cond_8
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 519
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 520
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 521
    .local v1, "appId":I
    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 522
    const v0, 0x182b8

    if-le v1, v0, :cond_2e

    .line 523
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 524
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_51

    .line 526
    :cond_2e
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    const v0, 0x15f90

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_51

    .line 529
    :cond_3c
    if-lt v1, v0, :cond_49

    .line 530
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 531
    add-int/lit16 v0, v1, -0x2710

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_51

    .line 533
    :cond_49
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 534
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 537
    .end local v1    # "appId":I
    :goto_51
    return-void
.end method

.method public static greylist-max-o formatUid(Ljava/lang/StringBuilder;I)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "uid"    # I

    .line 468
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 469
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 471
    :cond_8
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 474
    .local v1, "appId":I
    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 475
    const v0, 0x182b8

    if-le v1, v0, :cond_2e

    .line 476
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 479
    :cond_2e
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const v0, 0x15f90

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 482
    :cond_3c
    if-lt v1, v0, :cond_49

    .line 483
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    add-int/lit16 v0, v1, -0x2710

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 486
    :cond_49
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .end local v1    # "appId":I
    :goto_51
    return-void
.end method

.method public static blacklist fromUserHandles(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)[I"
        }
    .end annotation

    .line 308
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 309
    .local v0, "userIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 310
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    aput v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 312
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method

.method public static whitelist getAppId(I)I
    .registers 2
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 402
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static greylist getAppIdFromSharedAppGid(I)I
    .registers 3
    .param p0, "gid"    # I

    .line 440
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    const v1, 0xc350

    sub-int/2addr v0, v1

    .line 442
    .local v0, "appId":I
    if-ltz v0, :cond_10

    if-lt v0, v1, :cond_f

    goto :goto_10

    .line 445
    :cond_f
    return v0

    .line 443
    :cond_10
    :goto_10
    const/4 v1, -0x1

    return v1
.end method

.method public static greylist-max-o getCacheAppGid(I)I
    .registers 3
    .param p0, "uid"    # I

    .line 450
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getCacheAppGid(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getCacheAppGid(II)I
    .registers 3
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 455
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_11

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_11

    .line 456
    add-int/lit16 v0, p1, -0x2710

    add-int/lit16 v0, v0, 0x4e20

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    .line 458
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getCallingAppId()I
    .registers 1

    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static greylist getCallingUserId()I
    .registers 1

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSharedAppGid(I)I
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 420
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getSharedAppGid(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getSharedAppGid(II)I
    .registers 4
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 425
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_f

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_f

    .line 426
    add-int/lit16 v0, p1, -0x2710

    const v1, 0xc350

    add-int/2addr v0, v1

    return v0

    .line 427
    :cond_f
    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    .line 428
    return p1

    .line 430
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist getUid(II)I
    .registers 4
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 377
    if-ltz p1, :cond_b

    .line 378
    const v0, 0x186a0

    mul-int v1, p0, v0

    rem-int v0, p1, v0

    add-int/2addr v1, v0

    return v1

    .line 380
    :cond_b
    return p1
.end method

.method public static greylist-max-o getUserGid(I)I
    .registers 2
    .param p0, "userId"    # I

    .line 410
    const/16 v0, 0x270d

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public static whitelist getUserHandleForUid(I)Landroid/os/UserHandle;
    .registers 2
    .param p0, "uid"    # I

    .line 277
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserHandleFromExtraCache(I)Landroid/os/UserHandle;
    .registers 6
    .param p0, "userId"    # I

    .line 355
    sget-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 356
    :try_start_3
    sget-object v1, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 357
    .local v1, "extraCached":Landroid/os/UserHandle;
    if-eqz v1, :cond_f

    .line 358
    monitor-exit v0

    return-object v1

    .line 360
    :cond_f
    sget-object v2, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_27

    .line 361
    sget-object v2, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 362
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 361
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 364
    :cond_27
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 365
    .local v2, "newHandle":Landroid/os/UserHandle;
    sget-object v3, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    monitor-exit v0

    return-object v2

    .line 367
    .end local v1    # "extraCached":Landroid/os/UserHandle;
    .end local v2    # "newHandle":Landroid/os/UserHandle;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public static greylist getUserId(I)I
    .registers 2
    .param p0, "uid"    # I

    .line 288
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static greylist isApp(I)Z
    .registers 4
    .param p0, "uid"    # I

    .line 242
    const/4 v0, 0x0

    if-lez p0, :cond_11

    .line 243
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 244
    .local v1, "appId":I
    const/16 v2, 0x2710

    if-lt v1, v2, :cond_10

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 246
    .end local v1    # "appId":I
    :cond_11
    return v0
.end method

.method public static greylist-max-o isCore(I)Z
    .registers 4
    .param p0, "uid"    # I

    .line 255
    const/4 v0, 0x0

    if-ltz p0, :cond_d

    .line 256
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 257
    .local v1, "appId":I
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 259
    .end local v1    # "appId":I
    :cond_d
    return v0
.end method

.method public static greylist isIsolated(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 227
    if-lez p0, :cond_7

    .line 228
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0

    .line 230
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSameApp(II)Z
    .registers 4
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 218
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o isSameUser(II)Z
    .registers 4
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 205
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isSharedAppGid(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 268
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static whitelist myUserId()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 563
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist of(I)Landroid/os/UserHandle;
    .registers 3
    .param p0, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 328
    if-nez p0, :cond_5

    .line 329
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0

    .line 332
    :cond_5
    packed-switch p0, :pswitch_data_2e

    .line 342
    const/16 v0, 0xa

    if-lt p0, v0, :cond_22

    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p0, v1, :cond_22

    .line 344
    sget-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    add-int/lit8 v1, p0, -0xa

    aget-object v0, v0, v1

    return-object v0

    .line 334
    :pswitch_19
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0

    .line 337
    :pswitch_1c
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0

    .line 340
    :pswitch_1f
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-object v0

    .line 346
    :cond_22
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_29

    .line 347
    sget-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    return-object v0

    .line 349
    :cond_29
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleFromExtraCache(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    :pswitch_data_2e
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method public static greylist-max-o parseUserArg(Ljava/lang/String;)I
    .registers 5
    .param p0, "arg"    # Ljava/lang/String;

    .line 542
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 543
    const/4 v0, -0x1

    .local v0, "userId":I
    goto :goto_3b

    .line 544
    .end local v0    # "userId":I
    :cond_a
    const-string v0, "current"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_3a

    .line 548
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_20

    .line 551
    .restart local v0    # "userId":I
    goto :goto_3b

    .line 549
    .end local v0    # "userId":I
    :catch_20
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad user number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3a
    :goto_3a
    const/4 v0, -0x2

    .line 553
    .local v0, "userId":I
    :goto_3b
    return v0
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 660
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .local v0, "h":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_e

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public static blacklist toUserHandles([I)Ljava/util/List;
    .registers 4
    .param p0, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 320
    aget v2, p0, v1

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 322
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static whitelist writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "h"    # Landroid/os/UserHandle;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 641
    if-eqz p0, :cond_7

    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 644
    :cond_7
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    :goto_c
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 611
    instance-of v0, p1, Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 612
    move-object v0, p1

    check-cast v0, Landroid/os/UserHandle;

    .line 613
    .local v0, "other":Landroid/os/UserHandle;
    iget v2, p0, Landroid/os/UserHandle;->mHandle:I

    iget v3, v0, Landroid/os/UserHandle;->mHandle:I

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 615
    .end local v0    # "other":Landroid/os/UserHandle;
    :cond_10
    return v1
.end method

.method public whitelist getIdentifier()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 601
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist getUid(I)I
    .registers 3
    .param p1, "appId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 393
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 620
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist isOwner()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSystem()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 586
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 628
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    return-void
.end method
