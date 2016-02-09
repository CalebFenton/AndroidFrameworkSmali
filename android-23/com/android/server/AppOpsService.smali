.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$1;
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

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
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

.field final mUidStates:Landroid/util/SparseArray;
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
.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    #@3
    .line 90
    new-instance v0, Lcom/android/server/AppOpsService$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    #@8
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@a
    .line 106
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@11
    .line 108
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    #@18
    .line 163
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    .line 162
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@1f
    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    .line 164
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@26
    .line 167
    new-instance v0, Landroid/util/ArrayMap;

    #@28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2b
    .line 166
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@2d
    .line 169
    new-instance v0, Landroid/util/SparseArray;

    #@2f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@32
    .line 168
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@34
    .line 192
    new-instance v0, Landroid/util/ArrayMap;

    #@36
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@3b
    .line 234
    new-instance v0, Landroid/util/AtomicFile;

    #@3d
    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@40
    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@42
    .line 235
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@44
    .line 236
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    #@47
    .line 233
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 637
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_0

    #@2
    .line 638
    return-object p0

    #@3
    .line 640
    :cond_0
    if-nez p0, :cond_1

    #@5
    .line 641
    new-instance p0, Ljava/util/HashMap;

    #@7
    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 643
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_1
    const/4 v1, 0x0

    #@b
    .line 644
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v7

    #@10
    if-ge v2, v7, :cond_6

    #@12
    .line 645
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    #@18
    .line 646
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Ljava/util/ArrayList;

    #@1e
    .line 647
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v6, :cond_4

    #@20
    .line 648
    new-instance v6, Ljava/util/ArrayList;

    #@22
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 649
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 660
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    #@2a
    .line 661
    new-instance v7, Landroid/util/Pair;

    #@2c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v8

    #@30
    invoke-direct {v7, p1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@33
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 644
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 651
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v5

    #@3d
    .line 652
    .local v5, "reportCount":I
    const/4 v3, 0x0

    #@3e
    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    #@40
    .line 653
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/util/Pair;

    #@46
    .line 654
    .local v4, "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@48
    check-cast v7, Ljava/lang/Integer;

    #@4a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@4d
    move-result v7

    #@4e
    if-ne v7, p2, :cond_5

    #@50
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@52
    check-cast v7, Ljava/lang/String;

    #@54
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_5

    #@5a
    .line 655
    const/4 v1, 0x1

    #@5b
    .line 656
    goto :goto_1

    #@5c
    .line 652
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@5e
    goto :goto_2

    #@5f
    .line 664
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
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
    .line 875
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/SparseArray;

    #@8
    .line 876
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    #@a
    .line 877
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    #@10
    .line 878
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
    .line 882
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 879
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
    .line 1765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1766
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1767
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
    .line 1764
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
    .line 369
    const/4 v12, 0x0

    #@1
    .line 370
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    #@3
    .line 371
    new-instance v12, Ljava/util/ArrayList;

    #@5
    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 372
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
    .line 373
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/AppOpsService$Op;

    #@15
    .line 374
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    #@17
    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    #@19
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    #@1b
    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@1d
    .line 375
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@1f
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@21
    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@23
    .line 376
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    #@25
    .line 374
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    #@28
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 372
    add-int/lit8 v11, v11, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 379
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
    .line 380
    aget v1, p2, v11

    #@34
    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lcom/android/server/AppOpsService$Op;

    #@3a
    .line 381
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_2

    #@3c
    .line 382
    if-nez v12, :cond_1

    #@3e
    .line 383
    new-instance v12, Ljava/util/ArrayList;

    #@40
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@43
    .line 385
    :cond_1
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    #@45
    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    #@47
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    #@49
    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@4b
    .line 386
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@4d
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@4f
    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@51
    .line 387
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    #@53
    .line 385
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    #@56
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 379
    :cond_2
    add-int/lit8 v11, v11, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 391
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v12
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1546
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1547
    const-string/jumbo v0, "  [-h] [CMD]"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 1548
    const-string/jumbo v0, "  -h: print this help text."

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1549
    const-string/jumbo v0, "Commands:"

    #@15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 1550
    const-string/jumbo v0, "  write-settings"

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 1551
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 1552
    const-string/jumbo v0, "  read-settings"

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 1553
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 1545
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
    .line 1198
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@4
    move-result-object v0

    #@5
    .line 1199
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    #@7
    .line 1200
    return-object v1

    #@8
    .line 1202
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
    .line 1206
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/server/AppOpsService$Op;

    #@7
    .line 1207
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    #@9
    .line 1208
    if-nez p3, :cond_0

    #@b
    .line 1209
    return-object v1

    #@c
    .line 1211
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
    .line 1212
    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    #@1a
    .line 1214
    :cond_1
    if-eqz p3, :cond_2

    #@1c
    .line 1215
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    #@1f
    .line 1217
    :cond_2
    return-object v0
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    #@0
    .prologue
    .line 1115
    if-nez p1, :cond_1

    #@2
    .line 1116
    const-string/jumbo p2, "root"

    #@5
    .line 1120
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 1117
    :cond_1
    const/16 v0, 0x7d0

    #@c
    if-ne p1, v0, :cond_0

    #@e
    .line 1118
    const-string/jumbo p2, "com.android.shell"

    #@11
    goto :goto_0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1124
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@4
    move-result-object v7

    #@5
    .line 1125
    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v7, :cond_0

    #@7
    .line 1126
    return-object v11

    #@8
    .line 1129
    :cond_0
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@a
    if-nez v8, :cond_2

    #@c
    .line 1130
    if-nez p3, :cond_1

    #@e
    .line 1131
    return-object v11

    #@f
    .line 1133
    :cond_1
    new-instance v8, Landroid/util/ArrayMap;

    #@11
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    #@14
    iput-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@16
    .line 1136
    :cond_2
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, Lcom/android/server/AppOpsService$Ops;

    #@1e
    .line 1137
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v5, :cond_9

    #@20
    .line 1138
    if-nez p3, :cond_3

    #@22
    .line 1139
    return-object v11

    #@23
    .line 1141
    :cond_3
    const/4 v4, 0x0

    #@24
    .line 1144
    .local v4, "isPrivileged":Z
    if-eqz p1, :cond_8

    #@26
    .line 1145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@29
    move-result-wide v2

    #@2a
    .line 1147
    .local v2, "ident":J
    const/4 v6, -0x1

    #@2b
    .line 1149
    .local v6, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2e
    move-result-object v8

    #@2f
    .line 1150
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@32
    move-result v9

    #@33
    const/4 v10, 0x0

    #@34
    .line 1149
    invoke-interface {v8, p2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@37
    move-result-object v0

    #@38
    .line 1151
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    #@3a
    .line 1152
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3c
    .line 1153
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    and-int/lit8 v8, v8, 0x8

    #@40
    if-eqz v8, :cond_5

    #@42
    const/4 v4, 0x1

    #@43
    .line 1164
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    if-eq v6, p1, :cond_7

    #@45
    .line 1167
    :try_start_1
    const-string/jumbo v8, "AppOps"

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "Bad call: specified package "

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    .line 1168
    const-string/jumbo v10, " under uid "

    #@5b
    .line 1167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v9

    #@63
    .line 1168
    const-string/jumbo v10, " but it is really "

    #@66
    .line 1167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    .line 1172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@78
    .line 1169
    return-object v11

    #@79
    .line 1153
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v4, 0x0

    #@7a
    goto :goto_0

    #@7b
    .line 1156
    :cond_6
    :try_start_2
    const-string/jumbo v8, "media"

    #@7e
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    move-result v8

    #@82
    if-eqz v8, :cond_4

    #@84
    .line 1157
    const/16 v6, 0x3f5

    #@86
    .line 1158
    const/4 v4, 0x0

    #@87
    goto :goto_0

    #@88
    .line 1161
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@89
    .line 1162
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v8, "AppOps"

    #@8c
    const-string/jumbo v9, "Could not contact PackageManager"

    #@8f
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    goto :goto_0

    #@93
    .line 1171
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    #@94
    .line 1172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@97
    .line 1171
    throw v8

    #@98
    .line 1172
    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9b
    .line 1175
    .end local v2    # "ident":J
    .end local v6    # "pkgUid":I
    :cond_8
    new-instance v5, Lcom/android/server/AppOpsService$Ops;

    #@9d
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v5, p2, v7, v4}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    #@a0
    .line 1176
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@a2
    invoke-virtual {v8, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    .line 1178
    .end local v4    # "isPrivileged":Z
    :cond_9
    return-object v5
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 1772
    const/4 v1, 0x0

    #@1
    .line 1774
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
    .line 1778
    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    #@b
    .line 1779
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@d
    return-object v2

    #@e
    .line 1781
    :cond_0
    return-object v1

    #@f
    .line 1775
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
    .line 1103
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    #@9
    .line 1104
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    #@b
    .line 1105
    if-nez p2, :cond_0

    #@d
    .line 1106
    return-object v2

    #@e
    .line 1108
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    #@10
    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    #@13
    .line 1109
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 1111
    :cond_1
    return-object v0
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1221
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@5
    move-result v2

    #@6
    .line 1222
    .local v2, "userHandle":I
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Z

    #@e
    .line 1223
    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_2

    #@10
    aget-boolean v3, v0, p2

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 1224
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 1225
    monitor-enter p0

    #@1b
    .line 1226
    const/4 v3, 0x1

    #@1c
    :try_start_0
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@1f
    move-result-object v1

    #@20
    .line 1227
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_0

    #@22
    iget-boolean v3, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    if-eqz v3, :cond_0

    #@26
    monitor-exit p0

    #@27
    .line 1228
    return v4

    #@28
    :cond_0
    monitor-exit p0

    #@29
    .line 1232
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    return v5

    #@2a
    .line 1225
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit p0

    #@2c
    throw v3

    #@2d
    .line 1234
    :cond_2
    return v4
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
    .line 948
    monitor-enter p0

    #@1
    .line 949
    const/4 v6, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v1

    #@6
    .line 950
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_0

    #@8
    .line 953
    const/4 v6, 0x2

    #@9
    monitor-exit p0

    #@a
    return v6

    #@b
    .line 955
    :cond_0
    const/4 v6, 0x1

    #@c
    :try_start_1
    invoke-direct {p0, v1, p1, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@f
    move-result-object v0

    #@10
    .line 956
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 957
    const/4 v6, 0x1

    #@17
    monitor-exit p0

    #@18
    return v6

    #@19
    .line 959
    :cond_1
    :try_start_2
    iget v6, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@1b
    const/4 v7, -0x1

    #@1c
    if-ne v6, v7, :cond_2

    #@1e
    .line 960
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
    .line 961
    const-string/jumbo v8, " code "

    #@3f
    .line 960
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    .line 961
    const-string/jumbo v8, " time="

    #@4a
    .line 960
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    .line 961
    iget-wide v8, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@50
    .line 960
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 961
    const-string/jumbo v8, " duration="

    #@57
    .line 960
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    .line 961
    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@5d
    .line 960
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
    .line 963
    :cond_2
    const/4 v6, 0x0

    #@69
    iput v6, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    #@6b
    .line 964
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@6e
    move-result v2

    #@6f
    .line 965
    .local v2, "switchCode":I
    iget-object v5, v1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@71
    .line 966
    .local v5, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@73
    if-eqz v6, :cond_3

    #@75
    .line 967
    iget-object v6, v5, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@77
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@7a
    move-result v4

    #@7b
    .line 968
    .local v4, "uidMode":I
    if-eqz v4, :cond_3

    #@7d
    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@80
    move-result-wide v6

    #@81
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    monitor-exit p0

    #@84
    .line 973
    return v4

    #@85
    .line 976
    .end local v4    # "uidMode":I
    :cond_3
    if-eq v2, p1, :cond_4

    #@87
    const/4 v6, 0x1

    #@88
    :try_start_3
    invoke-direct {p0, v1, v2, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@8b
    move-result-object v3

    #@8c
    .line 977
    .local v3, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    #@8e
    if-eqz v6, :cond_5

    #@90
    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@93
    move-result-wide v6

    #@94
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@96
    .line 981
    iget v6, v3, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    monitor-exit p0

    #@99
    return v6

    #@9a
    .line 976
    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    move-object v3, v0

    #@9b
    .restart local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    #@9c
    .line 985
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9f
    move-result-wide v6

    #@a0
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->time:J

    #@a2
    .line 986
    const-wide/16 v6, 0x0

    #@a4
    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@a6
    .line 987
    iput p4, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@a8
    .line 988
    iput-object p5, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@aa
    .line 989
    const/4 v6, 0x0

    #@ab
    monitor-exit p0

    #@ac
    return v6

    #@ad
    .line 948
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v5    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v6

    #@ae
    monitor-exit p0

    #@af
    throw v6
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
    .line 448
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
    .line 449
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@13
    move-result-object v0

    #@14
    .line 450
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    #@16
    .line 451
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    #@18
    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    #@1b
    .line 452
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@1e
    move-result v3

    #@1f
    if-gtz v3, :cond_1

    #@21
    .line 453
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@23
    .line 454
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@25
    .line 455
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    #@27
    .line 456
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@29
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 457
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    .line 458
    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@34
    .line 460
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 461
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    #@3f
    .line 447
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1189
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1190
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@7
    .line 1191
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    #@9
    .line 1192
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@10
    .line 1193
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@12
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@14
    const-wide/16 v2, 0x2710

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    .line 1188
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    #@0
    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1183
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@7
    .line 1184
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@b
    const-wide/32 v2, 0x1b7740

    #@e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    .line 1181
    :cond_0
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    #@0
    .prologue
    .line 1096
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x3e

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 1097
    return-void

    #@7
    .line 1099
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
    .line 1085
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1086
    return-void

    #@7
    .line 1088
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
    .line 1089
    return-void

    #@12
    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    #@17
    .line 1092
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
    .line 1091
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@23
    .line 1084
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 865
    monitor-enter p0

    #@1
    .line 866
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    .line 867
    .local v0, "mode":I
    if-eqz v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 868
    return v0

    #@9
    :cond_0
    monitor-exit p0

    #@a
    .line 871
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 865
    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 841
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@3
    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@6
    .line 843
    monitor-enter p0

    #@7
    .line 844
    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 845
    const/4 v3, 0x1

    #@e
    monitor-exit p0

    #@f
    return v3

    #@10
    .line 847
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@13
    move-result p1

    #@14
    .line 848
    const/4 v3, 0x0

    #@15
    invoke-direct {p0, p2, v3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@18
    move-result-object v2

    #@19
    .line 849
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v2, :cond_1

    #@1b
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 850
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@21
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    move-result v1

    #@25
    .line 851
    .local v1, "uidMode":I
    if-eqz v1, :cond_1

    #@27
    monitor-exit p0

    #@28
    .line 852
    return v1

    #@29
    .line 855
    .end local v1    # "uidMode":I
    :cond_1
    const/4 v3, 0x0

    #@2a
    :try_start_2
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    #@2d
    move-result-object v0

    #@2e
    .line 856
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_2

    #@30
    .line 857
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    move-result v3

    #@34
    monitor-exit p0

    #@35
    return v3

    #@36
    .line 859
    :cond_2
    :try_start_3
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    monitor-exit p0

    #@39
    return v3

    #@3a
    .line 843
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit p0

    #@3c
    throw v3
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 917
    monitor-enter p0

    #@1
    .line 918
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 919
    const/4 v0, 0x0

    #@9
    monitor-exit p0

    #@a
    return v0

    #@b
    .line 921
    :cond_0
    const/4 v0, 0x2

    #@c
    monitor-exit p0

    #@d
    return v0

    #@e
    .line 917
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 34
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1558
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v29, v0

    #@6
    const-string/jumbo v30, "android.permission.DUMP"

    #@9
    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v29

    #@d
    if-eqz v29, :cond_0

    #@f
    .line 1560
    new-instance v29, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v30, "Permission Denial: can\'t dump ApOps service from from pid="

    #@17
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v29

    #@1b
    .line 1561
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v30

    #@1f
    .line 1560
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v29

    #@23
    .line 1562
    const-string/jumbo v30, ", uid="

    #@26
    .line 1560
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v29

    #@2a
    .line 1562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v30

    #@2e
    .line 1560
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v29

    #@32
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v29

    #@36
    move-object/from16 v0, p2

    #@38
    move-object/from16 v1, v29

    #@3a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 1563
    return-void

    #@3e
    .line 1566
    :cond_0
    if-eqz p3, :cond_5

    #@40
    .line 1567
    const/4 v8, 0x0

    #@41
    .local v8, "i":I
    move-object/from16 v0, p3

    #@43
    array-length v0, v0

    #@44
    move/from16 v29, v0

    #@46
    if-lez v29, :cond_5

    #@48
    .line 1568
    aget-object v4, p3, v8

    #@4a
    .line 1569
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v29, "-h"

    #@4d
    move-object/from16 v0, v29

    #@4f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v29

    #@53
    if-eqz v29, :cond_1

    #@55
    .line 1570
    move-object/from16 v0, p0

    #@57
    move-object/from16 v1, p2

    #@59
    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@5c
    .line 1571
    return-void

    #@5d
    .line 1572
    :cond_1
    const-string/jumbo v29, "write-settings"

    #@60
    move-object/from16 v0, v29

    #@62
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v29

    #@66
    if-eqz v29, :cond_2

    #@68
    .line 1573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6b
    move-result-wide v26

    #@6c
    .line 1575
    .local v26, "token":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6d
    .line 1576
    :try_start_1
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@71
    move-object/from16 v29, v0

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    #@77
    move-object/from16 v30, v0

    #@79
    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    :try_start_2
    monitor-exit p0

    #@7d
    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->writeState()V

    #@80
    .line 1579
    const-string/jumbo v29, "Current settings written."

    #@83
    move-object/from16 v0, p2

    #@85
    move-object/from16 v1, v29

    #@87
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8a
    .line 1581
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8d
    .line 1583
    return-void

    #@8e
    .line 1575
    :catchall_0
    move-exception v29

    #@8f
    :try_start_3
    monitor-exit p0

    #@90
    throw v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@91
    .line 1580
    :catchall_1
    move-exception v29

    #@92
    .line 1581
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@95
    .line 1580
    throw v29

    #@96
    .line 1584
    .end local v26    # "token":J
    :cond_2
    const-string/jumbo v29, "read-settings"

    #@99
    move-object/from16 v0, v29

    #@9b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v29

    #@9f
    if-eqz v29, :cond_3

    #@a1
    .line 1585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a4
    move-result-wide v26

    #@a5
    .line 1587
    .restart local v26    # "token":J
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->readState()V

    #@a8
    .line 1588
    const-string/jumbo v29, "Last settings read."

    #@ab
    move-object/from16 v0, p2

    #@ad
    move-object/from16 v1, v29

    #@af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@b2
    .line 1590
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b5
    .line 1592
    return-void

    #@b6
    .line 1589
    :catchall_2
    move-exception v29

    #@b7
    .line 1590
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 1589
    throw v29

    #@bb
    .line 1593
    .end local v26    # "token":J
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@be
    move-result v29

    #@bf
    if-lez v29, :cond_4

    #@c1
    const/16 v29, 0x0

    #@c3
    move/from16 v0, v29

    #@c5
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    #@c8
    move-result v29

    #@c9
    const/16 v30, 0x2d

    #@cb
    move/from16 v0, v29

    #@cd
    move/from16 v1, v30

    #@cf
    if-ne v0, v1, :cond_4

    #@d1
    .line 1594
    new-instance v29, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v30, "Unknown option: "

    #@d9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v29

    #@dd
    move-object/from16 v0, v29

    #@df
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v29

    #@e3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v29

    #@e7
    move-object/from16 v0, p2

    #@e9
    move-object/from16 v1, v29

    #@eb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 1595
    return-void

    #@ef
    .line 1597
    :cond_4
    new-instance v29, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v30, "Unknown command: "

    #@f7
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v29

    #@fb
    move-object/from16 v0, v29

    #@fd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v29

    #@101
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v29

    #@105
    move-object/from16 v0, p2

    #@107
    move-object/from16 v1, v29

    #@109
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10c
    .line 1598
    return-void

    #@10d
    .line 1603
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_5
    monitor-enter p0

    #@10e
    .line 1604
    :try_start_5
    const-string/jumbo v29, "Current AppOps Service state:"

    #@111
    move-object/from16 v0, p2

    #@113
    move-object/from16 v1, v29

    #@115
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 1605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11b
    move-result-wide v12

    #@11c
    .line 1606
    .local v12, "now":J
    const/4 v11, 0x0

    #@11d
    .line 1607
    .local v11, "needSep":Z
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@121
    move-object/from16 v29, v0

    #@123
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    #@126
    move-result v29

    #@127
    if-lez v29, :cond_7

    #@129
    .line 1608
    const/4 v11, 0x1

    #@12a
    .line 1609
    const-string/jumbo v29, "  Op mode watchers:"

    #@12d
    move-object/from16 v0, p2

    #@12f
    move-object/from16 v1, v29

    #@131
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@134
    .line 1610
    const/4 v8, 0x0

    #@135
    .restart local v8    # "i":I
    :goto_0
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@139
    move-object/from16 v29, v0

    #@13b
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    #@13e
    move-result v29

    #@13f
    move/from16 v0, v29

    #@141
    if-ge v8, v0, :cond_7

    #@143
    .line 1611
    const-string/jumbo v29, "    Op "

    #@146
    move-object/from16 v0, p2

    #@148
    move-object/from16 v1, v29

    #@14a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@151
    move-object/from16 v29, v0

    #@153
    move-object/from16 v0, v29

    #@155
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@158
    move-result v29

    #@159
    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@15c
    move-result-object v29

    #@15d
    move-object/from16 v0, p2

    #@15f
    move-object/from16 v1, v29

    #@161
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    .line 1612
    const-string/jumbo v29, ":"

    #@167
    move-object/from16 v0, p2

    #@169
    move-object/from16 v1, v29

    #@16b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16e
    .line 1613
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@172
    move-object/from16 v29, v0

    #@174
    move-object/from16 v0, v29

    #@176
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@179
    move-result-object v5

    #@17a
    check-cast v5, Ljava/util/ArrayList;

    #@17c
    .line 1614
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    #@17d
    .local v9, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@180
    move-result v29

    #@181
    move/from16 v0, v29

    #@183
    if-ge v9, v0, :cond_6

    #@185
    .line 1615
    const-string/jumbo v29, "      #"

    #@188
    move-object/from16 v0, p2

    #@18a
    move-object/from16 v1, v29

    #@18c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    #@194
    const-string/jumbo v29, ": "

    #@197
    move-object/from16 v0, p2

    #@199
    move-object/from16 v1, v29

    #@19b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    .line 1616
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a1
    move-result-object v29

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    move-object/from16 v1, v29

    #@1a6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1a9
    .line 1614
    add-int/lit8 v9, v9, 0x1

    #@1ab
    goto :goto_1

    #@1ac
    .line 1610
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@1ae
    goto :goto_0

    #@1af
    .line 1620
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_7
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@1b3
    move-object/from16 v29, v0

    #@1b5
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@1b8
    move-result v29

    #@1b9
    if-lez v29, :cond_9

    #@1bb
    .line 1621
    const/4 v11, 0x1

    #@1bc
    .line 1622
    const-string/jumbo v29, "  Package mode watchers:"

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    move-object/from16 v1, v29

    #@1c3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c6
    .line 1623
    const/4 v8, 0x0

    #@1c7
    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@1cb
    move-object/from16 v29, v0

    #@1cd
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@1d0
    move-result v29

    #@1d1
    move/from16 v0, v29

    #@1d3
    if-ge v8, v0, :cond_9

    #@1d5
    .line 1624
    const-string/jumbo v29, "    Pkg "

    #@1d8
    move-object/from16 v0, p2

    #@1da
    move-object/from16 v1, v29

    #@1dc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@1e3
    move-object/from16 v29, v0

    #@1e5
    move-object/from16 v0, v29

    #@1e7
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1ea
    move-result-object v29

    #@1eb
    check-cast v29, Ljava/lang/String;

    #@1ed
    move-object/from16 v0, p2

    #@1ef
    move-object/from16 v1, v29

    #@1f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f4
    .line 1625
    const-string/jumbo v29, ":"

    #@1f7
    move-object/from16 v0, p2

    #@1f9
    move-object/from16 v1, v29

    #@1fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fe
    .line 1626
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@202
    move-object/from16 v29, v0

    #@204
    move-object/from16 v0, v29

    #@206
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@209
    move-result-object v5

    #@20a
    check-cast v5, Ljava/util/ArrayList;

    #@20c
    .line 1627
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    #@20d
    .restart local v9    # "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@210
    move-result v29

    #@211
    move/from16 v0, v29

    #@213
    if-ge v9, v0, :cond_8

    #@215
    .line 1628
    const-string/jumbo v29, "      #"

    #@218
    move-object/from16 v0, p2

    #@21a
    move-object/from16 v1, v29

    #@21c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    #@224
    const-string/jumbo v29, ": "

    #@227
    move-object/from16 v0, p2

    #@229
    move-object/from16 v1, v29

    #@22b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22e
    .line 1629
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@231
    move-result-object v29

    #@232
    move-object/from16 v0, p2

    #@234
    move-object/from16 v1, v29

    #@236
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@239
    .line 1627
    add-int/lit8 v9, v9, 0x1

    #@23b
    goto :goto_3

    #@23c
    .line 1623
    :cond_8
    add-int/lit8 v8, v8, 0x1

    #@23e
    goto :goto_2

    #@23f
    .line 1633
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_9
    move-object/from16 v0, p0

    #@241
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@243
    move-object/from16 v29, v0

    #@245
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@248
    move-result v29

    #@249
    if-lez v29, :cond_a

    #@24b
    .line 1634
    const/4 v11, 0x1

    #@24c
    .line 1635
    const-string/jumbo v29, "  All mode watchers:"

    #@24f
    move-object/from16 v0, p2

    #@251
    move-object/from16 v1, v29

    #@253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@256
    .line 1636
    const/4 v8, 0x0

    #@257
    .restart local v8    # "i":I
    :goto_4
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@25b
    move-object/from16 v29, v0

    #@25d
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@260
    move-result v29

    #@261
    move/from16 v0, v29

    #@263
    if-ge v8, v0, :cond_a

    #@265
    .line 1637
    const-string/jumbo v29, "    "

    #@268
    move-object/from16 v0, p2

    #@26a
    move-object/from16 v1, v29

    #@26c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26f
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@273
    move-object/from16 v29, v0

    #@275
    move-object/from16 v0, v29

    #@277
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@27a
    move-result-object v29

    #@27b
    move-object/from16 v0, p2

    #@27d
    move-object/from16 v1, v29

    #@27f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@282
    .line 1638
    const-string/jumbo v29, " -> "

    #@285
    move-object/from16 v0, p2

    #@287
    move-object/from16 v1, v29

    #@289
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28c
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@290
    move-object/from16 v29, v0

    #@292
    move-object/from16 v0, v29

    #@294
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@297
    move-result-object v29

    #@298
    move-object/from16 v0, p2

    #@29a
    move-object/from16 v1, v29

    #@29c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@29f
    .line 1636
    add-int/lit8 v8, v8, 0x1

    #@2a1
    goto :goto_4

    #@2a2
    .line 1641
    .end local v8    # "i":I
    :cond_a
    move-object/from16 v0, p0

    #@2a4
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@2a6
    move-object/from16 v29, v0

    #@2a8
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@2ab
    move-result v29

    #@2ac
    if-lez v29, :cond_c

    #@2ae
    .line 1642
    const/4 v11, 0x1

    #@2af
    .line 1643
    const-string/jumbo v29, "  Clients:"

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    move-object/from16 v1, v29

    #@2b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b9
    .line 1644
    const/4 v8, 0x0

    #@2ba
    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@2be
    move-object/from16 v29, v0

    #@2c0
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    #@2c3
    move-result v29

    #@2c4
    move/from16 v0, v29

    #@2c6
    if-ge v8, v0, :cond_c

    #@2c8
    .line 1645
    const-string/jumbo v29, "    "

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    move-object/from16 v1, v29

    #@2cf
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d2
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@2d6
    move-object/from16 v29, v0

    #@2d8
    move-object/from16 v0, v29

    #@2da
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2dd
    move-result-object v29

    #@2de
    move-object/from16 v0, p2

    #@2e0
    move-object/from16 v1, v29

    #@2e2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@2e5
    const-string/jumbo v29, ":"

    #@2e8
    move-object/from16 v0, p2

    #@2ea
    move-object/from16 v1, v29

    #@2ec
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ef
    .line 1646
    move-object/from16 v0, p0

    #@2f1
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@2f3
    move-object/from16 v29, v0

    #@2f5
    move-object/from16 v0, v29

    #@2f7
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2fa
    move-result-object v7

    #@2fb
    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    #@2fd
    .line 1647
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string/jumbo v29, "      "

    #@300
    move-object/from16 v0, p2

    #@302
    move-object/from16 v1, v29

    #@304
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@30c
    .line 1648
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@30e
    move-object/from16 v29, v0

    #@310
    if-eqz v29, :cond_b

    #@312
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@314
    move-object/from16 v29, v0

    #@316
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@319
    move-result v29

    #@31a
    if-lez v29, :cond_b

    #@31c
    .line 1649
    const-string/jumbo v29, "      Started ops:"

    #@31f
    move-object/from16 v0, p2

    #@321
    move-object/from16 v1, v29

    #@323
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@326
    .line 1650
    const/4 v9, 0x0

    #@327
    .restart local v9    # "j":I
    :goto_6
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@329
    move-object/from16 v29, v0

    #@32b
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@32e
    move-result v29

    #@32f
    move/from16 v0, v29

    #@331
    if-ge v9, v0, :cond_b

    #@333
    .line 1651
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@335
    move-object/from16 v29, v0

    #@337
    move-object/from16 v0, v29

    #@339
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33c
    move-result-object v15

    #@33d
    check-cast v15, Lcom/android/server/AppOpsService$Op;

    #@33f
    .line 1652
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v29, "        "

    #@342
    move-object/from16 v0, p2

    #@344
    move-object/from16 v1, v29

    #@346
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@349
    const-string/jumbo v29, "uid="

    #@34c
    move-object/from16 v0, p2

    #@34e
    move-object/from16 v1, v29

    #@350
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@353
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    #@355
    move/from16 v29, v0

    #@357
    move-object/from16 v0, p2

    #@359
    move/from16 v1, v29

    #@35b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@35e
    .line 1653
    const-string/jumbo v29, " pkg="

    #@361
    move-object/from16 v0, p2

    #@363
    move-object/from16 v1, v29

    #@365
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@368
    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@36a
    move-object/from16 v29, v0

    #@36c
    move-object/from16 v0, p2

    #@36e
    move-object/from16 v1, v29

    #@370
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@373
    .line 1654
    const-string/jumbo v29, " op="

    #@376
    move-object/from16 v0, p2

    #@378
    move-object/from16 v1, v29

    #@37a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37d
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    #@37f
    move/from16 v29, v0

    #@381
    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@384
    move-result-object v29

    #@385
    move-object/from16 v0, p2

    #@387
    move-object/from16 v1, v29

    #@389
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38c
    .line 1650
    add-int/lit8 v9, v9, 0x1

    #@38e
    goto :goto_6

    #@38f
    .line 1644
    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    #@391
    goto/16 :goto_5

    #@393
    .line 1659
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_c
    move-object/from16 v0, p0

    #@395
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@397
    move-object/from16 v29, v0

    #@399
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    #@39c
    move-result v29

    #@39d
    if-lez v29, :cond_10

    #@39f
    .line 1660
    const/16 v22, 0x0

    #@3a1
    .line 1661
    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    #@3a2
    .local v14, "o":I
    :goto_7
    move-object/from16 v0, p0

    #@3a4
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@3a6
    move-object/from16 v29, v0

    #@3a8
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    #@3ab
    move-result v29

    #@3ac
    move/from16 v0, v29

    #@3ae
    if-ge v14, v0, :cond_10

    #@3b0
    .line 1662
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@3b4
    move-object/from16 v29, v0

    #@3b6
    move-object/from16 v0, v29

    #@3b8
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    #@3bb
    move-result v29

    #@3bc
    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@3bf
    move-result-object v16

    #@3c0
    .line 1663
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@3c4
    move-object/from16 v29, v0

    #@3c6
    move-object/from16 v0, v29

    #@3c8
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3cb
    move-result-object v24

    #@3cc
    check-cast v24, Landroid/util/SparseArray;

    #@3ce
    .line 1664
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    #@3cf
    .restart local v8    # "i":I
    :goto_8
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@3d2
    move-result v29

    #@3d3
    move/from16 v0, v29

    #@3d5
    if-ge v8, v0, :cond_f

    #@3d7
    .line 1665
    if-nez v22, :cond_d

    #@3d9
    .line 1666
    const-string/jumbo v29, "  Audio Restrictions:"

    #@3dc
    move-object/from16 v0, p2

    #@3de
    move-object/from16 v1, v29

    #@3e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e3
    .line 1667
    const/16 v22, 0x1

    #@3e5
    .line 1668
    const/4 v11, 0x1

    #@3e6
    .line 1670
    :cond_d
    move-object/from16 v0, v24

    #@3e8
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@3eb
    move-result v28

    #@3ec
    .line 1671
    .local v28, "usage":I
    const-string/jumbo v29, "    "

    #@3ef
    move-object/from16 v0, p2

    #@3f1
    move-object/from16 v1, v29

    #@3f3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f6
    move-object/from16 v0, p2

    #@3f8
    move-object/from16 v1, v16

    #@3fa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fd
    .line 1672
    const-string/jumbo v29, " usage="

    #@400
    move-object/from16 v0, p2

    #@402
    move-object/from16 v1, v29

    #@404
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@407
    invoke-static/range {v28 .. v28}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    #@40a
    move-result-object v29

    #@40b
    move-object/from16 v0, p2

    #@40d
    move-object/from16 v1, v29

    #@40f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@412
    .line 1673
    move-object/from16 v0, v24

    #@414
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@417
    move-result-object v23

    #@418
    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    #@41a
    .line 1674
    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string/jumbo v29, ": mode="

    #@41d
    move-object/from16 v0, p2

    #@41f
    move-object/from16 v1, v29

    #@421
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@424
    move-object/from16 v0, v23

    #@426
    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    #@428
    move/from16 v29, v0

    #@42a
    move-object/from16 v0, p2

    #@42c
    move/from16 v1, v29

    #@42e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@431
    .line 1675
    move-object/from16 v0, v23

    #@433
    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@435
    move-object/from16 v29, v0

    #@437
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArraySet;->isEmpty()Z

    #@43a
    move-result v29

    #@43b
    if-nez v29, :cond_e

    #@43d
    .line 1676
    const-string/jumbo v29, "      Exceptions:"

    #@440
    move-object/from16 v0, p2

    #@442
    move-object/from16 v1, v29

    #@444
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@447
    .line 1677
    const/4 v9, 0x0

    #@448
    .restart local v9    # "j":I
    :goto_9
    move-object/from16 v0, v23

    #@44a
    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@44c
    move-object/from16 v29, v0

    #@44e
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArraySet;->size()I

    #@451
    move-result v29

    #@452
    move/from16 v0, v29

    #@454
    if-ge v9, v0, :cond_e

    #@456
    .line 1678
    const-string/jumbo v29, "        "

    #@459
    move-object/from16 v0, p2

    #@45b
    move-object/from16 v1, v29

    #@45d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@460
    move-object/from16 v0, v23

    #@462
    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@464
    move-object/from16 v29, v0

    #@466
    move-object/from16 v0, v29

    #@468
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@46b
    move-result-object v29

    #@46c
    check-cast v29, Ljava/lang/String;

    #@46e
    move-object/from16 v0, p2

    #@470
    move-object/from16 v1, v29

    #@472
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@475
    .line 1677
    add-int/lit8 v9, v9, 0x1

    #@477
    goto :goto_9

    #@478
    .line 1664
    .end local v9    # "j":I
    :cond_e
    add-int/lit8 v8, v8, 0x1

    #@47a
    goto/16 :goto_8

    #@47c
    .line 1661
    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v28    # "usage":I
    :cond_f
    add-int/lit8 v14, v14, 0x1

    #@47e
    goto/16 :goto_7

    #@480
    .line 1684
    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_10
    if-eqz v11, :cond_11

    #@482
    .line 1685
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@485
    .line 1687
    :cond_11
    const/4 v8, 0x0

    #@486
    .restart local v8    # "i":I
    :goto_a
    move-object/from16 v0, p0

    #@488
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@48a
    move-object/from16 v29, v0

    #@48c
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    #@48f
    move-result v29

    #@490
    move/from16 v0, v29

    #@492
    if-ge v8, v0, :cond_1a

    #@494
    .line 1688
    move-object/from16 v0, p0

    #@496
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@498
    move-object/from16 v29, v0

    #@49a
    move-object/from16 v0, v29

    #@49c
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@49f
    move-result-object v25

    #@4a0
    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    #@4a2
    .line 1690
    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string/jumbo v29, "  Uid "

    #@4a5
    move-object/from16 v0, p2

    #@4a7
    move-object/from16 v1, v29

    #@4a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ac
    move-object/from16 v0, v25

    #@4ae
    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@4b0
    move/from16 v29, v0

    #@4b2
    move-object/from16 v0, p2

    #@4b4
    move/from16 v1, v29

    #@4b6
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@4b9
    const-string/jumbo v29, ":"

    #@4bc
    move-object/from16 v0, p2

    #@4be
    move-object/from16 v1, v29

    #@4c0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c3
    .line 1692
    move-object/from16 v0, v25

    #@4c5
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@4c7
    move-object/from16 v18, v0

    #@4c9
    .line 1693
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_12

    #@4cb
    .line 1694
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    #@4ce
    move-result v17

    #@4cf
    .line 1695
    .local v17, "opModeCount":I
    const/4 v9, 0x0

    #@4d0
    .restart local v9    # "j":I
    :goto_b
    move/from16 v0, v17

    #@4d2
    if-ge v9, v0, :cond_12

    #@4d4
    .line 1696
    move-object/from16 v0, v18

    #@4d6
    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@4d9
    move-result v6

    #@4da
    .line 1697
    .local v6, "code":I
    move-object/from16 v0, v18

    #@4dc
    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@4df
    move-result v10

    #@4e0
    .line 1698
    .local v10, "mode":I
    const-string/jumbo v29, "      "

    #@4e3
    move-object/from16 v0, p2

    #@4e5
    move-object/from16 v1, v29

    #@4e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ea
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@4ed
    move-result-object v29

    #@4ee
    move-object/from16 v0, p2

    #@4f0
    move-object/from16 v1, v29

    #@4f2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f5
    .line 1699
    const-string/jumbo v29, ": mode="

    #@4f8
    move-object/from16 v0, p2

    #@4fa
    move-object/from16 v1, v29

    #@4fc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ff
    move-object/from16 v0, p2

    #@501
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    #@504
    .line 1695
    add-int/lit8 v9, v9, 0x1

    #@506
    goto :goto_b

    #@507
    .line 1703
    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_12
    move-object/from16 v0, v25

    #@509
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@50b
    move-object/from16 v21, v0

    #@50d
    .line 1704
    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_14

    #@50f
    .line 1687
    :cond_13
    add-int/lit8 v8, v8, 0x1

    #@511
    goto/16 :goto_a

    #@513
    .line 1708
    :cond_14
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@516
    move-result-object v29

    #@517
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51a
    move-result-object v20

    #@51b
    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_15
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@51e
    move-result v29

    #@51f
    if-eqz v29, :cond_13

    #@521
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@524
    move-result-object v19

    #@525
    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    #@527
    .line 1709
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string/jumbo v29, "    Package "

    #@52a
    move-object/from16 v0, p2

    #@52c
    move-object/from16 v1, v29

    #@52e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@531
    move-object/from16 v0, v19

    #@533
    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@535
    move-object/from16 v29, v0

    #@537
    move-object/from16 v0, p2

    #@539
    move-object/from16 v1, v29

    #@53b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53e
    const-string/jumbo v29, ":"

    #@541
    move-object/from16 v0, p2

    #@543
    move-object/from16 v1, v29

    #@545
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@548
    .line 1710
    const/4 v9, 0x0

    #@549
    .restart local v9    # "j":I
    :goto_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@54c
    move-result v29

    #@54d
    move/from16 v0, v29

    #@54f
    if-ge v9, v0, :cond_15

    #@551
    .line 1711
    move-object/from16 v0, v19

    #@553
    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    #@556
    move-result-object v15

    #@557
    check-cast v15, Lcom/android/server/AppOpsService$Op;

    #@559
    .line 1712
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v29, "      "

    #@55c
    move-object/from16 v0, p2

    #@55e
    move-object/from16 v1, v29

    #@560
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@563
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    #@565
    move/from16 v29, v0

    #@567
    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@56a
    move-result-object v29

    #@56b
    move-object/from16 v0, p2

    #@56d
    move-object/from16 v1, v29

    #@56f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@572
    .line 1713
    const-string/jumbo v29, ": mode="

    #@575
    move-object/from16 v0, p2

    #@577
    move-object/from16 v1, v29

    #@579
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57c
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    #@57e
    move/from16 v29, v0

    #@580
    move-object/from16 v0, p2

    #@582
    move/from16 v1, v29

    #@584
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@587
    .line 1714
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    #@589
    move-wide/from16 v30, v0

    #@58b
    const-wide/16 v32, 0x0

    #@58d
    cmp-long v29, v30, v32

    #@58f
    if-eqz v29, :cond_16

    #@591
    .line 1715
    const-string/jumbo v29, "; time="

    #@594
    move-object/from16 v0, p2

    #@596
    move-object/from16 v1, v29

    #@598
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59b
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    #@59d
    move-wide/from16 v30, v0

    #@59f
    sub-long v30, v12, v30

    #@5a1
    move-wide/from16 v0, v30

    #@5a3
    move-object/from16 v2, p2

    #@5a5
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@5a8
    .line 1716
    const-string/jumbo v29, " ago"

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    move-object/from16 v1, v29

    #@5af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b2
    .line 1718
    :cond_16
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@5b4
    move-wide/from16 v30, v0

    #@5b6
    const-wide/16 v32, 0x0

    #@5b8
    cmp-long v29, v30, v32

    #@5ba
    if-eqz v29, :cond_17

    #@5bc
    .line 1719
    const-string/jumbo v29, "; rejectTime="

    #@5bf
    move-object/from16 v0, p2

    #@5c1
    move-object/from16 v1, v29

    #@5c3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c6
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@5c8
    move-wide/from16 v30, v0

    #@5ca
    sub-long v30, v12, v30

    #@5cc
    move-wide/from16 v0, v30

    #@5ce
    move-object/from16 v2, p2

    #@5d0
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@5d3
    .line 1720
    const-string/jumbo v29, " ago"

    #@5d6
    move-object/from16 v0, p2

    #@5d8
    move-object/from16 v1, v29

    #@5da
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dd
    .line 1722
    :cond_17
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    #@5df
    move/from16 v29, v0

    #@5e1
    const/16 v30, -0x1

    #@5e3
    move/from16 v0, v29

    #@5e5
    move/from16 v1, v30

    #@5e7
    if-ne v0, v1, :cond_19

    #@5e9
    .line 1723
    const-string/jumbo v29, " (running)"

    #@5ec
    move-object/from16 v0, p2

    #@5ee
    move-object/from16 v1, v29

    #@5f0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f3
    .line 1727
    :cond_18
    :goto_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@5f6
    .line 1710
    add-int/lit8 v9, v9, 0x1

    #@5f8
    goto/16 :goto_c

    #@5fa
    .line 1724
    :cond_19
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    #@5fc
    move/from16 v29, v0

    #@5fe
    if-eqz v29, :cond_18

    #@600
    .line 1725
    const-string/jumbo v29, "; duration="

    #@603
    move-object/from16 v0, p2

    #@605
    move-object/from16 v1, v29

    #@607
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60a
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    #@60c
    move/from16 v29, v0

    #@60e
    move/from16 v0, v29

    #@610
    int-to-long v0, v0

    #@611
    move-wide/from16 v30, v0

    #@613
    move-wide/from16 v0, v30

    #@615
    move-object/from16 v2, p2

    #@617
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@61a
    goto :goto_d

    #@61b
    .line 1603
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
    :catchall_3
    move-exception v29

    #@61c
    monitor-exit p0

    #@61d
    throw v29

    #@61e
    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_1a
    monitor-exit p0

    #@61f
    .line 1557
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1045
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@3
    .line 1046
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@6
    move-object v0, p1

    #@7
    .line 1047
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    #@9
    .line 1048
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    #@a
    .line 1049
    const/4 v2, 0x1

    #@b
    :try_start_0
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 1050
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_0

    #@11
    monitor-exit p0

    #@12
    .line 1051
    return-void

    #@13
    .line 1053
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 1054
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 1055
    new-instance v2, Ljava/lang/IllegalStateException;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Operation not started: uid"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 1056
    const-string/jumbo v4, " pkg="

    #@36
    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 1056
    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@3c
    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 1056
    const-string/jumbo v4, " op="

    #@43
    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 1056
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    #@49
    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 1048
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v2

    #@56
    monitor-exit p0

    #@57
    throw v2

    #@58
    .line 1059
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    .line 1044
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1069
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@3
    if-gt v0, v1, :cond_1

    #@5
    .line 1070
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 1071
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
    .line 1072
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
    .line 1078
    :goto_0
    const/4 v0, 0x0

    #@1c
    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@1e
    .line 1068
    :goto_1
    return-void

    #@1f
    .line 1074
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
    .line 1075
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    #@3d
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 1075
    const-string/jumbo v2, " code "

    #@44
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 1075
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    #@4a
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 1075
    const-string/jumbo v2, " time="

    #@51
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 1075
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    #@57
    .line 1074
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 1076
    const-string/jumbo v2, " duration="

    #@5e
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 1076
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    #@64
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 1076
    const-string/jumbo v2, " nesting="

    #@6b
    .line 1074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 1076
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@71
    .line 1074
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
    .line 1080
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
    .locals 9
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
    const/4 v8, 0x0

    #@1
    .line 428
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.GET_APP_OPS_STATS"

    #@6
    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v6

    #@a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v7

    #@e
    .line 428
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@11
    .line 430
    monitor-enter p0

    #@12
    .line 431
    const/4 v4, 0x0

    #@13
    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    .line 432
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    #@19
    monitor-exit p0

    #@1a
    .line 433
    return-object v8

    #@1b
    .line 435
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 436
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    #@21
    monitor-exit p0

    #@22
    .line 437
    return-object v8

    #@23
    .line 439
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    #@25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@28
    .line 440
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    #@2a
    .line 441
    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@2c
    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@2e
    iget v5, v5, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@30
    .line 440
    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    #@33
    .line 442
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 443
    return-object v1

    #@38
    .line 430
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit p0

    #@3a
    throw v4
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
    .line 396
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    #@7
    .line 397
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
    .line 396
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@14
    .line 398
    const/4 v7, 0x0

    #@15
    .line 399
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    #@16
    .line 400
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v12

    #@1e
    .line 401
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    #@1f
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    #@21
    .line 402
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
    .line 403
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
    .line 401
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 406
    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@3c
    .line 407
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v4

    #@40
    .line 408
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
    .line 409
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v6

    #@48
    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    #@4a
    .line 410
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, p1

    #@4e
    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    #@51
    move-result-object v9

    #@52
    .line 411
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    #@54
    .line 412
    if-nez v8, :cond_3

    #@56
    .line 413
    new-instance v7, Ljava/util/ArrayList;

    #@58
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5b
    .line 415
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    #@5d
    .line 416
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@5f
    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@61
    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@63
    .line 415
    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    #@66
    .line 417
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 408
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
    .line 422
    return-object v7

    #@6f
    .line 399
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
    .line 829
    monitor-enter p0

    #@1
    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    #@9
    .line 831
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    #@b
    .line 832
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    #@d
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    #@10
    .line 833
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
    .line 835
    return-object v0

    #@17
    .line 829
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
    .line 941
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@3
    .line 942
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@6
    .line 943
    const/4 v4, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v2, p2

    #@b
    move-object v3, p3

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@3
    .line 930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    .line 931
    const/4 v4, -0x1

    #@8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move-object v3, p2

    #@c
    .line 930
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    #@f
    move-result v6

    #@10
    .line 932
    .local v6, "proxyMode":I
    if-nez v6, :cond_0

    #@12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v0

    #@16
    if-ne v0, p3, :cond_1

    #@18
    .line 933
    :cond_0
    return v6

    #@19
    .line 936
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v4

    #@1d
    move-object v0, p0

    #@1e
    move v1, p1

    #@1f
    move v2, p3

    #@20
    move-object v3, p4

    #@21
    move-object v5, p2

    #@22
    .line 935
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    monitor-enter p0

    #@1
    .line 321
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
    .line 322
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 323
    return-void

    #@d
    .line 326
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 329
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
    .line 330
    const/4 v0, 0x1

    #@1b
    .line 334
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
    .line 335
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    array-length v2, v2

    #@2a
    if-gtz v2, :cond_2

    #@2c
    .line 336
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    #@31
    .line 339
    :cond_2
    if-eqz v0, :cond_3

    #@33
    .line 340
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :cond_3
    monitor-exit p0

    #@37
    .line 319
    return-void

    #@38
    .line 320
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
    .line 1065
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@2
    .line 241
    const-string/jumbo v0, "appops"

    #@5
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 239
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
    .line 1336
    const-string/jumbo v4, "n"

    #@4
    const/4 v5, 0x0

    #@5
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1337
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@c
    move-result v0

    #@d
    .line 1339
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
    .line 1340
    if-ne v3, v7, :cond_1

    #@16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@19
    move-result v4

    #@1a
    if-le v4, v0, :cond_3

    #@1c
    .line 1341
    :cond_1
    if-eq v3, v7, :cond_0

    #@1e
    const/4 v4, 0x4

    #@1f
    if-eq v3, v4, :cond_0

    #@21
    .line 1345
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 1346
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 1347
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@31
    goto :goto_0

    #@32
    .line 1349
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
    .line 1350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 1349
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
    .line 1351
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@53
    goto :goto_0

    #@54
    .line 1335
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 18

    #@0
    .prologue
    .line 1238
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@4
    monitor-enter v15

    #@5
    .line 1239
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@6
    .line 1242
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
    .line 1247
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@f
    .line 1248
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
    .line 1250
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@19
    move-result-object v9

    #@1a
    .line 1251
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1c
    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1f
    move-result-object v14

    #@20
    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@23
    .line 1253
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
    .line 1254
    const/4 v14, 0x1

    #@2b
    if-ne v13, v14, :cond_0

    #@2d
    .line 1258
    :cond_1
    const/4 v14, 0x2

    #@2e
    if-eq v13, v14, :cond_3

    #@30
    .line 1259
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
    .line 1281
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    #@3c
    .line 1282
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
    .line 1294
    if-nez v11, :cond_2

    #@5c
    .line 1295
    :try_start_5
    move-object/from16 v0, p0

    #@5e
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@60
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@63
    .line 1298
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
    .line 1237
    return-void

    #@69
    .line 1243
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    #@6a
    .line 1244
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
    .line 1245
    return-void

    #@9a
    .line 1262
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
    .line 1263
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
    .line 1264
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
    .line 1265
    :cond_5
    const/4 v14, 0x3

    #@af
    if-eq v13, v14, :cond_4

    #@b1
    const/4 v14, 0x4

    #@b2
    if-eq v13, v14, :cond_4

    #@b4
    .line 1269
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b7
    move-result-object v12

    #@b8
    .line 1270
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    #@bb
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v14

    #@bf
    if-eqz v14, :cond_7

    #@c1
    .line 1271
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
    .line 1283
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    #@c8
    .line 1284
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
    .line 1294
    if-nez v11, :cond_6

    #@e8
    .line 1295
    :try_start_c
    move-object/from16 v0, p0

    #@ea
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@ec
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@ef
    .line 1298
    :cond_6
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1299
    :catch_3
    move-exception v2

    #@f5
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@f7
    .line 1272
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
    .line 1273
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
    .line 1285
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    #@107
    .line 1286
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
    .line 1294
    if-nez v11, :cond_8

    #@127
    .line 1295
    :try_start_10
    move-object/from16 v0, p0

    #@129
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@12b
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@12e
    .line 1298
    :cond_8
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@131
    goto/16 :goto_0

    #@133
    .line 1299
    :catch_5
    move-exception v2

    #@134
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@136
    .line 1275
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
    .line 1276
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@148
    move-result-object v17

    #@149
    .line 1275
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
    .line 1277
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
    .line 1287
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_6
    move-exception v7

    #@15c
    .line 1288
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
    .line 1294
    if-nez v11, :cond_a

    #@17c
    .line 1295
    :try_start_14
    move-object/from16 v0, p0

    #@17e
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@180
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    #@183
    .line 1298
    :cond_a
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    #@186
    goto/16 :goto_0

    #@188
    .line 1299
    :catch_7
    move-exception v2

    #@189
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@18b
    .line 1280
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_b
    const/4 v11, 0x1

    #@18c
    .line 1294
    if-nez v11, :cond_c

    #@18e
    .line 1295
    :try_start_16
    move-object/from16 v0, p0

    #@190
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@192
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    #@195
    .line 1298
    :cond_c
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@198
    goto/16 :goto_0

    #@19a
    .line 1299
    :catch_8
    move-exception v2

    #@19b
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@19d
    .line 1291
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_9
    move-exception v4

    #@19e
    .line 1292
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
    .line 1294
    if-nez v11, :cond_d

    #@1be
    .line 1295
    :try_start_19
    move-object/from16 v0, p0

    #@1c0
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1c2
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    #@1c5
    .line 1298
    :cond_d
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    #@1c8
    goto/16 :goto_0

    #@1ca
    .line 1299
    :catch_a
    move-exception v2

    #@1cb
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@1cd
    .line 1289
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    #@1ce
    .line 1290
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
    .line 1294
    if-nez v11, :cond_e

    #@1ee
    .line 1295
    :try_start_1c
    move-object/from16 v0, p0

    #@1f0
    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@1f2
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    #@1f5
    .line 1298
    :cond_e
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    #@1f8
    goto/16 :goto_0

    #@1fa
    .line 1299
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
    .line 1293
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    #@201
    .line 1294
    if-nez v11, :cond_f

    #@203
    .line 1295
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
    .line 1298
    :cond_f
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    #@20f
    .line 1293
    :goto_2
    :try_start_20
    throw v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    #@210
    .line 1239
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
    .line 1238
    :catchall_2
    move-exception v14

    #@214
    monitor-exit v15

    #@215
    throw v14

    #@216
    .line 1299
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
    .line 1358
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
    .line 1359
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
    .line 1360
    .local v8, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    #@23
    .line 1361
    .local v7, "isPrivileged":Z
    if-nez v8, :cond_d

    #@25
    .line 1363
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@28
    move-result-object v13

    #@29
    .line 1364
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_c

    #@2b
    .line 1365
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2e
    move-result-object v21

    #@2f
    .line 1366
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    #@32
    move-result v22

    #@33
    const/16 v23, 0x0

    #@35
    .line 1365
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
    .line 1367
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    #@43
    .line 1368
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
    .line 1381
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "isPrivileged":Z
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4f
    move-result v12

    #@50
    .line 1383
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
    .line 1384
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
    .line 1385
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
    .line 1389
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7f
    move-result-object v16

    #@80
    .line 1390
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
    .line 1391
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
    .line 1392
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
    .line 1393
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@bc
    .line 1394
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@bf
    move-result v21

    #@c0
    move/from16 v0, v21

    #@c2
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    #@c4
    .line 1396
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
    .line 1397
    .local v17, "time":Ljava/lang/String;
    if-eqz v17, :cond_4

    #@d5
    .line 1398
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@d8
    move-result-wide v22

    #@d9
    move-wide/from16 v0, v22

    #@db
    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->time:J

    #@dd
    .line 1400
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
    .line 1401
    if-eqz v17, :cond_5

    #@ee
    .line 1402
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@f1
    move-result-wide v22

    #@f2
    move-wide/from16 v0, v22

    #@f4
    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@f6
    .line 1404
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
    .line 1405
    .local v5, "dur":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@107
    .line 1406
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10a
    move-result v21

    #@10b
    move/from16 v0, v21

    #@10d
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    #@10f
    .line 1408
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
    .line 1409
    .local v15, "proxyUid":Ljava/lang/String;
    if-eqz v15, :cond_7

    #@120
    .line 1410
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@123
    move-result v21

    #@124
    move/from16 v0, v21

    #@126
    iput v0, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    #@128
    .line 1412
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
    .line 1413
    .local v14, "proxyPackageName":Ljava/lang/String;
    if-eqz v14, :cond_8

    #@139
    .line 1414
    iput-object v14, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    #@13b
    .line 1417
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
    .line 1418
    .local v20, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v20

    #@149
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@14b
    move-object/from16 v21, v0

    #@14d
    if-nez v21, :cond_9

    #@14f
    .line 1419
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
    .line 1422
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
    .line 1423
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v11, :cond_a

    #@16c
    .line 1424
    new-instance v11, Lcom/android/server/AppOpsService$Ops;

    #@16e
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    #@170
    move-object/from16 v1, v20

    #@172
    invoke-direct {v11, v0, v1, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    #@175
    .line 1425
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
    .line 1427
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
    .line 1368
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
    .line 1373
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c
    return-void

    #@191
    .line 1375
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    #@192
    .line 1376
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
    .line 1379
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_d
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1a4
    move-result v7

    #@1a5
    .local v7, "isPrivileged":Z
    goto/16 :goto_0

    #@1a7
    .line 1429
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
    .line 1430
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b9
    move-result-object v23

    #@1ba
    .line 1429
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
    .line 1431
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1c8
    goto/16 :goto_1

    #@1ca
    .line 1357
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
    .line 1308
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
    .line 1309
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v2

    #@12
    .line 1311
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
    .line 1312
    if-ne v4, v12, :cond_1

    #@1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1d
    move-result v7

    #@1e
    if-le v7, v2, :cond_4

    #@20
    .line 1313
    :cond_1
    if-eq v4, v12, :cond_0

    #@22
    const/4 v7, 0x4

    #@23
    if-eq v4, v7, :cond_0

    #@25
    .line 1317
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 1318
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    #@2c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_3

    #@32
    .line 1319
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
    .line 1320
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
    .line 1321
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    #@4b
    move-result-object v6

    #@4c
    .line 1322
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@4e
    if-nez v7, :cond_2

    #@50
    .line 1323
    new-instance v7, Landroid/util/SparseIntArray;

    #@52
    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    #@55
    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@57
    .line 1325
    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@59
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@5c
    goto :goto_0

    #@5d
    .line 1327
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
    .line 1328
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    .line 1327
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
    .line 1329
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7e
    goto :goto_0

    #@7f
    .line 1307
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1760
    const-string/jumbo v0, "removeUser"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    #@6
    .line 1761
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@b
    .line 1759
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 30
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 669
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v2

    #@4
    .line 670
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v3

    #@8
    .line 671
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    #@f
    .line 672
    const/4 v6, 0x0

    #@10
    .line 671
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@13
    .line 674
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
    .line 673
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@1e
    move-result p1

    #@1f
    .line 676
    const/16 v27, -0x1

    #@21
    .line 677
    .local v27, "reqUid":I
    if-eqz p2, :cond_0

    #@23
    .line 679
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v4

    #@27
    move-object/from16 v0, p2

    #@29
    move/from16 v1, p1

    #@2b
    invoke-interface {v4, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@2e
    move-result v27

    #@2f
    .line 686
    :cond_0
    :goto_0
    const/4 v9, 0x0

    #@30
    .line 687
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    #@31
    .line 688
    const/4 v11, 0x0

    #@32
    .line 689
    .local v11, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@39
    move-result v4

    #@3a
    add-int/lit8 v18, v4, -0x1

    #@3c
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local v18, "i":I
    :goto_1
    if-ltz v18, :cond_d

    #@3e
    .line 690
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@42
    move/from16 v0, v18

    #@44
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v29

    #@48
    check-cast v29, Lcom/android/server/AppOpsService$UidState;

    #@4a
    .line 692
    .local v29, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v29

    #@4c
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@4e
    move-object/from16 v21, v0

    #@50
    .line 693
    .local v21, "opModes":Landroid/util/SparseIntArray;
    if-eqz v21, :cond_4

    #@52
    move-object/from16 v0, v29

    #@54
    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@56
    move/from16 v0, v27

    #@58
    if-eq v4, v0, :cond_1

    #@5a
    const/4 v4, -0x1

    #@5b
    move/from16 v0, v27

    #@5d
    if-ne v0, v4, :cond_4

    #@5f
    .line 694
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@62
    move-result v28

    #@63
    .line 695
    .local v28, "uidOpCount":I
    add-int/lit8 v20, v28, -0x1

    #@65
    .local v20, "j":I
    :goto_2
    if-ltz v20, :cond_4

    #@67
    .line 696
    move-object/from16 v0, v21

    #@69
    move/from16 v1, v20

    #@6b
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@6e
    move-result v12

    #@6f
    .line 697
    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_3

    #@75
    .line 698
    move-object/from16 v0, v21

    #@77
    move/from16 v1, v20

    #@79
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@7c
    .line 699
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@7f
    move-result v4

    #@80
    if-gtz v4, :cond_2

    #@82
    .line 700
    const/4 v4, 0x0

    #@83
    move-object/from16 v0, v29

    #@85
    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@87
    .line 702
    :cond_2
    move-object/from16 v0, v29

    #@89
    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@8b
    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    const/4 v4, 0x0

    #@90
    array-length v7, v6

    #@91
    move v5, v4

    #@92
    :goto_3
    if-ge v5, v7, :cond_3

    #@94
    aget-object v22, v6, v5

    #@96
    .line 704
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@9a
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v4

    #@9e
    check-cast v4, Ljava/util/ArrayList;

    #@a0
    .line 703
    move-object/from16 v0, v22

    #@a2
    invoke-static {v9, v0, v12, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    #@a5
    move-result-object v9

    #@a6
    .line 706
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    move-object/from16 v0, p0

    #@a8
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@aa
    move-object/from16 v0, v22

    #@ac
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    move-result-object v4

    #@b0
    check-cast v4, Ljava/util/ArrayList;

    #@b2
    .line 705
    move-object/from16 v0, v22

    #@b4
    invoke-static {v9, v0, v12, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    #@b7
    move-result-object v9

    #@b8
    .line 702
    add-int/lit8 v4, v5, 0x1

    #@ba
    move v5, v4

    #@bb
    goto :goto_3

    #@bc
    .line 695
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, -0x1

    #@be
    goto :goto_2

    #@bf
    .line 712
    .end local v12    # "code":I
    .end local v20    # "j":I
    .end local v28    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v29

    #@c1
    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@c3
    if-nez v4, :cond_6

    #@c5
    .line 689
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, -0x1

    #@c7
    goto/16 :goto_1

    #@c9
    .line 716
    :cond_6
    const/4 v4, -0x1

    #@ca
    move/from16 v0, p1

    #@cc
    if-eq v0, v4, :cond_7

    #@ce
    .line 717
    move-object/from16 v0, v29

    #@d0
    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@d2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@d5
    move-result v4

    #@d6
    move/from16 v0, p1

    #@d8
    if-ne v0, v4, :cond_5

    #@da
    .line 722
    :cond_7
    move-object/from16 v0, v29

    #@dc
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@de
    move-object/from16 v23, v0

    #@e0
    .line 723
    .local v23, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e3
    move-result-object v4

    #@e4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e7
    move-result-object v19

    #@e8
    .line 724
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@eb
    move-result v4

    #@ec
    if-eqz v4, :cond_c

    #@ee
    .line 725
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f1
    move-result-object v16

    #@f2
    check-cast v16, Ljava/util/Map$Entry;

    #@f4
    .line 726
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f7
    move-result-object v22

    #@f8
    check-cast v22, Ljava/lang/String;

    #@fa
    .line 727
    .restart local v22    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    #@fc
    move-object/from16 v0, p2

    #@fe
    move-object/from16 v1, v22

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v4

    #@104
    if-eqz v4, :cond_8

    #@106
    .line 731
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@109
    move-result-object v24

    #@10a
    check-cast v24, Lcom/android/server/AppOpsService$Ops;

    #@10c
    .line 732
    .local v24, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@10f
    move-result v4

    #@110
    add-int/lit8 v20, v4, -0x1

    #@112
    .restart local v20    # "j":I
    :goto_6
    if-ltz v20, :cond_b

    #@114
    .line 733
    move-object/from16 v0, v24

    #@116
    move/from16 v1, v20

    #@118
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    #@11b
    move-result-object v13

    #@11c
    check-cast v13, Lcom/android/server/AppOpsService$Op;

    #@11e
    .line 734
    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@120
    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    #@123
    move-result v4

    #@124
    if-eqz v4, :cond_a

    #@126
    .line 735
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    #@128
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@12a
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@12d
    move-result v5

    #@12e
    if-eq v4, v5, :cond_a

    #@130
    .line 736
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@132
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@135
    move-result v4

    #@136
    iput v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    #@138
    .line 737
    const/4 v11, 0x1

    #@139
    .line 738
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@13b
    .line 739
    move-object/from16 v0, p0

    #@13d
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@13f
    iget v6, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@141
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@144
    move-result-object v4

    #@145
    check-cast v4, Ljava/util/ArrayList;

    #@147
    .line 738
    move-object/from16 v0, v22

    #@149
    invoke-static {v9, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    #@14c
    move-result-object v9

    #@14d
    .line 740
    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    #@14f
    .line 741
    move-object/from16 v0, p0

    #@151
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@153
    move-object/from16 v0, v22

    #@155
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    move-result-object v4

    #@159
    check-cast v4, Ljava/util/ArrayList;

    #@15b
    .line 740
    move-object/from16 v0, v22

    #@15d
    invoke-static {v9, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    #@160
    move-result-object v9

    #@161
    .line 742
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    #@163
    const-wide/16 v6, 0x0

    #@165
    cmp-long v4, v4, v6

    #@167
    if-nez v4, :cond_a

    #@169
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@16b
    const-wide/16 v6, 0x0

    #@16d
    cmp-long v4, v4, v6

    #@16f
    if-nez v4, :cond_a

    #@171
    .line 743
    move-object/from16 v0, v24

    #@173
    move/from16 v1, v20

    #@175
    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    #@178
    .line 732
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_a
    add-int/lit8 v20, v20, -0x1

    #@17a
    goto :goto_6

    #@17b
    .line 747
    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    #@17e
    move-result v4

    #@17f
    if-nez v4, :cond_8

    #@181
    .line 748
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@184
    goto/16 :goto_5

    #@186
    .line 687
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

    #@187
    monitor-exit p0

    #@188
    throw v4

    #@189
    .line 751
    .restart local v18    # "i":I
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v21    # "opModes":Landroid/util/SparseIntArray;
    .restart local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    #@18c
    move-result v4

    #@18d
    if-eqz v4, :cond_5

    #@18f
    .line 752
    move-object/from16 v0, p0

    #@191
    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@193
    move-object/from16 v0, v29

    #@195
    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@197
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    #@19a
    goto/16 :goto_4

    #@19c
    .line 756
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v11, :cond_e

    #@19e
    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a1
    :cond_e
    monitor-exit p0

    #@1a2
    .line 760
    if-eqz v9, :cond_10

    #@1a4
    .line 761
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1a7
    move-result-object v4

    #@1a8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ab
    move-result-object v17

    #@1ac
    .local v17, "ent$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@1af
    move-result v4

    #@1b0
    if-eqz v4, :cond_10

    #@1b2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b5
    move-result-object v15

    #@1b6
    check-cast v15, Ljava/util/Map$Entry;

    #@1b8
    .line 762
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1bb
    move-result-object v10

    #@1bc
    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    #@1be
    .line 763
    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c1
    move-result-object v26

    #@1c2
    check-cast v26, Ljava/util/ArrayList;

    #@1c4
    .line 764
    .local v26, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/16 v18, 0x0

    #@1c6
    :goto_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@1c9
    move-result v4

    #@1ca
    move/from16 v0, v18

    #@1cc
    if-ge v0, v4, :cond_f

    #@1ce
    .line 765
    move-object/from16 v0, v26

    #@1d0
    move/from16 v1, v18

    #@1d2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d5
    move-result-object v25

    #@1d6
    check-cast v25, Landroid/util/Pair;

    #@1d8
    .line 767
    .local v25, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v5, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@1da
    move-object/from16 v0, v25

    #@1dc
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1de
    check-cast v4, Ljava/lang/Integer;

    #@1e0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@1e3
    move-result v6

    #@1e4
    move-object/from16 v0, v25

    #@1e6
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1e8
    check-cast v4, Ljava/lang/String;

    #@1ea
    invoke-interface {v5, v6, v4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@1ed
    .line 764
    :goto_8
    add-int/lit8 v18, v18, 0x1

    #@1ef
    goto :goto_7

    #@1f0
    .line 668
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v25    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_10
    return-void

    #@1f1
    .line 768
    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v17    # "ent$iterator":Ljava/util/Iterator;
    .restart local v25    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v14

    #@1f2
    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_8

    #@1f3
    .line 681
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v18    # "i":I
    .end local v25    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1
    move-exception v14

    #@1f4
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
    .line 888
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@3
    .line 889
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@6
    .line 890
    monitor-enter p0

    #@7
    .line 891
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/util/SparseArray;

    #@f
    .line 892
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    #@11
    .line 893
    new-instance v4, Landroid/util/SparseArray;

    #@13
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@16
    .line 894
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    .line 896
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    #@1e
    .line 897
    if-eqz p4, :cond_3

    #@20
    .line 898
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    #@22
    const/4 v5, 0x0

    #@23
    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    #@26
    .line 899
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    #@28
    .line 900
    if-eqz p5, :cond_2

    #@2a
    .line 901
    array-length v0, p5

    #@2b
    .line 902
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    #@30
    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@32
    .line 903
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@35
    .line 904
    aget-object v2, p5, v1

    #@37
    .line 905
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@39
    .line 906
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    #@3b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@42
    .line 903
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 910
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
    .line 887
    return-void

    #@4a
    .line 890
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_0
    move-exception v5

    #@4b
    monitor-exit p0

    #@4c
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
    .line 580
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
    .line 581
    move-object/from16 v0, p0

    #@c
    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v14, "android.permission.UPDATE_APP_OPS_STATS"

    #@11
    .line 582
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
    .line 581
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@1e
    .line 584
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@21
    .line 585
    const/4 v10, 0x0

    #@22
    .line 586
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@25
    move-result p1

    #@26
    .line 587
    monitor-enter p0

    #@27
    .line 588
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
    .line 589
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
    .line 590
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_2

    #@3f
    .line 591
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    #@41
    move/from16 v0, p4

    #@43
    if-eq v13, v0, :cond_2

    #@45
    .line 592
    move/from16 v0, p4

    #@47
    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    #@49
    .line 593
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
    .line 594
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_7

    #@57
    .line 596
    new-instance v11, Ljava/util/ArrayList;

    #@59
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    .line 598
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v11, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5f
    .line 600
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
    .line 601
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_6

    #@6d
    .line 602
    if-nez v11, :cond_5

    #@6f
    .line 603
    new-instance v10, Ljava/util/ArrayList;

    #@71
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@74
    .line 605
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@77
    .line 607
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
    .line 610
    move-object/from16 v0, p0

    #@83
    move/from16 v1, p2

    #@85
    move-object/from16 v2, p3

    #@87
    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    #@8a
    .line 612
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
    .line 616
    if-eqz v10, :cond_4

    #@90
    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@93
    move-result-wide v8

    #@94
    .line 622
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
    .line 624
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
    move-object/from16 v1, p3

    #@a7
    invoke-interface {v13, v0, v1}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@aa
    .line 622
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@ac
    goto :goto_3

    #@ad
    .line 587
    .end local v6    # "i":I
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "identity":J
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    #@ae
    :goto_5
    monitor-exit p0

    #@af
    throw v13

    #@b0
    .line 629
    .restart local v6    # "i":I
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "identity":J
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b3
    .line 579
    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_4
    return-void

    #@b4
    .line 628
    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_1
    move-exception v13

    #@b5
    .line 629
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b8
    .line 628
    throw v13

    #@b9
    .line 625
    :catch_0
    move-exception v5

    #@ba
    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_4

    #@bb
    .line 587
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "identity":J
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_2
    move-exception v13

    #@bc
    move-object v10, v11

    #@bd
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    #@be
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v10, v11

    #@bf
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    #@c0
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v10, v11

    #@c1
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2

    #@c2
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v11, v10

    #@c3
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 26
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v21

    #@4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v22

    #@8
    move/from16 v0, v21

    #@a
    move/from16 v1, v22

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 472
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@12
    move-object/from16 v21, v0

    #@14
    const-string/jumbo v22, "android.permission.UPDATE_APP_OPS_STATS"

    #@17
    .line 473
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v23

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1e
    move-result v24

    #@1f
    const/16 v25, 0x0

    #@21
    .line 472
    invoke-virtual/range {v21 .. v25}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@24
    .line 475
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@27
    .line 476
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@2a
    move-result p1

    #@2b
    .line 478
    monitor-enter p0

    #@2c
    .line 479
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    #@2f
    move-result v9

    #@30
    .line 481
    .local v9, "defaultMode":I
    const/16 v21, 0x0

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, p2

    #@36
    move/from16 v2, v21

    #@38
    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result-object v20

    #@3c
    .line 482
    .local v20, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v20, :cond_3

    #@3e
    .line 483
    move/from16 v0, p3

    #@40
    if-ne v0, v9, :cond_1

    #@42
    monitor-exit p0

    #@43
    .line 484
    return-void

    #@44
    .line 486
    :cond_1
    :try_start_1
    new-instance v20, Lcom/android/server/AppOpsService$UidState;

    #@46
    .end local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v20

    #@48
    move/from16 v1, p2

    #@4a
    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    #@4d
    .line 487
    .restart local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v21, Landroid/util/SparseIntArray;

    #@4f
    invoke-direct/range {v21 .. v21}, Landroid/util/SparseIntArray;-><init>()V

    #@52
    move-object/from16 v0, v21

    #@54
    move-object/from16 v1, v20

    #@56
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@58
    .line 488
    move-object/from16 v0, v20

    #@5a
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@5c
    move-object/from16 v21, v0

    #@5e
    move-object/from16 v0, v21

    #@60
    move/from16 v1, p1

    #@62
    move/from16 v2, p3

    #@64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@67
    .line 489
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@6b
    move-object/from16 v21, v0

    #@6d
    move-object/from16 v0, v21

    #@6f
    move/from16 v1, p2

    #@71
    move-object/from16 v2, v20

    #@73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@76
    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    :cond_2
    :goto_0
    monitor-exit p0

    #@7a
    .line 513
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@7d
    move-result-object v19

    #@7e
    .line 514
    .local v19, "uidPackageNames":[Ljava/lang/String;
    const/4 v6, 0x0

    #@7f
    .line 516
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@83
    move-object/from16 v21, v0

    #@85
    move-object/from16 v0, v21

    #@87
    move/from16 v1, p1

    #@89
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v7

    #@8d
    check-cast v7, Ljava/util/ArrayList;

    #@8f
    .line 517
    .local v7, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v7, :cond_8

    #@91
    .line 518
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@94
    move-result v5

    #@95
    .line 519
    .local v5, "callbackCount":I
    const/4 v11, 0x0

    #@96
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_8

    #@98
    .line 520
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9b
    move-result-object v4

    #@9c
    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    #@9e
    .line 521
    .local v4, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v8, Landroid/util/ArraySet;

    #@a0
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@a3
    .line 522
    .local v8, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    #@a5
    invoke-static {v8, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@a8
    .line 523
    new-instance v6, Landroid/util/ArrayMap;

    #@aa
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@ad
    .line 524
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    .line 519
    add-int/lit8 v11, v11, 0x1

    #@b2
    goto :goto_1

    #@b3
    .line 491
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v19    # "uidPackageNames":[Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, v20

    #@b5
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@b7
    move-object/from16 v21, v0

    #@b9
    if-nez v21, :cond_4

    #@bb
    .line 492
    move/from16 v0, p3

    #@bd
    if-eq v0, v9, :cond_2

    #@bf
    .line 493
    new-instance v21, Landroid/util/SparseIntArray;

    #@c1
    invoke-direct/range {v21 .. v21}, Landroid/util/SparseIntArray;-><init>()V

    #@c4
    move-object/from16 v0, v21

    #@c6
    move-object/from16 v1, v20

    #@c8
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@ca
    .line 494
    move-object/from16 v0, v20

    #@cc
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@ce
    move-object/from16 v21, v0

    #@d0
    move-object/from16 v0, v21

    #@d2
    move/from16 v1, p1

    #@d4
    move/from16 v2, p3

    #@d6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@d9
    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@dc
    goto :goto_0

    #@dd
    .line 478
    .end local v9    # "defaultMode":I
    .end local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v21

    #@de
    monitor-exit p0

    #@df
    throw v21

    #@e0
    .line 498
    .restart local v9    # "defaultMode":I
    .restart local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_4
    :try_start_3
    move-object/from16 v0, v20

    #@e2
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@e4
    move-object/from16 v21, v0

    #@e6
    move-object/from16 v0, v21

    #@e8
    move/from16 v1, p1

    #@ea
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ed
    move-result v21

    #@ee
    move/from16 v0, v21

    #@f0
    move/from16 v1, p3

    #@f2
    if-ne v0, v1, :cond_5

    #@f4
    monitor-exit p0

    #@f5
    .line 499
    return-void

    #@f6
    .line 501
    :cond_5
    move/from16 v0, p3

    #@f8
    if-ne v0, v9, :cond_7

    #@fa
    .line 502
    :try_start_4
    move-object/from16 v0, v20

    #@fc
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@fe
    move-object/from16 v21, v0

    #@100
    move-object/from16 v0, v21

    #@102
    move/from16 v1, p1

    #@104
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    #@107
    .line 503
    move-object/from16 v0, v20

    #@109
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@10b
    move-object/from16 v21, v0

    #@10d
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@110
    move-result v21

    #@111
    if-gtz v21, :cond_6

    #@113
    .line 504
    const/16 v21, 0x0

    #@115
    move-object/from16 v0, v21

    #@117
    move-object/from16 v1, v20

    #@119
    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@11b
    .line 509
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    #@11e
    goto/16 :goto_0

    #@120
    .line 507
    :cond_7
    move-object/from16 v0, v20

    #@122
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@124
    move-object/from16 v21, v0

    #@126
    move-object/from16 v0, v21

    #@128
    move/from16 v1, p1

    #@12a
    move/from16 v2, p3

    #@12c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@12f
    goto :goto_2

    #@130
    .line 528
    .restart local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v19    # "uidPackageNames":[Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    #@132
    move-object/from16 v0, v19

    #@134
    array-length v0, v0

    #@135
    move/from16 v22, v0

    #@137
    :goto_3
    move/from16 v0, v21

    #@139
    move/from16 v1, v22

    #@13b
    if-ge v0, v1, :cond_c

    #@13d
    aget-object v18, v19, v21

    #@13f
    .line 529
    .local v18, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@143
    move-object/from16 v23, v0

    #@145
    move-object/from16 v0, v23

    #@147
    move-object/from16 v1, v18

    #@149
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14c
    move-result-object v7

    #@14d
    .end local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v7, Ljava/util/ArrayList;

    #@14f
    .line 530
    .restart local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v7, :cond_b

    #@151
    .line 531
    if-nez v6, :cond_9

    #@153
    .line 532
    new-instance v6, Landroid/util/ArrayMap;

    #@155
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@158
    .line 534
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@15b
    move-result v5

    #@15c
    .line 535
    .restart local v5    # "callbackCount":I
    const/4 v11, 0x0

    #@15d
    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v5, :cond_b

    #@15f
    .line 536
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@162
    move-result-object v4

    #@163
    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    #@165
    .line 537
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@168
    move-result-object v8

    #@169
    check-cast v8, Landroid/util/ArraySet;

    #@16b
    .line 538
    .restart local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v8, :cond_a

    #@16d
    .line 539
    new-instance v8, Landroid/util/ArraySet;

    #@16f
    .end local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@172
    .line 540
    .restart local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@175
    .line 542
    :cond_a
    move-object/from16 v0, v18

    #@177
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@17a
    .line 535
    add-int/lit8 v11, v11, 0x1

    #@17c
    goto :goto_4

    #@17d
    .line 528
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "i":I
    :cond_b
    add-int/lit8 v21, v21, 0x1

    #@17f
    goto :goto_3

    #@180
    .line 547
    .end local v18    # "uidPackageName":Ljava/lang/String;
    :cond_c
    if-nez v6, :cond_d

    #@182
    .line 548
    return-void

    #@183
    .line 554
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@186
    move-result-wide v12

    #@187
    .line 556
    .local v12, "identity":J
    const/4 v11, 0x0

    #@188
    .restart local v11    # "i":I
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@18b
    move-result v21

    #@18c
    move/from16 v0, v21

    #@18e
    if-ge v11, v0, :cond_10

    #@190
    .line 557
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@193
    move-result-object v4

    #@194
    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    #@196
    .line 558
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@199
    move-result-object v17

    #@19a
    check-cast v17, Landroid/util/ArraySet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@19c
    .line 560
    .local v17, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v17, :cond_f

    #@19e
    .line 561
    :try_start_6
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@1a0
    move-object/from16 v21, v0

    #@1a2
    const/16 v22, 0x0

    #@1a4
    move-object/from16 v0, v21

    #@1a6
    move/from16 v1, p1

    #@1a8
    move-object/from16 v2, v22

    #@1aa
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V

    #@1ad
    .line 556
    :cond_e
    :goto_6
    add-int/lit8 v11, v11, 0x1

    #@1af
    goto :goto_5

    #@1b0
    .line 563
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    #@1b3
    move-result v15

    #@1b4
    .line 564
    .local v15, "reportedPackageCount":I
    const/4 v14, 0x0

    #@1b5
    .local v14, "j":I
    :goto_7
    if-ge v14, v15, :cond_e

    #@1b7
    .line 565
    move-object/from16 v0, v17

    #@1b9
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1bc
    move-result-object v16

    #@1bd
    check-cast v16, Ljava/lang/String;

    #@1bf
    .line 566
    .local v16, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@1c1
    move-object/from16 v21, v0

    #@1c3
    move-object/from16 v0, v21

    #@1c5
    move/from16 v1, p1

    #@1c7
    move-object/from16 v2, v16

    #@1c9
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1cc
    .line 564
    add-int/lit8 v14, v14, 0x1

    #@1ce
    goto :goto_7

    #@1cf
    .line 569
    .end local v14    # "j":I
    .end local v15    # "reportedPackageCount":I
    .end local v16    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@1d0
    .line 570
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v21, "AppOps"

    #@1d3
    const-string/jumbo v22, "Error dispatching op op change"

    #@1d6
    move-object/from16 v0, v21

    #@1d8
    move-object/from16 v1, v22

    #@1da
    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@1dd
    goto :goto_6

    #@1de
    .line 573
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v17    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v21

    #@1df
    .line 574
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e2
    .line 573
    throw v21

    #@1e3
    .line 574
    :cond_10
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e6
    .line 470
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1742
    const-string/jumbo v3, "setUserRestrictions"

    #@4
    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    #@7
    .line 1743
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Z

    #@f
    .line 1744
    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_0

    #@11
    .line 1745
    const/16 v3, 0x3e

    #@13
    new-array v1, v3, [Z

    #@15
    .line 1746
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 1748
    :cond_0
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@1c
    if-ge v0, v3, :cond_2

    #@1e
    .line 1749
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 1750
    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@24
    .line 1751
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@27
    move-result v3

    #@28
    aput-boolean v3, v1, v0

    #@2a
    .line 1748
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1753
    :cond_1
    aput-boolean v4, v1, v0

    #@2f
    goto :goto_1

    #@30
    .line 1741
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 3

    #@0
    .prologue
    .line 355
    const-string/jumbo v1, "AppOps"

    #@3
    const-string/jumbo v2, "Writing app ops before shutdown..."

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 356
    const/4 v0, 0x0

    #@a
    .line 357
    .local v0, "doWrite":Z
    monitor-enter p0

    #@b
    .line 358
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 359
    const/4 v1, 0x0

    #@10
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 360
    const/4 v0, 0x1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 363
    if-eqz v0, :cond_1

    #@16
    .line 364
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    #@19
    .line 354
    :cond_1
    return-void

    #@1a
    .line 357
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
    const/4 v8, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 995
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    #@5
    .line 996
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    #@8
    move-object v0, p1

    #@9
    .line 997
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    #@b
    .line 998
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    #@c
    .line 999
    const/4 v7, 0x1

    #@d
    :try_start_0
    invoke-direct {p0, p3, p4, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v2

    #@11
    .line 1000
    .local v2, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v2, :cond_0

    #@13
    .line 1003
    const/4 v7, 0x2

    #@14
    monitor-exit p0

    #@15
    return v7

    #@16
    .line 1005
    :cond_0
    const/4 v7, 0x1

    #@17
    :try_start_1
    invoke-direct {p0, v2, p2, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@1a
    move-result-object v1

    #@1b
    .line 1006
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_1

    #@21
    monitor-exit p0

    #@22
    .line 1007
    return v8

    #@23
    .line 1009
    :cond_1
    :try_start_2
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@26
    move-result v3

    #@27
    .line 1010
    .local v3, "switchCode":I
    iget-object v6, v2, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@29
    .line 1011
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@2b
    if-eqz v7, :cond_2

    #@2d
    .line 1012
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    #@32
    move-result v5

    #@33
    .line 1013
    .local v5, "uidMode":I
    if-eqz v5, :cond_2

    #@35
    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@38
    move-result-wide v8

    #@39
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    monitor-exit p0

    #@3c
    .line 1018
    return v5

    #@3d
    .line 1021
    .end local v5    # "uidMode":I
    :cond_2
    if-eq v3, p2, :cond_3

    #@3f
    const/4 v7, 0x1

    #@40
    :try_start_3
    invoke-direct {p0, v2, v3, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    #@43
    move-result-object v4

    #@44
    .line 1022
    .local v4, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v7, v4, Lcom/android/server/AppOpsService$Op;->mode:I

    #@46
    if-eqz v7, :cond_4

    #@48
    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4b
    move-result-wide v8

    #@4c
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@4e
    .line 1026
    iget v7, v4, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    monitor-exit p0

    #@51
    return v7

    #@52
    .line 1021
    .end local v4    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    move-object v4, v1

    #@53
    .restart local v4    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    #@54
    .line 1030
    :cond_4
    :try_start_4
    iget v7, v1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@56
    if-nez v7, :cond_5

    #@58
    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5b
    move-result-wide v8

    #@5c
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->time:J

    #@5e
    .line 1032
    const-wide/16 v8, 0x0

    #@60
    iput-wide v8, v1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    #@62
    .line 1033
    const/4 v7, -0x1

    #@63
    iput v7, v1, Lcom/android/server/AppOpsService$Op;->duration:I

    #@65
    .line 1035
    :cond_5
    iget v7, v1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@67
    add-int/lit8 v7, v7, 0x1

    #@69
    iput v7, v1, Lcom/android/server/AppOpsService$Op;->nesting:I

    #@6b
    .line 1036
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@6d
    if-eqz v7, :cond_6

    #@6f
    .line 1037
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@74
    :cond_6
    monitor-exit p0

    #@75
    .line 1039
    return v10

    #@76
    .line 998
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v3    # "switchCode":I
    .end local v4    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v7

    #@77
    monitor-exit p0

    #@78
    throw v7
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
    .line 777
    monitor-enter p0

    #@2
    .line 778
    if-eq p1, v4, :cond_0

    #@4
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    #@7
    move-result p1

    #@8
    .line 779
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@a
    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    #@14
    .line 780
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_1

    #@16
    .line 781
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    #@18
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    #@1b
    .line 782
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@1d
    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 784
    :cond_1
    if-eq p1, v4, :cond_3

    #@26
    .line 785
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/util/ArrayList;

    #@2e
    .line 786
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_2

    #@30
    .line 787
    new-instance v1, Ljava/util/ArrayList;

    #@32
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 788
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3a
    .line 790
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 792
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3
    if-eqz p2, :cond_5

    #@3f
    .line 793
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@41
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljava/util/ArrayList;

    #@47
    .line 794
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_4

    #@49
    .line 795
    new-instance v1, Ljava/util/ArrayList;

    #@4b
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4e
    .line 796
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 798
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    monitor-exit p0

    #@57
    .line 776
    return-void

    #@58
    .line 777
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit p0

    #@5a
    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    #@0
    .prologue
    .line 805
    monitor-enter p0

    #@1
    .line 806
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    #@3
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    #@d
    .line 807
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_3

    #@f
    .line 808
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    #@12
    .line 809
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v2, v3, -0x1

    #@1a
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@1c
    .line 810
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/util/ArrayList;

    #@24
    .line 811
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    .line 812
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v3

    #@2b
    if-gtz v3, :cond_0

    #@2d
    .line 813
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@32
    .line 809
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@34
    goto :goto_0

    #@35
    .line 816
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@3a
    move-result v3

    #@3b
    add-int/lit8 v2, v3, -0x1

    #@3d
    :goto_1
    if-ltz v2, :cond_3

    #@3f
    .line 817
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@41
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljava/util/ArrayList;

    #@47
    .line 818
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4a
    .line 819
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v3

    #@4e
    if-gtz v3, :cond_2

    #@50
    .line 820
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .line 816
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@57
    goto :goto_1

    #@58
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    #@59
    .line 804
    return-void

    #@5a
    .line 805
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    #@5b
    monitor-exit p0

    #@5c
    throw v3
.end method

.method public systemReady()V
    .locals 13

    #@0
    .prologue
    .line 245
    monitor-enter p0

    #@1
    .line 246
    const/4 v0, 0x0

    #@2
    .line 247
    .local v0, "changed":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v10

    #@8
    add-int/lit8 v3, v10, -0x1

    #@a
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    #@c
    .line 248
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v9

    #@12
    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    #@14
    .line 250
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v10, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@16
    invoke-static {v10}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    .line 251
    .local v7, "packageNames":[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_1

    #@20
    .line 252
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->clear()V

    #@23
    .line 253
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->removeAt(I)V

    #@28
    .line 254
    const/4 v0, 0x1

    #@29
    .line 247
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 258
    :cond_1
    iget-object v8, v9, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@2e
    .line 259
    .local v8, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v8, :cond_0

    #@30
    .line 263
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@33
    move-result-object v10

    #@34
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v4

    #@38
    .line 264
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v10

    #@3c
    if-eqz v10, :cond_3

    #@3e
    .line 265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 268
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    #@46
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@49
    move-result-object v10

    #@4a
    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@4c
    .line 269
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@4e
    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@50
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    #@53
    move-result v12

    #@54
    .line 268
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    move-result v1

    #@58
    .line 273
    .local v1, "curUid":I
    :goto_3
    :try_start_2
    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@5a
    iget v10, v10, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@5c
    if-eq v1, v10, :cond_2

    #@5e
    .line 274
    const-string/jumbo v10, "AppOps"

    #@61
    new-instance v11, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v12, "Pruning old package "

    #@69
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v11

    #@6d
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    #@6f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v11

    #@73
    .line 275
    const-string/jumbo v12, "/"

    #@76
    .line 274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v11

    #@7a
    .line 275
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    #@7c
    .line 274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v11

    #@80
    .line 275
    const-string/jumbo v12, ": new uid="

    #@83
    .line 274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v11

    #@87
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v11

    #@8f
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 276
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    #@95
    .line 277
    const/4 v0, 0x1

    #@96
    goto :goto_2

    #@97
    .line 270
    .end local v1    # "curUid":I
    :catch_0
    move-exception v2

    #@98
    .line 271
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    #@99
    .restart local v1    # "curUid":I
    goto :goto_3

    #@9a
    .line 281
    .end local v1    # "curUid":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    #@9d
    move-result v10

    #@9e
    if-eqz v10, :cond_0

    #@a0
    .line 282
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@a2
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a5
    goto :goto_1

    #@a6
    .line 245
    .end local v3    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v7    # "packageNames":[Ljava/lang/String;
    .end local v8    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v10

    #@a7
    monitor-exit p0

    #@a8
    throw v10

    #@a9
    .line 285
    .restart local v3    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    #@ab
    .line 286
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    :cond_5
    monitor-exit p0

    #@af
    .line 291
    const-class v10, Landroid/os/storage/MountServiceInternal;

    #@b1
    .line 290
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b4
    move-result-object v5

    #@b5
    check-cast v5, Landroid/os/storage/MountServiceInternal;

    #@b7
    .line 293
    .local v5, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v10, Lcom/android/server/AppOpsService$2;

    #@b9
    invoke-direct {v10, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    #@bc
    .line 292
    invoke-virtual {v5, v10}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    #@bf
    .line 244
    return-void
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 346
    monitor-enter p0

    #@1
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 348
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@e
    .line 349
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 345
    return-void

    #@13
    .line 346
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
    .line 1437
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    #@4
    move-object/from16 v27, v0

    #@6
    monitor-enter v27

    #@7
    .line 1438
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
    .line 1442
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
    .line 1449
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    #@1d
    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@20
    .line 1450
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
    .line 1451
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
    .line 1452
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
    .line 1454
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
    .line 1455
    .local v25, "uidStateCount":I
    const/4 v7, 0x0

    #@59
    .local v7, "i":I
    :goto_0
    move/from16 v0, v25

    #@5b
    if-ge v7, v0, :cond_2

    #@5d
    .line 1456
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
    .line 1457
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
    .line 1458
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
    .line 1459
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
    .line 1460
    move-object/from16 v0, v24

    #@a9
    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@ab
    move-object/from16 v21, v0

    #@ad
    .line 1461
    .local v21, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    #@b0
    move-result v13

    #@b1
    .line 1462
    .local v13, "opCount":I
    const/4 v8, 0x0

    #@b2
    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_0

    #@b4
    .line 1463
    move-object/from16 v0, v21

    #@b6
    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@b9
    move-result v11

    #@ba
    .line 1464
    .local v11, "op":I
    move-object/from16 v0, v21

    #@bc
    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@bf
    move-result v10

    #@c0
    .line 1465
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
    .line 1466
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
    .line 1467
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
    .line 1468
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
    .line 1462
    add-int/lit8 v8, v8, 0x1

    #@106
    goto :goto_1

    #@107
    .line 1443
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
    .line 1444
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
    .line 1445
    return-void

    #@12a
    .line 1470
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
    .line 1455
    .end local v8    # "j":I
    .end local v13    # "opCount":I
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@13a
    goto/16 :goto_0

    #@13c
    .line 1474
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    if-eqz v4, :cond_e

    #@13e
    .line 1475
    const/4 v9, 0x0

    #@13f
    .line 1476
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
    .line 1477
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14b
    move-result-object v17

    #@14c
    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    #@14e
    .line 1478
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
    .line 1479
    if-eqz v9, :cond_3

    #@15c
    .line 1480
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
    .line 1482
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    #@16d
    move-result-object v9

    #@16e
    .line 1483
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
    .line 1484
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
    .line 1486
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
    .line 1487
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
    .line 1488
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1b1
    .line 1489
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
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    #@1c6
    move-result-object v14

    #@1c7
    .line 1492
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v14, :cond_b

    #@1c9
    .line 1493
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
    .line 1498
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    #@1e5
    move-result-object v15

    #@1e6
    .line 1499
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
    .line 1500
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f2
    move-result-object v12

    #@1f3
    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    #@1f5
    .line 1501
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
    .line 1502
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
    .line 1503
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
    .line 1504
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
    .line 1506
    :cond_5
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    #@248
    move-result-wide v22

    #@249
    .line 1507
    .local v22, "time":J
    const-wide/16 v28, 0x0

    #@24b
    cmp-long v26, v22, v28

    #@24d
    if-eqz v26, :cond_6

    #@24f
    .line 1508
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
    .line 1510
    :cond_6
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    #@266
    move-result-wide v22

    #@267
    .line 1511
    const-wide/16 v28, 0x0

    #@269
    cmp-long v26, v22, v28

    #@26b
    if-eqz v26, :cond_7

    #@26d
    .line 1512
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
    .line 1514
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    #@284
    move-result v5

    #@285
    .line 1515
    .local v5, "dur":I
    if-eqz v5, :cond_8

    #@287
    .line 1516
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
    .line 1518
    :cond_8
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    #@29e
    move-result v19

    #@29f
    .line 1519
    .local v19, "proxyUid":I
    const/16 v26, -0x1

    #@2a1
    move/from16 v0, v19

    #@2a3
    move/from16 v1, v26

    #@2a5
    if-eq v0, v1, :cond_9

    #@2a7
    .line 1520
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
    .line 1522
    :cond_9
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    #@2be
    move-result-object v18

    #@2bf
    .line 1523
    .local v18, "proxyPackageName":Ljava/lang/String;
    if-eqz v18, :cond_a

    #@2c1
    .line 1524
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
    .line 1526
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
    .line 1499
    add-int/lit8 v8, v8, 0x1

    #@2e1
    goto/16 :goto_4

    #@2e3
    .line 1495
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
    .line 1488
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
    .line 1538
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "uidStateCount":I
    :catch_1
    move-exception v6

    #@2ff
    .line 1539
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
    .line 1540
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
    .line 1436
    return-void

    #@31b
    .line 1528
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
    .line 1476
    add-int/lit8 v7, v7, 0x1

    #@32b
    goto/16 :goto_2

    #@32d
    .line 1530
    .end local v8    # "j":I
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    if-eqz v9, :cond_e

    #@32f
    .line 1531
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
    .line 1535
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
    .line 1536
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@34e
    .line 1537
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
    .line 1437
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
