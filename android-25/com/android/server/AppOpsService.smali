.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .locals 0
    .param p1, "code"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    #@3
    .line 93
    new-instance v0, Lcom/android/server/AppOpsService$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    #@8
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@a
    .line 109
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@11
    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@18
    .line 169
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    .line 168
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@1f
    .line 171
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    .line 170
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@26
    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    #@28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2b
    .line 172
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@2d
    .line 175
    new-instance v0, Landroid/util/SparseArray;

    #@2f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@32
    .line 174
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@34
    .line 198
    new-instance v0, Landroid/util/ArrayMap;

    #@36
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@3b
    .line 240
    new-instance v0, Landroid/util/AtomicFile;

    #@3d
    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@40
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@42
    .line 241
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@44
    .line 242
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    #@47
    .line 239
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 649
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p4, :cond_0

    #@2
    .line 650
    return-object p0

    #@3
    .line 652
    :cond_0
    if-nez p0, :cond_1

    #@5
    .line 653
    new-instance p0, Ljava/util/HashMap;

    #@7
    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 655
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_1
    const/4 v1, 0x0

    #@b
    .line 656
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v7

    #@10
    if-ge v2, v7, :cond_6

    #@12
    .line 657
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    #@18
    .line 658
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Ljava/util/ArrayList;

    #@1e
    .line 659
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v6, :cond_4

    #@20
    .line 660
    new-instance v6, Ljava/util/ArrayList;

    #@22
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 661
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 672
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    #@2a
    .line 673
    new-instance v7, Lcom/android/server/AppOpsService$ChangeRec;

    #@2c
    invoke-direct {v7, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    #@2f
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 656
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 663
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v5

    #@39
    .line 664
    .local v5, "reportCount":I
    const/4 v3, 0x0

    #@3a
    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    #@3c
    .line 665
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Lcom/android/server/AppOpsService$ChangeRec;

    #@42
    .line 666
    .local v4, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    #@44
    if-ne v7, p1, :cond_5

    #@46
    iget-object v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    #@48
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_5

    #@4e
    .line 667
    const/4 v1, 0x1

    #@4f
    .line 668
    goto :goto_1

    #@50
    .line 664
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@52
    goto :goto_2

    #@53
    .line 676
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_6
    return-object p0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 931
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/SparseArray;

    #@8
    .line 932
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    #@a
    .line 933
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    #@10
    .line 934
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    #@12
    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@14
    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 938
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 935
    .restart local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    #@1e
    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 2285
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 2286
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " must by called by the system"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 2283
    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 375
    const/4 v12, 0x0

    #@1
    .line 376
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    #@3
    .line 377
    new-instance v12, Ljava/util/ArrayList;

    #@5
    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 378
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    #@9
    .local v11, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@c
    move-result v1

    #@d
    if-ge v11, v1, :cond_3

    #@f
    .line 379
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/AppOpsService$Op;

    #@15
    .line 380
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    #@17
    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    #@19
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    #@1b
    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@1d
    .line 381
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@1f
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@21
    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@23
    .line 382
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    #@25
    .line 380
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    #@28
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 378
    add-int/lit8 v11, v11, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 385
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_0
    const/4 v11, 0x0

    #@2f
    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "j":I
    :goto_1
    array-length v1, p2

    #@30
    if-ge v11, v1, :cond_3

    #@32
    .line 386
    aget v1, p2, v11

    #@34
    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lcom/android/server/AppOpsService$Op;

    #@3a
    .line 387
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_2

    #@3c
    .line 388
    if-nez v12, :cond_1

    #@3e
    .line 389
    new-instance v12, Ljava/util/ArrayList;

    #@40
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@43
    .line 391
    :cond_1
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    #@45
    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    #@47
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    #@49
    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@4b
    .line 392
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@4d
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@4f
    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@51
    .line 393
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    #@53
    .line 391
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    #@56
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 385
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 397
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v12
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1795
    const-string/jumbo v0, "AppOps service (appops) commands:"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1796
    const-string/jumbo v0, "  help"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1797
    const-string/jumbo v0, "    Print this help text."

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1798
    const-string/jumbo v0, "  set [--user <USER_ID>] <PACKAGE> <OP> <MODE>"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 1799
    const-string/jumbo v0, "    Set the mode for a particular application and operation."

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 1800
    const-string/jumbo v0, "  get [--user <USER_ID>] <PACKAGE> [<OP>]"

    #@21
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 1801
    const-string/jumbo v0, "    Return the mode for a particular application and optional operation."

    #@27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1802
    const-string/jumbo v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 1803
    const-string/jumbo v0, "    Print all packages that currently have the given op in the given mode."

    #@33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 1804
    const-string/jumbo v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    #@39
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 1805
    const-string/jumbo v0, "    Reset the given application or all applications to default modes."

    #@3f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 1806
    const-string/jumbo v0, "  write-settings"

    #@45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 1807
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    #@4b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 1808
    const-string/jumbo v0, "  read-settings"

    #@51
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1809
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    #@57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 1810
    const-string/jumbo v0, "  options:"

    #@5d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 1811
    const-string/jumbo v0, "    <PACKAGE> an Android package name."

    #@63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 1812
    const-string/jumbo v0, "    <OP>      an AppOps operation."

    #@69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 1813
    const-string/jumbo v0, "    <MODE>    one of allow, ignore, deny, or default"

    #@6f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 1814
    const-string/jumbo v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    #@75
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 1815
    const-string/jumbo v0, "              specified, the current user is assumed."

    #@7b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 1794
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 2007
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2008
    const-string/jumbo v0, "  none"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 2006
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1289
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@4
    move-result-object v0

    #@5
    .line 1290
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    #@7
    .line 1291
    return-object v1

    #@8
    .line 1293
    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 3
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1297
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/server/AppOpsService$Op;

    #@7
    .line 1298
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    #@9
    .line 1299
    if-nez p3, :cond_0

    #@b
    .line 1300
    return-object v1

    #@c
    .line 1302
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    #@e
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v1, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@10
    iget v1, v1, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@12
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@14
    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    #@17
    .line 1303
    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    #@1a
    .line 1305
    :cond_1
    if-eqz p3, :cond_2

    #@1c
    .line 1306
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    #@1f
    .line 1308
    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    #@0
    .prologue
    .line 1205
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@3
    move-result-object v8

    #@4
    .line 1206
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v8, :cond_0

    #@6
    .line 1207
    const/4 v9, 0x0

    #@7
    return-object v9

    #@8
    .line 1210
    :cond_0
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@a
    if-nez v9, :cond_2

    #@c
    .line 1211
    if-nez p3, :cond_1

    #@e
    .line 1212
    const/4 v9, 0x0

    #@f
    return-object v9

    #@10
    .line 1214
    :cond_1
    new-instance v9, Landroid/util/ArrayMap;

    #@12
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    #@15
    iput-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@17
    .line 1217
    :cond_2
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v9, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    #@1f
    .line 1218
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v6, :cond_b

    #@21
    .line 1219
    if-nez p3, :cond_3

    #@23
    .line 1220
    const/4 v9, 0x0

    #@24
    return-object v9

    #@25
    .line 1222
    :cond_3
    const/4 v3, 0x0

    #@26
    .line 1225
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_a

    #@28
    .line 1226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v4

    #@2c
    .line 1228
    .local v4, "ident":J
    const/4 v7, -0x1

    #@2d
    .line 1230
    .local v7, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@30
    move-result-object v9

    #@31
    .line 1233
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@34
    move-result v10

    #@35
    .line 1232
    const/high16 v11, 0x10000000

    #@37
    .line 1230
    invoke-interface {v9, p2, v11, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@3a
    move-result-object v0

    #@3b
    .line 1234
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    #@3d
    .line 1235
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3f
    .line 1236
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    and-int/lit8 v9, v9, 0x8

    #@43
    if-eqz v9, :cond_5

    #@45
    const/4 v3, 0x1

    #@46
    .line 1253
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    if-eq v7, p1, :cond_9

    #@48
    .line 1256
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@4a
    const-string/jumbo v9, "here"

    #@4d
    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    .line 1257
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@53
    .line 1258
    const-string/jumbo v9, "AppOps"

    #@56
    new-instance v10, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v11, "Bad call: specified package "

    #@5e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    .line 1259
    const-string/jumbo v11, " under uid "

    #@69
    .line 1258
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v10

    #@71
    .line 1259
    const-string/jumbo v11, " but it is really "

    #@74
    .line 1258
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v10

    #@80
    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 1260
    const/4 v9, 0x0

    #@84
    .line 1263
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@87
    .line 1260
    return-object v9

    #@88
    .line 1236
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v3, 0x0

    #@89
    goto :goto_0

    #@8a
    .line 1239
    :cond_6
    :try_start_2
    const-string/jumbo v9, "media"

    #@8d
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v9

    #@91
    if-eqz v9, :cond_7

    #@93
    .line 1240
    const/16 v7, 0x3f5

    #@95
    .line 1241
    const/4 v3, 0x0

    #@96
    goto :goto_0

    #@97
    .line 1242
    :cond_7
    const-string/jumbo v9, "audioserver"

    #@9a
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v9

    #@9e
    if-eqz v9, :cond_8

    #@a0
    .line 1243
    const/16 v7, 0x411

    #@a2
    .line 1244
    const/4 v3, 0x0

    #@a3
    goto :goto_0

    #@a4
    .line 1245
    :cond_8
    const-string/jumbo v9, "cameraserver"

    #@a7
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@aa
    move-result v9

    #@ab
    if-eqz v9, :cond_4

    #@ad
    .line 1246
    const/16 v7, 0x417

    #@af
    .line 1247
    const/4 v3, 0x0

    #@b0
    goto :goto_0

    #@b1
    .line 1250
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@b2
    .line 1251
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v9, "AppOps"

    #@b5
    const-string/jumbo v10, "Could not contact PackageManager"

    #@b8
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bb
    goto :goto_0

    #@bc
    .line 1262
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    #@bd
    .line 1263
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c0
    .line 1262
    throw v9

    #@c1
    .line 1263
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c4
    .line 1266
    .end local v4    # "ident":J
    .end local v7    # "pkgUid":I
    :cond_a
    new-instance v6, Lcom/android/server/AppOpsService$Ops;

    #@c6
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v6, p2, v8, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    #@c9
    .line 1267
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@cb
    invoke-virtual {v9, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 1269
    .end local v3    # "isPrivileged":Z
    :cond_b
    return-object v6
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 2302
    const/4 v1, 0x0

    #@1
    .line 2304
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 2308
    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    #@b
    .line 2309
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@d
    return-object v2

    #@e
    .line 2311
    :cond_0
    return-object v1

    #@f
    .line 2305
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1193
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    #@9
    .line 1194
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    #@b
    .line 1195
    if-nez p2, :cond_0

    #@d
    .line 1196
    return-object v2

    #@e
    .line 1198
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    #@10
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    #@13
    .line 1199
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 1201
    :cond_1
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1312
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@5
    move-result v4

    #@6
    .line 1313
    .local v4, "userHandle":I
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v2

    #@c
    .line 1315
    .local v2, "restrictionSetCount":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@f
    .line 1318
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    #@17
    .line 1319
    .local v3, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    .line 1320
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 1322
    monitor-enter p0

    #@24
    .line 1323
    const/4 v5, 0x1

    #@25
    :try_start_0
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@28
    move-result-object v1

    #@29
    .line 1324
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_0

    #@2b
    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    if-eqz v5, :cond_0

    #@2f
    monitor-exit p0

    #@30
    .line 1325
    return v6

    #@31
    :cond_0
    monitor-exit p0

    #@32
    .line 1329
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    return v7

    #@33
    .line 1322
    :catchall_0
    move-exception v5

    #@34
    monitor-exit p0

    #@35
    throw v5

    #@36
    .line 1315
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1332
    .end local v3    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_3
    return v6
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 923
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    .line 924
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v2

    #@8
    .line 923
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 925
    :catch_0
    move-exception v0

    #@e
    .line 926
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    #@10
    const-string/jumbo v2, "Could not talk to package manager service"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1019
    monitor-enter p0

    #@1
    .line 1020
    const/4 v6, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v1

    #@6
    .line 1021
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_0

    #@8
    .line 1024
    const/4 v6, 0x2

    #@9
    monitor-exit p0

    #@a
    return v6

    #@b
    .line 1026
    :cond_0
    const/4 v6, 0x1

    #@c
    :try_start_1
    invoke-direct {p0, v1, p1, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@f
    move-result-object v0

    #@10
    .line 1027
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 1028
    const/4 v6, 0x1

    #@17
    monitor-exit p0

    #@18
    return v6

    #@19
    .line 1030
    :cond_1
    :try_start_2
    iget v6, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@1b
    const/4 v7, -0x1

    #@1c
    if-ne v6, v7, :cond_2

    #@1e
    .line 1031
    const-string/jumbo v6, "AppOps"

    #@21
    new-instance v7, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v8, "Noting op not finished: uid "

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    const-string/jumbo v8, " pkg "

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    .line 1032
    const-string/jumbo v8, " code "

    #@3f
    .line 1031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    .line 1032
    const-string/jumbo v8, " time="

    #@4a
    .line 1031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    .line 1032
    iget-wide v8, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@50
    .line 1031
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 1032
    const-string/jumbo v8, " duration="

    #@57
    .line 1031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    .line 1032
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@5d
    .line 1031
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 1034
    :cond_2
    const/4 v6, 0x0

    #@69
    iput v6, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@6b
    .line 1035
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@6e
    move-result v2

    #@6f
    .line 1036
    .local v2, "switchCode":I
    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@71
    .line 1039
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@73
    if-eqz v6, :cond_3

    #@75
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@77
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@7a
    move-result v6

    #@7b
    if-ltz v6, :cond_3

    #@7d
    .line 1040
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@7f
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@82
    move-result v4

    #@83
    .line 1041
    .local v4, "uidMode":I
    if-eqz v4, :cond_5

    #@85
    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@88
    move-result-wide v6

    #@89
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    monitor-exit p0

    #@8c
    .line 1046
    return v4

    #@8d
    .line 1049
    .end local v4    # "uidMode":I
    :cond_3
    if-eq v2, p1, :cond_4

    #@8f
    const/4 v6, 0x1

    #@90
    :try_start_3
    invoke-direct {p0, v1, v2, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@93
    move-result-object v3

    #@94
    .line 1050
    .local v3, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    #@96
    if-eqz v6, :cond_5

    #@98
    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9b
    move-result-wide v6

    #@9c
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@9e
    .line 1055
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    monitor-exit p0

    #@a1
    return v6

    #@a2
    .line 1049
    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    move-object v3, v0

    #@a3
    .restart local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    #@a4
    .line 1060
    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a7
    move-result-wide v6

    #@a8
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@aa
    .line 1061
    const-wide/16 v6, 0x0

    #@ac
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@ae
    .line 1062
    iput p4, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@b0
    .line 1063
    iput-object p5, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b2
    .line 1064
    const/4 v6, 0x0

    #@b3
    monitor-exit p0

    #@b4
    return v6

    #@b5
    .line 1019
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    .end local v5    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v6

    #@b6
    monitor-exit p0

    #@b7
    throw v6
.end method

.method private notifyWatchersOfChange(I)V
    .locals 11
    .param p1, "code"    # I

    #@0
    .prologue
    .line 2244
    monitor-enter p0

    #@1
    .line 2245
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 2246
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v2, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 2247
    return-void

    #@d
    .line 2249
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    #@f
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .local v3, "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    monitor-exit p0

    #@13
    .line 2255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v6

    #@17
    .line 2257
    .local v6, "identity":J
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v1

    #@1b
    .line 2258
    .local v1, "callbackCount":I
    const/4 v5, 0x0

    #@1c
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    #@1e
    .line 2259
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/AppOpsService$Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .line 2261
    .local v0, "callback":Lcom/android/server/AppOpsService$Callback;
    :try_start_3
    iget-object v8, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@26
    const/4 v9, -0x1

    #@27
    const/4 v10, 0x0

    #@28
    invoke-interface {v8, p1, v9, v10}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2b
    .line 2258
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2244
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v5    # "i":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v8

    #@2f
    monitor-exit p0

    #@30
    throw v8

    #@31
    .line 2262
    .restart local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .restart local v1    # "callbackCount":I
    .restart local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    :catch_0
    move-exception v4

    #@32
    .line 2263
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v8, "AppOps"

    #@35
    const-string/jumbo v9, "Error dispatching op op change"

    #@38
    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3b
    goto :goto_1

    #@3c
    .line 2266
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    :catchall_1
    move-exception v8

    #@3d
    .line 2267
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 2266
    throw v8

    #@41
    .line 2267
    .restart local v1    # "callbackCount":I
    .restart local v5    # "i":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 2242
    return-void
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 31
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1819
    if-nez p1, :cond_0

    #@2
    .line 1820
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v25

    #@6
    return v25

    #@7
    .line 1822
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v19

    #@b
    .line 1823
    .local v19, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    #@e
    move-result-object v8

    #@f
    .line 1825
    .local v8, "err":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v25, "set"

    #@12
    move-object/from16 v0, p1

    #@14
    move-object/from16 v1, v25

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v25

    #@1a
    if-eqz v25, :cond_1

    #@1c
    .line 1827
    const/16 v25, 0x1

    #@1e
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v25

    #@22
    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    #@25
    move-result v20

    #@26
    .line 1828
    .local v20, "res":I
    if-gez v20, :cond_6

    #@28
    .line 1829
    return v20

    #@29
    .line 1825
    .end local v20    # "res":I
    :cond_1
    const-string/jumbo v25, "get"

    #@2c
    move-object/from16 v0, p1

    #@2e
    move-object/from16 v1, v25

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v25

    #@34
    if-eqz v25, :cond_2

    #@36
    .line 1846
    const/16 v25, 0x0

    #@38
    move-object/from16 v0, p0

    #@3a
    move/from16 v1, v25

    #@3c
    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    #@3f
    move-result v20

    #@40
    .line 1847
    .restart local v20    # "res":I
    if-gez v20, :cond_9

    #@42
    .line 1848
    return v20

    #@43
    .line 1825
    .end local v20    # "res":I
    :cond_2
    const-string/jumbo v25, "query-op"

    #@46
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, v25

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v25

    #@4e
    if-eqz v25, :cond_3

    #@50
    .line 1905
    const/16 v25, 0x1

    #@52
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v25

    #@56
    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    #@59
    move-result v20

    #@5a
    .line 1906
    .restart local v20    # "res":I
    if-gez v20, :cond_13

    #@5c
    .line 1907
    return v20

    #@5d
    .line 1825
    .end local v20    # "res":I
    :cond_3
    const-string/jumbo v25, "reset"

    #@60
    move-object/from16 v0, p1

    #@62
    move-object/from16 v1, v25

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v25

    #@68
    if-eqz v25, :cond_4

    #@6a
    .line 1933
    const/16 v17, 0x0

    #@6c
    .line 1934
    .local v17, "packageName":Ljava/lang/String;
    const/16 v21, -0x2

    #@6e
    .line 1935
    .end local v17    # "packageName":Ljava/lang/String;
    .local v21, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    .local v4, "argument":Ljava/lang/String;
    if-eqz v4, :cond_1c

    #@74
    .line 1936
    const-string/jumbo v25, "--user"

    #@77
    move-object/from16 v0, v25

    #@79
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v25

    #@7d
    if-eqz v25, :cond_1a

    #@7f
    .line 1937
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    #@82
    move-result-object v24

    #@83
    .line 1938
    .local v24, "userStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@86
    move-result v21

    #@87
    goto :goto_0

    #@88
    .line 1825
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .end local v24    # "userStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v25, "write-settings"

    #@8b
    move-object/from16 v0, p1

    #@8d
    move-object/from16 v1, v25

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v25

    #@93
    if-eqz v25, :cond_5

    #@95
    .line 1969
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@99
    move-object/from16 v25, v0

    #@9b
    move-object/from16 v0, v25

    #@9d
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@9f
    move-object/from16 v25, v0

    #@a1
    .line 1970
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    #@a4
    .line 1971
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a7
    move-result v27

    #@a8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@ab
    move-result v28

    #@ac
    const/16 v29, 0x0

    #@ae
    .line 1969
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@b1
    .line 1972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    move-result-wide v22

    #@b5
    .line 1974
    .local v22, "token":J
    :try_start_1
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@b9
    move-object/from16 v26, v0

    #@bb
    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@bc
    .line 1975
    :try_start_2
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@c0
    move-object/from16 v25, v0

    #@c2
    move-object/from16 v0, v25

    #@c4
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@c6
    move-object/from16 v25, v0

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@cc
    move-object/from16 v27, v0

    #@ce
    move-object/from16 v0, v27

    #@d0
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@d2
    move-object/from16 v27, v0

    #@d4
    move-object/from16 v0, v25

    #@d6
    move-object/from16 v1, v27

    #@d8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@db
    :try_start_3
    monitor-exit v26

    #@dc
    .line 1977
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@e0
    move-object/from16 v25, v0

    #@e2
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->writeState()V

    #@e5
    .line 1978
    const-string/jumbo v25, "Current settings written."

    #@e8
    move-object/from16 v0, v19

    #@ea
    move-object/from16 v1, v25

    #@ec
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ef
    .line 1980
    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f2
    .line 1982
    const/16 v25, 0x0

    #@f4
    return v25

    #@f5
    .line 1825
    .end local v22    # "token":J
    :cond_5
    const-string/jumbo v25, "read-settings"

    #@f8
    move-object/from16 v0, p1

    #@fa
    move-object/from16 v1, v25

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v25

    #@100
    if-eqz v25, :cond_20

    #@102
    .line 1985
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@106
    move-object/from16 v25, v0

    #@108
    move-object/from16 v0, v25

    #@10a
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@10c
    move-object/from16 v25, v0

    #@10e
    .line 1986
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    #@111
    .line 1987
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@114
    move-result v27

    #@115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@118
    move-result v28

    #@119
    const/16 v29, 0x0

    #@11b
    .line 1985
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@11e
    .line 1988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@121
    move-result-wide v22

    #@122
    .line 1990
    .restart local v22    # "token":J
    :try_start_5
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    #@126
    move-object/from16 v25, v0

    #@128
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->readState()V

    #@12b
    .line 1991
    const-string/jumbo v25, "Last settings read."

    #@12e
    move-object/from16 v0, v19

    #@130
    move-object/from16 v1, v25

    #@132
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@135
    .line 1993
    :try_start_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@138
    .line 1995
    const/16 v25, 0x0

    #@13a
    return v25

    #@13b
    .line 1831
    .end local v22    # "token":J
    .restart local v20    # "res":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    #@13e
    move-result-object v13

    #@13f
    .line 1832
    .local v13, "modeStr":Ljava/lang/String;
    if-nez v13, :cond_7

    #@141
    .line 1833
    const-string/jumbo v25, "Error: Mode not specified."

    #@144
    move-object/from16 v0, v25

    #@146
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@149
    .line 1834
    const/16 v25, -0x1

    #@14b
    return v25

    #@14c
    .line 1837
    :cond_7
    move-object/from16 v0, p0

    #@14e
    invoke-virtual {v0, v13, v8}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    #@151
    move-result v12

    #@152
    .line 1838
    .local v12, "mode":I
    if-gez v12, :cond_8

    #@154
    .line 1839
    const/16 v25, -0x1

    #@156
    return v25

    #@157
    .line 1842
    :cond_8
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    #@15b
    move-object/from16 v25, v0

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@161
    move/from16 v26, v0

    #@163
    move-object/from16 v0, p0

    #@165
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    #@167
    move/from16 v27, v0

    #@169
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@16d
    move-object/from16 v28, v0

    #@16f
    move-object/from16 v0, v25

    #@171
    move/from16 v1, v26

    #@173
    move/from16 v2, v27

    #@175
    move-object/from16 v3, v28

    #@177
    invoke-interface {v0, v1, v2, v3, v12}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    #@17a
    .line 1843
    const/16 v25, 0x0

    #@17c
    return v25

    #@17d
    .line 1851
    .end local v12    # "mode":I
    .end local v13    # "modeStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    #@181
    move-object/from16 v26, v0

    #@183
    .line 1852
    move-object/from16 v0, p0

    #@185
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    #@187
    move/from16 v27, v0

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    #@18d
    move-object/from16 v28, v0

    #@18f
    .line 1853
    move-object/from16 v0, p0

    #@191
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@193
    move/from16 v25, v0

    #@195
    const/16 v29, -0x1

    #@197
    move/from16 v0, v25

    #@199
    move/from16 v1, v29

    #@19b
    if-eq v0, v1, :cond_b

    #@19d
    const/16 v25, 0x1

    #@19f
    move/from16 v0, v25

    #@1a1
    new-array v0, v0, [I

    #@1a3
    move-object/from16 v25, v0

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@1a9
    move/from16 v29, v0

    #@1ab
    const/16 v30, 0x0

    #@1ad
    aput v29, v25, v30

    #@1af
    .line 1851
    :goto_1
    move-object/from16 v0, v26

    #@1b1
    move/from16 v1, v27

    #@1b3
    move-object/from16 v2, v28

    #@1b5
    move-object/from16 v3, v25

    #@1b7
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    #@1ba
    move-result-object v16

    #@1bb
    .line 1854
    .local v16, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_a

    #@1bd
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@1c0
    move-result v25

    #@1c1
    if-gtz v25, :cond_c

    #@1c3
    .line 1855
    :cond_a
    const-string/jumbo v25, "No operations."

    #@1c6
    move-object/from16 v0, v19

    #@1c8
    move-object/from16 v1, v25

    #@1ca
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cd
    .line 1856
    const/16 v25, 0x0

    #@1cf
    return v25

    #@1d0
    .line 1853
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_b
    const/16 v25, 0x0

    #@1d2
    goto :goto_1

    #@1d3
    .line 1858
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d6
    move-result-wide v14

    #@1d7
    .line 1859
    .local v14, "now":J
    const/4 v10, 0x0

    #@1d8
    .local v10, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@1db
    move-result v25

    #@1dc
    move/from16 v0, v25

    #@1de
    if-ge v10, v0, :cond_12

    #@1e0
    .line 1860
    move-object/from16 v0, v16

    #@1e2
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e5
    move-result-object v25

    #@1e6
    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    #@1e8
    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    #@1eb
    move-result-object v7

    #@1ec
    .line 1861
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    #@1ed
    .local v11, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@1f0
    move-result v25

    #@1f1
    move/from16 v0, v25

    #@1f3
    if-ge v11, v0, :cond_11

    #@1f5
    .line 1862
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f8
    move-result-object v6

    #@1f9
    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    #@1fb
    .line 1863
    .local v6, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    #@1fe
    move-result v25

    #@1ff
    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@202
    move-result-object v25

    #@203
    move-object/from16 v0, v19

    #@205
    move-object/from16 v1, v25

    #@207
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20a
    .line 1864
    const-string/jumbo v25, ": "

    #@20d
    move-object/from16 v0, v19

    #@20f
    move-object/from16 v1, v25

    #@211
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@214
    .line 1865
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@217
    move-result v25

    #@218
    packed-switch v25, :pswitch_data_0

    #@21b
    .line 1879
    const-string/jumbo v25, "mode="

    #@21e
    move-object/from16 v0, v19

    #@220
    move-object/from16 v1, v25

    #@222
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@225
    .line 1880
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@228
    move-result v25

    #@229
    move-object/from16 v0, v19

    #@22b
    move/from16 v1, v25

    #@22d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@230
    .line 1883
    :goto_4
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    #@233
    move-result-wide v26

    #@234
    const-wide/16 v28, 0x0

    #@236
    cmp-long v25, v26, v28

    #@238
    if-eqz v25, :cond_d

    #@23a
    .line 1884
    const-string/jumbo v25, "; time="

    #@23d
    move-object/from16 v0, v19

    #@23f
    move-object/from16 v1, v25

    #@241
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@244
    .line 1885
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    #@247
    move-result-wide v26

    #@248
    sub-long v26, v14, v26

    #@24a
    move-wide/from16 v0, v26

    #@24c
    move-object/from16 v2, v19

    #@24e
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@251
    .line 1886
    const-string/jumbo v25, " ago"

    #@254
    move-object/from16 v0, v19

    #@256
    move-object/from16 v1, v25

    #@258
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25b
    .line 1888
    :cond_d
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    #@25e
    move-result-wide v26

    #@25f
    const-wide/16 v28, 0x0

    #@261
    cmp-long v25, v26, v28

    #@263
    if-eqz v25, :cond_e

    #@265
    .line 1889
    const-string/jumbo v25, "; rejectTime="

    #@268
    move-object/from16 v0, v19

    #@26a
    move-object/from16 v1, v25

    #@26c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26f
    .line 1890
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    #@272
    move-result-wide v26

    #@273
    sub-long v26, v14, v26

    #@275
    move-wide/from16 v0, v26

    #@277
    move-object/from16 v2, v19

    #@279
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@27c
    .line 1891
    const-string/jumbo v25, " ago"

    #@27f
    move-object/from16 v0, v19

    #@281
    move-object/from16 v1, v25

    #@283
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@286
    .line 1893
    :cond_e
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@289
    move-result v25

    #@28a
    const/16 v26, -0x1

    #@28c
    move/from16 v0, v25

    #@28e
    move/from16 v1, v26

    #@290
    if-ne v0, v1, :cond_10

    #@292
    .line 1894
    const-string/jumbo v25, " (running)"

    #@295
    move-object/from16 v0, v19

    #@297
    move-object/from16 v1, v25

    #@299
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29c
    .line 1899
    :cond_f
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintWriter;->println()V

    #@29f
    .line 1861
    add-int/lit8 v11, v11, 0x1

    #@2a1
    goto/16 :goto_3

    #@2a3
    .line 1867
    :pswitch_0
    const-string/jumbo v25, "allow"

    #@2a6
    move-object/from16 v0, v19

    #@2a8
    move-object/from16 v1, v25

    #@2aa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@2ad
    goto :goto_4

    #@2ae
    .line 2000
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    :catch_0
    move-exception v5

    #@2af
    .line 2001
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v25, Ljava/lang/StringBuilder;

    #@2b1
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2b4
    const-string/jumbo v26, "Remote exception: "

    #@2b7
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v25

    #@2bb
    move-object/from16 v0, v25

    #@2bd
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v25

    #@2c1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c4
    move-result-object v25

    #@2c5
    move-object/from16 v0, v19

    #@2c7
    move-object/from16 v1, v25

    #@2c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2cc
    .line 2003
    const/16 v25, -0x1

    #@2ce
    return v25

    #@2cf
    .line 1870
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v14    # "now":J
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "res":I
    :pswitch_1
    :try_start_7
    const-string/jumbo v25, "ignore"

    #@2d2
    move-object/from16 v0, v19

    #@2d4
    move-object/from16 v1, v25

    #@2d6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d9
    goto/16 :goto_4

    #@2db
    .line 1873
    :pswitch_2
    const-string/jumbo v25, "deny"

    #@2de
    move-object/from16 v0, v19

    #@2e0
    move-object/from16 v1, v25

    #@2e2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e5
    goto/16 :goto_4

    #@2e7
    .line 1876
    :pswitch_3
    const-string/jumbo v25, "default"

    #@2ea
    move-object/from16 v0, v19

    #@2ec
    move-object/from16 v1, v25

    #@2ee
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f1
    goto/16 :goto_4

    #@2f3
    .line 1895
    :cond_10
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@2f6
    move-result v25

    #@2f7
    if-eqz v25, :cond_f

    #@2f9
    .line 1896
    const-string/jumbo v25, "; duration="

    #@2fc
    move-object/from16 v0, v19

    #@2fe
    move-object/from16 v1, v25

    #@300
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@303
    .line 1897
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@306
    move-result v25

    #@307
    move/from16 v0, v25

    #@309
    int-to-long v0, v0

    #@30a
    move-wide/from16 v26, v0

    #@30c
    move-wide/from16 v0, v26

    #@30e
    move-object/from16 v2, v19

    #@310
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@313
    goto :goto_5

    #@314
    .line 1859
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    #@316
    goto/16 :goto_2

    #@318
    .line 1902
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    :cond_12
    const/16 v25, 0x0

    #@31a
    return v25

    #@31b
    .line 1909
    .end local v10    # "i":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_13
    move-object/from16 v0, p0

    #@31d
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    #@31f
    move-object/from16 v25, v0

    #@321
    .line 1910
    const/16 v26, 0x1

    #@323
    move/from16 v0, v26

    #@325
    new-array v0, v0, [I

    #@327
    move-object/from16 v26, v0

    #@329
    move-object/from16 v0, p0

    #@32b
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@32d
    move/from16 v27, v0

    #@32f
    const/16 v28, 0x0

    #@331
    aput v27, v26, v28

    #@333
    .line 1909
    invoke-interface/range {v25 .. v26}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    #@336
    move-result-object v16

    #@337
    .line 1911
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_14

    #@339
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@33c
    move-result v25

    #@33d
    if-gtz v25, :cond_15

    #@33f
    .line 1912
    :cond_14
    const-string/jumbo v25, "No operations."

    #@342
    move-object/from16 v0, v19

    #@344
    move-object/from16 v1, v25

    #@346
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@349
    .line 1913
    const/16 v25, 0x0

    #@34b
    return v25

    #@34c
    .line 1915
    :cond_15
    const/4 v10, 0x0

    #@34d
    .restart local v10    # "i":I
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@350
    move-result v25

    #@351
    move/from16 v0, v25

    #@353
    if-ge v10, v0, :cond_19

    #@355
    .line 1916
    move-object/from16 v0, v16

    #@357
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35a
    move-result-object v18

    #@35b
    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    #@35d
    .line 1917
    .local v18, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v9, 0x0

    #@35e
    .line 1918
    .local v9, "hasMatch":Z
    move-object/from16 v0, v16

    #@360
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@363
    move-result-object v25

    #@364
    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    #@366
    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    #@369
    move-result-object v7

    #@36a
    .line 1919
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    #@36b
    .restart local v11    # "j":I
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@36e
    move-result v25

    #@36f
    move/from16 v0, v25

    #@371
    if-ge v11, v0, :cond_16

    #@373
    .line 1920
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@376
    move-result-object v6

    #@377
    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    #@379
    .line 1921
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    #@37c
    move-result v25

    #@37d
    move-object/from16 v0, p0

    #@37f
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    #@381
    move/from16 v26, v0

    #@383
    move/from16 v0, v25

    #@385
    move/from16 v1, v26

    #@387
    if-ne v0, v1, :cond_18

    #@389
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@38c
    move-result v25

    #@38d
    move-object/from16 v0, p0

    #@38f
    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->mode:I

    #@391
    move/from16 v26, v0

    #@393
    move/from16 v0, v25

    #@395
    move/from16 v1, v26

    #@397
    if-ne v0, v1, :cond_18

    #@399
    .line 1922
    const/4 v9, 0x1

    #@39a
    .line 1926
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_16
    if-eqz v9, :cond_17

    #@39c
    .line 1927
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    #@39f
    move-result-object v25

    #@3a0
    move-object/from16 v0, v19

    #@3a2
    move-object/from16 v1, v25

    #@3a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a7
    .line 1915
    :cond_17
    add-int/lit8 v10, v10, 0x1

    #@3a9
    goto :goto_6

    #@3aa
    .line 1919
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_18
    add-int/lit8 v11, v11, 0x1

    #@3ac
    goto :goto_7

    #@3ad
    .line 1930
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "hasMatch":Z
    .end local v11    # "j":I
    .end local v18    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_19
    const/16 v25, 0x0

    #@3af
    return v25

    #@3b0
    .line 1940
    .end local v10    # "i":I
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    .restart local v4    # "argument":Ljava/lang/String;
    .restart local v21    # "userId":I
    :cond_1a
    if-nez v17, :cond_1b

    #@3b2
    .line 1941
    move-object/from16 v17, v4

    #@3b4
    .local v17, "packageName":Ljava/lang/String;
    goto/16 :goto_0

    #@3b6
    .line 1943
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_1b
    new-instance v25, Ljava/lang/StringBuilder;

    #@3b8
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@3bb
    const-string/jumbo v26, "Error: Unsupported argument: "

    #@3be
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v25

    #@3c2
    move-object/from16 v0, v25

    #@3c4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c7
    move-result-object v25

    #@3c8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3cb
    move-result-object v25

    #@3cc
    move-object/from16 v0, v25

    #@3ce
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d1
    .line 1944
    const/16 v25, -0x1

    #@3d3
    return v25

    #@3d4
    .line 1949
    :cond_1c
    const/16 v25, -0x2

    #@3d6
    move/from16 v0, v21

    #@3d8
    move/from16 v1, v25

    #@3da
    if-ne v0, v1, :cond_1d

    #@3dc
    .line 1950
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3df
    move-result v21

    #@3e0
    .line 1953
    :cond_1d
    move-object/from16 v0, p0

    #@3e2
    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    #@3e4
    move-object/from16 v25, v0

    #@3e6
    move-object/from16 v0, v25

    #@3e8
    move/from16 v1, v21

    #@3ea
    move-object/from16 v2, v17

    #@3ec
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    #@3ef
    .line 1954
    const-string/jumbo v25, "Reset all modes for: "

    #@3f2
    move-object/from16 v0, v19

    #@3f4
    move-object/from16 v1, v25

    #@3f6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f9
    .line 1955
    const/16 v25, -0x1

    #@3fb
    move/from16 v0, v21

    #@3fd
    move/from16 v1, v25

    #@3ff
    if-ne v0, v1, :cond_1e

    #@401
    .line 1956
    const-string/jumbo v25, "all users"

    #@404
    move-object/from16 v0, v19

    #@406
    move-object/from16 v1, v25

    #@408
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40b
    .line 1960
    :goto_8
    const-string/jumbo v25, ", "

    #@40e
    move-object/from16 v0, v19

    #@410
    move-object/from16 v1, v25

    #@412
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@415
    .line 1961
    if-nez v17, :cond_1f

    #@417
    .line 1962
    const-string/jumbo v25, "all packages"

    #@41a
    move-object/from16 v0, v19

    #@41c
    move-object/from16 v1, v25

    #@41e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@421
    .line 1966
    :goto_9
    const/16 v25, 0x0

    #@423
    return v25

    #@424
    .line 1958
    :cond_1e
    const-string/jumbo v25, "user "

    #@427
    move-object/from16 v0, v19

    #@429
    move-object/from16 v1, v25

    #@42b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42e
    move-object/from16 v0, v19

    #@430
    move/from16 v1, v21

    #@432
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@435
    goto :goto_8

    #@436
    .line 1964
    :cond_1f
    const-string/jumbo v25, "package "

    #@439
    move-object/from16 v0, v19

    #@43b
    move-object/from16 v1, v25

    #@43d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@440
    move-object/from16 v0, v19

    #@442
    move-object/from16 v1, v17

    #@444
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    #@447
    goto :goto_9

    #@448
    .line 1974
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .restart local v22    # "token":J
    :catchall_0
    move-exception v25

    #@449
    :try_start_8
    monitor-exit v26

    #@44a
    throw v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@44b
    .line 1979
    :catchall_1
    move-exception v25

    #@44c
    .line 1980
    :try_start_9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44f
    .line 1979
    throw v25

    #@450
    .line 1992
    :catchall_2
    move-exception v25

    #@451
    .line 1993
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@454
    .line 1992
    throw v25

    #@455
    .line 1998
    .end local v22    # "token":J
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    #@458
    move-result v25

    #@459
    return v25

    #@45a
    .line 1865
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    .line 458
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    #@6
    cmp-long v3, v4, v8

    #@8
    if-nez v3, :cond_1

    #@a
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@c
    cmp-long v3, v4, v8

    #@e
    if-nez v3, :cond_1

    #@10
    .line 459
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@13
    move-result-object v0

    #@14
    .line 460
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    #@16
    .line 461
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    #@18
    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    #@1b
    .line 462
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@1e
    move-result v3

    #@1f
    if-gtz v3, :cond_1

    #@21
    .line 463
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@23
    .line 464
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@25
    .line 465
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    #@27
    .line 466
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@29
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 467
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    .line 468
    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@34
    .line 470
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 471
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    #@3f
    .line 457
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2291
    if-nez p0, :cond_0

    #@2
    .line 2292
    const-string/jumbo v0, "root"

    #@5
    return-object v0

    #@6
    .line 2293
    :cond_0
    const/16 v0, 0x7d0

    #@8
    if-ne p0, v0, :cond_1

    #@a
    .line 2294
    const-string/jumbo v0, "com.android.shell"

    #@d
    return-object v0

    #@e
    .line 2295
    :cond_1
    const/16 v0, 0x3e8

    #@10
    if-ne p0, v0, :cond_2

    #@12
    if-nez p1, :cond_2

    #@14
    .line 2296
    const-string/jumbo v0, "android"

    #@17
    return-object v0

    #@18
    .line 2298
    :cond_2
    return-object p1
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1280
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1281
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@7
    .line 1282
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    #@9
    .line 1283
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    .line 1284
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@14
    const-wide/16 v2, 0x2710

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    .line 1279
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    #@0
    .prologue
    .line 1273
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1274
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@7
    .line 1275
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@b
    const-wide/32 v2, 0x1b7740

    #@e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    .line 1272
    :cond_0
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2213
    const/4 v1, 0x0

    #@1
    .line 2215
    .local v1, "notifyChange":Z
    monitor-enter p0

    #@2
    .line 2216
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 2218
    .local v2, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v2, :cond_0

    #@c
    .line 2220
    :try_start_1
    new-instance v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    #@e
    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-direct {v2, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 2224
    .restart local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 2227
    :cond_0
    invoke-virtual {v2, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 2228
    const/4 v1, 0x1

    #@1d
    .line 2231
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 2232
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 2233
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    :cond_2
    monitor-exit p0

    #@2c
    .line 2237
    if-eqz v1, :cond_3

    #@2e
    .line 2238
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    #@31
    .line 2212
    :cond_3
    return-void

    #@32
    .line 2221
    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit p0

    #@34
    .line 2222
    return-void

    #@35
    .line 2215
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit p0

    #@37
    throw v3
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1186
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x40

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 1187
    return-void

    #@7
    .line 1189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Bad operation #"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1176
    return-void

    #@7
    .line 1178
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v0

    #@b
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@e
    move-result v1

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 1179
    return-void

    #@12
    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    #@17
    .line 1182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v2

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x0

    #@20
    .line 1181
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@23
    .line 1174
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 901
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v2

    #@4
    .line 907
    :goto_0
    if-eqz v2, :cond_0

    #@6
    .line 908
    const-string/jumbo v3, "AppOps"

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Audio disabled for suspended package="

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, " for uid="

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 909
    const/4 v3, 0x1

    #@2c
    return v3

    #@2d
    .line 902
    :catch_0
    move-exception v0

    #@2e
    .line 904
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    #@2f
    .local v2, "suspended":Z
    goto :goto_0

    #@30
    .line 912
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "suspended":Z
    :cond_0
    monitor-enter p0

    #@31
    .line 913
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result v1

    #@35
    .line 914
    .local v1, "mode":I
    if-eqz v1, :cond_1

    #@37
    monitor-exit p0

    #@38
    .line 915
    return v1

    #@39
    :cond_1
    monitor-exit p0

    #@3a
    .line 918
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    #@3d
    move-result v3

    #@3e
    return v3

    #@3f
    .line 912
    .end local v1    # "mode":I
    :catchall_0
    move-exception v3

    #@40
    monitor-exit p0

    #@41
    throw v3
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 871
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@4
    .line 872
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@7
    .line 873
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 874
    .local v1, "resolvedPackageName":Ljava/lang/String;
    if-nez v1, :cond_0

    #@d
    .line 875
    return v5

    #@e
    .line 877
    :cond_0
    monitor-enter p0

    #@f
    .line 878
    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    monitor-exit p0

    #@16
    .line 879
    return v5

    #@17
    .line 881
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@1a
    move-result p1

    #@1b
    .line 882
    const/4 v4, 0x0

    #@1c
    invoke-direct {p0, p2, v4}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@1f
    move-result-object v3

    #@20
    .line 883
    .local v3, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v3, :cond_2

    #@22
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 884
    iget-object v4, v3, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@28
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v2

    #@2c
    .line 885
    .local v2, "uidMode":I
    if-eqz v2, :cond_2

    #@2e
    monitor-exit p0

    #@2f
    .line 886
    return v2

    #@30
    .line 889
    .end local v2    # "uidMode":I
    :cond_2
    const/4 v4, 0x0

    #@31
    :try_start_2
    invoke-direct {p0, p1, p2, v1, v4}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    #@34
    move-result-object v0

    #@35
    .line 890
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_3

    #@37
    .line 891
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result v4

    #@3b
    monitor-exit p0

    #@3c
    return v4

    #@3d
    .line 893
    :cond_3
    :try_start_3
    iget v4, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    return v4

    #@41
    .line 877
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    #@42
    monitor-exit p0

    #@43
    throw v4
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 974
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 975
    monitor-enter p0

    #@4
    .line 976
    const/4 v0, 0x1

    #@5
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 977
    const/4 v0, 0x0

    #@c
    monitor-exit p0

    #@d
    return v0

    #@e
    .line 979
    :cond_0
    const/4 v0, 0x2

    #@f
    monitor-exit p0

    #@10
    return v0

    #@11
    .line 975
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2013
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v27, v0

    #@6
    const-string/jumbo v28, "android.permission.DUMP"

    #@9
    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v27

    #@d
    if-eqz v27, :cond_0

    #@f
    .line 2015
    new-instance v27, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v28, "Permission Denial: can\'t dump ApOps service from from pid="

    #@17
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v27

    #@1b
    .line 2016
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v28

    #@1f
    .line 2015
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v27

    #@23
    .line 2017
    const-string/jumbo v28, ", uid="

    #@26
    .line 2015
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v27

    #@2a
    .line 2017
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v28

    #@2e
    .line 2015
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v27

    #@32
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v27

    #@36
    move-object/from16 v0, p2

    #@38
    move-object/from16 v1, v27

    #@3a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 2018
    return-void

    #@3e
    .line 2021
    :cond_0
    if-eqz p3, :cond_4

    #@40
    .line 2022
    const/4 v8, 0x0

    #@41
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@43
    array-length v0, v0

    #@44
    move/from16 v27, v0

    #@46
    move/from16 v0, v27

    #@48
    if-ge v8, v0, :cond_4

    #@4a
    .line 2023
    aget-object v4, p3, v8

    #@4c
    .line 2024
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v27, "-h"

    #@4f
    move-object/from16 v0, v27

    #@51
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v27

    #@55
    if-eqz v27, :cond_1

    #@57
    .line 2025
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, p2

    #@5b
    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@5e
    .line 2026
    return-void

    #@5f
    .line 2027
    :cond_1
    const-string/jumbo v27, "-a"

    #@62
    move-object/from16 v0, v27

    #@64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v27

    #@68
    if-eqz v27, :cond_2

    #@6a
    .line 2022
    add-int/lit8 v8, v8, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 2029
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@70
    move-result v27

    #@71
    if-lez v27, :cond_3

    #@73
    const/16 v27, 0x0

    #@75
    move/from16 v0, v27

    #@77
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@7a
    move-result v27

    #@7b
    const/16 v28, 0x2d

    #@7d
    move/from16 v0, v27

    #@7f
    move/from16 v1, v28

    #@81
    if-ne v0, v1, :cond_3

    #@83
    .line 2030
    new-instance v27, Ljava/lang/StringBuilder;

    #@85
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v28, "Unknown option: "

    #@8b
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v27

    #@8f
    move-object/from16 v0, v27

    #@91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v27

    #@95
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v27

    #@99
    move-object/from16 v0, p2

    #@9b
    move-object/from16 v1, v27

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 2031
    return-void

    #@a1
    .line 2033
    :cond_3
    new-instance v27, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v28, "Unknown command: "

    #@a9
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v27

    #@ad
    move-object/from16 v0, v27

    #@af
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v27

    #@b3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v27

    #@b7
    move-object/from16 v0, p2

    #@b9
    move-object/from16 v1, v27

    #@bb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@be
    .line 2034
    return-void

    #@bf
    .line 2039
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_4
    monitor-enter p0

    #@c0
    .line 2040
    :try_start_0
    const-string/jumbo v27, "Current AppOps Service state:"

    #@c3
    move-object/from16 v0, p2

    #@c5
    move-object/from16 v1, v27

    #@c7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@cd
    move-result-wide v12

    #@ce
    .line 2042
    .local v12, "now":J
    const/4 v11, 0x0

    #@cf
    .line 2043
    .local v11, "needSep":Z
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@d3
    move-object/from16 v27, v0

    #@d5
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@d8
    move-result v27

    #@d9
    if-lez v27, :cond_6

    #@db
    .line 2044
    const/4 v11, 0x1

    #@dc
    .line 2045
    const-string/jumbo v27, "  Op mode watchers:"

    #@df
    move-object/from16 v0, p2

    #@e1
    move-object/from16 v1, v27

    #@e3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 2046
    const/4 v8, 0x0

    #@e7
    .restart local v8    # "i":I
    :goto_1
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@eb
    move-object/from16 v27, v0

    #@ed
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@f0
    move-result v27

    #@f1
    move/from16 v0, v27

    #@f3
    if-ge v8, v0, :cond_6

    #@f5
    .line 2047
    const-string/jumbo v27, "    Op "

    #@f8
    move-object/from16 v0, p2

    #@fa
    move-object/from16 v1, v27

    #@fc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@103
    move-object/from16 v27, v0

    #@105
    move-object/from16 v0, v27

    #@107
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@10a
    move-result v27

    #@10b
    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@10e
    move-result-object v27

    #@10f
    move-object/from16 v0, p2

    #@111
    move-object/from16 v1, v27

    #@113
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@116
    .line 2048
    const-string/jumbo v27, ":"

    #@119
    move-object/from16 v0, p2

    #@11b
    move-object/from16 v1, v27

    #@11d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@120
    .line 2049
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@124
    move-object/from16 v27, v0

    #@126
    move-object/from16 v0, v27

    #@128
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12b
    move-result-object v5

    #@12c
    check-cast v5, Ljava/util/ArrayList;

    #@12e
    .line 2050
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    #@12f
    .local v9, "j":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@132
    move-result v27

    #@133
    move/from16 v0, v27

    #@135
    if-ge v9, v0, :cond_5

    #@137
    .line 2051
    const-string/jumbo v27, "      #"

    #@13a
    move-object/from16 v0, p2

    #@13c
    move-object/from16 v1, v27

    #@13e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141
    move-object/from16 v0, p2

    #@143
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    #@146
    const-string/jumbo v27, ": "

    #@149
    move-object/from16 v0, p2

    #@14b
    move-object/from16 v1, v27

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    .line 2052
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@153
    move-result-object v27

    #@154
    move-object/from16 v0, p2

    #@156
    move-object/from16 v1, v27

    #@158
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@15b
    .line 2050
    add-int/lit8 v9, v9, 0x1

    #@15d
    goto :goto_2

    #@15e
    .line 2046
    :cond_5
    add-int/lit8 v8, v8, 0x1

    #@160
    goto :goto_1

    #@161
    .line 2056
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_6
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@165
    move-object/from16 v27, v0

    #@167
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@16a
    move-result v27

    #@16b
    if-lez v27, :cond_8

    #@16d
    .line 2057
    const/4 v11, 0x1

    #@16e
    .line 2058
    const-string/jumbo v27, "  Package mode watchers:"

    #@171
    move-object/from16 v0, p2

    #@173
    move-object/from16 v1, v27

    #@175
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@178
    .line 2059
    const/4 v8, 0x0

    #@179
    .restart local v8    # "i":I
    :goto_3
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@17d
    move-object/from16 v27, v0

    #@17f
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@182
    move-result v27

    #@183
    move/from16 v0, v27

    #@185
    if-ge v8, v0, :cond_8

    #@187
    .line 2060
    const-string/jumbo v27, "    Pkg "

    #@18a
    move-object/from16 v0, p2

    #@18c
    move-object/from16 v1, v27

    #@18e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@191
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@195
    move-object/from16 v27, v0

    #@197
    move-object/from16 v0, v27

    #@199
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19c
    move-result-object v27

    #@19d
    check-cast v27, Ljava/lang/String;

    #@19f
    move-object/from16 v0, p2

    #@1a1
    move-object/from16 v1, v27

    #@1a3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a6
    .line 2061
    const-string/jumbo v27, ":"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    move-object/from16 v1, v27

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b0
    .line 2062
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@1b4
    move-object/from16 v27, v0

    #@1b6
    move-object/from16 v0, v27

    #@1b8
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1bb
    move-result-object v5

    #@1bc
    check-cast v5, Ljava/util/ArrayList;

    #@1be
    .line 2063
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    #@1bf
    .restart local v9    # "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c2
    move-result v27

    #@1c3
    move/from16 v0, v27

    #@1c5
    if-ge v9, v0, :cond_7

    #@1c7
    .line 2064
    const-string/jumbo v27, "      #"

    #@1ca
    move-object/from16 v0, p2

    #@1cc
    move-object/from16 v1, v27

    #@1ce
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    move-object/from16 v0, p2

    #@1d3
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    #@1d6
    const-string/jumbo v27, ": "

    #@1d9
    move-object/from16 v0, p2

    #@1db
    move-object/from16 v1, v27

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    .line 2065
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e3
    move-result-object v27

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    move-object/from16 v1, v27

    #@1e8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1eb
    .line 2063
    add-int/lit8 v9, v9, 0x1

    #@1ed
    goto :goto_4

    #@1ee
    .line 2059
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@1f0
    goto :goto_3

    #@1f1
    .line 2069
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_8
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@1f5
    move-object/from16 v27, v0

    #@1f7
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@1fa
    move-result v27

    #@1fb
    if-lez v27, :cond_9

    #@1fd
    .line 2070
    const/4 v11, 0x1

    #@1fe
    .line 2071
    const-string/jumbo v27, "  All mode watchers:"

    #@201
    move-object/from16 v0, p2

    #@203
    move-object/from16 v1, v27

    #@205
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@208
    .line 2072
    const/4 v8, 0x0

    #@209
    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@20d
    move-object/from16 v27, v0

    #@20f
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@212
    move-result v27

    #@213
    move/from16 v0, v27

    #@215
    if-ge v8, v0, :cond_9

    #@217
    .line 2073
    const-string/jumbo v27, "    "

    #@21a
    move-object/from16 v0, p2

    #@21c
    move-object/from16 v1, v27

    #@21e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@221
    move-object/from16 v0, p0

    #@223
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@225
    move-object/from16 v27, v0

    #@227
    move-object/from16 v0, v27

    #@229
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@22c
    move-result-object v27

    #@22d
    move-object/from16 v0, p2

    #@22f
    move-object/from16 v1, v27

    #@231
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@234
    .line 2074
    const-string/jumbo v27, " -> "

    #@237
    move-object/from16 v0, p2

    #@239
    move-object/from16 v1, v27

    #@23b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23e
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@242
    move-object/from16 v27, v0

    #@244
    move-object/from16 v0, v27

    #@246
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@249
    move-result-object v27

    #@24a
    move-object/from16 v0, p2

    #@24c
    move-object/from16 v1, v27

    #@24e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@251
    .line 2072
    add-int/lit8 v8, v8, 0x1

    #@253
    goto :goto_5

    #@254
    .line 2077
    .end local v8    # "i":I
    :cond_9
    move-object/from16 v0, p0

    #@256
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@258
    move-object/from16 v27, v0

    #@25a
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@25d
    move-result v27

    #@25e
    if-lez v27, :cond_b

    #@260
    .line 2078
    const/4 v11, 0x1

    #@261
    .line 2079
    const-string/jumbo v27, "  Clients:"

    #@264
    move-object/from16 v0, p2

    #@266
    move-object/from16 v1, v27

    #@268
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26b
    .line 2080
    const/4 v8, 0x0

    #@26c
    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, p0

    #@26e
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@270
    move-object/from16 v27, v0

    #@272
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    #@275
    move-result v27

    #@276
    move/from16 v0, v27

    #@278
    if-ge v8, v0, :cond_b

    #@27a
    .line 2081
    const-string/jumbo v27, "    "

    #@27d
    move-object/from16 v0, p2

    #@27f
    move-object/from16 v1, v27

    #@281
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@284
    move-object/from16 v0, p0

    #@286
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@288
    move-object/from16 v27, v0

    #@28a
    move-object/from16 v0, v27

    #@28c
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28f
    move-result-object v27

    #@290
    move-object/from16 v0, p2

    #@292
    move-object/from16 v1, v27

    #@294
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@297
    const-string/jumbo v27, ":"

    #@29a
    move-object/from16 v0, p2

    #@29c
    move-object/from16 v1, v27

    #@29e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a1
    .line 2082
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@2a5
    move-object/from16 v27, v0

    #@2a7
    move-object/from16 v0, v27

    #@2a9
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2ac
    move-result-object v7

    #@2ad
    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    #@2af
    .line 2083
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string/jumbo v27, "      "

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    move-object/from16 v1, v27

    #@2b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b9
    move-object/from16 v0, p2

    #@2bb
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2be
    .line 2084
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@2c0
    move-object/from16 v27, v0

    #@2c2
    if-eqz v27, :cond_a

    #@2c4
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@2c6
    move-object/from16 v27, v0

    #@2c8
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@2cb
    move-result v27

    #@2cc
    if-lez v27, :cond_a

    #@2ce
    .line 2085
    const-string/jumbo v27, "      Started ops:"

    #@2d1
    move-object/from16 v0, p2

    #@2d3
    move-object/from16 v1, v27

    #@2d5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d8
    .line 2086
    const/4 v9, 0x0

    #@2d9
    .restart local v9    # "j":I
    :goto_7
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@2db
    move-object/from16 v27, v0

    #@2dd
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@2e0
    move-result v27

    #@2e1
    move/from16 v0, v27

    #@2e3
    if-ge v9, v0, :cond_a

    #@2e5
    .line 2087
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@2e7
    move-object/from16 v27, v0

    #@2e9
    move-object/from16 v0, v27

    #@2eb
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ee
    move-result-object v15

    #@2ef
    check-cast v15, Lcom/android/server/AppOpsService$Op;

    #@2f1
    .line 2088
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "        "

    #@2f4
    move-object/from16 v0, p2

    #@2f6
    move-object/from16 v1, v27

    #@2f8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    const-string/jumbo v27, "uid="

    #@2fe
    move-object/from16 v0, p2

    #@300
    move-object/from16 v1, v27

    #@302
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@305
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    #@307
    move/from16 v27, v0

    #@309
    move-object/from16 v0, p2

    #@30b
    move/from16 v1, v27

    #@30d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@310
    .line 2089
    const-string/jumbo v27, " pkg="

    #@313
    move-object/from16 v0, p2

    #@315
    move-object/from16 v1, v27

    #@317
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31a
    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@31c
    move-object/from16 v27, v0

    #@31e
    move-object/from16 v0, p2

    #@320
    move-object/from16 v1, v27

    #@322
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@325
    .line 2090
    const-string/jumbo v27, " op="

    #@328
    move-object/from16 v0, p2

    #@32a
    move-object/from16 v1, v27

    #@32c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32f
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    #@331
    move/from16 v27, v0

    #@333
    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@336
    move-result-object v27

    #@337
    move-object/from16 v0, p2

    #@339
    move-object/from16 v1, v27

    #@33b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33e
    .line 2086
    add-int/lit8 v9, v9, 0x1

    #@340
    goto :goto_7

    #@341
    .line 2080
    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    #@343
    goto/16 :goto_6

    #@345
    .line 2095
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    #@347
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@349
    move-object/from16 v27, v0

    #@34b
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@34e
    move-result v27

    #@34f
    if-lez v27, :cond_f

    #@351
    .line 2096
    const/16 v22, 0x0

    #@353
    .line 2097
    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    #@354
    .local v14, "o":I
    :goto_8
    move-object/from16 v0, p0

    #@356
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@358
    move-object/from16 v27, v0

    #@35a
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@35d
    move-result v27

    #@35e
    move/from16 v0, v27

    #@360
    if-ge v14, v0, :cond_f

    #@362
    .line 2098
    move-object/from16 v0, p0

    #@364
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@366
    move-object/from16 v27, v0

    #@368
    move-object/from16 v0, v27

    #@36a
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@36d
    move-result v27

    #@36e
    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@371
    move-result-object v16

    #@372
    .line 2099
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@376
    move-object/from16 v27, v0

    #@378
    move-object/from16 v0, v27

    #@37a
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@37d
    move-result-object v24

    #@37e
    check-cast v24, Landroid/util/SparseArray;

    #@380
    .line 2100
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    #@381
    .restart local v8    # "i":I
    :goto_9
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@384
    move-result v27

    #@385
    move/from16 v0, v27

    #@387
    if-ge v8, v0, :cond_e

    #@389
    .line 2101
    if-nez v22, :cond_c

    #@38b
    .line 2102
    const-string/jumbo v27, "  Audio Restrictions:"

    #@38e
    move-object/from16 v0, p2

    #@390
    move-object/from16 v1, v27

    #@392
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@395
    .line 2103
    const/16 v22, 0x1

    #@397
    .line 2104
    const/4 v11, 0x1

    #@398
    .line 2106
    :cond_c
    move-object/from16 v0, v24

    #@39a
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@39d
    move-result v26

    #@39e
    .line 2107
    .local v26, "usage":I
    const-string/jumbo v27, "    "

    #@3a1
    move-object/from16 v0, p2

    #@3a3
    move-object/from16 v1, v27

    #@3a5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a8
    move-object/from16 v0, p2

    #@3aa
    move-object/from16 v1, v16

    #@3ac
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    .line 2108
    const-string/jumbo v27, " usage="

    #@3b2
    move-object/from16 v0, p2

    #@3b4
    move-object/from16 v1, v27

    #@3b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b9
    invoke-static/range {v26 .. v26}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    #@3bc
    move-result-object v27

    #@3bd
    move-object/from16 v0, p2

    #@3bf
    move-object/from16 v1, v27

    #@3c1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c4
    .line 2109
    move-object/from16 v0, v24

    #@3c6
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3c9
    move-result-object v23

    #@3ca
    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    #@3cc
    .line 2110
    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string/jumbo v27, ": mode="

    #@3cf
    move-object/from16 v0, p2

    #@3d1
    move-object/from16 v1, v27

    #@3d3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d6
    move-object/from16 v0, v23

    #@3d8
    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    #@3da
    move/from16 v27, v0

    #@3dc
    move-object/from16 v0, p2

    #@3de
    move/from16 v1, v27

    #@3e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@3e3
    .line 2111
    move-object/from16 v0, v23

    #@3e5
    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@3e7
    move-object/from16 v27, v0

    #@3e9
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->isEmpty()Z

    #@3ec
    move-result v27

    #@3ed
    if-nez v27, :cond_d

    #@3ef
    .line 2112
    const-string/jumbo v27, "      Exceptions:"

    #@3f2
    move-object/from16 v0, p2

    #@3f4
    move-object/from16 v1, v27

    #@3f6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f9
    .line 2113
    const/4 v9, 0x0

    #@3fa
    .restart local v9    # "j":I
    :goto_a
    move-object/from16 v0, v23

    #@3fc
    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@3fe
    move-object/from16 v27, v0

    #@400
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->size()I

    #@403
    move-result v27

    #@404
    move/from16 v0, v27

    #@406
    if-ge v9, v0, :cond_d

    #@408
    .line 2114
    const-string/jumbo v27, "        "

    #@40b
    move-object/from16 v0, p2

    #@40d
    move-object/from16 v1, v27

    #@40f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@412
    move-object/from16 v0, v23

    #@414
    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@416
    move-object/from16 v27, v0

    #@418
    move-object/from16 v0, v27

    #@41a
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@41d
    move-result-object v27

    #@41e
    check-cast v27, Ljava/lang/String;

    #@420
    move-object/from16 v0, p2

    #@422
    move-object/from16 v1, v27

    #@424
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@427
    .line 2113
    add-int/lit8 v9, v9, 0x1

    #@429
    goto :goto_a

    #@42a
    .line 2100
    .end local v9    # "j":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    #@42c
    goto/16 :goto_9

    #@42e
    .line 2097
    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v26    # "usage":I
    :cond_e
    add-int/lit8 v14, v14, 0x1

    #@430
    goto/16 :goto_8

    #@432
    .line 2120
    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_f
    if-eqz v11, :cond_10

    #@434
    .line 2121
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@437
    .line 2123
    :cond_10
    const/4 v8, 0x0

    #@438
    .restart local v8    # "i":I
    :goto_b
    move-object/from16 v0, p0

    #@43a
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@43c
    move-object/from16 v27, v0

    #@43e
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    #@441
    move-result v27

    #@442
    move/from16 v0, v27

    #@444
    if-ge v8, v0, :cond_19

    #@446
    .line 2124
    move-object/from16 v0, p0

    #@448
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@44a
    move-object/from16 v27, v0

    #@44c
    move-object/from16 v0, v27

    #@44e
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@451
    move-result-object v25

    #@452
    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    #@454
    .line 2126
    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string/jumbo v27, "  Uid "

    #@457
    move-object/from16 v0, p2

    #@459
    move-object/from16 v1, v27

    #@45b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45e
    move-object/from16 v0, v25

    #@460
    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@462
    move/from16 v27, v0

    #@464
    move-object/from16 v0, p2

    #@466
    move/from16 v1, v27

    #@468
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@46b
    const-string/jumbo v27, ":"

    #@46e
    move-object/from16 v0, p2

    #@470
    move-object/from16 v1, v27

    #@472
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@475
    .line 2128
    move-object/from16 v0, v25

    #@477
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@479
    move-object/from16 v18, v0

    #@47b
    .line 2129
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_11

    #@47d
    .line 2130
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    #@480
    move-result v17

    #@481
    .line 2131
    .local v17, "opModeCount":I
    const/4 v9, 0x0

    #@482
    .restart local v9    # "j":I
    :goto_c
    move/from16 v0, v17

    #@484
    if-ge v9, v0, :cond_11

    #@486
    .line 2132
    move-object/from16 v0, v18

    #@488
    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@48b
    move-result v6

    #@48c
    .line 2133
    .local v6, "code":I
    move-object/from16 v0, v18

    #@48e
    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@491
    move-result v10

    #@492
    .line 2134
    .local v10, "mode":I
    const-string/jumbo v27, "      "

    #@495
    move-object/from16 v0, p2

    #@497
    move-object/from16 v1, v27

    #@499
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49c
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@49f
    move-result-object v27

    #@4a0
    move-object/from16 v0, p2

    #@4a2
    move-object/from16 v1, v27

    #@4a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a7
    .line 2135
    const-string/jumbo v27, ": mode="

    #@4aa
    move-object/from16 v0, p2

    #@4ac
    move-object/from16 v1, v27

    #@4ae
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b1
    move-object/from16 v0, p2

    #@4b3
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    #@4b6
    .line 2131
    add-int/lit8 v9, v9, 0x1

    #@4b8
    goto :goto_c

    #@4b9
    .line 2139
    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_11
    move-object/from16 v0, v25

    #@4bb
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@4bd
    move-object/from16 v21, v0

    #@4bf
    .line 2140
    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_13

    #@4c1
    .line 2123
    :cond_12
    add-int/lit8 v8, v8, 0x1

    #@4c3
    goto/16 :goto_b

    #@4c5
    .line 2144
    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@4c8
    move-result-object v27

    #@4c9
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4cc
    move-result-object v20

    #@4cd
    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@4d0
    move-result v27

    #@4d1
    if-eqz v27, :cond_12

    #@4d3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d6
    move-result-object v19

    #@4d7
    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    #@4d9
    .line 2145
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string/jumbo v27, "    Package "

    #@4dc
    move-object/from16 v0, p2

    #@4de
    move-object/from16 v1, v27

    #@4e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e3
    move-object/from16 v0, v19

    #@4e5
    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@4e7
    move-object/from16 v27, v0

    #@4e9
    move-object/from16 v0, p2

    #@4eb
    move-object/from16 v1, v27

    #@4ed
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f0
    const-string/jumbo v27, ":"

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    move-object/from16 v1, v27

    #@4f7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4fa
    .line 2146
    const/4 v9, 0x0

    #@4fb
    .restart local v9    # "j":I
    :goto_d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@4fe
    move-result v27

    #@4ff
    move/from16 v0, v27

    #@501
    if-ge v9, v0, :cond_14

    #@503
    .line 2147
    move-object/from16 v0, v19

    #@505
    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    #@508
    move-result-object v15

    #@509
    check-cast v15, Lcom/android/server/AppOpsService$Op;

    #@50b
    .line 2148
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "      "

    #@50e
    move-object/from16 v0, p2

    #@510
    move-object/from16 v1, v27

    #@512
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@515
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    #@517
    move/from16 v27, v0

    #@519
    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@51c
    move-result-object v27

    #@51d
    move-object/from16 v0, p2

    #@51f
    move-object/from16 v1, v27

    #@521
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@524
    .line 2149
    const-string/jumbo v27, ": mode="

    #@527
    move-object/from16 v0, p2

    #@529
    move-object/from16 v1, v27

    #@52b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52e
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    #@530
    move/from16 v27, v0

    #@532
    move-object/from16 v0, p2

    #@534
    move/from16 v1, v27

    #@536
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@539
    .line 2150
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    #@53b
    move-wide/from16 v28, v0

    #@53d
    const-wide/16 v30, 0x0

    #@53f
    cmp-long v27, v28, v30

    #@541
    if-eqz v27, :cond_15

    #@543
    .line 2151
    const-string/jumbo v27, "; time="

    #@546
    move-object/from16 v0, p2

    #@548
    move-object/from16 v1, v27

    #@54a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54d
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    #@54f
    move-wide/from16 v28, v0

    #@551
    sub-long v28, v12, v28

    #@553
    move-wide/from16 v0, v28

    #@555
    move-object/from16 v2, p2

    #@557
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@55a
    .line 2152
    const-string/jumbo v27, " ago"

    #@55d
    move-object/from16 v0, p2

    #@55f
    move-object/from16 v1, v27

    #@561
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@564
    .line 2154
    :cond_15
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@566
    move-wide/from16 v28, v0

    #@568
    const-wide/16 v30, 0x0

    #@56a
    cmp-long v27, v28, v30

    #@56c
    if-eqz v27, :cond_16

    #@56e
    .line 2155
    const-string/jumbo v27, "; rejectTime="

    #@571
    move-object/from16 v0, p2

    #@573
    move-object/from16 v1, v27

    #@575
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@578
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@57a
    move-wide/from16 v28, v0

    #@57c
    sub-long v28, v12, v28

    #@57e
    move-wide/from16 v0, v28

    #@580
    move-object/from16 v2, p2

    #@582
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@585
    .line 2156
    const-string/jumbo v27, " ago"

    #@588
    move-object/from16 v0, p2

    #@58a
    move-object/from16 v1, v27

    #@58c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58f
    .line 2158
    :cond_16
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    #@591
    move/from16 v27, v0

    #@593
    const/16 v28, -0x1

    #@595
    move/from16 v0, v27

    #@597
    move/from16 v1, v28

    #@599
    if-ne v0, v1, :cond_18

    #@59b
    .line 2159
    const-string/jumbo v27, " (running)"

    #@59e
    move-object/from16 v0, p2

    #@5a0
    move-object/from16 v1, v27

    #@5a2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a5
    .line 2163
    :cond_17
    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@5a8
    .line 2146
    add-int/lit8 v9, v9, 0x1

    #@5aa
    goto/16 :goto_d

    #@5ac
    .line 2160
    :cond_18
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    #@5ae
    move/from16 v27, v0

    #@5b0
    if-eqz v27, :cond_17

    #@5b2
    .line 2161
    const-string/jumbo v27, "; duration="

    #@5b5
    move-object/from16 v0, p2

    #@5b7
    move-object/from16 v1, v27

    #@5b9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5bc
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    #@5be
    move/from16 v27, v0

    #@5c0
    move/from16 v0, v27

    #@5c2
    int-to-long v0, v0

    #@5c3
    move-wide/from16 v28, v0

    #@5c5
    move-wide/from16 v0, v28

    #@5c7
    move-object/from16 v2, p2

    #@5c9
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5cc
    goto :goto_e

    #@5cd
    .line 2039
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "needSep":Z
    .end local v12    # "now":J
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "ops$iterator":Ljava/util/Iterator;
    .end local v21    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v27

    #@5ce
    monitor-exit p0

    #@5cf
    throw v27

    #@5d0
    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_19
    monitor-exit p0

    #@5d1
    .line 2012
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1125
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@3
    .line 1126
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@6
    .line 1127
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 1128
    .local v2, "resolvedPackageName":Ljava/lang/String;
    if-nez v2, :cond_0

    #@c
    .line 1129
    return-void

    #@d
    .line 1131
    :cond_0
    instance-of v3, p1, Lcom/android/server/AppOpsService$ClientState;

    #@f
    if-nez v3, :cond_1

    #@11
    .line 1132
    return-void

    #@12
    :cond_1
    move-object v0, p1

    #@13
    .line 1134
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    #@15
    .line 1135
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    #@16
    .line 1136
    const/4 v3, 0x1

    #@17
    :try_start_0
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    .line 1137
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_2

    #@1d
    monitor-exit p0

    #@1e
    .line 1138
    return-void

    #@1f
    .line 1140
    :cond_2
    :try_start_1
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 1141
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_3

    #@2b
    .line 1142
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Operation not started: uid"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    iget v5, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 1143
    const-string/jumbo v5, " pkg="

    #@42
    .line 1142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    .line 1143
    iget-object v5, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@48
    .line 1142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 1143
    const-string/jumbo v5, " op="

    #@4f
    .line 1142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 1143
    iget v5, v1, Lcom/android/server/AppOpsService$Op;->op:I

    #@55
    .line 1142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@60
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    .line 1135
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v3

    #@62
    monitor-exit p0

    #@63
    throw v3

    #@64
    .line 1146
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_3
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    monitor-exit p0

    #@68
    .line 1124
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1159
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@3
    if-gt v0, v1, :cond_1

    #@5
    .line 1160
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v0

    #@d
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    #@f
    sub-long/2addr v0, v2

    #@10
    long-to-int v0, v0

    #@11
    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    #@13
    .line 1162
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    #@15
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    #@17
    int-to-long v2, v2

    #@18
    add-long/2addr v0, v2

    #@19
    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    #@1b
    .line 1168
    :goto_0
    const/4 v0, 0x0

    #@1c
    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@1e
    .line 1158
    :goto_1
    return-void

    #@1f
    .line 1164
    :cond_0
    const-string/jumbo v0, "AppOps"

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, " pkg "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 1165
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@3d
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 1165
    const-string/jumbo v2, " code "

    #@44
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 1165
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    #@4a
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 1165
    const-string/jumbo v2, " time="

    #@51
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 1165
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    #@57
    .line 1164
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 1166
    const-string/jumbo v2, " duration="

    #@5e
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 1166
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    #@64
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 1166
    const-string/jumbo v2, " nesting="

    #@6b
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1166
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@71
    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    goto :goto_0

    #@7d
    .line 1170
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@7f
    add-int/lit8 v0, v0, -0x1

    #@81
    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@83
    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 434
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.GET_APP_OPS_STATS"

    #@6
    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v7

    #@a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v8

    #@e
    .line 434
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@11
    .line 436
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 437
    .local v4, "resolvedPackageName":Ljava/lang/String;
    if-nez v4, :cond_0

    #@17
    .line 438
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1a
    move-result-object v5

    #@1b
    return-object v5

    #@1c
    .line 440
    :cond_0
    monitor-enter p0

    #@1d
    .line 441
    const/4 v5, 0x0

    #@1e
    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result-object v0

    #@22
    .line 442
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_1

    #@24
    monitor-exit p0

    #@25
    .line 443
    return-object v9

    #@26
    .line 445
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result-object v2

    #@2a
    .line 446
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    #@2c
    monitor-exit p0

    #@2d
    .line 447
    return-object v9

    #@2e
    .line 449
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    #@30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 450
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    #@35
    .line 451
    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@37
    iget-object v6, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@39
    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@3b
    .line 450
    invoke-direct {v3, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    #@3e
    .line 452
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    monitor-exit p0

    #@42
    .line 453
    return-object v1

    #@43
    .line 440
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v5

    #@44
    monitor-exit p0

    #@45
    throw v5
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 18
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 402
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    #@7
    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v15

    #@b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e
    move-result v16

    #@f
    const/16 v17, 0x0

    #@11
    .line 402
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@14
    .line 404
    const/4 v7, 0x0

    #@15
    .line 405
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    #@16
    .line 406
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v12

    #@1e
    .line 407
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    #@1f
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    #@21
    .line 408
    move-object/from16 v0, p0

    #@23
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v11

    #@29
    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    #@2b
    .line 409
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@2d
    if-eqz v13, :cond_0

    #@2f
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    #@34
    move-result v13

    #@35
    if-eqz v13, :cond_1

    #@37
    .line 407
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 412
    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@3c
    .line 413
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v4

    #@40
    .line 414
    .local v4, "packageCount":I
    const/4 v3, 0x0

    #@41
    .local v3, "j":I
    move-object v8, v7

    #@42
    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v4, :cond_5

    #@44
    .line 415
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v6

    #@48
    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    #@4a
    .line 416
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, p1

    #@4e
    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    #@51
    move-result-object v9

    #@52
    .line 417
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    #@54
    .line 418
    if-nez v8, :cond_3

    #@56
    .line 419
    new-instance v7, Ljava/util/ArrayList;

    #@58
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5b
    .line 421
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    #@5d
    .line 422
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@5f
    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@61
    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@63
    .line 421
    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    #@66
    .line 423
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 414
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@6b
    move-object v8, v7

    #@6c
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    #@6d
    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    monitor-exit p0

    #@6e
    .line 428
    return-object v7

    #@6f
    .line 405
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_0
    move-exception v13

    #@70
    :goto_5
    monitor-exit p0

    #@71
    throw v13

    #@72
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_1
    move-exception v13

    #@73
    move-object v7, v8

    #@74
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5

    #@75
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3
    move-object v7, v8

    #@76
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    #@77
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object v7, v8

    #@78
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    #@79
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object v7, v8

    #@7a
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 859
    monitor-enter p0

    #@1
    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    #@9
    .line 861
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    #@b
    .line 862
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    #@d
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    #@10
    .line 863
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 865
    return-object v0

    #@17
    .line 859
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1008
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@4
    .line 1009
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@7
    .line 1010
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 1011
    .local v3, "resolvedPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    #@d
    .line 1012
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1014
    :cond_0
    const/4 v4, 0x0

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move v2, p2

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 987
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@5
    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v2

    #@9
    .line 989
    .local v2, "proxyUid":I
    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 990
    .local v3, "resolveProxyPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    #@f
    .line 991
    return v6

    #@10
    .line 994
    :cond_0
    const/4 v4, -0x1

    #@11
    move-object v0, p0

    #@12
    move v1, p1

    #@13
    .line 993
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    #@16
    move-result v8

    #@17
    .line 995
    .local v8, "proxyMode":I
    if-nez v8, :cond_1

    #@19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v0

    #@1d
    if-ne v0, p3, :cond_2

    #@1f
    .line 996
    :cond_1
    return v8

    #@20
    .line 998
    :cond_2
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    .line 999
    .local v7, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v7, :cond_3

    #@26
    .line 1000
    return v6

    #@27
    :cond_3
    move-object v4, p0

    #@28
    move v5, p1

    #@29
    move v6, p3

    #@2a
    move-object v9, v3

    #@2b
    .line 1002
    invoke-direct/range {v4 .. v9}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    #@2e
    move-result v0

    #@2f
    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 1791
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    #@2
    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    #@5
    move-object v1, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@e
    .line 1790
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    monitor-enter p0

    #@1
    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 328
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 329
    return-void

    #@d
    .line 332
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 335
    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@10
    if-eqz v2, :cond_1

    #@12
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 336
    const/4 v0, 0x1

    #@1b
    .line 340
    :cond_1
    if-eqz v0, :cond_2

    #@1d
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 341
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    array-length v2, v2

    #@2a
    if-gtz v2, :cond_2

    #@2c
    .line 342
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    #@31
    .line 345
    :cond_2
    if-eqz v0, :cond_3

    #@33
    .line 346
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :cond_3
    monitor-exit p0

    #@37
    .line 325
    return-void

    #@38
    .line 326
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit p0

    #@3a
    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1152
    if-nez p1, :cond_0

    #@2
    .line 1153
    const/4 v0, -0x1

    #@3
    return v0

    #@4
    .line 1155
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@2
    .line 247
    const-string/jumbo v0, "appops"

    #@5
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 245
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 1434
    const-string/jumbo v4, "n"

    #@4
    const/4 v5, 0x0

    #@5
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1435
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@c
    move-result v0

    #@d
    .line 1437
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@10
    move-result v3

    #@11
    .local v3, "type":I
    const/4 v4, 0x1

    #@12
    if-eq v3, v4, :cond_3

    #@14
    .line 1438
    if-ne v3, v7, :cond_1

    #@16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@19
    move-result v4

    #@1a
    if-le v4, v0, :cond_3

    #@1c
    .line 1439
    :cond_1
    if-eq v3, v7, :cond_0

    #@1e
    const/4 v4, 0x4

    #@1f
    if-eq v3, v4, :cond_0

    #@21
    .line 1443
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 1444
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 1445
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@31
    goto :goto_0

    #@32
    .line 1447
    :cond_2
    const-string/jumbo v4, "AppOps"

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Unknown element under <pkg>: "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 1448
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 1447
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 1449
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@53
    goto :goto_0

    #@54
    .line 1433
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 18

    #@0
    .prologue
    .line 1336
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@4
    monitor-enter v15

    #@5
    .line 1337
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@6
    .line 1340
    :try_start_1
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@a
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d
    move-result-object v10

    #@e
    .line 1345
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@f
    .line 1346
    .local v11, "success":Z
    :try_start_2
    move-object/from16 v0, p0

    #@11
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    .line 1348
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@19
    move-result-object v9

    #@1a
    .line 1349
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1c
    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1f
    move-result-object v14

    #@20
    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@23
    .line 1351
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@26
    move-result v13

    #@27
    .local v13, "type":I
    const/4 v14, 0x2

    #@28
    if-eq v13, v14, :cond_1

    #@2a
    .line 1352
    const/4 v14, 0x1

    #@2b
    if-ne v13, v14, :cond_0

    #@2d
    .line 1356
    :cond_1
    const/4 v14, 0x2

    #@2e
    if-eq v13, v14, :cond_3

    #@30
    .line 1357
    new-instance v14, Ljava/lang/IllegalStateException;

    #@32
    const-string/jumbo v16, "no start tag found"

    #@35
    move-object/from16 v0, v16

    #@37
    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v14
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3b
    .line 1379
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    #@3c
    .line 1380
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v14, "AppOps"

    #@3f
    new-instance v16, Ljava/lang/StringBuilder;

    #@41
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v17, "Failed parsing "

    #@47
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v16

    #@4b
    move-object/from16 v0, v16

    #@4d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v16

    #@51
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v16

    #@55
    move-object/from16 v0, v16

    #@57
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5a
    .line 1392
    if-nez v11, :cond_2

    #@5c
    .line 1393
    :try_start_5
    move-object/from16 v0, p0

    #@5e
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@60
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@63
    .line 1396
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@66
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@67
    monitor-exit v15

    #@68
    .line 1335
    return-void

    #@69
    .line 1341
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    #@6a
    .line 1342
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string/jumbo v14, "AppOps"

    #@6d
    new-instance v16, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v17, "No existing app ops "

    #@75
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v16

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@7d
    move-object/from16 v17, v0

    #@7f
    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@82
    move-result-object v17

    #@83
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v16

    #@87
    const-string/jumbo v17, "; starting empty"

    #@8a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v16

    #@8e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v16

    #@92
    move-object/from16 v0, v16

    #@94
    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@97
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@98
    monitor-exit v15

    #@99
    .line 1343
    return-void

    #@9a
    .line 1360
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9d
    move-result v8

    #@9e
    .line 1361
    .local v8, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a1
    move-result v13

    #@a2
    const/4 v14, 0x1

    #@a3
    if-eq v13, v14, :cond_b

    #@a5
    .line 1362
    const/4 v14, 0x3

    #@a6
    if-ne v13, v14, :cond_5

    #@a8
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@ab
    move-result v14

    #@ac
    if-le v14, v8, :cond_b

    #@ae
    .line 1363
    :cond_5
    const/4 v14, 0x3

    #@af
    if-eq v13, v14, :cond_4

    #@b1
    const/4 v14, 0x4

    #@b2
    if-eq v13, v14, :cond_4

    #@b4
    .line 1367
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b7
    move-result-object v12

    #@b8
    .line 1368
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    #@bb
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v14

    #@bf
    if-eqz v14, :cond_7

    #@c1
    .line 1369
    move-object/from16 v0, p0

    #@c3
    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@c6
    goto :goto_1

    #@c7
    .line 1381
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    #@c8
    .line 1382
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string/jumbo v14, "AppOps"

    #@cb
    new-instance v16, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v17, "Failed parsing "

    #@d3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v16

    #@d7
    move-object/from16 v0, v16

    #@d9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v16

    #@dd
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v16

    #@e1
    move-object/from16 v0, v16

    #@e3
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@e6
    .line 1392
    if-nez v11, :cond_6

    #@e8
    .line 1393
    :try_start_c
    move-object/from16 v0, p0

    #@ea
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@ec
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@ef
    .line 1396
    :cond_6
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1397
    :catch_3
    move-exception v2

    #@f5
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@f7
    .line 1370
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_e
    const-string/jumbo v14, "uid"

    #@fa
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v14

    #@fe
    if-eqz v14, :cond_9

    #@100
    .line 1371
    move-object/from16 v0, p0

    #@102
    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@105
    goto :goto_1

    #@106
    .line 1383
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    #@107
    .line 1384
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string/jumbo v14, "AppOps"

    #@10a
    new-instance v16, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v17, "Failed parsing "

    #@112
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v16

    #@116
    move-object/from16 v0, v16

    #@118
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v16

    #@11c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v16

    #@120
    move-object/from16 v0, v16

    #@122
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@125
    .line 1392
    if-nez v11, :cond_8

    #@127
    .line 1393
    :try_start_10
    move-object/from16 v0, p0

    #@129
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@12b
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@12e
    .line 1396
    :cond_8
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@131
    goto/16 :goto_0

    #@133
    .line 1397
    :catch_5
    move-exception v2

    #@134
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@136
    .line 1373
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_9
    :try_start_12
    const-string/jumbo v14, "AppOps"

    #@139
    new-instance v16, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v17, "Unknown element under <app-ops>: "

    #@141
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v16

    #@145
    .line 1374
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@148
    move-result-object v17

    #@149
    .line 1373
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v16

    #@14d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v16

    #@151
    move-object/from16 v0, v16

    #@153
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    .line 1375
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@159
    goto/16 :goto_1

    #@15b
    .line 1385
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_6
    move-exception v7

    #@15c
    .line 1386
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13
    const-string/jumbo v14, "AppOps"

    #@15f
    new-instance v16, Ljava/lang/StringBuilder;

    #@161
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v17, "Failed parsing "

    #@167
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v16

    #@16b
    move-object/from16 v0, v16

    #@16d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v16

    #@171
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v16

    #@175
    move-object/from16 v0, v16

    #@177
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@17a
    .line 1392
    if-nez v11, :cond_a

    #@17c
    .line 1393
    :try_start_14
    move-object/from16 v0, p0

    #@17e
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@180
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    #@183
    .line 1396
    :cond_a
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    #@186
    goto/16 :goto_0

    #@188
    .line 1397
    :catch_7
    move-exception v2

    #@189
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@18b
    .line 1378
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_b
    const/4 v11, 0x1

    #@18c
    .line 1392
    if-nez v11, :cond_c

    #@18e
    .line 1393
    :try_start_16
    move-object/from16 v0, p0

    #@190
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@192
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    #@195
    .line 1396
    :cond_c
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@198
    goto/16 :goto_0

    #@19a
    .line 1397
    :catch_8
    move-exception v2

    #@19b
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@19d
    .line 1389
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_9
    move-exception v4

    #@19e
    .line 1390
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_18
    const-string/jumbo v14, "AppOps"

    #@1a1
    new-instance v16, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v17, "Failed parsing "

    #@1a9
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v16

    #@1ad
    move-object/from16 v0, v16

    #@1af
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v16

    #@1b3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v16

    #@1b7
    move-object/from16 v0, v16

    #@1b9
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    #@1bc
    .line 1392
    if-nez v11, :cond_d

    #@1be
    .line 1393
    :try_start_19
    move-object/from16 v0, p0

    #@1c0
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1c2
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    #@1c5
    .line 1396
    :cond_d
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    #@1c8
    goto/16 :goto_0

    #@1ca
    .line 1397
    :catch_a
    move-exception v2

    #@1cb
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@1cd
    .line 1387
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    #@1ce
    .line 1388
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1b
    const-string/jumbo v14, "AppOps"

    #@1d1
    new-instance v16, Ljava/lang/StringBuilder;

    #@1d3
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1d6
    const-string/jumbo v17, "Failed parsing "

    #@1d9
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v16

    #@1dd
    move-object/from16 v0, v16

    #@1df
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v16

    #@1e3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v16

    #@1e7
    move-object/from16 v0, v16

    #@1e9
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    #@1ec
    .line 1392
    if-nez v11, :cond_e

    #@1ee
    .line 1393
    :try_start_1c
    move-object/from16 v0, p0

    #@1f0
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1f2
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    #@1f5
    .line 1396
    :cond_e
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    #@1f8
    goto/16 :goto_0

    #@1fa
    .line 1397
    :catch_c
    move-exception v2

    #@1fb
    goto/16 :goto_0

    #@1fd
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    #@1fe
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@200
    .line 1391
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    #@201
    .line 1392
    if-nez v11, :cond_f

    #@203
    .line 1393
    :try_start_1e
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@207
    move-object/from16 v16, v0

    #@209
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    #@20c
    .line 1396
    :cond_f
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    #@20f
    .line 1391
    :goto_2
    :try_start_20
    throw v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    #@210
    .line 1337
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_1
    move-exception v14

    #@211
    :try_start_21
    monitor-exit p0

    #@212
    throw v14
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    #@213
    .line 1336
    :catchall_2
    move-exception v14

    #@214
    monitor-exit v15

    #@215
    throw v14

    #@216
    .line 1397
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_e
    move-exception v2

    #@217
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 24
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1456
    const-string/jumbo v21, "n"

    #@3
    const/16 v22, 0x0

    #@5
    move-object/from16 v0, p1

    #@7
    move-object/from16 v1, v22

    #@9
    move-object/from16 v2, v21

    #@b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v21

    #@f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12
    move-result v19

    #@13
    .line 1457
    .local v19, "uid":I
    const-string/jumbo v21, "p"

    #@16
    const/16 v22, 0x0

    #@18
    move-object/from16 v0, p1

    #@1a
    move-object/from16 v1, v22

    #@1c
    move-object/from16 v2, v21

    #@1e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    .line 1458
    .local v8, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    #@23
    .line 1459
    .local v7, "isPrivileged":Z
    if-nez v8, :cond_d

    #@25
    .line 1461
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@28
    move-result-object v13

    #@29
    .line 1462
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_c

    #@2b
    .line 1463
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2e
    move-result-object v21

    #@2f
    .line 1464
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    #@32
    move-result v22

    #@33
    const/16 v23, 0x0

    #@35
    .line 1463
    move-object/from16 v0, v21

    #@37
    move-object/from16 v1, p2

    #@39
    move/from16 v2, v23

    #@3b
    move/from16 v3, v22

    #@3d
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@40
    move-result-object v4

    #@41
    .line 1465
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    #@43
    .line 1466
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@45
    move/from16 v21, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    and-int/lit8 v21, v21, 0x8

    #@49
    if-eqz v21, :cond_b

    #@4b
    const/4 v7, 0x1

    #@4c
    .line 1479
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "isPrivileged":Z
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4f
    move-result v12

    #@50
    .line 1481
    .local v12, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@53
    move-result v18

    #@54
    .local v18, "type":I
    const/16 v21, 0x1

    #@56
    move/from16 v0, v18

    #@58
    move/from16 v1, v21

    #@5a
    if-eq v0, v1, :cond_f

    #@5c
    .line 1482
    const/16 v21, 0x3

    #@5e
    move/from16 v0, v18

    #@60
    move/from16 v1, v21

    #@62
    if-ne v0, v1, :cond_2

    #@64
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@67
    move-result v21

    #@68
    move/from16 v0, v21

    #@6a
    if-le v0, v12, :cond_f

    #@6c
    .line 1483
    :cond_2
    const/16 v21, 0x3

    #@6e
    move/from16 v0, v18

    #@70
    move/from16 v1, v21

    #@72
    if-eq v0, v1, :cond_1

    #@74
    const/16 v21, 0x4

    #@76
    move/from16 v0, v18

    #@78
    move/from16 v1, v21

    #@7a
    if-eq v0, v1, :cond_1

    #@7c
    .line 1487
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7f
    move-result-object v16

    #@80
    .line 1488
    .local v16, "tagName":Ljava/lang/String;
    const-string/jumbo v21, "op"

    #@83
    move-object/from16 v0, v16

    #@85
    move-object/from16 v1, v21

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v21

    #@8b
    if-eqz v21, :cond_e

    #@8d
    .line 1489
    new-instance v10, Lcom/android/server/AppOpsService$Op;

    #@8f
    const-string/jumbo v21, "n"

    #@92
    const/16 v22, 0x0

    #@94
    move-object/from16 v0, p1

    #@96
    move-object/from16 v1, v22

    #@98
    move-object/from16 v2, v21

    #@9a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v21

    #@9e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a1
    move-result v21

    #@a2
    move/from16 v0, v19

    #@a4
    move-object/from16 v1, p2

    #@a6
    move/from16 v2, v21

    #@a8
    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    #@ab
    .line 1490
    .local v10, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v21, "m"

    #@ae
    const/16 v22, 0x0

    #@b0
    move-object/from16 v0, p1

    #@b2
    move-object/from16 v1, v22

    #@b4
    move-object/from16 v2, v21

    #@b6
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    .line 1491
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@bc
    .line 1492
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@bf
    move-result v21

    #@c0
    move/from16 v0, v21

    #@c2
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    #@c4
    .line 1494
    :cond_3
    const-string/jumbo v21, "t"

    #@c7
    const/16 v22, 0x0

    #@c9
    move-object/from16 v0, p1

    #@cb
    move-object/from16 v1, v22

    #@cd
    move-object/from16 v2, v21

    #@cf
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d2
    move-result-object v17

    #@d3
    .line 1495
    .local v17, "time":Ljava/lang/String;
    if-eqz v17, :cond_4

    #@d5
    .line 1496
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@d8
    move-result-wide v22

    #@d9
    move-wide/from16 v0, v22

    #@db
    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->time:J

    #@dd
    .line 1498
    :cond_4
    const-string/jumbo v21, "r"

    #@e0
    const/16 v22, 0x0

    #@e2
    move-object/from16 v0, p1

    #@e4
    move-object/from16 v1, v22

    #@e6
    move-object/from16 v2, v21

    #@e8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@eb
    move-result-object v17

    #@ec
    .line 1499
    if-eqz v17, :cond_5

    #@ee
    .line 1500
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@f1
    move-result-wide v22

    #@f2
    move-wide/from16 v0, v22

    #@f4
    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@f6
    .line 1502
    :cond_5
    const-string/jumbo v21, "d"

    #@f9
    const/16 v22, 0x0

    #@fb
    move-object/from16 v0, p1

    #@fd
    move-object/from16 v1, v22

    #@ff
    move-object/from16 v2, v21

    #@101
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@104
    move-result-object v5

    #@105
    .line 1503
    .local v5, "dur":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@107
    .line 1504
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10a
    move-result v21

    #@10b
    move/from16 v0, v21

    #@10d
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    #@10f
    .line 1506
    :cond_6
    const-string/jumbo v21, "pu"

    #@112
    const/16 v22, 0x0

    #@114
    move-object/from16 v0, p1

    #@116
    move-object/from16 v1, v22

    #@118
    move-object/from16 v2, v21

    #@11a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11d
    move-result-object v15

    #@11e
    .line 1507
    .local v15, "proxyUid":Ljava/lang/String;
    if-eqz v15, :cond_7

    #@120
    .line 1508
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@123
    move-result v21

    #@124
    move/from16 v0, v21

    #@126
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@128
    .line 1510
    :cond_7
    const-string/jumbo v21, "pp"

    #@12b
    const/16 v22, 0x0

    #@12d
    move-object/from16 v0, p1

    #@12f
    move-object/from16 v1, v22

    #@131
    move-object/from16 v2, v21

    #@133
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@136
    move-result-object v14

    #@137
    .line 1511
    .local v14, "proxyPackageName":Ljava/lang/String;
    if-eqz v14, :cond_8

    #@139
    .line 1512
    iput-object v14, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    #@13b
    .line 1515
    :cond_8
    const/16 v21, 0x1

    #@13d
    move-object/from16 v0, p0

    #@13f
    move/from16 v1, v19

    #@141
    move/from16 v2, v21

    #@143
    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@146
    move-result-object v20

    #@147
    .line 1516
    .local v20, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v20

    #@149
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@14b
    move-object/from16 v21, v0

    #@14d
    if-nez v21, :cond_9

    #@14f
    .line 1517
    new-instance v21, Landroid/util/ArrayMap;

    #@151
    invoke-direct/range {v21 .. v21}, Landroid/util/ArrayMap;-><init>()V

    #@154
    move-object/from16 v0, v21

    #@156
    move-object/from16 v1, v20

    #@158
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@15a
    .line 1520
    :cond_9
    move-object/from16 v0, v20

    #@15c
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@15e
    move-object/from16 v21, v0

    #@160
    move-object/from16 v0, v21

    #@162
    move-object/from16 v1, p2

    #@164
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@167
    move-result-object v11

    #@168
    check-cast v11, Lcom/android/server/AppOpsService$Ops;

    #@16a
    .line 1521
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v11, :cond_a

    #@16c
    .line 1522
    new-instance v11, Lcom/android/server/AppOpsService$Ops;

    #@16e
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    #@170
    move-object/from16 v1, v20

    #@172
    invoke-direct {v11, v0, v1, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    #@175
    .line 1523
    .restart local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v20

    #@177
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@179
    move-object/from16 v21, v0

    #@17b
    move-object/from16 v0, v21

    #@17d
    move-object/from16 v1, p2

    #@17f
    invoke-virtual {v0, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@182
    .line 1525
    :cond_a
    iget v0, v10, Lcom/android/server/AppOpsService$Op;->op:I

    #@184
    move/from16 v21, v0

    #@186
    move/from16 v0, v21

    #@188
    invoke-virtual {v11, v0, v10}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    #@18b
    goto/16 :goto_1

    #@18d
    .line 1466
    .end local v5    # "dur":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v12    # "outerDepth":I
    .end local v14    # "proxyPackageName":Ljava/lang/String;
    .end local v15    # "proxyUid":Ljava/lang/String;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "time":Ljava/lang/String;
    .end local v18    # "type":I
    .end local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "isPrivileged":Z
    .restart local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_b
    const/4 v7, 0x0

    #@18e
    goto/16 :goto_0

    #@190
    .line 1471
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c
    return-void

    #@191
    .line 1473
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    #@192
    .line 1474
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v21, "AppOps"

    #@195
    const-string/jumbo v22, "Could not contact PackageManager"

    #@198
    move-object/from16 v0, v21

    #@19a
    move-object/from16 v1, v22

    #@19c
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19f
    goto/16 :goto_0

    #@1a1
    .line 1477
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_d
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1a4
    move-result v7

    #@1a5
    .local v7, "isPrivileged":Z
    goto/16 :goto_0

    #@1a7
    .line 1527
    .end local v7    # "isPrivileged":Z
    .restart local v12    # "outerDepth":I
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_e
    const-string/jumbo v21, "AppOps"

    #@1aa
    new-instance v22, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    const-string/jumbo v23, "Unknown element under <pkg>: "

    #@1b2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v22

    #@1b6
    .line 1528
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b9
    move-result-object v23

    #@1ba
    .line 1527
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v22

    #@1be
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c1
    move-result-object v22

    #@1c2
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c5
    .line 1529
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1c8
    goto/16 :goto_1

    #@1ca
    .line 1455
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 1406
    const-string/jumbo v7, "n"

    #@6
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v7

    #@a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    .line 1407
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v2

    #@12
    .line 1409
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@15
    move-result v4

    #@16
    .local v4, "type":I
    if-eq v4, v11, :cond_4

    #@18
    .line 1410
    if-ne v4, v12, :cond_1

    #@1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1d
    move-result v7

    #@1e
    if-le v7, v2, :cond_4

    #@20
    .line 1411
    :cond_1
    if-eq v4, v12, :cond_0

    #@22
    const/4 v7, 0x4

    #@23
    if-eq v4, v7, :cond_0

    #@25
    .line 1415
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 1416
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    #@2c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_3

    #@32
    .line 1417
    const-string/jumbo v7, "n"

    #@35
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    .line 1418
    .local v0, "code":I
    const-string/jumbo v7, "m"

    #@40
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@47
    move-result v1

    #@48
    .line 1419
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@4b
    move-result-object v6

    #@4c
    .line 1420
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@4e
    if-nez v7, :cond_2

    #@50
    .line 1421
    new-instance v7, Landroid/util/SparseIntArray;

    #@52
    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    #@55
    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@57
    .line 1423
    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@59
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@5c
    goto :goto_0

    #@5d
    .line 1425
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    const-string/jumbo v7, "AppOps"

    #@60
    new-instance v8, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v9, "Unknown element under <uid-ops>: "

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    .line 1426
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    .line 1425
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 1427
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7e
    goto :goto_0

    #@7f
    .line 1405
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2273
    const-string/jumbo v3, "removeUser"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    #@6
    .line 2274
    monitor-enter p0

    #@7
    .line 2275
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v2

    #@d
    .line 2276
    .local v2, "tokenCount":I
    add-int/lit8 v0, v2, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@11
    .line 2277
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    #@19
    .line 2278
    .local v1, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v1, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 2276
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v1    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_0
    monitor-exit p0

    #@20
    .line 2272
    return-void

    #@21
    .line 2274
    .end local v0    # "i":I
    .end local v2    # "tokenCount":I
    :catchall_0
    move-exception v3

    #@22
    monitor-exit p0

    #@23
    throw v3
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 30
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 693
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 694
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v3

    #@8
    .line 695
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    #@f
    .line 696
    const/4 v6, 0x0

    #@10
    .line 695
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@13
    .line 698
    const-string/jumbo v7, "resetAllModes"

    #@16
    const/4 v5, 0x1

    #@17
    const/4 v6, 0x1

    #@18
    const/4 v8, 0x0

    #@19
    move/from16 v4, p1

    #@1b
    .line 697
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@1e
    move-result p1

    #@1f
    .line 700
    const/16 v27, -0x1

    #@21
    .line 701
    .local v27, "reqUid":I
    if-eqz p2, :cond_0

    #@23
    .line 703
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v4

    #@27
    .line 704
    const/16 v5, 0x2000

    #@29
    .line 703
    move-object/from16 v0, p2

    #@2b
    move/from16 v1, p1

    #@2d
    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@30
    move-result v27

    #@31
    .line 710
    :cond_0
    :goto_0
    const/4 v9, 0x0

    #@32
    .line 711
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    #@33
    .line 712
    const/4 v11, 0x0

    #@34
    .line 713
    .local v11, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@3b
    move-result v4

    #@3c
    add-int/lit8 v18, v4, -0x1

    #@3e
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v18, "i":I
    :goto_1
    if-ltz v18, :cond_d

    #@40
    .line 714
    move-object/from16 v0, p0

    #@42
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@44
    move/from16 v0, v18

    #@46
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@49
    move-result-object v29

    #@4a
    check-cast v29, Lcom/android/server/AppOpsService$UidState;

    #@4c
    .line 716
    .local v29, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v29

    #@4e
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@50
    move-object/from16 v21, v0

    #@52
    .line 717
    .local v21, "opModes":Landroid/util/SparseIntArray;
    if-eqz v21, :cond_4

    #@54
    move-object/from16 v0, v29

    #@56
    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@58
    move/from16 v0, v27

    #@5a
    if-eq v4, v0, :cond_1

    #@5c
    const/4 v4, -0x1

    #@5d
    move/from16 v0, v27

    #@5f
    if-ne v0, v4, :cond_4

    #@61
    .line 718
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@64
    move-result v28

    #@65
    .line 719
    .local v28, "uidOpCount":I
    add-int/lit8 v20, v28, -0x1

    #@67
    .local v20, "j":I
    :goto_2
    if-ltz v20, :cond_4

    #@69
    .line 720
    move-object/from16 v0, v21

    #@6b
    move/from16 v1, v20

    #@6d
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@70
    move-result v12

    #@71
    .line 721
    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_3

    #@77
    .line 722
    move-object/from16 v0, v21

    #@79
    move/from16 v1, v20

    #@7b
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@7e
    .line 723
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@81
    move-result v4

    #@82
    if-gtz v4, :cond_2

    #@84
    .line 724
    const/4 v4, 0x0

    #@85
    move-object/from16 v0, v29

    #@87
    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@89
    .line 726
    :cond_2
    move-object/from16 v0, v29

    #@8b
    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@8d
    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@90
    move-result-object v6

    #@91
    const/4 v4, 0x0

    #@92
    array-length v7, v6

    #@93
    move v5, v4

    #@94
    :goto_3
    if-ge v5, v7, :cond_3

    #@96
    aget-object v22, v6, v5

    #@98
    .line 727
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, v29

    #@9a
    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@9c
    .line 728
    move-object/from16 v0, p0

    #@9e
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@a0
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a3
    move-result-object v4

    #@a4
    check-cast v4, Ljava/util/ArrayList;

    #@a6
    .line 727
    move-object/from16 v0, v22

    #@a8
    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    #@ab
    move-result-object v9

    #@ac
    .line 729
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    move-object/from16 v0, v29

    #@ae
    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@b0
    .line 730
    move-object/from16 v0, p0

    #@b2
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@b4
    move-object/from16 v0, v22

    #@b6
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    move-result-object v4

    #@ba
    check-cast v4, Ljava/util/ArrayList;

    #@bc
    .line 729
    move-object/from16 v0, v22

    #@be
    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    #@c1
    move-result-object v9

    #@c2
    .line 726
    add-int/lit8 v4, v5, 0x1

    #@c4
    move v5, v4

    #@c5
    goto :goto_3

    #@c6
    .line 719
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, -0x1

    #@c8
    goto :goto_2

    #@c9
    .line 736
    .end local v12    # "code":I
    .end local v20    # "j":I
    .end local v28    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v29

    #@cb
    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@cd
    if-nez v4, :cond_6

    #@cf
    .line 713
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@d1
    goto/16 :goto_1

    #@d3
    .line 740
    :cond_6
    const/4 v4, -0x1

    #@d4
    move/from16 v0, p1

    #@d6
    if-eq v0, v4, :cond_7

    #@d8
    .line 741
    move-object/from16 v0, v29

    #@da
    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@dc
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@df
    move-result v4

    #@e0
    move/from16 v0, p1

    #@e2
    if-ne v0, v4, :cond_5

    #@e4
    .line 746
    :cond_7
    move-object/from16 v0, v29

    #@e6
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@e8
    move-object/from16 v23, v0

    #@ea
    .line 747
    .local v23, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@ed
    move-result-object v4

    #@ee
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f1
    move-result-object v19

    #@f2
    .line 748
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@f5
    move-result v4

    #@f6
    if-eqz v4, :cond_c

    #@f8
    .line 749
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fb
    move-result-object v16

    #@fc
    check-cast v16, Ljava/util/Map$Entry;

    #@fe
    .line 750
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@101
    move-result-object v22

    #@102
    check-cast v22, Ljava/lang/String;

    #@104
    .line 751
    .restart local v22    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    #@106
    move-object/from16 v0, p2

    #@108
    move-object/from16 v1, v22

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v4

    #@10e
    if-eqz v4, :cond_8

    #@110
    .line 755
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@113
    move-result-object v24

    #@114
    check-cast v24, Lcom/android/server/AppOpsService$Ops;

    #@116
    .line 756
    .local v24, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@119
    move-result v4

    #@11a
    add-int/lit8 v20, v4, -0x1

    #@11c
    .restart local v20    # "j":I
    :goto_6
    if-ltz v20, :cond_b

    #@11e
    .line 757
    move-object/from16 v0, v24

    #@120
    move/from16 v1, v20

    #@122
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    #@125
    move-result-object v13

    #@126
    check-cast v13, Lcom/android/server/AppOpsService$Op;

    #@128
    .line 758
    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@12a
    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    #@12d
    move-result v4

    #@12e
    if-eqz v4, :cond_a

    #@130
    .line 759
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    #@132
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@134
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@137
    move-result v5

    #@138
    if-eq v4, v5, :cond_a

    #@13a
    .line 760
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@13c
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@13f
    move-result v4

    #@140
    iput v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    #@142
    .line 761
    const/4 v11, 0x1

    #@143
    .line 762
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@145
    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    #@147
    .line 763
    move-object/from16 v0, p0

    #@149
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@14b
    iget v7, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@14d
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@150
    move-result-object v4

    #@151
    check-cast v4, Ljava/util/ArrayList;

    #@153
    .line 762
    move-object/from16 v0, v22

    #@155
    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    #@158
    move-result-object v9

    #@159
    .line 764
    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@15b
    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    #@15d
    .line 765
    move-object/from16 v0, p0

    #@15f
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@161
    move-object/from16 v0, v22

    #@163
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@166
    move-result-object v4

    #@167
    check-cast v4, Ljava/util/ArrayList;

    #@169
    .line 764
    move-object/from16 v0, v22

    #@16b
    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    #@16e
    move-result-object v9

    #@16f
    .line 766
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    #@171
    const-wide/16 v6, 0x0

    #@173
    cmp-long v4, v4, v6

    #@175
    if-nez v4, :cond_a

    #@177
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@179
    const-wide/16 v6, 0x0

    #@17b
    cmp-long v4, v4, v6

    #@17d
    if-nez v4, :cond_a

    #@17f
    .line 767
    move-object/from16 v0, v24

    #@181
    move/from16 v1, v20

    #@183
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    #@186
    .line 756
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_a
    add-int/lit8 v20, v20, -0x1

    #@188
    goto :goto_6

    #@189
    .line 771
    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@18c
    move-result v4

    #@18d
    if-nez v4, :cond_8

    #@18f
    .line 772
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@192
    goto/16 :goto_5

    #@194
    .line 711
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v18    # "i":I
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v20    # "j":I
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v24    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    #@195
    monitor-exit p0

    #@196
    throw v4

    #@197
    .line 775
    .restart local v18    # "i":I
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v21    # "opModes":Landroid/util/SparseIntArray;
    .restart local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    #@19a
    move-result v4

    #@19b
    if-eqz v4, :cond_5

    #@19d
    .line 776
    move-object/from16 v0, p0

    #@19f
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1a1
    move-object/from16 v0, v29

    #@1a3
    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@1a5
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    #@1a8
    goto/16 :goto_4

    #@1aa
    .line 780
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v11, :cond_e

    #@1ac
    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1af
    :cond_e
    monitor-exit p0

    #@1b0
    .line 784
    if-eqz v9, :cond_10

    #@1b2
    .line 785
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1b5
    move-result-object v4

    #@1b6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b9
    move-result-object v17

    #@1ba
    .local v17, "ent$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@1bd
    move-result v4

    #@1be
    if-eqz v4, :cond_10

    #@1c0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c3
    move-result-object v15

    #@1c4
    check-cast v15, Ljava/util/Map$Entry;

    #@1c6
    .line 786
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c9
    move-result-object v10

    #@1ca
    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    #@1cc
    .line 787
    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1cf
    move-result-object v26

    #@1d0
    check-cast v26, Ljava/util/ArrayList;

    #@1d2
    .line 788
    .local v26, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/16 v18, 0x0

    #@1d4
    :goto_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@1d7
    move-result v4

    #@1d8
    move/from16 v0, v18

    #@1da
    if-ge v0, v4, :cond_f

    #@1dc
    .line 789
    move-object/from16 v0, v26

    #@1de
    move/from16 v1, v18

    #@1e0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e3
    move-result-object v25

    #@1e4
    check-cast v25, Lcom/android/server/AppOpsService$ChangeRec;

    #@1e6
    .line 791
    .local v25, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    :try_start_3
    iget-object v4, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@1e8
    move-object/from16 v0, v25

    #@1ea
    iget v5, v0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    #@1ec
    move-object/from16 v0, v25

    #@1ee
    iget v6, v0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    #@1f0
    move-object/from16 v0, v25

    #@1f2
    iget-object v7, v0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    #@1f4
    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@1f7
    .line 788
    :goto_8
    add-int/lit8 v18, v18, 0x1

    #@1f9
    goto :goto_7

    #@1fa
    .line 692
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_10
    return-void

    #@1fb
    .line 792
    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v17    # "ent$iterator":Ljava/util/Iterator;
    .restart local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .restart local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_0
    move-exception v14

    #@1fc
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_8

    #@1fd
    .line 705
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v18    # "i":I
    .end local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_1
    move-exception v14

    #@1fe
    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 944
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@3
    .line 945
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@6
    .line 946
    monitor-enter p0

    #@7
    .line 947
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/util/SparseArray;

    #@f
    .line 948
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    #@11
    .line 949
    new-instance v4, Landroid/util/SparseArray;

    #@13
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@16
    .line 950
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    .line 952
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    #@1e
    .line 953
    if-eqz p4, :cond_3

    #@20
    .line 954
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    #@22
    const/4 v5, 0x0

    #@23
    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    #@26
    .line 955
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    #@28
    .line 956
    if-eqz p5, :cond_2

    #@2a
    .line 957
    array-length v0, p5

    #@2b
    .line 958
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    #@30
    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@32
    .line 959
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@35
    .line 960
    aget-object v2, p5, v1

    #@37
    .line 961
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@39
    .line 962
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@3b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@42
    .line 959
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 966
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0

    #@49
    .line 969
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    #@4c
    .line 943
    return-void

    #@4d
    .line 946
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_0
    move-exception v5

    #@4e
    monitor-exit p0

    #@4f
    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    #@0
    .prologue
    .line 592
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v13

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v14

    #@8
    if-eq v13, v14, :cond_0

    #@a
    .line 593
    move-object/from16 v0, p0

    #@c
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v14, "android.permission.UPDATE_APP_OPS_STATS"

    #@11
    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@14
    move-result v15

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v16

    #@19
    const/16 v17, 0x0

    #@1b
    .line 593
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@1e
    .line 596
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@21
    .line 597
    const/4 v10, 0x0

    #@22
    .line 598
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@25
    move-result p1

    #@26
    .line 599
    monitor-enter p0

    #@27
    .line 600
    const/4 v13, 0x0

    #@28
    :try_start_0
    move-object/from16 v0, p0

    #@2a
    move/from16 v1, p2

    #@2c
    invoke-direct {v0, v1, v13}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@2f
    move-result-object v12

    #@30
    .line 601
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v13, 0x1

    #@31
    move-object/from16 v0, p0

    #@33
    move/from16 v1, p1

    #@35
    move/from16 v2, p2

    #@37
    move-object/from16 v3, p3

    #@39
    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    #@3c
    move-result-object v7

    #@3d
    .line 602
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_2

    #@3f
    .line 603
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    #@41
    move/from16 v0, p4

    #@43
    if-eq v13, v0, :cond_2

    #@45
    .line 604
    move/from16 v0, p4

    #@47
    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    #@49
    .line 605
    move-object/from16 v0, p0

    #@4b
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@4d
    move/from16 v0, p1

    #@4f
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v4

    #@53
    check-cast v4, Ljava/util/ArrayList;

    #@55
    .line 606
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_7

    #@57
    .line 608
    new-instance v11, Ljava/util/ArrayList;

    #@59
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    .line 610
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v11, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5f
    .line 612
    :goto_0
    move-object/from16 v0, p0

    #@61
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@63
    move-object/from16 v0, p3

    #@65
    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    #@6b
    .line 613
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_6

    #@6d
    .line 614
    if-nez v11, :cond_5

    #@6f
    .line 615
    new-instance v10, Ljava/util/ArrayList;

    #@71
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@74
    .line 617
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@77
    .line 619
    :goto_2
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->op:I

    #@79
    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@7c
    move-result v13

    #@7d
    move/from16 v0, p4

    #@7f
    if-ne v0, v13, :cond_1

    #@81
    .line 622
    move-object/from16 v0, p0

    #@83
    move/from16 v1, p2

    #@85
    move-object/from16 v2, p3

    #@87
    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    #@8a
    .line 624
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    monitor-exit p0

    #@8e
    .line 628
    if-eqz v10, :cond_4

    #@90
    .line 632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@93
    move-result-wide v8

    #@94
    .line 634
    .local v8, "identity":J
    const/4 v6, 0x0

    #@95
    .local v6, "i":I
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@98
    move-result v13

    #@99
    if-ge v6, v13, :cond_3

    #@9b
    .line 636
    :try_start_4
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v13

    #@9f
    check-cast v13, Lcom/android/server/AppOpsService$Callback;

    #@a1
    iget-object v13, v13, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@a3
    move/from16 v0, p1

    #@a5
    move/from16 v1, p2

    #@a7
    move-object/from16 v2, p3

    #@a9
    invoke-interface {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@ac
    .line 634
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@ae
    goto :goto_3

    #@af
    .line 599
    .end local v6    # "i":I
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "identity":J
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    #@b0
    :goto_5
    monitor-exit p0

    #@b1
    throw v13

    #@b2
    .line 641
    .restart local v6    # "i":I
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "identity":J
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b5
    .line 591
    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_4
    return-void

    #@b6
    .line 640
    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_1
    move-exception v13

    #@b7
    .line 641
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 640
    throw v13

    #@bb
    .line 637
    :catch_0
    move-exception v5

    #@bc
    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_4

    #@bd
    .line 599
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "identity":J
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_2
    move-exception v13

    #@be
    move-object v10, v11

    #@bf
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    #@c0
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v10, v11

    #@c1
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    #@c2
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v10, v11

    #@c3
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2

    #@c4
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v11, v10

    #@c5
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 27
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v22

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v23

    #@8
    move/from16 v0, v22

    #@a
    move/from16 v1, v23

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 482
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@12
    move-object/from16 v22, v0

    #@14
    const-string/jumbo v23, "android.permission.UPDATE_APP_OPS_STATS"

    #@17
    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v24

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1e
    move-result v25

    #@1f
    const/16 v26, 0x0

    #@21
    .line 482
    invoke-virtual/range {v22 .. v26}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@24
    .line 485
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@27
    .line 486
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@2a
    move-result p1

    #@2b
    .line 488
    monitor-enter p0

    #@2c
    .line 489
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@2f
    move-result v10

    #@30
    .line 491
    .local v10, "defaultMode":I
    const/16 v22, 0x0

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, p2

    #@36
    move/from16 v2, v22

    #@38
    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result-object v21

    #@3c
    .line 492
    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v21, :cond_3

    #@3e
    .line 493
    move/from16 v0, p3

    #@40
    if-ne v0, v10, :cond_1

    #@42
    monitor-exit p0

    #@43
    .line 494
    return-void

    #@44
    .line 496
    :cond_1
    :try_start_1
    new-instance v21, Lcom/android/server/AppOpsService$UidState;

    #@46
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    #@48
    move/from16 v1, p2

    #@4a
    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    #@4d
    .line 497
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v22, Landroid/util/SparseIntArray;

    #@4f
    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    #@52
    move-object/from16 v0, v22

    #@54
    move-object/from16 v1, v21

    #@56
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@58
    .line 498
    move-object/from16 v0, v21

    #@5a
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@5c
    move-object/from16 v22, v0

    #@5e
    move-object/from16 v0, v22

    #@60
    move/from16 v1, p1

    #@62
    move/from16 v2, p3

    #@64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@67
    .line 499
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@6b
    move-object/from16 v22, v0

    #@6d
    move-object/from16 v0, v22

    #@6f
    move/from16 v1, p2

    #@71
    move-object/from16 v2, v21

    #@73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@76
    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    :cond_2
    :goto_0
    monitor-exit p0

    #@7a
    .line 523
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@7d
    move-result-object v20

    #@7e
    .line 524
    .local v20, "uidPackageNames":[Ljava/lang/String;
    const/4 v6, 0x0

    #@7f
    .line 526
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    #@80
    .line 527
    :try_start_2
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@84
    move-object/from16 v22, v0

    #@86
    move-object/from16 v0, v22

    #@88
    move/from16 v1, p1

    #@8a
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v8

    #@8e
    check-cast v8, Ljava/util/ArrayList;

    #@90
    .line 528
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_9

    #@92
    .line 529
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@95
    move-result v5

    #@96
    .line 530
    .local v5, "callbackCount":I
    const/4 v12, 0x0

    #@97
    .local v12, "i":I
    move-object v7, v6

    #@98
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v7, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_1
    if-ge v12, v5, :cond_8

    #@9a
    .line 531
    :try_start_3
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v4

    #@9e
    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    #@a0
    .line 532
    .local v4, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v9, Landroid/util/ArraySet;

    #@a2
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@a5
    .line 533
    .local v9, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    #@a7
    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@aa
    .line 534
    new-instance v6, Landroid/util/ArrayMap;

    #@ac
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@af
    .line 535
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@b2
    .line 530
    add-int/lit8 v12, v12, 0x1

    #@b4
    move-object v7, v6

    #@b5
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_1

    #@b6
    .line 501
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_3
    :try_start_5
    move-object/from16 v0, v21

    #@b8
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@ba
    move-object/from16 v22, v0

    #@bc
    if-nez v22, :cond_4

    #@be
    .line 502
    move/from16 v0, p3

    #@c0
    if-eq v0, v10, :cond_2

    #@c2
    .line 503
    new-instance v22, Landroid/util/SparseIntArray;

    #@c4
    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    #@c7
    move-object/from16 v0, v22

    #@c9
    move-object/from16 v1, v21

    #@cb
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@cd
    .line 504
    move-object/from16 v0, v21

    #@cf
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@d1
    move-object/from16 v22, v0

    #@d3
    move-object/from16 v0, v22

    #@d5
    move/from16 v1, p1

    #@d7
    move/from16 v2, p3

    #@d9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@dc
    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@df
    goto :goto_0

    #@e0
    .line 488
    .end local v10    # "defaultMode":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v22

    #@e1
    monitor-exit p0

    #@e2
    throw v22

    #@e3
    .line 508
    .restart local v10    # "defaultMode":I
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_4
    :try_start_6
    move-object/from16 v0, v21

    #@e5
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@e7
    move-object/from16 v22, v0

    #@e9
    move-object/from16 v0, v22

    #@eb
    move/from16 v1, p1

    #@ed
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f0
    move-result v22

    #@f1
    move/from16 v0, v22

    #@f3
    move/from16 v1, p3

    #@f5
    if-ne v0, v1, :cond_5

    #@f7
    monitor-exit p0

    #@f8
    .line 509
    return-void

    #@f9
    .line 511
    :cond_5
    move/from16 v0, p3

    #@fb
    if-ne v0, v10, :cond_7

    #@fd
    .line 512
    :try_start_7
    move-object/from16 v0, v21

    #@ff
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@101
    move-object/from16 v22, v0

    #@103
    move-object/from16 v0, v22

    #@105
    move/from16 v1, p1

    #@107
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    #@10a
    .line 513
    move-object/from16 v0, v21

    #@10c
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@10e
    move-object/from16 v22, v0

    #@110
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    #@113
    move-result v22

    #@114
    if-gtz v22, :cond_6

    #@116
    .line 514
    const/16 v22, 0x0

    #@118
    move-object/from16 v0, v22

    #@11a
    move-object/from16 v1, v21

    #@11c
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@11e
    .line 519
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    #@121
    goto/16 :goto_0

    #@123
    .line 517
    :cond_7
    move-object/from16 v0, v21

    #@125
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@127
    move-object/from16 v22, v0

    #@129
    move-object/from16 v0, v22

    #@12b
    move/from16 v1, p1

    #@12d
    move/from16 v2, p3

    #@12f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@132
    goto :goto_2

    #@133
    .restart local v5    # "callbackCount":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v12    # "i":I
    .restart local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_8
    move-object v6, v7

    #@134
    .line 539
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "i":I
    :cond_9
    const/16 v22, 0x0

    #@136
    :try_start_8
    move-object/from16 v0, v20

    #@138
    array-length v0, v0

    #@139
    move/from16 v23, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@13b
    move-object v7, v6

    #@13c
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    move/from16 v0, v22

    #@13e
    move/from16 v1, v23

    #@140
    if-ge v0, v1, :cond_d

    #@142
    :try_start_9
    aget-object v19, v20, v22

    #@144
    .line 540
    .local v19, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@148
    move-object/from16 v24, v0

    #@14a
    move-object/from16 v0, v24

    #@14c
    move-object/from16 v1, v19

    #@14e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@151
    move-result-object v8

    #@152
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v8, Ljava/util/ArrayList;

    #@154
    .line 541
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_b

    #@156
    .line 542
    if-nez v7, :cond_12

    #@158
    .line 543
    new-instance v6, Landroid/util/ArrayMap;

    #@15a
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@15d
    .line 545
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_4
    :try_start_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@160
    move-result v5

    #@161
    .line 546
    .restart local v5    # "callbackCount":I
    const/4 v12, 0x0

    #@162
    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v5, :cond_c

    #@164
    .line 547
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@167
    move-result-object v4

    #@168
    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    #@16a
    .line 548
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16d
    move-result-object v9

    #@16e
    check-cast v9, Landroid/util/ArraySet;

    #@170
    .line 549
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_a

    #@172
    .line 550
    new-instance v9, Landroid/util/ArraySet;

    #@174
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@177
    .line 551
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 553
    :cond_a
    move-object/from16 v0, v19

    #@17c
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@17f
    .line 546
    add-int/lit8 v12, v12, 0x1

    #@181
    goto :goto_5

    #@182
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_b
    move-object v6, v7

    #@183
    .line 539
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_c
    add-int/lit8 v22, v22, 0x1

    #@185
    move-object v7, v6

    #@186
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3

    #@187
    .end local v19    # "uidPackageName":Ljava/lang/String;
    :cond_d
    monitor-exit p0

    #@188
    .line 559
    if-nez v7, :cond_e

    #@18a
    .line 560
    return-void

    #@18b
    .line 526
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v22

    #@18c
    :goto_6
    monitor-exit p0

    #@18d
    throw v22

    #@18e
    .line 566
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@191
    move-result-wide v14

    #@192
    .line 568
    .local v14, "identity":J
    const/4 v12, 0x0

    #@193
    .restart local v12    # "i":I
    :goto_7
    :try_start_b
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@196
    move-result v22

    #@197
    move/from16 v0, v22

    #@199
    if-ge v12, v0, :cond_11

    #@19b
    .line 569
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@19e
    move-result-object v4

    #@19f
    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    #@1a1
    .line 570
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1a4
    move-result-object v18

    #@1a5
    check-cast v18, Landroid/util/ArraySet;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@1a7
    .line 572
    .local v18, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v18, :cond_10

    #@1a9
    .line 573
    :try_start_c
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@1ab
    move-object/from16 v22, v0

    #@1ad
    const/16 v23, 0x0

    #@1af
    move-object/from16 v0, v22

    #@1b1
    move/from16 v1, p1

    #@1b3
    move/from16 v2, p2

    #@1b5
    move-object/from16 v3, v23

    #@1b7
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V

    #@1ba
    .line 568
    :cond_f
    :goto_8
    add-int/lit8 v12, v12, 0x1

    #@1bc
    goto :goto_7

    #@1bd
    .line 575
    :cond_10
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    #@1c0
    move-result v16

    #@1c1
    .line 576
    .local v16, "reportedPackageCount":I
    const/4 v13, 0x0

    #@1c2
    .local v13, "j":I
    :goto_9
    move/from16 v0, v16

    #@1c4
    if-ge v13, v0, :cond_f

    #@1c6
    .line 577
    move-object/from16 v0, v18

    #@1c8
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1cb
    move-result-object v17

    #@1cc
    check-cast v17, Ljava/lang/String;

    #@1ce
    .line 578
    .local v17, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@1d0
    move-object/from16 v22, v0

    #@1d2
    move-object/from16 v0, v22

    #@1d4
    move/from16 v1, p1

    #@1d6
    move/from16 v2, p2

    #@1d8
    move-object/from16 v3, v17

    #@1da
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@1dd
    .line 576
    add-int/lit8 v13, v13, 0x1

    #@1df
    goto :goto_9

    #@1e0
    .line 581
    .end local v13    # "j":I
    .end local v16    # "reportedPackageCount":I
    .end local v17    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@1e1
    .line 582
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_d
    const-string/jumbo v22, "AppOps"

    #@1e4
    const-string/jumbo v23, "Error dispatching op op change"

    #@1e7
    move-object/from16 v0, v22

    #@1e9
    move-object/from16 v1, v23

    #@1eb
    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@1ee
    goto :goto_8

    #@1ef
    .line 585
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v18    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v22

    #@1f0
    .line 586
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f3
    .line 585
    throw v22

    #@1f4
    .line 586
    :cond_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f7
    .line 480
    return-void

    #@1f8
    .line 526
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v12    # "i":I
    .end local v14    # "identity":J
    :catchall_3
    move-exception v22

    #@1f9
    move-object v6, v7

    #@1fa
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_6

    #@1fb
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v19    # "uidPackageName":Ljava/lang/String;
    :cond_12
    move-object v6, v7

    #@1fc
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto/16 :goto_4
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 2194
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    #@f
    .line 2195
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@12
    move-result v2

    #@13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@16
    move-result v3

    #@17
    const/4 v4, 0x0

    #@18
    .line 2194
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@1b
    .line 2197
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@1e
    move-result v0

    #@1f
    if-eq p4, v0, :cond_1

    #@21
    .line 2198
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@23
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@26
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 2200
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@2e
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 2202
    new-instance v0, Ljava/lang/SecurityException;

    #@39
    const-string/jumbo v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 2206
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@43
    .line 2207
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 2208
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    #@49
    .line 2192
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2178
    const-string/jumbo v0, "setUserRestrictions"

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    #@7
    .line 2179
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 2180
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2181
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    const/16 v0, 0x40

    #@10
    if-ge v1, v0, :cond_1

    #@12
    .line 2182
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    .line 2183
    .local v6, "restriction":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@18
    .line 2184
    const/4 v0, 0x0

    #@19
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1c
    move-result v2

    #@1d
    move-object v0, p0

    #@1e
    move-object v3, p2

    #@1f
    move v4, p3

    #@20
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    #@23
    .line 2181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2177
    .end local v6    # "restriction":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3

    #@0
    .prologue
    .line 361
    const-string/jumbo v1, "AppOps"

    #@3
    const-string/jumbo v2, "Writing app ops before shutdown..."

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 362
    const/4 v0, 0x0

    #@a
    .line 363
    .local v0, "doWrite":Z
    monitor-enter p0

    #@b
    .line 364
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 365
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 366
    const/4 v0, 0x1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 369
    if-eqz v0, :cond_1

    #@16
    .line 370
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    #@19
    .line 360
    :cond_1
    return-void

    #@1a
    .line 363
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 1070
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@5
    .line 1071
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@8
    .line 1072
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1073
    .local v3, "resolvedPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    #@e
    .line 1074
    return v9

    #@f
    :cond_0
    move-object v0, p1

    #@10
    .line 1076
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    #@12
    .line 1077
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    #@13
    .line 1078
    const/4 v8, 0x1

    #@14
    :try_start_0
    invoke-direct {p0, p3, v3, v8}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v2

    #@18
    .line 1079
    .local v2, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_1

    #@1a
    .line 1082
    const/4 v8, 0x2

    #@1b
    monitor-exit p0

    #@1c
    return v8

    #@1d
    .line 1084
    :cond_1
    const/4 v8, 0x1

    #@1e
    :try_start_1
    invoke-direct {p0, v2, p2, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@21
    move-result-object v1

    #@22
    .line 1085
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p3, p2, v3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_2

    #@28
    monitor-exit p0

    #@29
    .line 1086
    return v9

    #@2a
    .line 1088
    :cond_2
    :try_start_2
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@2d
    move-result v4

    #@2e
    .line 1089
    .local v4, "switchCode":I
    iget-object v7, v2, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@30
    .line 1090
    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@32
    if-eqz v8, :cond_3

    #@34
    .line 1091
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@36
    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->get(I)I

    #@39
    move-result v6

    #@3a
    .line 1092
    .local v6, "uidMode":I
    if-eqz v6, :cond_3

    #@3c
    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3f
    move-result-wide v8

    #@40
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    monitor-exit p0

    #@43
    .line 1097
    return v6

    #@44
    .line 1100
    .end local v6    # "uidMode":I
    :cond_3
    if-eq v4, p2, :cond_4

    #@46
    const/4 v8, 0x1

    #@47
    :try_start_3
    invoke-direct {p0, v2, v4, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@4a
    move-result-object v5

    #@4b
    .line 1101
    .local v5, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    #@4d
    if-eqz v8, :cond_5

    #@4f
    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@52
    move-result-wide v8

    #@53
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@55
    .line 1106
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    monitor-exit p0

    #@58
    return v8

    #@59
    .line 1100
    .end local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    move-object v5, v1

    #@5a
    .restart local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    #@5b
    .line 1110
    :cond_5
    :try_start_4
    iget v8, v1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@5d
    if-nez v8, :cond_6

    #@5f
    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@62
    move-result-wide v8

    #@63
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->time:J

    #@65
    .line 1112
    const-wide/16 v8, 0x0

    #@67
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@69
    .line 1113
    const/4 v8, -0x1

    #@6a
    iput v8, v1, Lcom/android/server/AppOpsService$Op;->duration:I

    #@6c
    .line 1115
    :cond_6
    iget v8, v1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@6e
    add-int/lit8 v8, v8, 0x1

    #@70
    iput v8, v1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@72
    .line 1116
    iget-object v8, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@74
    if-eqz v8, :cond_7

    #@76
    .line 1117
    iget-object v8, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7b
    :cond_7
    monitor-exit p0

    #@7c
    .line 1119
    return v10

    #@7d
    .line 1077
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v4    # "switchCode":I
    .end local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v8

    #@7e
    monitor-exit p0

    #@7f
    throw v8
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 801
    if-nez p3, :cond_0

    #@3
    .line 802
    return-void

    #@4
    .line 804
    :cond_0
    monitor-enter p0

    #@5
    .line 805
    if-eq p1, v4, :cond_1

    #@7
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@a
    move-result p1

    #@b
    .line 806
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@d
    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    #@17
    .line 807
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_2

    #@19
    .line 808
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    #@1b
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    #@1e
    .line 809
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@20
    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 811
    :cond_2
    if-eq p1, v4, :cond_4

    #@29
    .line 812
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/util/ArrayList;

    #@31
    .line 813
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3

    #@33
    .line 814
    new-instance v1, Ljava/util/ArrayList;

    #@35
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 815
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 817
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    .line 819
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    if-eqz p2, :cond_6

    #@42
    .line 820
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljava/util/ArrayList;

    #@4a
    .line 821
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_5

    #@4c
    .line 822
    new-instance v1, Ljava/util/ArrayList;

    #@4e
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@51
    .line 823
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 825
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    monitor-exit p0

    #@5a
    .line 800
    return-void

    #@5b
    .line 804
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    #@5c
    monitor-exit p0

    #@5d
    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    #@0
    .prologue
    .line 832
    if-nez p1, :cond_0

    #@2
    .line 833
    return-void

    #@3
    .line 835
    :cond_0
    monitor-enter p0

    #@4
    .line 836
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@6
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    #@10
    .line 837
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_4

    #@12
    .line 838
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    #@15
    .line 839
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v2, v3, -0x1

    #@1d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@1f
    .line 840
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Ljava/util/ArrayList;

    #@27
    .line 841
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2a
    .line 842
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v3

    #@2e
    if-gtz v3, :cond_1

    #@30
    .line 843
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@35
    .line 839
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_0

    #@38
    .line 846
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@3a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@3d
    move-result v3

    #@3e
    add-int/lit8 v2, v3, -0x1

    #@40
    :goto_1
    if-ltz v2, :cond_4

    #@42
    .line 847
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Ljava/util/ArrayList;

    #@4a
    .line 848
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4d
    .line 849
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v3

    #@51
    if-gtz v3, :cond_3

    #@53
    .line 850
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@55
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 846
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@5a
    goto :goto_1

    #@5b
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    #@5c
    .line 831
    return-void

    #@5d
    .line 835
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    #@5e
    monitor-exit p0

    #@5f
    throw v3
.end method

.method public systemReady()V
    .locals 14

    #@0
    .prologue
    .line 251
    monitor-enter p0

    #@1
    .line 252
    const/4 v0, 0x0

    #@2
    .line 253
    .local v0, "changed":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v10

    #@8
    add-int/lit8 v2, v10, -0x1

    #@a
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    #@c
    .line 254
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v9

    #@12
    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    #@14
    .line 256
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v10, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@16
    invoke-static {v10}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    .line 257
    .local v7, "packageNames":[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_1

    #@20
    .line 258
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->clear()V

    #@23
    .line 259
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@28
    .line 260
    const/4 v0, 0x1

    #@29
    .line 253
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 264
    :cond_1
    iget-object v8, v9, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@2e
    .line 265
    .local v8, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v8, :cond_0

    #@30
    .line 269
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@33
    move-result-object v10

    #@34
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v4

    #@38
    .line 270
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v10

    #@3c
    if-eqz v10, :cond_3

    #@3e
    .line 271
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 272
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v1, -0x1

    #@45
    .line 274
    .local v1, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@48
    move-result-object v10

    #@49
    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@4b
    .line 276
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@4d
    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@4f
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    #@52
    move-result v12

    #@53
    .line 275
    const/16 v13, 0x2000

    #@55
    .line 274
    invoke-interface {v10, v11, v13, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    move-result v1

    #@59
    .line 279
    :goto_3
    :try_start_2
    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@5b
    iget v10, v10, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@5d
    if-eq v1, v10, :cond_2

    #@5f
    .line 280
    const-string/jumbo v10, "AppOps"

    #@62
    new-instance v11, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v12, "Pruning old package "

    #@6a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@70
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v11

    #@74
    .line 281
    const-string/jumbo v12, "/"

    #@77
    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v11

    #@7b
    .line 281
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@7d
    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v11

    #@81
    .line 281
    const-string/jumbo v12, ": new uid="

    #@84
    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v11

    #@88
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v11

    #@8c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v11

    #@90
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 282
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    #@96
    .line 283
    const/4 v0, 0x1

    #@97
    goto :goto_2

    #@98
    .line 287
    .end local v1    # "curUid":I
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    #@9b
    move-result v10

    #@9c
    if-eqz v10, :cond_0

    #@9e
    .line 288
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@a0
    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a3
    goto :goto_1

    #@a4
    .line 251
    .end local v2    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v7    # "packageNames":[Ljava/lang/String;
    .end local v8    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v10

    #@a5
    monitor-exit p0

    #@a6
    throw v10

    #@a7
    .line 291
    .restart local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    #@a9
    .line 292
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ac
    :cond_5
    monitor-exit p0

    #@ad
    .line 297
    const-class v10, Landroid/os/storage/MountServiceInternal;

    #@af
    .line 296
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b2
    move-result-object v5

    #@b3
    check-cast v5, Landroid/os/storage/MountServiceInternal;

    #@b5
    .line 299
    .local v5, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v10, Lcom/android/server/AppOpsService$2;

    #@b7
    invoke-direct {v10, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    #@ba
    .line 298
    invoke-virtual {v5, v10}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    #@bd
    .line 250
    return-void

    #@be
    .line 277
    .end local v5    # "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    .restart local v1    # "curUid":I
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v7    # "packageNames":[Ljava/lang/String;
    .restart local v8    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catch_0
    move-exception v3

    #@bf
    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 352
    monitor-enter p0

    #@1
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 354
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@e
    .line 355
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 351
    return-void

    #@13
    .line 352
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method writeState()V
    .locals 30

    #@0
    .prologue
    .line 1535
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@4
    move-object/from16 v27, v0

    #@6
    monitor-enter v27

    #@7
    .line 1536
    const/16 v26, 0x0

    #@9
    :try_start_0
    move-object/from16 v0, p0

    #@b
    move-object/from16 v1, v26

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@10
    move-result-object v4

    #@11
    .line 1540
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@15
    move-object/from16 v26, v0

    #@17
    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    move-result-object v20

    #@1b
    .line 1547
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    #@1d
    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@20
    .line 1548
    .local v16, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@22
    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@25
    move-result-object v26

    #@26
    move-object/from16 v0, v16

    #@28
    move-object/from16 v1, v20

    #@2a
    move-object/from16 v2, v26

    #@2c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@2f
    .line 1549
    const/16 v26, 0x1

    #@31
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@34
    move-result-object v26

    #@35
    const/16 v28, 0x0

    #@37
    move-object/from16 v0, v16

    #@39
    move-object/from16 v1, v28

    #@3b
    move-object/from16 v2, v26

    #@3d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@40
    .line 1550
    const-string/jumbo v26, "app-ops"

    #@43
    const/16 v28, 0x0

    #@45
    move-object/from16 v0, v16

    #@47
    move-object/from16 v1, v28

    #@49
    move-object/from16 v2, v26

    #@4b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 1552
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@52
    move-object/from16 v26, v0

    #@54
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    #@57
    move-result v25

    #@58
    .line 1553
    .local v25, "uidStateCount":I
    const/4 v7, 0x0

    #@59
    .local v7, "i":I
    :goto_0
    move/from16 v0, v25

    #@5b
    if-ge v7, v0, :cond_2

    #@5d
    .line 1554
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@61
    move-object/from16 v26, v0

    #@63
    move-object/from16 v0, v26

    #@65
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@68
    move-result-object v24

    #@69
    check-cast v24, Lcom/android/server/AppOpsService$UidState;

    #@6b
    .line 1555
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    #@6d
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@6f
    move-object/from16 v26, v0

    #@71
    if-eqz v26, :cond_1

    #@73
    move-object/from16 v0, v24

    #@75
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@77
    move-object/from16 v26, v0

    #@79
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    #@7c
    move-result v26

    #@7d
    if-lez v26, :cond_1

    #@7f
    .line 1556
    const-string/jumbo v26, "uid"

    #@82
    const/16 v28, 0x0

    #@84
    move-object/from16 v0, v16

    #@86
    move-object/from16 v1, v28

    #@88
    move-object/from16 v2, v26

    #@8a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8d
    .line 1557
    const-string/jumbo v26, "n"

    #@90
    move-object/from16 v0, v24

    #@92
    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@94
    move/from16 v28, v0

    #@96
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@99
    move-result-object v28

    #@9a
    const/16 v29, 0x0

    #@9c
    move-object/from16 v0, v16

    #@9e
    move-object/from16 v1, v29

    #@a0
    move-object/from16 v2, v26

    #@a2
    move-object/from16 v3, v28

    #@a4
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a7
    .line 1558
    move-object/from16 v0, v24

    #@a9
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@ab
    move-object/from16 v21, v0

    #@ad
    .line 1559
    .local v21, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@b0
    move-result v13

    #@b1
    .line 1560
    .local v13, "opCount":I
    const/4 v8, 0x0

    #@b2
    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_0

    #@b4
    .line 1561
    move-object/from16 v0, v21

    #@b6
    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@b9
    move-result v11

    #@ba
    .line 1562
    .local v11, "op":I
    move-object/from16 v0, v21

    #@bc
    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@bf
    move-result v10

    #@c0
    .line 1563
    .local v10, "mode":I
    const-string/jumbo v26, "op"

    #@c3
    const/16 v28, 0x0

    #@c5
    move-object/from16 v0, v16

    #@c7
    move-object/from16 v1, v28

    #@c9
    move-object/from16 v2, v26

    #@cb
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 1564
    const-string/jumbo v26, "n"

    #@d1
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d4
    move-result-object v28

    #@d5
    const/16 v29, 0x0

    #@d7
    move-object/from16 v0, v16

    #@d9
    move-object/from16 v1, v29

    #@db
    move-object/from16 v2, v26

    #@dd
    move-object/from16 v3, v28

    #@df
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e2
    .line 1565
    const-string/jumbo v26, "m"

    #@e5
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e8
    move-result-object v28

    #@e9
    const/16 v29, 0x0

    #@eb
    move-object/from16 v0, v16

    #@ed
    move-object/from16 v1, v29

    #@ef
    move-object/from16 v2, v26

    #@f1
    move-object/from16 v3, v28

    #@f3
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f6
    .line 1566
    const-string/jumbo v26, "op"

    #@f9
    const/16 v28, 0x0

    #@fb
    move-object/from16 v0, v16

    #@fd
    move-object/from16 v1, v28

    #@ff
    move-object/from16 v2, v26

    #@101
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@104
    .line 1560
    add-int/lit8 v8, v8, 0x1

    #@106
    goto :goto_1

    #@107
    .line 1541
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "mode":I
    .end local v11    # "op":I
    .end local v13    # "opCount":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v25    # "uidStateCount":I
    :catch_0
    move-exception v6

    #@108
    .line 1542
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v26, "AppOps"

    #@10b
    new-instance v28, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v29, "Failed to write state: "

    #@113
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v28

    #@117
    move-object/from16 v0, v28

    #@119
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v28

    #@11d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v28

    #@121
    move-object/from16 v0, v26

    #@123
    move-object/from16 v1, v28

    #@125
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@128
    monitor-exit v27

    #@129
    .line 1543
    return-void

    #@12a
    .line 1568
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v13    # "opCount":I
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v25    # "uidStateCount":I
    :cond_0
    :try_start_4
    const-string/jumbo v26, "uid"

    #@12d
    const/16 v28, 0x0

    #@12f
    move-object/from16 v0, v16

    #@131
    move-object/from16 v1, v28

    #@133
    move-object/from16 v2, v26

    #@135
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@138
    .line 1553
    .end local v8    # "j":I
    .end local v13    # "opCount":I
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@13a
    goto/16 :goto_0

    #@13c
    .line 1572
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    if-eqz v4, :cond_e

    #@13e
    .line 1573
    const/4 v9, 0x0

    #@13f
    .line 1574
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    #@140
    .end local v9    # "lastPkg":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@143
    move-result v26

    #@144
    move/from16 v0, v26

    #@146
    if-ge v7, v0, :cond_d

    #@148
    .line 1575
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14b
    move-result-object v17

    #@14c
    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    #@14e
    .line 1576
    .local v17, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    #@151
    move-result-object v26

    #@152
    move-object/from16 v0, v26

    #@154
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v26

    #@158
    if-nez v26, :cond_4

    #@15a
    .line 1577
    if-eqz v9, :cond_3

    #@15c
    .line 1578
    const-string/jumbo v26, "pkg"

    #@15f
    const/16 v28, 0x0

    #@161
    move-object/from16 v0, v16

    #@163
    move-object/from16 v1, v28

    #@165
    move-object/from16 v2, v26

    #@167
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16a
    .line 1580
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    #@16d
    move-result-object v9

    #@16e
    .line 1581
    .local v9, "lastPkg":Ljava/lang/String;
    const-string/jumbo v26, "pkg"

    #@171
    const/16 v28, 0x0

    #@173
    move-object/from16 v0, v16

    #@175
    move-object/from16 v1, v28

    #@177
    move-object/from16 v2, v26

    #@179
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17c
    .line 1582
    const-string/jumbo v26, "n"

    #@17f
    const/16 v28, 0x0

    #@181
    move-object/from16 v0, v16

    #@183
    move-object/from16 v1, v28

    #@185
    move-object/from16 v2, v26

    #@187
    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18a
    .line 1584
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v26, "uid"

    #@18d
    const/16 v28, 0x0

    #@18f
    move-object/from16 v0, v16

    #@191
    move-object/from16 v1, v28

    #@193
    move-object/from16 v2, v26

    #@195
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@198
    .line 1585
    const-string/jumbo v26, "n"

    #@19b
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    #@19e
    move-result v28

    #@19f
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a2
    move-result-object v28

    #@1a3
    const/16 v29, 0x0

    #@1a5
    move-object/from16 v0, v16

    #@1a7
    move-object/from16 v1, v29

    #@1a9
    move-object/from16 v2, v26

    #@1ab
    move-object/from16 v3, v28

    #@1ad
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b0
    .line 1586
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1b1
    .line 1587
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    #@1b4
    move-result v26

    #@1b5
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    #@1b8
    move-result-object v28

    #@1b9
    const/16 v29, 0x0

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    move/from16 v1, v26

    #@1bf
    move-object/from16 v2, v28

    #@1c1
    move/from16 v3, v29

    #@1c3
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@1c6
    move-result-object v14

    #@1c7
    .line 1590
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v14, :cond_b

    #@1c9
    .line 1591
    const-string/jumbo v26, "p"

    #@1cc
    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    #@1ce
    move/from16 v28, v0

    #@1d0
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@1d3
    move-result-object v28

    #@1d4
    const/16 v29, 0x0

    #@1d6
    move-object/from16 v0, v16

    #@1d8
    move-object/from16 v1, v29

    #@1da
    move-object/from16 v2, v26

    #@1dc
    move-object/from16 v3, v28

    #@1de
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1e1
    :goto_3
    :try_start_6
    monitor-exit p0

    #@1e2
    .line 1596
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    #@1e5
    move-result-object v15

    #@1e6
    .line 1597
    .local v15, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    #@1e7
    .restart local v8    # "j":I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@1ea
    move-result v26

    #@1eb
    move/from16 v0, v26

    #@1ed
    if-ge v8, v0, :cond_c

    #@1ef
    .line 1598
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f2
    move-result-object v12

    #@1f3
    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    #@1f5
    .line 1599
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v26, "op"

    #@1f8
    const/16 v28, 0x0

    #@1fa
    move-object/from16 v0, v16

    #@1fc
    move-object/from16 v1, v28

    #@1fe
    move-object/from16 v2, v26

    #@200
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@203
    .line 1600
    const-string/jumbo v26, "n"

    #@206
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    #@209
    move-result v28

    #@20a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@20d
    move-result-object v28

    #@20e
    const/16 v29, 0x0

    #@210
    move-object/from16 v0, v16

    #@212
    move-object/from16 v1, v29

    #@214
    move-object/from16 v2, v26

    #@216
    move-object/from16 v3, v28

    #@218
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21b
    .line 1601
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@21e
    move-result v26

    #@21f
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    #@222
    move-result v28

    #@223
    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@226
    move-result v28

    #@227
    move/from16 v0, v26

    #@229
    move/from16 v1, v28

    #@22b
    if-eq v0, v1, :cond_5

    #@22d
    .line 1602
    const-string/jumbo v26, "m"

    #@230
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    #@233
    move-result v28

    #@234
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@237
    move-result-object v28

    #@238
    const/16 v29, 0x0

    #@23a
    move-object/from16 v0, v16

    #@23c
    move-object/from16 v1, v29

    #@23e
    move-object/from16 v2, v26

    #@240
    move-object/from16 v3, v28

    #@242
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@245
    .line 1604
    :cond_5
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    #@248
    move-result-wide v22

    #@249
    .line 1605
    .local v22, "time":J
    const-wide/16 v28, 0x0

    #@24b
    cmp-long v26, v22, v28

    #@24d
    if-eqz v26, :cond_6

    #@24f
    .line 1606
    const-string/jumbo v26, "t"

    #@252
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@255
    move-result-object v28

    #@256
    const/16 v29, 0x0

    #@258
    move-object/from16 v0, v16

    #@25a
    move-object/from16 v1, v29

    #@25c
    move-object/from16 v2, v26

    #@25e
    move-object/from16 v3, v28

    #@260
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@263
    .line 1608
    :cond_6
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    #@266
    move-result-wide v22

    #@267
    .line 1609
    const-wide/16 v28, 0x0

    #@269
    cmp-long v26, v22, v28

    #@26b
    if-eqz v26, :cond_7

    #@26d
    .line 1610
    const-string/jumbo v26, "r"

    #@270
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@273
    move-result-object v28

    #@274
    const/16 v29, 0x0

    #@276
    move-object/from16 v0, v16

    #@278
    move-object/from16 v1, v29

    #@27a
    move-object/from16 v2, v26

    #@27c
    move-object/from16 v3, v28

    #@27e
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@281
    .line 1612
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@284
    move-result v5

    #@285
    .line 1613
    .local v5, "dur":I
    if-eqz v5, :cond_8

    #@287
    .line 1614
    const-string/jumbo v26, "d"

    #@28a
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@28d
    move-result-object v28

    #@28e
    const/16 v29, 0x0

    #@290
    move-object/from16 v0, v16

    #@292
    move-object/from16 v1, v29

    #@294
    move-object/from16 v2, v26

    #@296
    move-object/from16 v3, v28

    #@298
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29b
    .line 1616
    :cond_8
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    #@29e
    move-result v19

    #@29f
    .line 1617
    .local v19, "proxyUid":I
    const/16 v26, -0x1

    #@2a1
    move/from16 v0, v19

    #@2a3
    move/from16 v1, v26

    #@2a5
    if-eq v0, v1, :cond_9

    #@2a7
    .line 1618
    const-string/jumbo v26, "pu"

    #@2aa
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2ad
    move-result-object v28

    #@2ae
    const/16 v29, 0x0

    #@2b0
    move-object/from16 v0, v16

    #@2b2
    move-object/from16 v1, v29

    #@2b4
    move-object/from16 v2, v26

    #@2b6
    move-object/from16 v3, v28

    #@2b8
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2bb
    .line 1620
    :cond_9
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    #@2be
    move-result-object v18

    #@2bf
    .line 1621
    .local v18, "proxyPackageName":Ljava/lang/String;
    if-eqz v18, :cond_a

    #@2c1
    .line 1622
    const-string/jumbo v26, "pp"

    #@2c4
    const/16 v28, 0x0

    #@2c6
    move-object/from16 v0, v16

    #@2c8
    move-object/from16 v1, v28

    #@2ca
    move-object/from16 v2, v26

    #@2cc
    move-object/from16 v3, v18

    #@2ce
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d1
    .line 1624
    :cond_a
    const-string/jumbo v26, "op"

    #@2d4
    const/16 v28, 0x0

    #@2d6
    move-object/from16 v0, v16

    #@2d8
    move-object/from16 v1, v28

    #@2da
    move-object/from16 v2, v26

    #@2dc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2df
    .line 1597
    add-int/lit8 v8, v8, 0x1

    #@2e1
    goto/16 :goto_4

    #@2e3
    .line 1593
    .end local v5    # "dur":I
    .end local v8    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v18    # "proxyPackageName":Ljava/lang/String;
    .end local v19    # "proxyUid":I
    .end local v22    # "time":J
    :cond_b
    :try_start_7
    const-string/jumbo v26, "p"

    #@2e6
    const/16 v28, 0x0

    #@2e8
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2eb
    move-result-object v28

    #@2ec
    const/16 v29, 0x0

    #@2ee
    move-object/from16 v0, v16

    #@2f0
    move-object/from16 v1, v29

    #@2f2
    move-object/from16 v2, v26

    #@2f4
    move-object/from16 v3, v28

    #@2f6
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@2f9
    goto/16 :goto_3

    #@2fb
    .line 1586
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v26

    #@2fc
    :try_start_8
    monitor-exit p0

    #@2fd
    throw v26
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@2fe
    .line 1636
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "uidStateCount":I
    :catch_1
    move-exception v6

    #@2ff
    .line 1637
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v26, "AppOps"

    #@302
    const-string/jumbo v28, "Failed to write state, restoring backup."

    #@305
    move-object/from16 v0, v26

    #@307
    move-object/from16 v1, v28

    #@309
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30c
    .line 1638
    move-object/from16 v0, p0

    #@30e
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@310
    move-object/from16 v26, v0

    #@312
    move-object/from16 v0, v26

    #@314
    move-object/from16 v1, v20

    #@316
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@319
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    monitor-exit v27

    #@31a
    .line 1534
    return-void

    #@31b
    .line 1626
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "uidStateCount":I
    :cond_c
    :try_start_a
    const-string/jumbo v26, "uid"

    #@31e
    const/16 v28, 0x0

    #@320
    move-object/from16 v0, v16

    #@322
    move-object/from16 v1, v28

    #@324
    move-object/from16 v2, v26

    #@326
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@329
    .line 1574
    add-int/lit8 v7, v7, 0x1

    #@32b
    goto/16 :goto_2

    #@32d
    .line 1628
    .end local v8    # "j":I
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    if-eqz v9, :cond_e

    #@32f
    .line 1629
    const-string/jumbo v26, "pkg"

    #@332
    const/16 v28, 0x0

    #@334
    move-object/from16 v0, v16

    #@336
    move-object/from16 v1, v28

    #@338
    move-object/from16 v2, v26

    #@33a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33d
    .line 1633
    :cond_e
    const-string/jumbo v26, "app-ops"

    #@340
    const/16 v28, 0x0

    #@342
    move-object/from16 v0, v16

    #@344
    move-object/from16 v1, v28

    #@346
    move-object/from16 v2, v26

    #@348
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34b
    .line 1634
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@34e
    .line 1635
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@352
    move-object/from16 v26, v0

    #@354
    move-object/from16 v0, v26

    #@356
    move-object/from16 v1, v20

    #@358
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@35b
    goto :goto_5

    #@35c
    .line 1535
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v25    # "uidStateCount":I
    :catchall_1
    move-exception v26

    #@35d
    monitor-exit v27

    #@35e
    throw v26
.end method
