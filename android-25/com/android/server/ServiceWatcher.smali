.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$1;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBoundComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;
    .param p2, "forceRebind"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 71
    new-instance v5, Ljava/lang/Object;

    #@6
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@b
    .line 74
    const/4 v5, 0x0

    #@c
    iput v5, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    #@e
    .line 83
    const/high16 v5, -0x80000000

    #@10
    iput v5, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    #@12
    .line 85
    const/16 v5, -0x2710

    #@14
    iput v5, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    #@16
    .line 324
    new-instance v5, Lcom/android/server/ServiceWatcher$1;

    #@18
    invoke-direct {v5, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    #@1b
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@1d
    .line 110
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@1f
    .line 111
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@21
    .line 112
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@23
    .line 113
    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v5

    #@29
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@2b
    .line 114
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    #@2d
    .line 115
    iput-object p8, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@2f
    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object v3

    #@33
    .line 119
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@36
    move-result v0

    #@37
    .line 120
    .local v0, "enableOverlay":Z
    new-instance v1, Ljava/util/ArrayList;

    #@39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3c
    .line 121
    .local v1, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@3e
    .line 123
    invoke-virtual {v3, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 124
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@44
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@4b
    .line 125
    :cond_0
    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@4d
    .line 135
    .end local v2    # "pkgs":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    #@50
    move-result-object v5

    #@51
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    #@53
    .line 109
    return-void

    #@54
    .line 130
    :cond_1
    invoke-virtual {v3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 131
    .local v4, "servicePackageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@5a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    .line 132
    :cond_2
    iput-object v4, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@5f
    goto :goto_0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;Z)Z
    .locals 21
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;
    .param p2, "forceRebind"    # Z

    #@0
    .prologue
    .line 202
    new-instance v9, Landroid/content/Intent;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@6
    move-object/from16 v18, v0

    #@8
    move-object/from16 v0, v18

    #@a
    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 203
    .local v9, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@f
    .line 204
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 206
    :cond_0
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@18
    move-object/from16 v18, v0

    #@1a
    .line 208
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    #@1e
    move/from16 v19, v0

    #@20
    .line 207
    const v20, 0x10000080

    #@23
    .line 206
    move-object/from16 v0, v18

    #@25
    move/from16 v1, v20

    #@27
    move/from16 v2, v19

    #@29
    invoke-virtual {v0, v9, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@2c
    move-result-object v15

    #@2d
    .line 209
    .local v15, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v6, -0x80000000

    #@2f
    .line 210
    .local v6, "bestVersion":I
    const/4 v4, 0x0

    #@30
    .line 211
    .local v4, "bestComponent":Landroid/content/ComponentName;
    const/4 v5, 0x0

    #@31
    .line 212
    .local v5, "bestIsMultiuser":Z
    if-eqz v15, :cond_4

    #@33
    .line 213
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v14

    #@37
    .end local v4    # "bestComponent":Landroid/content/ComponentName;
    .end local v5    # "bestIsMultiuser":Z
    .local v14, "rInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v18

    #@3b
    if-eqz v18, :cond_4

    #@3d
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v13

    #@41
    check-cast v13, Landroid/content/pm/ResolveInfo;

    #@43
    .line 214
    .local v13, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@45
    move-object/from16 v18, v0

    #@47
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    #@4a
    move-result-object v7

    #@4b
    .line 215
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4e
    move-result-object v12

    #@4f
    .line 220
    .local v12, "packageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@53
    move-object/from16 v18, v0

    #@55
    const v19, 0x10000040

    #@58
    move-object/from16 v0, v18

    #@5a
    move/from16 v1, v19

    #@5c
    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@5f
    move-result-object v11

    #@60
    .line 222
    .local v11, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@62
    move-object/from16 v18, v0

    #@64
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, v18

    #@68
    invoke-direct {v0, v1}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    #@6b
    move-result v18

    #@6c
    if-nez v18, :cond_2

    #@6e
    .line 223
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@72
    move-object/from16 v18, v0

    #@74
    new-instance v19, Ljava/lang/StringBuilder;

    #@76
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    move-object/from16 v0, v19

    #@7b
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v19

    #@7f
    const-string/jumbo v20, " resolves service "

    #@82
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v19

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@8a
    move-object/from16 v20, v0

    #@8c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v19

    #@90
    .line 224
    const-string/jumbo v20, ", but has wrong signature, ignoring"

    #@93
    .line 223
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v19

    #@97
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v19

    #@9b
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9e
    goto :goto_0

    #@9f
    .line 227
    .end local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    #@a0
    .line 228
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@a4
    move-object/from16 v18, v0

    #@a6
    move-object/from16 v0, v18

    #@a8
    invoke-static {v0, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ab
    goto :goto_0

    #@ac
    .line 233
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const/high16 v17, -0x80000000

    #@ae
    .line 234
    .local v17, "version":I
    const/4 v10, 0x0

    #@af
    .line 235
    .local v10, "isMultiuser":Z
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b1
    move-object/from16 v18, v0

    #@b3
    move-object/from16 v0, v18

    #@b5
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@b7
    move-object/from16 v18, v0

    #@b9
    if-eqz v18, :cond_3

    #@bb
    .line 236
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@bd
    move-object/from16 v18, v0

    #@bf
    move-object/from16 v0, v18

    #@c1
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@c3
    move-object/from16 v18, v0

    #@c5
    .line 237
    const-string/jumbo v19, "serviceVersion"

    #@c8
    const/high16 v20, -0x80000000

    #@ca
    .line 236
    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@cd
    move-result v17

    #@ce
    .line 238
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d0
    move-object/from16 v18, v0

    #@d2
    move-object/from16 v0, v18

    #@d4
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    #@d6
    move-object/from16 v18, v0

    #@d8
    const-string/jumbo v19, "serviceIsMultiuser"

    #@db
    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@de
    move-result v10

    #@df
    .line 241
    .end local v10    # "isMultiuser":Z
    :cond_3
    move/from16 v0, v17

    #@e1
    if-le v0, v6, :cond_1

    #@e3
    .line 242
    move/from16 v6, v17

    #@e5
    .line 243
    move-object v4, v7

    #@e6
    .line 244
    .local v4, "bestComponent":Landroid/content/ComponentName;
    move v5, v10

    #@e7
    .local v5, "bestIsMultiuser":Z
    goto/16 :goto_0

    #@e9
    .line 259
    .end local v4    # "bestComponent":Landroid/content/ComponentName;
    .end local v5    # "bestIsMultiuser":Z
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "rInfo$iterator":Ljava/util/Iterator;
    .end local v17    # "version":I
    :cond_4
    if-nez v4, :cond_5

    #@eb
    .line 260
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@ef
    move-object/from16 v18, v0

    #@f1
    new-instance v19, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v20, "Odd, no component found for service "

    #@f9
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v19

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@101
    move-object/from16 v20, v0

    #@103
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v19

    #@107
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v19

    #@10b
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    #@111
    .line 262
    const/16 v18, 0x0

    #@113
    return v18

    #@114
    .line 265
    :cond_5
    if-eqz v5, :cond_6

    #@116
    const/16 v16, 0x0

    #@118
    .line 266
    .local v16, "userId":I
    :goto_1
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    #@11c
    move-object/from16 v18, v0

    #@11e
    move-object/from16 v0, v18

    #@120
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@123
    move-result v18

    #@124
    if-eqz v18, :cond_8

    #@126
    .line 267
    move-object/from16 v0, p0

    #@128
    iget v0, v0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    #@12a
    move/from16 v18, v0

    #@12c
    move/from16 v0, v18

    #@12e
    if-ne v6, v0, :cond_8

    #@130
    move-object/from16 v0, p0

    #@132
    iget v0, v0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    #@134
    move/from16 v18, v0

    #@136
    move/from16 v0, v16

    #@138
    move/from16 v1, v18

    #@13a
    if-ne v0, v1, :cond_7

    #@13c
    const/4 v3, 0x1

    #@13d
    .line 268
    .local v3, "alreadyBound":Z
    :goto_2
    if-nez p2, :cond_9

    #@13f
    if-eqz v3, :cond_9

    #@141
    .line 272
    :goto_3
    const/16 v18, 0x1

    #@143
    return v18

    #@144
    .line 265
    .end local v3    # "alreadyBound":Z
    .end local v16    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    #@146
    iget v0, v0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    #@148
    move/from16 v16, v0

    #@14a
    .restart local v16    # "userId":I
    goto :goto_1

    #@14b
    .line 267
    :cond_7
    const/4 v3, 0x0

    #@14c
    .restart local v3    # "alreadyBound":Z
    goto :goto_2

    #@14d
    .line 266
    .end local v3    # "alreadyBound":Z
    :cond_8
    const/4 v3, 0x0

    #@14e
    .restart local v3    # "alreadyBound":Z
    goto :goto_2

    #@14f
    .line 269
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    #@152
    .line 270
    move-object/from16 v0, p0

    #@154
    move/from16 v1, v16

    #@156
    invoke-direct {v0, v4, v6, v1}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Landroid/content/ComponentName;II)V

    #@159
    goto :goto_3
.end method

.method private bindToPackageLocked(Landroid/content/ComponentName;II)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "version"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    #@2
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@a
    .line 291
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    #@c
    .line 292
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    #@12
    .line 293
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    #@14
    .line 294
    iput p3, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    #@16
    .line 296
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@18
    .line 298
    new-instance v2, Landroid/os/UserHandle;

    #@1a
    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    #@1d
    .line 297
    const v3, 0x40000005    # 2.0000012f

    #@20
    .line 296
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@23
    .line 288
    return-void
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v3

    #@4
    .line 90
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    #@6
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 91
    .local v5, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d
    move-result v7

    #@e
    .local v7, "size":I
    :goto_0
    if-ge v1, v7, :cond_0

    #@10
    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 94
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    #@18
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@1b
    .line 95
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const v8, 0x100040

    #@1e
    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@21
    move-result-object v8

    #@22
    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@24
    .line 97
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@2b
    .line 98
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 91
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 99
    :catch_0
    move-exception v0

    #@32
    .line 100
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "ServiceWatcher"

    #@35
    new-instance v9, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    const-string/jumbo v10, " not found"

    #@41
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_1

    #@4d
    .line 103
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private isServiceMissing()Z
    .locals 5

    #@0
    .prologue
    .line 185
    new-instance v1, Landroid/content/Intent;

    #@2
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    #@4
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    .line 186
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0xc0000

    #@9
    .line 188
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    #@b
    iget v3, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    #@d
    const/high16 v4, 0xc0000

    #@f
    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@16
    move-result v2

    #@17
    return v2
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    #@2
    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 7
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v5, 0x0

    #@1
    .line 303
    if-nez p0, :cond_0

    #@3
    return v5

    #@4
    .line 306
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    .line 307
    .local v0, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v6, p0

    #@a
    move v4, v5

    #@b
    :goto_0
    if-ge v4, v6, :cond_1

    #@d
    aget-object v3, p0, v4

    #@f
    .line 308
    .local v3, "s":Landroid/content/pm/Signature;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@12
    .line 307
    add-int/lit8 v4, v4, 0x1

    #@14
    goto :goto_0

    #@15
    .line 312
    .end local v3    # "s":Landroid/content/pm/Signature;
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "referenceSet$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/HashSet;

    #@25
    .line 313
    .local v1, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 314
    const/4 v4, 0x1

    #@2c
    return v4

    #@2d
    .line 317
    .end local v1    # "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_3
    return v5
.end method

.method private unbindLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 277
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    #@3
    .line 278
    .local v0, "component":Landroid/content/ComponentName;
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    #@5
    .line 279
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    #@7
    .line 280
    const/high16 v1, -0x80000000

    #@9
    iput v1, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    #@b
    .line 281
    const/16 v1, -0x2710

    #@d
    iput v1, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    #@f
    .line 282
    if-eqz v0, :cond_0

    #@11
    .line 284
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@16
    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 389
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getBestVersion()I
    .locals 2

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 396
    :try_start_0
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 395
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 401
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    #@5
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 367
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    #@d
    .line 368
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 369
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@17
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    #@19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_0
    :goto_0
    monitor-exit v1

    #@1d
    .line 363
    return-void

    #@1e
    .line 372
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "unexpected onServiceConnected: "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 364
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    #@5
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 383
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 378
    return-void

    #@10
    .line 379
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public start()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 148
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->isServiceMissing()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    return v1

    #@a
    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 155
    new-instance v3, Landroid/content/IntentFilter;

    #@16
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@19
    .line 156
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@1c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 157
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    #@22
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 158
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@27
    new-instance v1, Lcom/android/server/ServiceWatcher$2;

    #@29
    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    #@2c
    .line 170
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    #@30
    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@33
    .line 173
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@35
    if-nez v0, :cond_1

    #@37
    .line 174
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@39
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    #@3b
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3d
    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@40
    .line 177
    :cond_1
    return v6

    #@41
    .line 150
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    #@42
    monitor-exit v1

    #@43
    throw v0
.end method

.method public switchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 408
    :try_start_0
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    #@5
    .line 409
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, v0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 406
    return-void

    #@d
    .line 407
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public unlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 415
    :try_start_0
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 416
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {p0, v0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 413
    return-void

    #@f
    .line 414
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method
