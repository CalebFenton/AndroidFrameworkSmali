.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private blacklist isComputed:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLaunchedFromUid:I

.field private final blacklist mQueryIntentsAsUser:Landroid/os/UserHandle;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

.field private final blacklist mTargetIntent:Landroid/content/Intent;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private final blacklist mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$MgcBPDOIxrxQZ18-RglR4HimgGw(Lcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverListController;->lambda$topK$0(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "targetIntent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;
    .param p5, "launchedFromUid"    # I
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .param p7, "queryIntentsAsUser"    # Landroid/os/UserHandle;

    .line 74
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V

    move v5, p5

    move-object/from16 v8, p7

    move-object v7, v0

    move-object v4, v3

    move-object v0, p0

    move-object v3, v2

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "targetIntent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;
    .param p5, "launchedFromUid"    # I
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .param p7, "resolverComparator"    # Lcom/android/internal/app/AbstractResolverComparator;
    .param p8, "queryIntentsAsUser"    # Landroid/os/UserHandle;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 94
    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    .line 96
    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    .line 97
    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    .line 98
    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    .line 99
    iput-object p6, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    .line 100
    iput-object p7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    .line 101
    iput-object p8, p0, Lcom/android/internal/app/ResolverListController;->mQueryIntentsAsUser:Landroid/os/UserHandle;

    .line 102
    return-void
.end method

.method private blacklist compute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 307
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    if-nez v0, :cond_c

    .line 308
    const-string v0, "ResolverListController"

    const-string v1, "Comparator has already been destroyed; skipped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 311
    :cond_c
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 312
    .local v0, "finishComputeSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    .line 313
    .local v2, "callback":Lcom/android/internal/app/ResolverListController$ComputeCallback;
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    .line 314
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/AbstractResolverComparator;->compute(Ljava/util/List;)V

    .line 315
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 316
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 317
    return-void
.end method

.method private blacklist getResolversForIntentAsUserInternal(Ljava/util/List;Landroid/os/UserHandle;I)Ljava/util/List;
    .registers 11
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "baseFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 149
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 150
    .local v0, "resolvedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_6
    if-ge v1, v2, :cond_45

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 152
    .local v3, "intent":Landroid/content/Intent;
    move v4, p3

    .line 153
    .local v4, "flags":I
    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 154
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_20

    .line 155
    :cond_1d
    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    .line 158
    :cond_20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/content/Intent;

    if-ne v5, v6, :cond_2a

    move-object v5, v3

    goto :goto_2f

    :cond_2a
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 160
    .end local v3    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :goto_2f
    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_42

    .line 163
    if-nez v0, :cond_3f

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 166
    :cond_3f
    invoke-virtual {p0, v0, v5, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 150
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "flags":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 169
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_45
    return-object v0
.end method

.method private static blacklist isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 5
    .param p0, "a"    # Landroid/content/pm/ResolveInfo;
    .param p1, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 396
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 397
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 398
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 397
    :goto_21
    return v1
.end method

.method private synthetic blacklist lambda$topK$0(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .registers 4
    .param p1, "o1"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "o2"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 358
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method


# virtual methods
.method public blacklist addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .registers 12
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    .local v0, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 183
    .local v1, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_6e

    .line 184
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 185
    .local v3, "newInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v4, :cond_2e

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping ResolveInfo with no userHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResolverListController"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    goto :goto_6b

    .line 189
    :cond_2e
    const/4 v4, 0x0

    .line 191
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_30
    if-ge v5, v1, :cond_46

    .line 192
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 193
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-static {v3, v6}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 194
    const/4 v4, 0x1

    .line 195
    invoke-virtual {v6, p2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 196
    goto :goto_46

    .line 191
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 199
    .end local v5    # "j":I
    :cond_46
    :goto_46
    if-nez v4, :cond_6b

    .line 200
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v5, "name":Landroid/content/ComponentName;
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v6, v5, p2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 204
    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isFixedAtTop(Landroid/content/ComponentName;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setFixedAtTop(Z)V

    .line 206
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "found":Z
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 209
    .end local v2    # "i":I
    :cond_6e
    return-void
.end method

.method public blacklist destroy()V
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->destroy()V

    .line 427
    return-void
.end method

.method public blacklist filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 10
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 235
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 236
    .local v0, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_40

    .line 237
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 238
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 239
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v3, v4, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    .line 243
    .local v3, "granted":I
    if-nez v3, :cond_30

    .line 244
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 247
    :cond_30
    if-eqz p2, :cond_3a

    if-nez v0, :cond_3a

    .line 248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 250
    :cond_3a
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 236
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "granted":I
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 253
    .end local v1    # "i":I
    :cond_40
    return-object v0
.end method

.method public blacklist filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 12
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 264
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 267
    .local v0, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 268
    .local v2, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 269
    .local v3, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 270
    .local v4, "N":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_11
    if-ge v5, v4, :cond_3e

    .line 271
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 278
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v8, :cond_29

    iget-boolean v7, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v8, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v7, v8, :cond_3b

    .line 280
    :cond_29
    :goto_29
    if-ge v5, v4, :cond_3b

    .line 281
    if-eqz p2, :cond_35

    if-nez v0, :cond_35

    .line 282
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    .line 284
    :cond_35
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    .line 270
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 289
    .end local v5    # "i":I
    :cond_3e
    return-object v0
.end method

.method public blacklist getLastChosen()Landroid/content/pm/ResolveInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const/high16 v3, 0x10000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolversForIntent(ZZZLjava/util/List;)Ljava/util/List;
    .registers 11
    .param p1, "shouldGetResolvedFilter"    # Z
    .param p2, "shouldGetActivityMetadata"    # Z
    .param p3, "shouldGetOnlyDefaultActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 126
    .local p4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mQueryIntentsAsUser:Landroid/os/UserHandle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "shouldGetResolvedFilter":Z
    .end local p2    # "shouldGetActivityMetadata":Z
    .end local p3    # "shouldGetOnlyDefaultActivities":Z
    .end local p4    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local v1, "shouldGetResolvedFilter":Z
    .local v2, "shouldGetActivityMetadata":Z
    .local v3, "shouldGetOnlyDefaultActivities":Z
    .local v4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getResolversForIntentAsUser(ZZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 9
    .param p1, "shouldGetResolvedFilter"    # Z
    .param p2, "shouldGetActivityMetadata"    # Z
    .param p3, "shouldGetOnlyDefaultActivities"    # Z
    .param p5, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 136
    .local p4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    const/high16 v1, 0x10000

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    .line 139
    if-eqz p1, :cond_12

    const/16 v2, 0x40

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    or-int/2addr v1, v2

    .line 140
    if-eqz p2, :cond_18

    const/16 v0, 0x80

    :cond_18
    or-int/2addr v0, v1

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 142
    .local v0, "baseFlags":I
    invoke-direct {p0, p4, p5, v0}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUserInternal(Ljava/util/List;Landroid/os/UserHandle;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .registers 3
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 407
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 414
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "match"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 114
    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "match":I
    .local v1, "intent":Landroid/content/Intent;
    .local v4, "filter":Landroid/content/IntentFilter;
    .local v5, "match":I
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 118
    return-void
.end method

.method public blacklist sort(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 324
    .local v0, "beforeRank":J
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v2, :cond_b

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListController;->compute(Ljava/util/List;)V

    .line 327
    :cond_b
    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 335
    .end local v0    # "beforeRank":J
    goto :goto_2d

    .line 333
    :catch_14
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute & Sort was interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2d
    return-void
.end method

.method public blacklist topK(Ljava/util/List;I)V
    .registers 12
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;I)V"
        }
    .end annotation

    .line 341
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz p1, :cond_9f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    if-gtz p2, :cond_c

    goto/16 :goto_9f

    .line 344
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_16

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListController;->sort(Ljava/util/List;)V

    .line 348
    return-void

    .line 351
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 352
    .local v0, "beforeRank":J
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v2, :cond_21

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListController;->compute(Ljava/util/List;)V

    .line 357
    :cond_21
    new-instance v2, Ljava/util/PriorityQueue;

    new-instance v3, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverListController;)V

    invoke-direct {v2, p2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 359
    .local v2, "minHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 362
    .local v3, "size":I
    add-int/lit8 v4, v3, -0x1

    .line 363
    .local v4, "pointer":I
    sub-int v5, v3, p2

    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 364
    sub-int v5, v3, p2

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_3e
    if-ltz v5, :cond_6e

    .line 365
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 366
    .local v6, "ci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v7

    neg-int v7, v7

    if-lez v7, :cond_65

    .line 369
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "pointer":I
    .local v7, "pointer":I
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-interface {p1, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_6b

    .line 374
    .end local v7    # "pointer":I
    .restart local v4    # "pointer":I
    :cond_65
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "pointer":I
    .restart local v7    # "pointer":I
    invoke-interface {p1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    .line 364
    .end local v6    # "ci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v7    # "pointer":I
    .restart local v4    # "pointer":I
    :goto_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_3e

    .line 380
    .end local v5    # "i":I
    :cond_6e
    :goto_6e
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_81

    .line 381
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "pointer":I
    .local v5, "pointer":I
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-interface {p1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_6e

    .line 384
    .end local v5    # "pointer":I
    .restart local v4    # "pointer":I
    :cond_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_84} :catch_85

    .line 391
    .end local v0    # "beforeRank":J
    .end local v2    # "minHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .end local v3    # "size":I
    .end local v4    # "pointer":I
    goto :goto_9e

    .line 389
    :catch_85
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute & greatestOf was interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_9e
    return-void

    .line 342
    :cond_9f
    :goto_9f
    return-void
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "action"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;->updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 418
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 419
    return-void
.end method
