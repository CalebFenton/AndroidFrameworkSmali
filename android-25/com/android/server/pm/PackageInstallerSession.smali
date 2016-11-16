.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$1;,
        Lcom/android/server/pm/PackageInstallerSession$2;,
        Lcom/android/server/pm/PackageInstallerSession$3;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x0

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field final createdMillis:J

.field final defaultContainerGid:I

.field final installerPackageName:Ljava/lang/String;

.field final installerUid:I

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mCertificates:[[Ljava/security/cert/Certificate;

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIsInstallerDeviceOwner:Z

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionsAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSignatures:[Landroid/content/pm/Signature;

.field private mVersionCode:I

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->commitLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 182
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    #@7
    .line 192
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    #@9
    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    #@c
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    #@e
    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V
    .locals 14
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "sessionId"    # I
    .param p6, "userId"    # I
    .param p7, "installerPackageName"    # Ljava/lang/String;
    .param p8, "installerUid"    # I
    .param p9, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p10, "createdMillis"    # J
    .param p12, "stageDir"    # Ljava/io/File;
    .param p13, "stageCid"    # Ljava/lang/String;
    .param p14, "prepared"    # Z
    .param p15, "sealed"    # Z

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    #@3
    .line 119
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 121
    new-instance v9, Ljava/lang/Object;

    #@c
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@11
    .line 124
    const/4 v9, 0x0

    #@12
    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@14
    .line 126
    const/4 v9, 0x0

    #@15
    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@17
    .line 129
    const/4 v9, 0x0

    #@18
    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@1a
    .line 131
    const/high16 v9, -0x40800000    # -1.0f

    #@1c
    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@1e
    .line 134
    const/4 v9, 0x0

    #@1f
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@21
    .line 136
    const/4 v9, 0x0

    #@22
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@24
    .line 138
    const/4 v9, 0x0

    #@25
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@27
    .line 140
    const/4 v9, 0x0

    #@28
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@2a
    .line 142
    const/4 v9, 0x0

    #@2b
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@2d
    .line 148
    new-instance v9, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@34
    .line 174
    new-instance v9, Ljava/util/ArrayList;

    #@36
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@3b
    .line 176
    new-instance v9, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@42
    .line 178
    new-instance v9, Ljava/util/ArrayList;

    #@44
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@49
    .line 201
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$3;

    #@4b
    invoke-direct {v9, p0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    #@4e
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@50
    .line 233
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@52
    .line 234
    move-object/from16 v0, p2

    #@54
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@56
    .line 235
    move-object/from16 v0, p3

    #@58
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@5a
    .line 236
    new-instance v9, Landroid/os/Handler;

    #@5c
    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    #@5e
    move-object/from16 v0, p4

    #@60
    invoke-direct {v9, v0, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@63
    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@65
    .line 238
    move/from16 v0, p5

    #@67
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@69
    .line 239
    move/from16 v0, p6

    #@6b
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@6d
    .line 240
    move-object/from16 v0, p7

    #@6f
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@71
    .line 241
    move/from16 v0, p8

    #@73
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@75
    .line 242
    move-object/from16 v0, p9

    #@77
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@79
    .line 243
    move-wide/from16 v0, p10

    #@7b
    iput-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@7d
    .line 244
    move-object/from16 v0, p12

    #@7f
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@81
    .line 245
    move-object/from16 v0, p13

    #@83
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@85
    .line 247
    if-nez p12, :cond_0

    #@87
    const/4 v9, 0x1

    #@88
    move v10, v9

    #@89
    :goto_0
    if-nez p13, :cond_1

    #@8b
    const/4 v9, 0x1

    #@8c
    :goto_1
    if-ne v10, v9, :cond_2

    #@8e
    .line 248
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@90
    .line 249
    const-string/jumbo v10, "Exactly one of stageDir or stageCid stage must be set"

    #@93
    .line 248
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@96
    throw v9

    #@97
    .line 247
    :cond_0
    const/4 v9, 0x0

    #@98
    move v10, v9

    #@99
    goto :goto_0

    #@9a
    :cond_1
    const/4 v9, 0x0

    #@9b
    goto :goto_1

    #@9c
    .line 252
    :cond_2
    move/from16 v0, p14

    #@9e
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@a0
    .line 253
    move/from16 v0, p15

    #@a2
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@a4
    .line 257
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@a6
    .line 258
    const-string/jumbo v10, "device_policy"

    #@a9
    .line 257
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ac
    move-result-object v2

    #@ad
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    #@af
    .line 260
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@b1
    const-string/jumbo v10, "android.permission.INSTALL_PACKAGES"

    #@b4
    move/from16 v0, p8

    #@b6
    invoke-virtual {v9, v10, v0}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    #@b9
    move-result v9

    #@ba
    if-nez v9, :cond_5

    #@bc
    const/4 v7, 0x1

    #@bd
    .line 262
    .local v7, "isPermissionGranted":Z
    :goto_2
    if-nez p8, :cond_6

    #@bf
    const/4 v6, 0x1

    #@c0
    .line 264
    .local v6, "isInstallerRoot":Z
    :goto_3
    move-object/from16 v0, p9

    #@c2
    iget v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@c4
    and-int/lit16 v9, v9, 0x400

    #@c6
    if-eqz v9, :cond_7

    #@c8
    const/4 v3, 0x1

    #@c9
    .line 265
    .local v3, "forcePermissionPrompt":Z
    :goto_4
    if-eqz v2, :cond_8

    #@cb
    move-object/from16 v0, p7

    #@cd
    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    #@d0
    move-result v9

    #@d1
    :goto_5
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@d3
    .line 267
    if-nez v7, :cond_3

    #@d5
    if-nez v6, :cond_3

    #@d7
    .line 269
    iget-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@d9
    .line 267
    if-eqz v9, :cond_4

    #@db
    .line 270
    :cond_3
    if-eqz v3, :cond_9

    #@dd
    .line 273
    :cond_4
    const/4 v9, 0x0

    #@de
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@e0
    .line 275
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e3
    move-result-wide v4

    #@e4
    .line 277
    .local v4, "identity":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@e6
    const-string/jumbo v10, "com.android.defcontainer"

    #@e9
    .line 278
    const/high16 v11, 0x100000

    #@eb
    const/4 v12, 0x0

    #@ec
    .line 277
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@ef
    move-result v8

    #@f0
    .line 279
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@f3
    move-result v9

    #@f4
    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f6
    .line 281
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f9
    .line 232
    return-void

    #@fa
    .line 260
    .end local v3    # "forcePermissionPrompt":Z
    .end local v4    # "identity":J
    .end local v6    # "isInstallerRoot":Z
    .end local v7    # "isPermissionGranted":Z
    .end local v8    # "uid":I
    :cond_5
    const/4 v7, 0x0

    #@fb
    .restart local v7    # "isPermissionGranted":Z
    goto :goto_2

    #@fc
    .line 262
    :cond_6
    const/4 v6, 0x0

    #@fd
    .restart local v6    # "isInstallerRoot":Z
    goto :goto_3

    #@fe
    .line 264
    :cond_7
    const/4 v3, 0x0

    #@ff
    .restart local v3    # "forcePermissionPrompt":Z
    goto :goto_4

    #@100
    .line 265
    :cond_8
    const/4 v9, 0x0

    #@101
    goto :goto_5

    #@102
    .line 271
    :cond_9
    const/4 v9, 0x1

    #@103
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@105
    goto :goto_6

    #@106
    .line 280
    .restart local v4    # "identity":J
    :catchall_0
    move-exception v9

    #@107
    .line 281
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10a
    .line 280
    throw v9
.end method

.method private assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 842
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@3
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 843
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " package "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 844
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@1f
    .line 843
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 844
    const-string/jumbo v2, " inconsistent with "

    #@26
    .line 843
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 844
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2c
    .line 843
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3a
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@3c
    if-eqz v0, :cond_1

    #@3e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@40
    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@42
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 851
    :cond_1
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@4c
    iget v1, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@4e
    if-eq v0, v1, :cond_3

    #@50
    .line 852
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 853
    const-string/jumbo v2, " version code "

    #@5e
    .line 852
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    .line 853
    iget v2, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@64
    .line 852
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 853
    const-string/jumbo v2, " inconsistent with "

    #@6b
    .line 852
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 854
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@71
    .line 852
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@7c
    throw v0

    #@7d
    .line 847
    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@7f
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    .line 848
    const-string/jumbo v2, " specified package "

    #@8b
    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 848
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@91
    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@93
    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    .line 849
    const-string/jumbo v2, " inconsistent with "

    #@9a
    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    .line 849
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@a0
    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@ab
    throw v0

    #@ac
    .line 856
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@ae
    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@b0
    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@b3
    move-result v0

    #@b4
    if-nez v0, :cond_4

    #@b6
    .line 857
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@b8
    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    const-string/jumbo v2, " signatures are inconsistent"

    #@c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    .line 857
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@cf
    throw v0

    #@d0
    .line 841
    :cond_4
    return-void
.end method

.method private assertPreparedAndNotSealed(Ljava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # Ljava/lang/String;

    #@0
    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " before prepared"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 318
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0

    #@24
    .line 322
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 323
    new-instance v0, Ljava/lang/SecurityException;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, " not allowed after commit"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    :cond_1
    monitor-exit v1

    #@43
    .line 317
    return-void
.end method

.method private calculateInstalledSize()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 867
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@3
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 871
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    .line 876
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v11, Ljava/util/ArrayList;

    #@f
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 877
    .local v11, "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v9

    #@18
    .local v9, "file$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Ljava/io/File;

    #@24
    .line 878
    .local v8, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@26
    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 879
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 872
    .end local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "file$iterator":Ljava/util/Iterator;
    .end local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    #@35
    .line 873
    .local v6, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@38
    move-result-object v1

    #@39
    throw v1

    #@3a
    .line 881
    .end local v6    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v9    # "file$iterator":Ljava/util/Iterator;
    .restart local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@3c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v9

    #@40
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v8

    #@4a
    check-cast v8, Ljava/io/File;

    #@4c
    .line 882
    .restart local v8    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@4e
    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_2

    #@54
    .line 883
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_1

    #@5c
    .line 888
    .end local v8    # "file":Ljava/io/File;
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    #@5e
    .line 889
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@61
    move-result v3

    #@62
    new-array v3, v3, [Ljava/lang/String;

    #@64
    invoke-interface {v11, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@67
    move-result-object v4

    #@68
    check-cast v4, [Ljava/lang/String;

    #@6a
    move-object v3, v1

    #@6b
    move-object v5, v1

    #@6c
    .line 888
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@6f
    .line 891
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@71
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@73
    and-int/lit8 v1, v1, 0x1

    #@75
    if-eqz v1, :cond_4

    #@77
    const/4 v10, 0x1

    #@78
    .line 894
    .local v10, "isForwardLocked":Z
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@7a
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@7c
    invoke-static {v0, v10, v1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7f
    move-result-wide v4

    #@80
    return-wide v4

    #@81
    .line 891
    .end local v10    # "isForwardLocked":Z
    :cond_4
    const/4 v10, 0x0

    #@82
    .restart local v10    # "isForwardLocked":Z
    goto :goto_2

    #@83
    .line 895
    :catch_1
    move-exception v7

    #@84
    .line 896
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    #@86
    .line 897
    const-string/jumbo v3, "Failed to calculate install size"

    #@89
    .line 896
    const/4 v4, -0x2

    #@8a
    invoke-direct {v1, v4, v3, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@8d
    throw v1
.end method

.method private commitLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 20
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 542
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@8
    const-string/jumbo v3, "Session destroyed"

    #@b
    const/16 v4, -0x6e

    #@d
    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 544
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@15
    if-nez v2, :cond_1

    #@17
    .line 545
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@19
    const-string/jumbo v3, "Session not sealed"

    #@1c
    const/16 v4, -0x6e

    #@1e
    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 549
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 558
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    #@28
    .line 560
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 561
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@33
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 562
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@3a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 564
    move-object/from16 v0, p0

    #@3f
    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@41
    if-nez v2, :cond_2

    #@43
    .line 567
    new-instance v17, Landroid/content/Intent;

    #@45
    const-string/jumbo v2, "android.content.pm.action.CONFIRM_PERMISSIONS"

    #@48
    move-object/from16 v0, v17

    #@4a
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4d
    .line 568
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@51
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    move-object/from16 v0, v17

    #@5b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 569
    const-string/jumbo v2, "android.content.pm.extra.SESSION_ID"

    #@61
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@65
    move-object/from16 v0, v17

    #@67
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6a
    .line 571
    :try_start_1
    move-object/from16 v0, p0

    #@6c
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@6e
    move-object/from16 v0, v17

    #@70
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@73
    .line 577
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    #@76
    .line 578
    return-void

    #@77
    .line 550
    .end local v17    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    #@78
    .line 551
    .local v12, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@7a
    .line 552
    const-string/jumbo v3, "Failed to resolve stage location"

    #@7d
    .line 551
    const/16 v4, -0x12

    #@7f
    invoke-direct {v2, v4, v3, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v2

    #@83
    .line 581
    .end local v12    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    #@85
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_3

    #@89
    .line 585
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    #@8c
    move-result-wide v14

    #@8d
    .line 586
    .local v14, "finalSize":J
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@91
    invoke-static {v2, v14, v15}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainer(Ljava/lang/String;J)V

    #@94
    .line 591
    .end local v14    # "finalSize":J
    :cond_3
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@98
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@9a
    const/4 v3, 0x2

    #@9b
    if-ne v2, v3, :cond_6

    #@9d
    .line 593
    :try_start_2
    move-object/from16 v0, p0

    #@9f
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@a1
    .line 594
    .local v13, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@a4
    move-result-object v19

    #@a5
    .line 596
    .local v19, "toDir":Ljava/io/File;
    const-string/jumbo v2, "PackageInstaller"

    #@a8
    new-instance v3, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v4, "Inherited files: "

    #@b0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 597
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@c7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@ca
    move-result v2

    #@cb
    if-nez v2, :cond_4

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@d1
    if-nez v2, :cond_4

    #@d3
    .line 598
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d5
    const-string/jumbo v3, "mInheritedFilesBase == null"

    #@d8
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@db
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@dc
    .line 612
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    :catch_1
    move-exception v12

    #@dd
    .line 613
    .restart local v12    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    #@df
    .line 614
    const-string/jumbo v3, "Failed to inherit existing install"

    #@e2
    .line 613
    const/4 v4, -0x4

    #@e3
    invoke-direct {v2, v4, v3, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@e6
    throw v2

    #@e7
    .line 601
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "toDir":Ljava/io/File;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@e9
    move-object/from16 v1, v19

    #@eb
    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_8

    #@f1
    .line 602
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@f5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@f8
    move-result v2

    #@f9
    if-nez v2, :cond_5

    #@fb
    .line 603
    new-instance v18, Ljava/io/File;

    #@fd
    const-string/jumbo v2, "oat"

    #@100
    move-object/from16 v0, v18

    #@102
    move-object/from16 v1, v19

    #@104
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@107
    .line 604
    .local v18, "oatDir":Ljava/io/File;
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@10b
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v18

    #@10f
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    #@112
    .line 606
    .end local v18    # "oatDir":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    #@114
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@116
    move-object/from16 v0, p0

    #@118
    move-object/from16 v1, v19

    #@11a
    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@11d
    .line 619
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    :cond_6
    :goto_1
    const/high16 v2, 0x3f000000    # 0.5f

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@123
    .line 620
    const/4 v2, 0x1

    #@124
    move-object/from16 v0, p0

    #@126
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    #@129
    .line 623
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@131
    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@133
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V

    #@136
    .line 626
    move-object/from16 v0, p0

    #@138
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@13a
    if-eqz v2, :cond_7

    #@13c
    .line 627
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@140
    move-object/from16 v0, p0

    #@142
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->finalizeAndFixContainer(Ljava/lang/String;)V

    #@145
    .line 632
    :cond_7
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$4;

    #@147
    move-object/from16 v0, p0

    #@149
    invoke-direct {v6, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    #@14c
    .line 647
    .local v6, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    #@14e
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@150
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@152
    and-int/lit8 v2, v2, 0x40

    #@154
    if-eqz v2, :cond_9

    #@156
    .line 648
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@158
    .line 653
    .local v10, "user":Landroid/os/UserHandle;
    :goto_2
    const/4 v2, 0x1

    #@159
    move-object/from16 v0, p0

    #@15b
    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@15d
    .line 654
    move-object/from16 v0, p0

    #@15f
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@169
    move-object/from16 v0, p0

    #@16b
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@171
    .line 655
    move-object/from16 v0, p0

    #@173
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@175
    move-object/from16 v0, p0

    #@177
    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@179
    move-object/from16 v0, p0

    #@17b
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mCertificates:[[Ljava/security/cert/Certificate;

    #@17d
    .line 654
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;[[Ljava/security/cert/Certificate;)V

    #@180
    .line 540
    return-void

    #@181
    .line 610
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "toDir":Ljava/io/File;
    :cond_8
    :try_start_4
    move-object/from16 v0, v19

    #@183
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@186
    goto :goto_1

    #@187
    .line 650
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    .restart local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_9
    new-instance v10, Landroid/os/UserHandle;

    #@189
    move-object/from16 v0, p0

    #@18b
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@18d
    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@190
    .restart local v10    # "user":Landroid/os/UserHandle;
    goto :goto_2

    #@191
    .line 572
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v17    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v16

    #@192
    .local v16, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private computeProgressLocked(Z)V
    .locals 4
    .param p1, "forcePublish"    # Z

    #@0
    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    #@3
    const v3, 0x3e4ccccd    # 0.2f

    #@6
    const/4 v2, 0x0

    #@7
    .line 369
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@9
    mul-float/2addr v0, v1

    #@a
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    #@d
    move-result v0

    #@e
    .line 370
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@10
    mul-float/2addr v1, v3

    #@11
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    #@14
    move-result v1

    #@15
    .line 369
    add-float/2addr v0, v1

    #@16
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@18
    .line 373
    if-nez p1, :cond_0

    #@1a
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@1c
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@1e
    sub-float/2addr v0, v1

    #@1f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@22
    move-result v0

    #@23
    float-to-double v0, v0

    #@24
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    #@29
    cmpl-double v0, v0, v2

    #@2b
    if-ltz v0, :cond_1

    #@2d
    .line 374
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@2f
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    #@31
    .line 375
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@33
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@35
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    #@38
    .line 368
    :cond_1
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .locals 11
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 965
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v7

    #@4
    const/4 v6, 0x0

    #@5
    array-length v8, v7

    #@6
    :goto_0
    if-ge v6, v8, :cond_1

    #@8
    aget-object v1, v7, v6

    #@a
    .line 966
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@d
    move-result-object v9

    #@e
    const-string/jumbo v10, ".tmp"

    #@11
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@14
    move-result v9

    #@15
    if-eqz v9, :cond_0

    #@17
    .line 967
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@1a
    .line 965
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 971
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    .local v3, "fromFile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_4

    #@27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/io/File;

    #@2d
    .line 972
    .local v2, "fromFile":Ljava/io/File;
    const-string/jumbo v6, "inherit"

    #@30
    const-string/jumbo v7, ".tmp"

    #@33
    invoke-static {v6, v7, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@36
    move-result-object v4

    #@37
    .line 973
    .local v4, "tmpFile":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Copying "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    const-string/jumbo v8, " to "

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 974
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    #@5f
    move-result v6

    #@60
    if-nez v6, :cond_3

    #@62
    .line 975
    new-instance v6, Ljava/io/IOException;

    #@64
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Failed to copy "

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    const-string/jumbo v8, " to "

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@86
    throw v6

    #@87
    .line 978
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    const/16 v7, 0x1a4

    #@8d
    invoke-static {v6, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 982
    new-instance v5, Ljava/io/File;

    #@92
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@99
    .line 983
    .local v5, "toFile":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    #@9c
    new-instance v7, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v8, "Renaming "

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    const-string/jumbo v8, " to "

    #@af
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v7

    #@b7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 984
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@c1
    move-result v6

    #@c2
    if-nez v6, :cond_2

    #@c4
    .line 985
    new-instance v6, Ljava/io/IOException;

    #@c6
    new-instance v7, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v8, "Failed to rename "

    #@ce
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v7

    #@d2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    const-string/jumbo v8, " to "

    #@d9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v7

    #@e1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v7

    #@e5
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v6

    #@e9
    .line 979
    .end local v5    # "toFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@ea
    .line 980
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v6, Ljava/io/IOException;

    #@ec
    new-instance v7, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v8, "Failed to chmod "

    #@f4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v7

    #@f8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v7

    #@fc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@103
    throw v6

    #@104
    .line 988
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v2    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_4
    const-string/jumbo v6, "PackageInstaller"

    #@107
    new-instance v7, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v8, "Copied "

    #@10f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@116
    move-result v8

    #@117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v7

    #@11b
    const-string/jumbo v8, " files into "

    #@11e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v7

    #@122
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v7

    #@126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v7

    #@12a
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 963
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .param p2, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 938
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "instructionSet$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    .line 940
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@14
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 941
    :catch_0
    move-exception v0

    #@1d
    .line 942
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/internal/os/InstallerConnection$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    #@20
    move-result-object v3

    #@21
    throw v3

    #@22
    .line 937
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createRemoveSplitMarker(Ljava/lang/String;)V
    .locals 6
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, ".removed"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 404
    .local v1, "markerName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 405
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Invalid marker: "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 410
    .end local v1    # "markerName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@35
    .line 411
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@38
    move-result-object v3

    #@39
    throw v3

    #@3a
    .line 407
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "markerName":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    #@3c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@43
    .line 408
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    #@46
    .line 409
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    const/4 v4, 0x0

    #@4b
    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@4e
    .line 401
    return-void
.end method

.method private destroyInternal()V
    .locals 5

    #@0
    .prologue
    .line 1136
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1137
    const/4 v3, 0x1

    #@4
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@6
    .line 1138
    const/4 v3, 0x1

    #@7
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@9
    .line 1141
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "bridge$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/os/FileBridge;

    #@1b
    .line 1142
    .local v0, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v0}, Landroid/os/FileBridge;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 1136
    .end local v0    # "bridge":Landroid/os/FileBridge;
    .end local v1    # "bridge$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@20
    monitor-exit v4

    #@21
    throw v3

    #@22
    .restart local v1    # "bridge$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@23
    .line 1145
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 1147
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@29
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@2b
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@2d
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    .line 1151
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 1152
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@3a
    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    #@3d
    .line 1135
    :cond_2
    return-void

    #@3e
    .line 1148
    :catch_0
    move-exception v2

    #@3f
    .local v2, "ignored":Lcom/android/internal/os/InstallerConnection$InstallerException;
    goto :goto_1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1121
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    #@2
    .line 1122
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    #@4
    .line 1124
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1126
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    #@a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@c
    invoke-interface {v2, v3, p1, p2, p3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1131
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@10
    if-ne p1, v2, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    .line 1132
    .local v1, "success":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@15
    invoke-virtual {v2, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@18
    .line 1120
    return-void

    #@19
    .line 1131
    .end local v1    # "success":Z
    :cond_1
    const/4 v1, 0x0

    #@1a
    .restart local v1    # "success":Z
    goto :goto_1

    #@1b
    .line 1127
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    #@1c
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Session "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ":"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 1164
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@23
    .line 1166
    const-string/jumbo v0, "userId"

    #@26
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@2f
    .line 1167
    const-string/jumbo v0, "installerPackageName"

    #@32
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    .line 1168
    const-string/jumbo v0, "installerUid"

    #@3a
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    #@3c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@43
    .line 1169
    const-string/jumbo v0, "createdMillis"

    #@46
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    #@48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@4f
    .line 1170
    const-string/jumbo v0, "stageDir"

    #@52
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@54
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@57
    .line 1171
    const-string/jumbo v0, "stageCid"

    #@5a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5f
    .line 1172
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@62
    .line 1174
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@64
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@67
    .line 1176
    const-string/jumbo v0, "mClientProgress"

    #@6a
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@6c
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@73
    .line 1177
    const-string/jumbo v0, "mProgress"

    #@76
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@78
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@7f
    .line 1178
    const-string/jumbo v0, "mSealed"

    #@82
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@8b
    .line 1179
    const-string/jumbo v0, "mPermissionsAccepted"

    #@8e
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    #@90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@97
    .line 1180
    const-string/jumbo v0, "mRelinquished"

    #@9a
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@9c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@a3
    .line 1181
    const-string/jumbo v0, "mDestroyed"

    #@a6
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    #@a8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@af
    .line 1182
    const-string/jumbo v0, "mBridges"

    #@b2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b7
    move-result v1

    #@b8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@bf
    .line 1183
    const-string/jumbo v0, "mFinalStatus"

    #@c2
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    #@c4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@cb
    .line 1184
    const-string/jumbo v0, "mFinalMessage"

    #@ce
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    #@d0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@d3
    .line 1185
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@d6
    .line 1187
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@d9
    .line 1162
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 994
    new-instance v2, Ljava/io/File;

    #@3
    const-string/jumbo v4, "lib"

    #@6
    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 995
    .local v2, "libDir":Ljava/io/File;
    invoke-static {v2, v5}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    #@c
    .line 997
    const/4 v1, 0x0

    #@d
    .line 999
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@10
    move-result-object v1

    #@11
    .line 1000
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    invoke-static {v1, v2, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    #@14
    move-result v3

    #@15
    .line 1002
    .local v3, "res":I
    if-eq v3, v5, :cond_0

    #@17
    .line 1003
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    #@19
    .line 1004
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "Failed to extract native libraries, res="

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 1003
    invoke-direct {v4, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@30
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1006
    .end local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    #@32
    .line 1007
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    #@34
    .line 1008
    const-string/jumbo v5, "Failed to extract native libraries"

    #@37
    .line 1007
    const/16 v6, -0x6e

    #@39
    invoke-direct {v4, v6, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 1009
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@3e
    .line 1010
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@41
    .line 1009
    throw v4

    #@42
    .line 1010
    .restart local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v3    # "res":I
    :cond_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 992
    return-void
.end method

.method private finalizeAndFixContainer(Ljava/lang/String;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, -0x12

    #@2
    .line 1049
    invoke-static {p1}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1050
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Failed to finalize container "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 1050
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 1054
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I

    #@24
    const/4 v1, 0x0

    #@25
    invoke-static {p1, v0, v1}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 1055
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    #@2d
    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "Failed to fix permissions on container "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 1055
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 1048
    :cond_1
    return-void
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 922
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 923
    .local v1, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 925
    .local v0, "baseStr":Ljava/lang/String;
    const-string/jumbo v2, "/."

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 926
    new-instance v2, Ljava/io/IOException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Invalid path (was relative) : "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 929
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 930
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@34
    move-result v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 933
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "File: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    const-string/jumbo v4, " outside base: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .locals 11
    .param p2, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v10, 0x0

    #@1
    .line 907
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@8
    move-result-object v4

    #@9
    .line 908
    .local v4, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "fromFile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/io/File;

    #@19
    .line 909
    .local v1, "fromFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@20
    move-result-object v3

    #@21
    .line 910
    .local v3, "fromStat":Landroid/system/StructStat;
    iget-wide v6, v3, Landroid/system/StructStat;->st_dev:J

    #@23
    iget-wide v8, v4, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    cmp-long v5, v6, v8

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 911
    return v10

    #@2a
    .line 914
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .end local v3    # "fromStat":Landroid/system/StructStat;
    .end local v4    # "toStat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    #@2b
    .line 915
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v5, "PackageInstaller"

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "Failed to detect if linking possible: "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 916
    return v10

    #@46
    .line 918
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .restart local v4    # "toStat":Landroid/system/StructStat;
    :cond_1
    const/4 v5, 0x1

    #@47
    return v5
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p2, "toDir"    # Ljava/io/File;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 949
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "fromFile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/io/File;

    #@10
    .line 950
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 952
    .local v3, "relativePath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@18
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 953
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 952
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 954
    :catch_0
    move-exception v0

    #@25
    .line 955
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    new-instance v4, Ljava/io/IOException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "failed linkOrCreateDir("

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string/jumbo v6, ", "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 956
    const-string/jumbo v6, ", "

    #@45
    .line 955
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    .line 956
    const-string/jumbo v6, ")"

    #@50
    .line 955
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5b
    throw v4

    #@5c
    .line 960
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v3    # "relativePath":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "PackageInstaller"

    #@5f
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "Linked "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6e
    move-result v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    const-string/jumbo v6, " files into "

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 948
    return-void
.end method

.method private openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    const-string/jumbo v3, "openRead"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@6
    .line 488
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 489
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Invalid name: "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 496
    :catch_0
    move-exception v0

    #@27
    .line 497
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2a
    move-result-object v3

    #@2b
    throw v3

    #@2c
    .line 491
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@2e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    .line 493
    .local v1, "target":Ljava/io/File;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@37
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    #@3d
    const/4 v6, 0x0

    #@3e
    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@41
    move-result-object v2

    #@42
    .line 494
    .local v2, "targetFd":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@44
    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@47
    return-object v3
.end method

.method private openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 431
    :try_start_0
    const-string/jumbo v0, "openWrite"

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@9
    .line 433
    new-instance v6, Landroid/os/FileBridge;

    #@b
    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    #@e
    .line 434
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 439
    :try_start_1
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Invalid name: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@34
    .line 470
    :catch_0
    move-exception v7

    #@35
    .line 471
    .local v7, "e":Landroid/system/ErrnoException;
    invoke-virtual {v7}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@38
    move-result-object v0

    #@39
    throw v0

    #@3a
    .line 430
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v2

    #@3c
    throw v0

    #@3d
    .line 442
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    :cond_0
    :try_start_2
    new-instance v11, Ljava/io/File;

    #@3f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@42
    move-result-object v0

    #@43
    invoke-direct {v11, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@46
    .line 446
    .local v11, "target":Ljava/io/File;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@48
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 447
    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    #@4e
    sget v4, Landroid/system/OsConstants;->O_WRONLY:I

    #@50
    or-int/2addr v3, v4

    #@51
    const/16 v4, 0x1a4

    #@53
    .line 446
    invoke-interface {v0, v2, v3, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@56
    move-result-object v1

    #@57
    .line 448
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    const/16 v2, 0x1a4

    #@5d
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    #@60
    .line 452
    const-wide/16 v2, 0x0

    #@62
    cmp-long v0, p4, v2

    #@64
    if-lez v0, :cond_2

    #@66
    .line 453
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@68
    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@6b
    move-result-object v10

    #@6c
    .line 454
    .local v10, "stat":Landroid/system/StructStat;
    iget-wide v2, v10, Landroid/system/StructStat;->st_size:J

    #@6e
    sub-long v8, p4, v2

    #@70
    .line 456
    .local v8, "deltaBytes":J
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@72
    if-eqz v0, :cond_1

    #@74
    const-wide/16 v2, 0x0

    #@76
    cmp-long v0, v8, v2

    #@78
    if-lez v0, :cond_1

    #@7a
    .line 457
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@7c
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@7e
    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@80
    invoke-virtual {v0, v2, v8, v9}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;J)V

    #@83
    .line 459
    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@85
    const-wide/16 v2, 0x0

    #@87
    move-wide/from16 v4, p4

    #@89
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    #@8c
    .line 462
    .end local v8    # "deltaBytes":J
    .end local v10    # "stat":Landroid/system/StructStat;
    :cond_2
    const-wide/16 v2, 0x0

    #@8e
    cmp-long v0, p2, v2

    #@90
    if-lez v0, :cond_3

    #@92
    .line 463
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@94
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    #@96
    invoke-interface {v0, v1, p2, p3, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@99
    .line 466
    :cond_3
    invoke-virtual {v6, v1}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    #@9c
    .line 467
    invoke-virtual {v6}, Landroid/os/FileBridge;->start()V

    #@9f
    .line 468
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    #@a1
    invoke-virtual {v6}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    #@a4
    move-result-object v2

    #@a5
    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    #@a8
    return-object v0
.end method

.method private static resizeContainer(Ljava/lang/String;J)V
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "targetSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, -0x12

    #@2
    .line 1016
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1017
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_0

    #@8
    .line 1018
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@a
    .line 1019
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Failed to find mounted "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 1018
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 1022
    :cond_0
    new-instance v3, Ljava/io/File;

    #@24
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    #@2a
    move-result-wide v0

    #@2b
    .line 1023
    .local v0, "currentSize":J
    cmp-long v3, v0, p1

    #@2d
    if-lez v3, :cond_1

    #@2f
    .line 1024
    const-string/jumbo v3, "PackageInstaller"

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Current size "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, " is larger than target size "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 1025
    const-string/jumbo v5, "; skipping resize"

    #@50
    .line 1024
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1026
    return-void

    #@5c
    .line 1029
    :cond_1
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    #@5f
    move-result v3

    #@60
    if-nez v3, :cond_2

    #@62
    .line 1030
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@64
    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "Failed to unmount "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    const-string/jumbo v5, " before resize"

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    .line 1030
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 1035
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    .line 1034
    invoke-static {p1, p2, p0, v3}, Lcom/android/internal/content/PackageHelper;->resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z

    #@8a
    move-result v3

    #@8b
    if-nez v3, :cond_3

    #@8d
    .line 1036
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@8f
    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v5, "Failed to resize "

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    const-string/jumbo v5, " to "

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    const-string/jumbo v5, " bytes"

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    .line 1036
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@b8
    throw v3

    #@b9
    .line 1040
    :cond_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    .line 1041
    const/16 v4, 0x3e8

    #@bf
    const/4 v5, 0x0

    #@c0
    .line 1040
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    #@c3
    move-result-object v2

    #@c4
    .line 1042
    if-nez v2, :cond_4

    #@c6
    .line 1043
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    #@c8
    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v5, "Failed to mount "

    #@d0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    const-string/jumbo v5, " after resize"

    #@db
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v4

    #@e3
    .line 1043
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@e6
    throw v3

    #@e7
    .line 1015
    :cond_4
    return-void
.end method

.method private resolveStageDir()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 336
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 337
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@d
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@f
    .line 347
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    return-object v1

    #@13
    .line 339
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@15
    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 340
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1b
    .line 341
    new-instance v1, Ljava/io/File;

    #@1d
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 334
    .end local v0    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 343
    .restart local v0    # "path":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "Failed to resolve path to container "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private validateInstallLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 31
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 672
    const/16 v27, 0x0

    #@2
    move-object/from16 v0, v27

    #@4
    move-object/from16 v1, p0

    #@6
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@8
    .line 673
    const/16 v27, -0x1

    #@a
    move/from16 v0, v27

    #@c
    move-object/from16 v1, p0

    #@e
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@10
    .line 674
    const/16 v27, 0x0

    #@12
    move-object/from16 v0, v27

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@18
    .line 676
    const/16 v27, 0x0

    #@1a
    move-object/from16 v0, v27

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@20
    .line 677
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@24
    move-object/from16 v27, v0

    #@26
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    #@29
    .line 678
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@2d
    move-object/from16 v27, v0

    #@2f
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    #@32
    .line 680
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@36
    move-object/from16 v27, v0

    #@38
    sget-object v28, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    #@3a
    invoke-virtual/range {v27 .. v28}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    #@3d
    move-result-object v19

    #@3e
    .line 681
    .local v19, "removedFiles":[Ljava/io/File;
    new-instance v17, Ljava/util/ArrayList;

    #@40
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@43
    .line 682
    .local v17, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@46
    move-result v27

    #@47
    if-nez v27, :cond_0

    #@49
    .line 683
    const/16 v27, 0x0

    #@4b
    move-object/from16 v0, v19

    #@4d
    array-length v0, v0

    #@4e
    move/from16 v28, v0

    #@50
    :goto_0
    move/from16 v0, v27

    #@52
    move/from16 v1, v28

    #@54
    if-ge v0, v1, :cond_0

    #@56
    aget-object v18, v19, v27

    #@58
    .line 684
    .local v18, "removedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    .line 686
    .local v11, "fileName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@5f
    move-result v29

    #@60
    const-string/jumbo v30, ".removed"

    #@63
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@66
    move-result v30

    #@67
    sub-int v29, v29, v30

    #@69
    const/16 v30, 0x0

    #@6b
    .line 685
    move/from16 v0, v30

    #@6d
    move/from16 v1, v29

    #@6f
    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v21

    #@73
    .line 687
    .local v21, "splitName":Ljava/lang/String;
    move-object/from16 v0, v17

    #@75
    move-object/from16 v1, v21

    #@77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7a
    .line 683
    add-int/lit8 v27, v27, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 691
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v18    # "removedFile":Ljava/io/File;
    .end local v21    # "splitName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@81
    move-object/from16 v27, v0

    #@83
    sget-object v28, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    #@85
    invoke-virtual/range {v27 .. v28}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    #@88
    move-result-object v4

    #@89
    .line 692
    .local v4, "addedFiles":[Ljava/io/File;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@8c
    move-result v27

    #@8d
    if-eqz v27, :cond_1

    #@8f
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@92
    move-result v27

    #@93
    if-nez v27, :cond_1

    #@95
    .line 693
    new-instance v27, Lcom/android/server/pm/PackageManagerException;

    #@97
    const-string/jumbo v28, "No packages staged"

    #@9a
    const/16 v29, -0x2

    #@9c
    move-object/from16 v0, v27

    #@9e
    move/from16 v1, v29

    #@a0
    move-object/from16 v2, v28

    #@a2
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@a5
    throw v27

    #@a6
    .line 696
    :cond_1
    new-instance v24, Landroid/util/ArraySet;

    #@a8
    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    #@ab
    .line 697
    .local v24, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v27, 0x0

    #@ad
    array-length v0, v4

    #@ae
    move/from16 v28, v0

    #@b0
    :goto_1
    move/from16 v0, v27

    #@b2
    move/from16 v1, v28

    #@b4
    if-ge v0, v1, :cond_9

    #@b6
    aget-object v3, v4, v27

    #@b8
    .line 701
    .local v3, "addedFile":Ljava/io/File;
    const/16 v29, 0x100

    #@ba
    .line 700
    :try_start_0
    move/from16 v0, v29

    #@bc
    invoke-static {v3, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    move-result-object v5

    #@c0
    .line 706
    .local v5, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@c2
    move-object/from16 v29, v0

    #@c4
    move-object/from16 v0, v24

    #@c6
    move-object/from16 v1, v29

    #@c8
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@cb
    move-result v29

    #@cc
    if-nez v29, :cond_2

    #@ce
    .line 707
    new-instance v27, Lcom/android/server/pm/PackageManagerException;

    #@d0
    .line 708
    new-instance v28, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v29, "Split "

    #@d8
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v28

    #@dc
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@de
    move-object/from16 v29, v0

    #@e0
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v28

    #@e4
    const-string/jumbo v29, " was defined multiple times"

    #@e7
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v28

    #@eb
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v28

    #@ef
    .line 707
    const/16 v29, -0x2

    #@f1
    move-object/from16 v0, v27

    #@f3
    move/from16 v1, v29

    #@f5
    move-object/from16 v2, v28

    #@f7
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@fa
    throw v27

    #@fb
    .line 702
    .end local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_0
    move-exception v8

    #@fc
    .line 703
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@ff
    move-result-object v27

    #@100
    throw v27

    #@101
    .line 712
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_2
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@105
    move-object/from16 v29, v0

    #@107
    if-nez v29, :cond_3

    #@109
    .line 713
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@10b
    move-object/from16 v29, v0

    #@10d
    move-object/from16 v0, v29

    #@10f
    move-object/from16 v1, p0

    #@111
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@113
    .line 714
    iget v0, v5, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@115
    move/from16 v29, v0

    #@117
    move/from16 v0, v29

    #@119
    move-object/from16 v1, p0

    #@11b
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@11d
    .line 716
    :cond_3
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@121
    move-object/from16 v29, v0

    #@123
    if-nez v29, :cond_4

    #@125
    .line 717
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@127
    move-object/from16 v29, v0

    #@129
    move-object/from16 v0, v29

    #@12b
    move-object/from16 v1, p0

    #@12d
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@12f
    .line 718
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    #@131
    move-object/from16 v29, v0

    #@133
    move-object/from16 v0, v29

    #@135
    move-object/from16 v1, p0

    #@137
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mCertificates:[[Ljava/security/cert/Certificate;

    #@139
    .line 721
    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@13c
    move-result-object v29

    #@13d
    move-object/from16 v0, p0

    #@13f
    move-object/from16 v1, v29

    #@141
    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    #@144
    .line 725
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@146
    move-object/from16 v29, v0

    #@148
    if-nez v29, :cond_5

    #@14a
    .line 726
    const-string/jumbo v26, "base.apk"

    #@14d
    .line 730
    .local v26, "targetName":Ljava/lang/String;
    :goto_2
    invoke-static/range {v26 .. v26}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    #@150
    move-result v29

    #@151
    if-nez v29, :cond_6

    #@153
    .line 731
    new-instance v27, Lcom/android/server/pm/PackageManagerException;

    #@155
    .line 732
    new-instance v28, Ljava/lang/StringBuilder;

    #@157
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v29, "Invalid filename: "

    #@15d
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v28

    #@161
    move-object/from16 v0, v28

    #@163
    move-object/from16 v1, v26

    #@165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v28

    #@169
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v28

    #@16d
    .line 731
    const/16 v29, -0x2

    #@16f
    move-object/from16 v0, v27

    #@171
    move/from16 v1, v29

    #@173
    move-object/from16 v2, v28

    #@175
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@178
    throw v27

    #@179
    .line 728
    .end local v26    # "targetName":Ljava/lang/String;
    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    const-string/jumbo v30, "split_"

    #@181
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v29

    #@185
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@187
    move-object/from16 v30, v0

    #@189
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v29

    #@18d
    const-string/jumbo v30, ".apk"

    #@190
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v29

    #@194
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v26

    #@198
    .restart local v26    # "targetName":Ljava/lang/String;
    goto :goto_2

    #@199
    .line 735
    :cond_6
    new-instance v25, Ljava/io/File;

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    #@19f
    move-object/from16 v29, v0

    #@1a1
    move-object/from16 v0, v25

    #@1a3
    move-object/from16 v1, v29

    #@1a5
    move-object/from16 v2, v26

    #@1a7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1aa
    .line 736
    .local v25, "targetFile":Ljava/io/File;
    move-object/from16 v0, v25

    #@1ac
    invoke-virtual {v3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v29

    #@1b0
    if-nez v29, :cond_7

    #@1b2
    .line 737
    move-object/from16 v0, v25

    #@1b4
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@1b7
    .line 741
    :cond_7
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@1b9
    move-object/from16 v29, v0

    #@1bb
    if-nez v29, :cond_8

    #@1bd
    .line 742
    move-object/from16 v0, v25

    #@1bf
    move-object/from16 v1, p0

    #@1c1
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@1c3
    .line 745
    :cond_8
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    #@1c7
    move-object/from16 v29, v0

    #@1c9
    move-object/from16 v0, v29

    #@1cb
    move-object/from16 v1, v25

    #@1cd
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d0
    .line 697
    add-int/lit8 v27, v27, 0x1

    #@1d2
    goto/16 :goto_1

    #@1d4
    .line 748
    .end local v3    # "addedFile":Ljava/io/File;
    .end local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v25    # "targetFile":Ljava/io/File;
    .end local v26    # "targetName":Ljava/lang/String;
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@1d7
    move-result v27

    #@1d8
    if-lez v27, :cond_d

    #@1da
    .line 750
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1dd
    move-result-object v22

    #@1de
    .local v22, "splitName$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@1e1
    move-result v27

    #@1e2
    if-eqz v27, :cond_b

    #@1e4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e7
    move-result-object v21

    #@1e8
    check-cast v21, Ljava/lang/String;

    #@1ea
    .line 751
    .restart local v21    # "splitName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1ec
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    #@1ee
    move-object/from16 v27, v0

    #@1f0
    move-object/from16 v0, v27

    #@1f2
    move-object/from16 v1, v21

    #@1f4
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f7
    move-result v27

    #@1f8
    if-nez v27, :cond_a

    #@1fa
    .line 752
    new-instance v27, Lcom/android/server/pm/PackageManagerException;

    #@1fc
    .line 753
    new-instance v28, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v29, "Split not found: "

    #@204
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v28

    #@208
    move-object/from16 v0, v28

    #@20a
    move-object/from16 v1, v21

    #@20c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v28

    #@210
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v28

    #@214
    .line 752
    const/16 v29, -0x2

    #@216
    move-object/from16 v0, v27

    #@218
    move/from16 v1, v29

    #@21a
    move-object/from16 v2, v28

    #@21c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@21f
    throw v27

    #@220
    .line 758
    .end local v21    # "splitName":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@224
    move-object/from16 v27, v0

    #@226
    if-nez v27, :cond_c

    #@228
    .line 759
    move-object/from16 v0, p1

    #@22a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@22c
    move-object/from16 v27, v0

    #@22e
    move-object/from16 v0, v27

    #@230
    move-object/from16 v1, p0

    #@232
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@234
    .line 760
    move-object/from16 v0, p1

    #@236
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@238
    move/from16 v27, v0

    #@23a
    move/from16 v0, v27

    #@23c
    move-object/from16 v1, p0

    #@23e
    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    #@240
    .line 762
    :cond_c
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@244
    move-object/from16 v27, v0

    #@246
    if-nez v27, :cond_d

    #@248
    .line 763
    move-object/from16 v0, p1

    #@24a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@24c
    move-object/from16 v27, v0

    #@24e
    move-object/from16 v0, v27

    #@250
    move-object/from16 v1, p0

    #@252
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    #@254
    .line 767
    .end local v22    # "splitName$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    #@256
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@258
    move-object/from16 v27, v0

    #@25a
    move-object/from16 v0, v27

    #@25c
    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@25e
    move/from16 v27, v0

    #@260
    const/16 v28, 0x1

    #@262
    move/from16 v0, v27

    #@264
    move/from16 v1, v28

    #@266
    if-ne v0, v1, :cond_e

    #@268
    .line 769
    const/16 v27, 0x0

    #@26a
    move-object/from16 v0, v24

    #@26c
    move-object/from16 v1, v27

    #@26e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@271
    move-result v27

    #@272
    if-nez v27, :cond_16

    #@274
    .line 770
    new-instance v27, Lcom/android/server/pm/PackageManagerException;

    #@276
    .line 771
    const-string/jumbo v28, "Full install must include a base package"

    #@279
    .line 770
    const/16 v29, -0x2

    #@27b
    move-object/from16 v0, v27

    #@27d
    move/from16 v1, v29

    #@27f
    move-object/from16 v2, v28

    #@281
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@284
    throw v27

    #@285
    .line 776
    :cond_e
    if-nez p2, :cond_f

    #@287
    .line 777
    new-instance v27, Lcom/android/server/pm/PackageManagerException;

    #@289
    .line 778
    new-instance v28, Ljava/lang/StringBuilder;

    #@28b
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@28e
    const-string/jumbo v29, "Missing existing base package for "

    #@291
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v28

    #@295
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    #@299
    move-object/from16 v29, v0

    #@29b
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v28

    #@29f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a2
    move-result-object v28

    #@2a3
    .line 777
    const/16 v29, -0x2

    #@2a5
    move-object/from16 v0, v27

    #@2a7
    move/from16 v1, v29

    #@2a9
    move-object/from16 v2, v28

    #@2ab
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    #@2ae
    throw v27

    #@2af
    .line 784
    :cond_f
    :try_start_1
    new-instance v27, Ljava/io/File;

    #@2b1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    #@2b4
    move-result-object v28

    #@2b5
    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2b8
    const/16 v28, 0x0

    #@2ba
    invoke-static/range {v27 .. v28}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@2bd
    move-result-object v9

    #@2be
    .line 785
    .local v9, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v27, Ljava/io/File;

    #@2c0
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@2c3
    move-result-object v28

    #@2c4
    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2c7
    .line 786
    const/16 v28, 0x100

    #@2c9
    .line 785
    invoke-static/range {v27 .. v28}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1

    #@2cc
    move-result-object v10

    #@2cd
    .line 791
    .local v10, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    const-string/jumbo v27, "Existing base"

    #@2d0
    move-object/from16 v0, p0

    #@2d2
    move-object/from16 v1, v27

    #@2d4
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    #@2d7
    .line 794
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@2db
    move-object/from16 v27, v0

    #@2dd
    if-nez v27, :cond_10

    #@2df
    .line 795
    new-instance v27, Ljava/io/File;

    #@2e1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@2e4
    move-result-object v28

    #@2e5
    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2e8
    move-object/from16 v0, v27

    #@2ea
    move-object/from16 v1, p0

    #@2ec
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@2ee
    .line 796
    move-object/from16 v0, p0

    #@2f0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@2f2
    move-object/from16 v27, v0

    #@2f4
    move-object/from16 v0, p0

    #@2f6
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@2f8
    move-object/from16 v28, v0

    #@2fa
    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2fd
    .line 800
    :cond_10
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@2ff
    move-object/from16 v27, v0

    #@301
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@304
    move-result v27

    #@305
    if-nez v27, :cond_13

    #@307
    .line 801
    const/4 v12, 0x0

    #@308
    .local v12, "i":I
    :goto_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@30a
    move-object/from16 v27, v0

    #@30c
    move-object/from16 v0, v27

    #@30e
    array-length v0, v0

    #@30f
    move/from16 v27, v0

    #@311
    move/from16 v0, v27

    #@313
    if-ge v12, v0, :cond_13

    #@315
    .line 802
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@317
    move-object/from16 v27, v0

    #@319
    aget-object v21, v27, v12

    #@31b
    .line 803
    .restart local v21    # "splitName":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    #@31d
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@31f
    move-object/from16 v27, v0

    #@321
    aget-object v27, v27, v12

    #@323
    move-object/from16 v0, v20

    #@325
    move-object/from16 v1, v27

    #@327
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@32a
    .line 804
    .local v20, "splitFile":Ljava/io/File;
    move-object/from16 v0, v17

    #@32c
    move-object/from16 v1, v21

    #@32e
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@331
    move-result v23

    #@332
    .line 805
    .local v23, "splitRemoved":Z
    move-object/from16 v0, v24

    #@334
    move-object/from16 v1, v21

    #@336
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@339
    move-result v27

    #@33a
    if-nez v27, :cond_11

    #@33c
    if-eqz v23, :cond_12

    #@33e
    .line 801
    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x1

    #@340
    goto :goto_3

    #@341
    .line 787
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v12    # "i":I
    .end local v20    # "splitFile":Ljava/io/File;
    .end local v21    # "splitName":Ljava/lang/String;
    .end local v23    # "splitRemoved":Z
    :catch_1
    move-exception v8

    #@342
    .line 788
    .restart local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    #@345
    move-result-object v27

    #@346
    throw v27

    #@347
    .line 806
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v12    # "i":I
    .restart local v20    # "splitFile":Ljava/io/File;
    .restart local v21    # "splitName":Ljava/lang/String;
    .restart local v23    # "splitRemoved":Z
    :cond_12
    move-object/from16 v0, p0

    #@349
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@34b
    move-object/from16 v27, v0

    #@34d
    move-object/from16 v0, v27

    #@34f
    move-object/from16 v1, v20

    #@351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@354
    goto :goto_4

    #@355
    .line 812
    .end local v12    # "i":I
    .end local v20    # "splitFile":Ljava/io/File;
    .end local v21    # "splitName":Ljava/lang/String;
    .end local v23    # "splitRemoved":Z
    :cond_13
    new-instance v27, Ljava/io/File;

    #@357
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@35a
    move-result-object v28

    #@35b
    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@35e
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@361
    move-result-object v16

    #@362
    .line 813
    .local v16, "packageInstallDir":Ljava/io/File;
    move-object/from16 v0, v16

    #@364
    move-object/from16 v1, p0

    #@366
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    #@368
    .line 814
    new-instance v14, Ljava/io/File;

    #@36a
    const-string/jumbo v27, "oat"

    #@36d
    move-object/from16 v0, v16

    #@36f
    move-object/from16 v1, v27

    #@371
    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@374
    .line 815
    .local v14, "oatDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    #@377
    move-result v27

    #@378
    if-eqz v27, :cond_16

    #@37a
    .line 816
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@37d
    move-result-object v7

    #@37e
    .line 821
    .local v7, "archSubdirs":[Ljava/io/File;
    if-eqz v7, :cond_16

    #@380
    array-length v0, v7

    #@381
    move/from16 v27, v0

    #@383
    if-lez v27, :cond_16

    #@385
    .line 822
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    #@388
    move-result-object v13

    #@389
    .line 823
    .local v13, "instructionSets":[Ljava/lang/String;
    const/16 v27, 0x0

    #@38b
    array-length v0, v7

    #@38c
    move/from16 v28, v0

    #@38e
    :goto_5
    move/from16 v0, v27

    #@390
    move/from16 v1, v28

    #@392
    if-ge v0, v1, :cond_16

    #@394
    aget-object v6, v7, v27

    #@396
    .line 825
    .local v6, "archSubDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@399
    move-result-object v29

    #@39a
    move-object/from16 v0, v29

    #@39c
    invoke-static {v13, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@39f
    move-result v29

    #@3a0
    if-nez v29, :cond_15

    #@3a2
    .line 823
    :cond_14
    :goto_6
    add-int/lit8 v27, v27, 0x1

    #@3a4
    goto :goto_5

    #@3a5
    .line 829
    :cond_15
    move-object/from16 v0, p0

    #@3a7
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    #@3a9
    move-object/from16 v29, v0

    #@3ab
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3ae
    move-result-object v30

    #@3af
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b2
    .line 830
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3b5
    move-result-object v29

    #@3b6
    invoke-static/range {v29 .. v29}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3b9
    move-result-object v15

    #@3ba
    .line 831
    .local v15, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    #@3bd
    move-result v29

    #@3be
    if-nez v29, :cond_14

    #@3c0
    .line 832
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    #@3c4
    move-object/from16 v29, v0

    #@3c6
    move-object/from16 v0, v29

    #@3c8
    invoke-interface {v0, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3cb
    goto :goto_6

    #@3cc
    .line 671
    .end local v6    # "archSubDir":Ljava/io/File;
    .end local v7    # "archSubdirs":[Ljava/io/File;
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .end local v14    # "oatDir":Ljava/io/File;
    .end local v15    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v16    # "packageInstallDir":Ljava/io/File;
    :cond_16
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 3

    #@0
    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1113
    const-string/jumbo v0, "PackageInstaller"

    #@7
    const-string/jumbo v1, "Ignoring abandon after commit relinquished control"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1114
    return-void

    #@e
    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@11
    .line 1117
    const-string/jumbo v0, "Session was abandoned"

    #@14
    const/16 v1, -0x73

    #@16
    const/4 v2, 0x0

    #@17
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@1a
    .line 1111
    return-void
.end method

.method public addClientProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 364
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@5
    add-float/2addr v0, p1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 362
    return-void

    #@b
    .line 363
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1105
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1106
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@e
    .line 1104
    :cond_0
    return-void
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 9
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 503
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 506
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 507
    :try_start_0
    iget-boolean v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@8
    .line 508
    .local v8, "wasSealed":Z
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@a
    if-nez v1, :cond_2

    #@c
    .line 510
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    #@e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v7

    #@12
    .local v7, "bridge$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Landroid/os/FileBridge;

    #@1e
    .line 511
    .local v6, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v6}, Landroid/os/FileBridge;->isClosed()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 512
    new-instance v1, Ljava/lang/SecurityException;

    #@26
    const-string/jumbo v3, "Files still open"

    #@29
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 506
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    .end local v8    # "wasSealed":Z
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1

    #@30
    .line 515
    .restart local v7    # "bridge$iterator":Ljava/util/Iterator;
    .restart local v8    # "wasSealed":Z
    :cond_1
    const/4 v1, 0x1

    #@31
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@33
    .line 519
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    #@35
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@37
    .line 520
    const/4 v1, 0x1

    #@38
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit v2

    #@3c
    .line 523
    if-nez v8, :cond_3

    #@3e
    .line 527
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@40
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    #@43
    .line 532
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@48
    .line 534
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    #@4a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    #@4c
    .line 535
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@4e
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    #@50
    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@52
    move-object v2, p1

    #@53
    .line 534
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    #@56
    .line 536
    .local v0, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@58
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    #@5b
    move-result-object v2

    #@5c
    const/4 v3, 0x0

    #@5d
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@64
    .line 502
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1158
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1156
    return-void

    #@8
    .line 1157
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 286
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    #@4
    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    #@7
    .line 287
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 288
    :try_start_0
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@c
    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    #@e
    .line 289
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    #@10
    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    #@12
    .line 290
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 291
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    #@18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 290
    :cond_0
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    #@1e
    .line 292
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    #@20
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    #@22
    .line 293
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@24
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    #@26
    .line 294
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@28
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@2b
    move-result v2

    #@2c
    if-lez v2, :cond_1

    #@2e
    const/4 v1, 0x1

    #@2f
    :cond_1
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    #@31
    .line 296
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@33
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@35
    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    #@37
    .line 297
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@39
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@3b
    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@3d
    .line 298
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@3f
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@41
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    #@43
    .line 299
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@45
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    #@47
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    #@49
    .line 300
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@4b
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    #@4d
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    monitor-exit v3

    #@50
    .line 302
    return-object v0

    #@51
    .line 287
    :catchall_0
    move-exception v1

    #@52
    monitor-exit v3

    #@53
    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 381
    const-string/jumbo v1, "getNames"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    #@6
    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 384
    :catch_0
    move-exception v0

    #@10
    .line 385
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method public isPrepared()Z
    .locals 2

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 307
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 306
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isSealed()Z
    .locals 2

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 313
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 312
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1078
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1079
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    #@e
    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1083
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1084
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1085
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    #@1b
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    #@1e
    .line 1097
    :goto_0
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    #@21
    .line 1098
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@23
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_1
    monitor-exit v1

    #@27
    .line 1077
    return-void

    #@28
    .line 1086
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 1087
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    #@2e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@30
    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@32
    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V

    #@35
    .line 1090
    const/high16 v0, 0x3e800000    # 0.25f

    #@37
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    #@39
    .line 1091
    const/4 v0, 0x1

    #@3a
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1082
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0

    #@41
    .line 1093
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    .line 1094
    const-string/jumbo v2, "Exactly one of stageDir or stageCid stage must be set"

    #@46
    .line 1093
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 478
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 479
    :catch_0
    move-exception v0

    #@6
    .line 480
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    #@0
    .prologue
    .line 418
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageInstallerSession;->openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 419
    :catch_0
    move-exception v0

    #@6
    .line 420
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@9
    move-result-object v1

    #@a
    throw v1
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 3
    .param p1, "splitName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    #@2
    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 392
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v2, "Must specify package name to remove a split"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 395
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 390
    return-void

    #@17
    .line 396
    :catch_0
    move-exception v0

    #@18
    .line 397
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    #@1b
    move-result-object v1

    #@1c
    throw v1
.end method

.method public setClientProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 355
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@5
    const/4 v3, 0x0

    #@6
    cmpl-float v1, v1, v3

    #@8
    if-nez v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 356
    .local v0, "forcePublish":Z
    :goto_0
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    #@d
    .line 357
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 352
    return-void

    #@12
    .line 355
    .end local v0    # "forcePublish":Z
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "forcePublish":Z
    goto :goto_0

    #@14
    .line 353
    .end local v0    # "forcePublish":Z
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method setPermissionsResult(Z)V
    .locals 3
    .param p1, "accepted"    # Z

    #@0
    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1062
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    const-string/jumbo v1, "Must be sealed to accept permissions"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1065
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 1067
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    #@11
    monitor-enter v0

    #@12
    .line 1068
    const/4 v1, 0x1

    #@13
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v0

    #@16
    .line 1070
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@20
    .line 1060
    :goto_0
    return-void

    #@21
    .line 1067
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v0

    #@23
    throw v1

    #@24
    .line 1072
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    #@27
    .line 1073
    const-string/jumbo v0, "User rejected permissions"

    #@2a
    const/16 v1, -0x73

    #@2c
    const/4 v2, 0x0

    #@2d
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    #@30
    goto :goto_0
.end method
