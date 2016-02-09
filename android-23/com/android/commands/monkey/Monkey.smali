.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedRotationEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPermissionTargetSystem:Z

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mRequestWatchdogBugreport:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWatchdogWaiting:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/commands/monkey/Monkey;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/commands/monkey/Monkey;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/commands/monkey/Monkey;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/data/tombstones"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    #@a
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 112
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    #@a
    .line 118
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    #@c
    .line 124
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    #@e
    .line 130
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    #@10
    .line 136
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    #@12
    .line 142
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@14
    .line 148
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    #@16
    .line 151
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    #@18
    .line 156
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    #@1a
    .line 159
    const-wide/16 v0, 0xa

    #@1c
    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    #@1e
    .line 167
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    #@20
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@27
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    #@2e
    .line 188
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@30
    .line 191
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    #@32
    .line 194
    const/16 v0, 0x3e8

    #@34
    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@36
    .line 197
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@38
    .line 200
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    #@3a
    .line 203
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    #@3c
    .line 205
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    #@3e
    .line 207
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    #@40
    .line 209
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    #@42
    .line 211
    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    #@44
    .line 214
    const-wide/16 v0, 0x1388

    #@46
    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    #@48
    .line 217
    const-wide/16 v0, 0x7530

    #@4a
    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    #@4c
    .line 219
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    #@4e
    .line 221
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    #@50
    .line 224
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    #@52
    .line 227
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    #@54
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    #@56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@59
    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@5b
    .line 233
    const/4 v0, -0x1

    #@5c
    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    #@5e
    .line 237
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    #@60
    .line 239
    const/16 v0, 0xc

    #@62
    new-array v0, v0, [F

    #@64
    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@66
    .line 243
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@68
    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    #@6b
    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@6d
    .line 245
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    #@6f
    .line 57
    return-void
.end method

.method private checkInternalConfiguration()Z
    .locals 1

    #@0
    .prologue
    .line 924
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private checkNativeCrashes()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1201
    sget-object v5, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    #@4
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1205
    .local v2, "tombstones":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    array-length v5, v2

    #@b
    if-nez v5, :cond_1

    #@d
    .line 1206
    :cond_0
    iput-object v6, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    #@f
    .line 1207
    return v4

    #@10
    .line 1211
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    #@12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@15
    .line 1212
    .local v0, "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v2

    #@16
    :goto_0
    if-ge v4, v5, :cond_2

    #@18
    aget-object v3, v2, v4

    #@1a
    .line 1213
    .local v3, "x":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1d
    .line 1212
    add-int/lit8 v4, v4, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1216
    .end local v3    # "x":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    #@22
    if-eqz v4, :cond_3

    #@24
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    #@26
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_3

    #@2c
    const/4 v1, 0x0

    #@2d
    .line 1219
    .local v1, "result":Z
    :goto_1
    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    #@2f
    .line 1221
    return v1

    #@30
    .line 1216
    .end local v1    # "result":Z
    :cond_3
    const/4 v1, 0x1

    #@31
    .restart local v1    # "result":Z
    goto :goto_1
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "reportName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v11, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v11

    #@b
    const-string/jumbo v12, ":"

    #@e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v11

    #@12
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v11

    #@16
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 416
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1c
    move-result-object v7

    #@1d
    .line 417
    .local v7, "rt":Ljava/lang/Runtime;
    const/4 v4, 0x0

    #@1e
    .line 422
    .local v4, "logOutput":Ljava/io/Writer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@21
    move-result-object v10

    #@22
    invoke-virtual {v10, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@25
    move-result-object v6

    #@26
    .line 424
    .local v6, "p":Ljava/lang/Process;
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    #@28
    if-eqz v10, :cond_0

    #@2a
    .line 426
    new-instance v5, Ljava/io/BufferedWriter;

    #@2c
    new-instance v10, Ljava/io/FileWriter;

    #@2e
    new-instance v11, Ljava/io/File;

    #@30
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@33
    move-result-object v12

    #@34
    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@37
    .line 427
    const/4 v12, 0x1

    #@38
    .line 426
    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    #@3b
    invoke-direct {v5, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@3e
    .local v5, "logOutput":Ljava/io/Writer;
    move-object v4, v5

    #@3f
    .line 430
    .end local v4    # "logOutput":Ljava/io/Writer;
    .end local v5    # "logOutput":Ljava/io/Writer;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@42
    move-result-object v3

    #@43
    .line 431
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    #@45
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@48
    .line 432
    .local v2, "inReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    #@4a
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@4d
    .line 434
    .local v1, "inBuffer":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_3

    #@53
    .line 435
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    #@55
    if-eqz v10, :cond_2

    #@57
    .line 436
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5a
    .line 437
    const-string/jumbo v10, "\n"

    #@5d
    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_0

    #@61
    .line 449
    .end local v1    # "inBuffer":Ljava/io/BufferedReader;
    .end local v2    # "inReader":Ljava/io/InputStreamReader;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v6    # "p":Ljava/lang/Process;
    .end local v8    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@62
    .line 450
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@64
    new-instance v11, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v12, "// Exception from "

    #@6c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v11

    #@70
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v11

    #@74
    const-string/jumbo v12, ":"

    #@77
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v11

    #@7b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v11

    #@7f
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@82
    .line 451
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@84
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8b
    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    #@8c
    .line 439
    .restart local v1    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "p":Ljava/lang/Process;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8e
    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@91
    goto :goto_0

    #@92
    .line 443
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    #@95
    move-result v9

    #@96
    .line 444
    .local v9, "status":I
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@98
    new-instance v11, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v12, "// "

    #@a0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v11

    #@a4
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v11

    #@a8
    const-string/jumbo v12, " status was "

    #@ab
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v11

    #@af
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ba
    .line 446
    if-eqz v4, :cond_1

    #@bc
    .line 447
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@bf
    goto :goto_1
.end method

.method private getBugreport(Ljava/lang/String;)V
    .locals 4
    .param p1, "reportName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c
    move-result-wide v2

    #@d
    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    .line 472
    const-string/jumbo v1, "[ ,:]"

    #@1c
    const-string/jumbo v2, "_"

    #@1f
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 473
    .local v0, "bugreportName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, ".txt"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, "bugreport"

    #@3a
    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    .line 470
    return-void
.end method

.method private getMainApps()Z
    .locals 14

    #@0
    .prologue
    .line 974
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 975
    .local v0, "N":I
    const/4 v5, 0x0

    #@7
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_8

    #@9
    .line 976
    new-instance v6, Landroid/content/Intent;

    #@b
    const-string/jumbo v10, "android.intent.action.MAIN"

    #@e
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 977
    .local v6, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/String;

    #@19
    .line 978
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1c
    move-result v10

    #@1d
    if-lez v10, :cond_0

    #@1f
    .line 979
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 981
    :cond_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    #@24
    .line 982
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@27
    move-result v11

    #@28
    .line 981
    const/4 v12, 0x0

    #@29
    const/4 v13, 0x0

    #@2a
    invoke-interface {v10, v6, v12, v13, v11}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@2d
    move-result-object v7

    #@2e
    .line 983
    .local v7, "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_1

    #@30
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@33
    move-result v10

    #@34
    if-nez v10, :cond_3

    #@36
    .line 984
    :cond_1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@38
    new-instance v11, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v12, "// Warning: no activities found for category "

    #@40
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v11

    #@44
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v11

    #@4c
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 975
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_0

    #@52
    .line 987
    :cond_3
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@54
    const/4 v11, 0x2

    #@55
    if-lt v10, v11, :cond_4

    #@57
    .line 988
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@59
    new-instance v11, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v12, "// Selecting main activities from category "

    #@61
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v11

    #@69
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v11

    #@6d
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 990
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@73
    move-result v1

    #@74
    .line 991
    .local v1, "NA":I
    const/4 v2, 0x0

    #@75
    .local v2, "a":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@77
    .line 992
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v9

    #@7b
    check-cast v9, Landroid/content/pm/ResolveInfo;

    #@7d
    .line 993
    .local v9, "r":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7f
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@81
    iget-object v8, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@83
    .line 994
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v10, v8}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    #@8a
    move-result v10

    #@8b
    if-eqz v10, :cond_7

    #@8d
    .line 995
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@8f
    const/4 v11, 0x2

    #@90
    if-lt v10, v11, :cond_5

    #@92
    .line 996
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@94
    new-instance v11, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v12, "//   + Using main activity "

    #@9c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v11

    #@a0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a2
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@a4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v11

    #@a8
    .line 997
    const-string/jumbo v12, " (from package "

    #@ab
    .line 996
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v11

    #@af
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    .line 997
    const-string/jumbo v12, ")"

    #@b6
    .line 996
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v11

    #@ba
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v11

    #@be
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c1
    .line 999
    :cond_5
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    #@c3
    new-instance v11, Landroid/content/ComponentName;

    #@c5
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c7
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@c9
    invoke-direct {v11, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@cc
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cf
    .line 991
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@d1
    goto :goto_1

    #@d2
    .line 1001
    :cond_7
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@d4
    const/4 v11, 0x3

    #@d5
    if-lt v10, v11, :cond_6

    #@d7
    .line 1002
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d9
    new-instance v11, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v12, "//   - NOT USING main activity "

    #@e1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v11

    #@e5
    .line 1003
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@e7
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@e9
    .line 1002
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v11

    #@ed
    .line 1003
    const-string/jumbo v12, " (from package "

    #@f0
    .line 1002
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v11

    #@f4
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v11

    #@f8
    .line 1003
    const-string/jumbo v12, ")"

    #@fb
    .line 1002
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v11

    #@ff
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v11

    #@103
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@106
    goto :goto_2

    #@107
    .line 1008
    .end local v0    # "N":I
    .end local v1    # "NA":I
    .end local v2    # "a":I
    .end local v3    # "category":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v4

    #@108
    .line 1009
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10a
    const-string/jumbo v11, "** Failed talking with package manager!"

    #@10d
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@110
    .line 1010
    const/4 v10, 0x0

    #@111
    return v10

    #@112
    .line 1013
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    :cond_8
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    #@114
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@117
    move-result v10

    #@118
    if-nez v10, :cond_9

    #@11a
    .line 1014
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11c
    const-string/jumbo v11, "** No activities found to run, monkey aborted."

    #@11f
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@122
    .line 1015
    const/4 v10, 0x0

    #@123
    return v10

    #@124
    .line 1018
    :cond_9
    const/4 v10, 0x1

    #@125
    return v10
.end method

.method private getSystemInterfaces()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 933
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@7
    .line 934
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 935
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d
    const-string/jumbo v2, "** Error: Unable to connect to activity manager; is the system running?"

    #@10
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 937
    return v4

    #@14
    .line 940
    :cond_0
    const-string/jumbo v1, "window"

    #@17
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    #@21
    .line 941
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    #@23
    if-nez v1, :cond_1

    #@25
    .line 942
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    const-string/jumbo v2, "** Error: Unable to connect to window manager; is the system running?"

    #@2a
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 944
    return v4

    #@2e
    .line 947
    :cond_1
    const-string/jumbo v1, "package"

    #@31
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@38
    move-result-object v1

    #@39
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    #@3b
    .line 948
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 949
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@41
    const-string/jumbo v2, "** Error: Unable to connect to package manager; is the system running?"

    #@44
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 951
    return v4

    #@48
    .line 955
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@4a
    new-instance v2, Lcom/android/commands/monkey/Monkey$ActivityController;

    #@4c
    const/4 v3, 0x0

    #@4d
    invoke-direct {v2, p0, v3}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$ActivityController;)V

    #@50
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@53
    .line 956
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@55
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@57
    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 962
    const/4 v1, 0x1

    #@5b
    return v1

    #@5c
    .line 957
    :catch_0
    move-exception v0

    #@5d
    .line 958
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5f
    const-string/jumbo v2, "** Failed talking with activity manager!"

    #@62
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@65
    .line 959
    return v4
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 866
    const/4 v1, 0x0

    #@2
    .line 868
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    #@4
    new-instance v4, Ljava/io/FileReader;

    #@6
    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 870
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@12
    .line 871
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 872
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-lez v4, :cond_0

    #@1c
    const-string/jumbo v4, "#"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_0

    #@25
    .line 873
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    goto :goto_0

    #@29
    .line 876
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2a
    .local v0, "ioe":Ljava/io/IOException;
    move-object v1, v2

    #@2b
    .line 877
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    .line 880
    if-eqz v1, :cond_1

    #@32
    .line 882
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@35
    .line 878
    :cond_1
    :goto_2
    return v5

    #@36
    .line 880
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    #@38
    .line 882
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    .line 888
    :cond_3
    :goto_3
    const/4 v4, 0x1

    #@3c
    return v4

    #@3d
    .line 883
    :catch_1
    move-exception v0

    #@3e
    .line 884
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@43
    goto :goto_3

    #@44
    .line 883
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "s":Ljava/lang/String;
    :catch_2
    move-exception v0

    #@45
    .line 884
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@47
    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@4a
    goto :goto_2

    #@4b
    .line 879
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@4c
    .line 880
    :goto_4
    if-eqz v1, :cond_4

    #@4e
    .line 882
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@51
    .line 879
    :cond_4
    :goto_5
    throw v4

    #@52
    .line 883
    :catch_3
    move-exception v0

    #@53
    .line 884
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@55
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@58
    goto :goto_5

    #@59
    .line 879
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    #@5a
    move-object v1, v2

    #@5b
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@5c
    .line 876
    .local v1, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    #@5d
    .restart local v0    # "ioe":Ljava/io/IOException;
    goto :goto_1
.end method

.method private loadPackageLists()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 897
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->hasValidPackages()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 898
    :cond_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 899
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15
    const-string/jumbo v3, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    #@18
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b
    .line 901
    return v4

    #@1c
    .line 903
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    #@1e
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@21
    .line 904
    .local v1, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 905
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    #@27
    invoke-static {v2, v1}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 908
    :cond_2
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addValidPackages(Ljava/util/Set;)V

    #@34
    .line 909
    new-instance v0, Ljava/util/HashSet;

    #@36
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@39
    .line 910
    .local v0, "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 911
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    #@3f
    invoke-static {v2, v0}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/Set;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_5

    #@45
    .line 914
    :cond_3
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, v0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addInvalidPackages(Ljava/util/Set;)V

    #@4c
    .line 915
    const/4 v2, 0x1

    #@4d
    return v2

    #@4e
    .line 906
    .end local v0    # "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return v4

    #@4f
    .line 912
    .restart local v0    # "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    return v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 483
    const-string/jumbo v1, "com.android.commands.monkey"

    #@3
    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@6
    .line 485
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    #@8
    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    #@b
    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    .line 486
    .local v0, "resultCode":I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@12
    .line 481
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1308
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 1309
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 1312
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@15
    .line 1313
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 1243
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@5
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@7
    array-length v2, v2

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 1244
    return-object v3

    #@b
    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@d
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@f
    aget-object v0, v1, v2

    #@11
    .line 1247
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "-"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1248
    return-object v3

    #@1b
    .line 1250
    :cond_1
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@21
    .line 1251
    const-string/jumbo v1, "--"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 1252
    return-object v3

    #@2b
    .line 1254
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2e
    move-result v1

    #@2f
    if-le v1, v5, :cond_4

    #@31
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    const/16 v2, 0x2d

    #@37
    if-eq v1, v2, :cond_4

    #@39
    .line 1255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-le v1, v4, :cond_3

    #@3f
    .line 1256
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    #@45
    .line 1257
    const/4 v1, 0x0

    #@46
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 1259
    :cond_3
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    #@4d
    .line 1260
    return-object v0

    #@4e
    .line 1263
    :cond_4
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    #@50
    .line 1264
    return-object v0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1273
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1274
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    #@7
    return-object v1

    #@8
    .line 1276
    :cond_0
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@a
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@c
    array-length v2, v2

    #@d
    if-lt v1, v2, :cond_1

    #@f
    .line 1277
    return-object v3

    #@10
    .line 1279
    :cond_1
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@12
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@14
    aget-object v0, v1, v2

    #@16
    .line 1280
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@1c
    .line 1281
    return-object v0
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .locals 6
    .param p1, "opt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1294
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    .line 1299
    .local v2, "result":J
    return-wide v2

    #@9
    .line 1295
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    #@a
    .line 1296
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "** Error: "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, " is not a number"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 1297
    throw v0
.end method

.method private processOptions()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 718
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@4
    array-length v6, v6

    #@5
    if-ge v6, v10, :cond_0

    #@7
    .line 719
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    #@a
    .line 720
    return v11

    #@b
    .line 725
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    #@d
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@10
    .line 726
    .local v5, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_29

    #@16
    .line 727
    const-string/jumbo v6, "-s"

    #@19
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 728
    const-string/jumbo v6, "Seed"

    #@22
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@25
    move-result-wide v6

    #@26
    iput-wide v6, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 830
    .end local v4    # "opt":Ljava/lang/String;
    .end local v5    # "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    #@2a
    .line 831
    .local v2, "ex":Ljava/lang/RuntimeException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c
    new-instance v7, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v8, "** Error: "

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 832
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    #@4a
    .line 833
    return v11

    #@4b
    .line 729
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "opt":Ljava/lang/String;
    .restart local v5    # "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v6, "-p"

    #@4e
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_3

    #@54
    .line 730
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 731
    :cond_3
    const-string/jumbo v6, "-c"

    #@5f
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_4

    #@65
    .line 732
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@67
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    goto :goto_0

    #@6f
    .line 733
    :cond_4
    const-string/jumbo v6, "-v"

    #@72
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v6

    #@76
    if-eqz v6, :cond_5

    #@78
    .line 734
    iget v6, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@7a
    add-int/lit8 v6, v6, 0x1

    #@7c
    iput v6, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@7e
    goto :goto_0

    #@7f
    .line 735
    :cond_5
    const-string/jumbo v6, "--ignore-crashes"

    #@82
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v6

    #@86
    if-eqz v6, :cond_6

    #@88
    .line 736
    const/4 v6, 0x1

    #@89
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    #@8b
    goto :goto_0

    #@8c
    .line 737
    :cond_6
    const-string/jumbo v6, "--ignore-timeouts"

    #@8f
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v6

    #@93
    if-eqz v6, :cond_7

    #@95
    .line 738
    const/4 v6, 0x1

    #@96
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    #@98
    goto/16 :goto_0

    #@9a
    .line 739
    :cond_7
    const-string/jumbo v6, "--ignore-security-exceptions"

    #@9d
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v6

    #@a1
    if-eqz v6, :cond_8

    #@a3
    .line 740
    const/4 v6, 0x1

    #@a4
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    #@a6
    goto/16 :goto_0

    #@a8
    .line 741
    :cond_8
    const-string/jumbo v6, "--monitor-native-crashes"

    #@ab
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v6

    #@af
    if-eqz v6, :cond_9

    #@b1
    .line 742
    const/4 v6, 0x1

    #@b2
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    #@b4
    goto/16 :goto_0

    #@b6
    .line 743
    :cond_9
    const-string/jumbo v6, "--ignore-native-crashes"

    #@b9
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v6

    #@bd
    if-eqz v6, :cond_a

    #@bf
    .line 744
    const/4 v6, 0x1

    #@c0
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    #@c2
    goto/16 :goto_0

    #@c4
    .line 745
    :cond_a
    const-string/jumbo v6, "--kill-process-after-error"

    #@c7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v6

    #@cb
    if-eqz v6, :cond_b

    #@cd
    .line 746
    const/4 v6, 0x1

    #@ce
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    #@d0
    goto/16 :goto_0

    #@d2
    .line 747
    :cond_b
    const-string/jumbo v6, "--hprof"

    #@d5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v6

    #@d9
    if-eqz v6, :cond_c

    #@db
    .line 748
    const/4 v6, 0x1

    #@dc
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    #@de
    goto/16 :goto_0

    #@e0
    .line 749
    :cond_c
    const-string/jumbo v6, "--pct-touch"

    #@e3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v6

    #@e7
    if-eqz v6, :cond_d

    #@e9
    .line 750
    const/4 v3, 0x0

    #@ea
    .line 751
    .local v3, "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@ec
    const-string/jumbo v7, "touch events percentage"

    #@ef
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@f2
    move-result-wide v8

    #@f3
    neg-long v8, v8

    #@f4
    long-to-float v7, v8

    #@f5
    aput v7, v6, v3

    #@f7
    goto/16 :goto_0

    #@f9
    .line 752
    .end local v3    # "i":I
    :cond_d
    const-string/jumbo v6, "--pct-motion"

    #@fc
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v6

    #@100
    if-eqz v6, :cond_e

    #@102
    .line 753
    const/4 v3, 0x1

    #@103
    .line 754
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@105
    const-string/jumbo v7, "motion events percentage"

    #@108
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@10b
    move-result-wide v8

    #@10c
    neg-long v8, v8

    #@10d
    long-to-float v7, v8

    #@10e
    aput v7, v6, v3

    #@110
    goto/16 :goto_0

    #@112
    .line 755
    .end local v3    # "i":I
    :cond_e
    const-string/jumbo v6, "--pct-trackball"

    #@115
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v6

    #@119
    if-eqz v6, :cond_f

    #@11b
    .line 756
    const/4 v3, 0x3

    #@11c
    .line 757
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@11e
    const-string/jumbo v7, "trackball events percentage"

    #@121
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@124
    move-result-wide v8

    #@125
    neg-long v8, v8

    #@126
    long-to-float v7, v8

    #@127
    aput v7, v6, v3

    #@129
    goto/16 :goto_0

    #@12b
    .line 758
    .end local v3    # "i":I
    :cond_f
    const-string/jumbo v6, "--pct-rotation"

    #@12e
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@131
    move-result v6

    #@132
    if-eqz v6, :cond_10

    #@134
    .line 759
    const/4 v3, 0x4

    #@135
    .line 760
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@137
    const-string/jumbo v7, "screen rotation events percentage"

    #@13a
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@13d
    move-result-wide v8

    #@13e
    neg-long v8, v8

    #@13f
    long-to-float v7, v8

    #@140
    aput v7, v6, v3

    #@142
    goto/16 :goto_0

    #@144
    .line 761
    .end local v3    # "i":I
    :cond_10
    const-string/jumbo v6, "--pct-syskeys"

    #@147
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14a
    move-result v6

    #@14b
    if-eqz v6, :cond_11

    #@14d
    .line 762
    const/16 v3, 0x8

    #@14f
    .line 763
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@151
    const-string/jumbo v7, "system (key) operations percentage"

    #@154
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@157
    move-result-wide v8

    #@158
    neg-long v8, v8

    #@159
    long-to-float v7, v8

    #@15a
    aput v7, v6, v3

    #@15c
    goto/16 :goto_0

    #@15e
    .line 764
    .end local v3    # "i":I
    :cond_11
    const-string/jumbo v6, "--pct-nav"

    #@161
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@164
    move-result v6

    #@165
    if-eqz v6, :cond_12

    #@167
    .line 765
    const/4 v3, 0x6

    #@168
    .line 766
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@16a
    const-string/jumbo v7, "nav events percentage"

    #@16d
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@170
    move-result-wide v8

    #@171
    neg-long v8, v8

    #@172
    long-to-float v7, v8

    #@173
    aput v7, v6, v3

    #@175
    goto/16 :goto_0

    #@177
    .line 767
    .end local v3    # "i":I
    :cond_12
    const-string/jumbo v6, "--pct-majornav"

    #@17a
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17d
    move-result v6

    #@17e
    if-eqz v6, :cond_13

    #@180
    .line 768
    const/4 v3, 0x7

    #@181
    .line 769
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@183
    const-string/jumbo v7, "major nav events percentage"

    #@186
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@189
    move-result-wide v8

    #@18a
    neg-long v8, v8

    #@18b
    long-to-float v7, v8

    #@18c
    aput v7, v6, v3

    #@18e
    goto/16 :goto_0

    #@190
    .line 770
    .end local v3    # "i":I
    :cond_13
    const-string/jumbo v6, "--pct-appswitch"

    #@193
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@196
    move-result v6

    #@197
    if-eqz v6, :cond_14

    #@199
    .line 771
    const/16 v3, 0x9

    #@19b
    .line 772
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@19d
    const-string/jumbo v7, "app switch events percentage"

    #@1a0
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@1a3
    move-result-wide v8

    #@1a4
    neg-long v8, v8

    #@1a5
    long-to-float v7, v8

    #@1a6
    aput v7, v6, v3

    #@1a8
    goto/16 :goto_0

    #@1aa
    .line 773
    .end local v3    # "i":I
    :cond_14
    const-string/jumbo v6, "--pct-flip"

    #@1ad
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b0
    move-result v6

    #@1b1
    if-eqz v6, :cond_15

    #@1b3
    .line 774
    const/16 v3, 0xa

    #@1b5
    .line 775
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@1b7
    const-string/jumbo v7, "keyboard flip percentage"

    #@1ba
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@1bd
    move-result-wide v8

    #@1be
    neg-long v8, v8

    #@1bf
    long-to-float v7, v8

    #@1c0
    aput v7, v6, v3

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 776
    .end local v3    # "i":I
    :cond_15
    const-string/jumbo v6, "--pct-anyevent"

    #@1c7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ca
    move-result v6

    #@1cb
    if-eqz v6, :cond_16

    #@1cd
    .line 777
    const/16 v3, 0xb

    #@1cf
    .line 778
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@1d1
    const-string/jumbo v7, "any events percentage"

    #@1d4
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@1d7
    move-result-wide v8

    #@1d8
    neg-long v8, v8

    #@1d9
    long-to-float v7, v8

    #@1da
    aput v7, v6, v3

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 779
    .end local v3    # "i":I
    :cond_16
    const-string/jumbo v6, "--pct-pinchzoom"

    #@1e1
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e4
    move-result v6

    #@1e5
    if-eqz v6, :cond_17

    #@1e7
    .line 780
    const/4 v3, 0x2

    #@1e8
    .line 781
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@1ea
    const-string/jumbo v7, "pinch zoom events percentage"

    #@1ed
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@1f0
    move-result-wide v8

    #@1f1
    neg-long v8, v8

    #@1f2
    long-to-float v7, v8

    #@1f3
    aput v7, v6, v3

    #@1f5
    goto/16 :goto_0

    #@1f7
    .line 782
    .end local v3    # "i":I
    :cond_17
    const-string/jumbo v6, "--pct-permission"

    #@1fa
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fd
    move-result v6

    #@1fe
    if-eqz v6, :cond_18

    #@200
    .line 783
    const/4 v3, 0x5

    #@201
    .line 784
    .restart local v3    # "i":I
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@203
    const-string/jumbo v7, "runtime permission toggle events percentage"

    #@206
    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@209
    move-result-wide v8

    #@20a
    neg-long v8, v8

    #@20b
    long-to-float v7, v8

    #@20c
    aput v7, v6, v3

    #@20e
    goto/16 :goto_0

    #@210
    .line 785
    .end local v3    # "i":I
    :cond_18
    const-string/jumbo v6, "--pkg-blacklist-file"

    #@213
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@216
    move-result v6

    #@217
    if-eqz v6, :cond_19

    #@219
    .line 786
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@21c
    move-result-object v6

    #@21d
    iput-object v6, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    #@21f
    goto/16 :goto_0

    #@221
    .line 787
    :cond_19
    const-string/jumbo v6, "--pkg-whitelist-file"

    #@224
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@227
    move-result v6

    #@228
    if-eqz v6, :cond_1a

    #@22a
    .line 788
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@22d
    move-result-object v6

    #@22e
    iput-object v6, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    #@230
    goto/16 :goto_0

    #@232
    .line 789
    :cond_1a
    const-string/jumbo v6, "--throttle"

    #@235
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v6

    #@239
    if-eqz v6, :cond_1b

    #@23b
    .line 790
    const-string/jumbo v6, "delay (in milliseconds) to wait between events"

    #@23e
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@241
    move-result-wide v6

    #@242
    iput-wide v6, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@244
    goto/16 :goto_0

    #@246
    .line 791
    :cond_1b
    const-string/jumbo v6, "--randomize-throttle"

    #@249
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24c
    move-result v6

    #@24d
    if-eqz v6, :cond_1c

    #@24f
    .line 792
    const/4 v6, 0x1

    #@250
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    #@252
    goto/16 :goto_0

    #@254
    .line 793
    :cond_1c
    const-string/jumbo v6, "--wait-dbg"

    #@257
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25a
    move-result v6

    #@25b
    if-nez v6, :cond_1

    #@25d
    .line 795
    const-string/jumbo v6, "--dbg-no-events"

    #@260
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@263
    move-result v6

    #@264
    if-eqz v6, :cond_1d

    #@266
    .line 796
    const/4 v6, 0x1

    #@267
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    #@269
    goto/16 :goto_0

    #@26b
    .line 797
    :cond_1d
    const-string/jumbo v6, "--port"

    #@26e
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@271
    move-result v6

    #@272
    if-eqz v6, :cond_1e

    #@274
    .line 798
    const-string/jumbo v6, "Server port to listen on for commands"

    #@277
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@27a
    move-result-wide v6

    #@27b
    long-to-int v6, v6

    #@27c
    iput v6, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    #@27e
    goto/16 :goto_0

    #@280
    .line 799
    :cond_1e
    const-string/jumbo v6, "--setup"

    #@283
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@286
    move-result v6

    #@287
    if-eqz v6, :cond_1f

    #@289
    .line 800
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@28c
    move-result-object v6

    #@28d
    iput-object v6, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    #@28f
    goto/16 :goto_0

    #@291
    .line 801
    :cond_1f
    const-string/jumbo v6, "-f"

    #@294
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@297
    move-result v6

    #@298
    if-eqz v6, :cond_20

    #@29a
    .line 802
    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@29c
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    #@29f
    move-result-object v7

    #@2a0
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a3
    goto/16 :goto_0

    #@2a5
    .line 803
    :cond_20
    const-string/jumbo v6, "--profile-wait"

    #@2a8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ab
    move-result v6

    #@2ac
    if-eqz v6, :cond_21

    #@2ae
    .line 804
    const-string/jumbo v6, "Profile delay (in milliseconds) to wait between user action"

    #@2b1
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@2b4
    move-result-wide v6

    #@2b5
    iput-wide v6, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    #@2b7
    goto/16 :goto_0

    #@2b9
    .line 806
    :cond_21
    const-string/jumbo v6, "--device-sleep-time"

    #@2bc
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2bf
    move-result v6

    #@2c0
    if-eqz v6, :cond_22

    #@2c2
    .line 807
    const-string/jumbo v6, "Device sleep time(in milliseconds)"

    #@2c5
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@2c8
    move-result-wide v6

    #@2c9
    iput-wide v6, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    #@2cb
    goto/16 :goto_0

    #@2cd
    .line 809
    :cond_22
    const-string/jumbo v6, "--randomize-script"

    #@2d0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d3
    move-result v6

    #@2d4
    if-eqz v6, :cond_23

    #@2d6
    .line 810
    const/4 v6, 0x1

    #@2d7
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    #@2d9
    goto/16 :goto_0

    #@2db
    .line 811
    :cond_23
    const-string/jumbo v6, "--script-log"

    #@2de
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e1
    move-result v6

    #@2e2
    if-eqz v6, :cond_24

    #@2e4
    .line 812
    const/4 v6, 0x1

    #@2e5
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    #@2e7
    goto/16 :goto_0

    #@2e9
    .line 813
    :cond_24
    const-string/jumbo v6, "--bugreport"

    #@2ec
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ef
    move-result v6

    #@2f0
    if-eqz v6, :cond_25

    #@2f2
    .line 814
    const/4 v6, 0x1

    #@2f3
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    #@2f5
    goto/16 :goto_0

    #@2f7
    .line 815
    :cond_25
    const-string/jumbo v6, "--periodic-bugreport"

    #@2fa
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2fd
    move-result v6

    #@2fe
    if-eqz v6, :cond_26

    #@300
    .line 816
    const/4 v6, 0x1

    #@301
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    #@303
    .line 817
    const-string/jumbo v6, "Number of iterations"

    #@306
    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    #@309
    move-result-wide v6

    #@30a
    iput-wide v6, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    #@30c
    goto/16 :goto_0

    #@30e
    .line 818
    :cond_26
    const-string/jumbo v6, "--permission-target-system"

    #@311
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@314
    move-result v6

    #@315
    if-eqz v6, :cond_27

    #@317
    .line 819
    const/4 v6, 0x1

    #@318
    iput-boolean v6, p0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    #@31a
    goto/16 :goto_0

    #@31c
    .line 820
    :cond_27
    const-string/jumbo v6, "-h"

    #@31f
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@322
    move-result v6

    #@323
    if-eqz v6, :cond_28

    #@325
    .line 821
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    #@328
    .line 822
    return v11

    #@329
    .line 824
    :cond_28
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32b
    new-instance v7, Ljava/lang/StringBuilder;

    #@32d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@330
    const-string/jumbo v8, "** Error: Unknown option: "

    #@333
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@336
    move-result-object v7

    #@337
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v7

    #@33b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33e
    move-result-object v7

    #@33f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@342
    .line 825
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    #@345
    .line 826
    return v11

    #@346
    .line 829
    :cond_29
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@349
    move-result-object v6

    #@34a
    invoke-virtual {v6, v5}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->addValidPackages(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@34d
    .line 838
    iget v6, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    #@34f
    const/4 v7, -0x1

    #@350
    if-ne v6, v7, :cond_2b

    #@352
    .line 839
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    #@355
    move-result-object v0

    #@356
    .line 840
    .local v0, "countStr":Ljava/lang/String;
    if-nez v0, :cond_2a

    #@358
    .line 841
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35a
    const-string/jumbo v7, "** Error: Count not specified"

    #@35d
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@360
    .line 842
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    #@363
    .line 843
    return v11

    #@364
    .line 847
    :cond_2a
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@367
    move-result v6

    #@368
    iput v6, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@36a
    .line 855
    .end local v0    # "countStr":Ljava/lang/String;
    :cond_2b
    return v10

    #@36b
    .line 848
    .restart local v0    # "countStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@36c
    .line 849
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36e
    const-string/jumbo v7, "** Error: Count is not a number"

    #@371
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@374
    .line 850
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    #@377
    .line 851
    return v11
.end method

.method private reportAnrTraces()V
    .locals 4

    #@0
    .prologue
    .line 387
    const-wide/16 v2, 0x1388

    #@2
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 390
    :goto_0
    const-string/jumbo v1, "anr traces"

    #@8
    const-string/jumbo v2, "cat /data/anr/traces.txt"

    #@b
    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 385
    return-void

    #@f
    .line 388
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private reportDumpsysMemInfo()V
    .locals 2

    #@0
    .prologue
    .line 401
    const-string/jumbo v0, "meminfo"

    #@3
    const-string/jumbo v1, "dumpsys meminfo"

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 400
    return-void
.end method

.method private reportProcRank()V
    .locals 2

    #@0
    .prologue
    .line 378
    const-string/jumbo v0, "procrank"

    #@3
    const-string/jumbo v1, "procrank"

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 377
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .locals 21
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 497
    const/4 v2, 0x0

    #@1
    move-object/from16 v0, p1

    #@3
    array-length v3, v0

    #@4
    :goto_0
    if-ge v2, v3, :cond_1

    #@6
    aget-object v20, p1, v2

    #@8
    .line 498
    .local v20, "s":Ljava/lang/String;
    const-string/jumbo v4, "--wait-dbg"

    #@b
    move-object/from16 v0, v20

    #@d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 499
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    #@16
    .line 497
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 504
    .end local v20    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@1e
    .line 505
    const/16 v2, 0x3e8

    #@20
    move-object/from16 v0, p0

    #@22
    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@24
    .line 506
    const-wide/16 v2, 0x0

    #@26
    move-object/from16 v0, p0

    #@28
    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@2a
    .line 507
    const-wide/16 v2, 0x0

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@30
    .line 510
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, p0

    #@34
    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    #@36
    .line 511
    const/4 v2, 0x0

    #@37
    move-object/from16 v0, p0

    #@39
    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    #@3b
    .line 514
    const/16 v18, 0x0

    #@3d
    .local v18, "i":I
    :goto_1
    const/16 v2, 0xc

    #@3f
    move/from16 v0, v18

    #@41
    if-ge v0, v2, :cond_2

    #@43
    .line 515
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@47
    const/high16 v3, 0x3f800000    # 1.0f

    #@49
    aput v3, v2, v18

    #@4b
    .line 514
    add-int/lit8 v18, v18, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 518
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    #@51
    move-result v2

    #@52
    if-nez v2, :cond_3

    #@54
    .line 519
    const/4 v2, -0x1

    #@55
    return v2

    #@56
    .line 522
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    #@59
    move-result v2

    #@5a
    if-nez v2, :cond_4

    #@5c
    .line 523
    const/4 v2, -0x1

    #@5d
    return v2

    #@5e
    .line 527
    :cond_4
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v2

    #@66
    if-nez v2, :cond_5

    #@68
    .line 528
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@6c
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    #@6f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72
    .line 529
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@76
    const-string/jumbo v3, "android.intent.category.MONKEY"

    #@79
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 532
    :cond_5
    move-object/from16 v0, p0

    #@7e
    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@80
    const-wide/16 v4, 0x0

    #@82
    cmp-long v2, v2, v4

    #@84
    if-nez v2, :cond_6

    #@86
    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@89
    move-result-wide v2

    #@8a
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8d
    move-result v4

    #@8e
    int-to-long v4, v4

    #@8f
    add-long/2addr v2, v4

    #@90
    move-object/from16 v0, p0

    #@92
    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@94
    .line 536
    :cond_6
    move-object/from16 v0, p0

    #@96
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@98
    if-lez v2, :cond_7

    #@9a
    .line 537
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9c
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, ":Monkey: seed="

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@ac
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    const-string/jumbo v4, " count="

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c6
    .line 538
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->dump()V

    #@cd
    .line 539
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@d1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d4
    move-result v2

    #@d5
    if-eqz v2, :cond_7

    #@d7
    .line 540
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    #@db
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@de
    move-result-object v19

    #@df
    .line 541
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@e2
    move-result v2

    #@e3
    if-eqz v2, :cond_7

    #@e5
    .line 542
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e7
    new-instance v2, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v4, ":IncludeCategory: "

    #@ef
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v4

    #@f3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f6
    move-result-object v2

    #@f7
    check-cast v2, Ljava/lang/String;

    #@f9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@104
    goto :goto_2

    #@105
    .line 547
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    #@108
    move-result v2

    #@109
    if-nez v2, :cond_8

    #@10b
    .line 548
    const/4 v2, -0x2

    #@10c
    return v2

    #@10d
    .line 551
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    #@110
    move-result v2

    #@111
    if-nez v2, :cond_9

    #@113
    .line 552
    const/4 v2, -0x3

    #@114
    return v2

    #@115
    .line 555
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    #@118
    move-result v2

    #@119
    if-nez v2, :cond_a

    #@11b
    .line 556
    const/4 v2, -0x4

    #@11c
    return v2

    #@11d
    .line 559
    :cond_a
    new-instance v2, Ljava/util/Random;

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@123
    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    #@126
    move-object/from16 v0, p0

    #@128
    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    #@12a
    .line 561
    move-object/from16 v0, p0

    #@12c
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@12e
    if-eqz v2, :cond_b

    #@130
    move-object/from16 v0, p0

    #@132
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@134
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@137
    move-result v2

    #@138
    const/4 v3, 0x1

    #@139
    if-ne v2, v3, :cond_b

    #@13b
    .line 563
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    #@13d
    move-object/from16 v0, p0

    #@13f
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    #@141
    move-object/from16 v0, p0

    #@143
    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@145
    const/4 v5, 0x0

    #@146
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@149
    move-result-object v4

    #@14a
    check-cast v4, Ljava/lang/String;

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@150
    .line 564
    move-object/from16 v0, p0

    #@152
    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    #@154
    move-object/from16 v0, p0

    #@156
    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    #@15c
    .line 563
    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    #@15f
    move-object/from16 v0, p0

    #@161
    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@163
    .line 565
    move-object/from16 v0, p0

    #@165
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@167
    move-object/from16 v0, p0

    #@169
    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@16b
    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    #@16e
    .line 567
    const/4 v2, 0x0

    #@16f
    move-object/from16 v0, p0

    #@171
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    #@173
    .line 609
    :goto_3
    move-object/from16 v0, p0

    #@175
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@177
    invoke-interface {v2}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    #@17a
    move-result v2

    #@17b
    if-nez v2, :cond_12

    #@17d
    .line 610
    const/4 v2, -0x5

    #@17e
    return v2

    #@17f
    .line 568
    :cond_b
    move-object/from16 v0, p0

    #@181
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@183
    if-eqz v2, :cond_d

    #@185
    move-object/from16 v0, p0

    #@187
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@189
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@18c
    move-result v2

    #@18d
    const/4 v3, 0x1

    #@18e
    if-le v2, v3, :cond_d

    #@190
    .line 569
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    #@194
    if-eqz v2, :cond_c

    #@196
    .line 570
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    #@19c
    .line 571
    move-object/from16 v0, p0

    #@19e
    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-wide v6, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    iget-boolean v8, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    iget-object v9, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    #@1ac
    .line 572
    move-object/from16 v0, p0

    #@1ae
    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-wide v12, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget-boolean v14, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    #@1b8
    .line 570
    invoke-direct/range {v3 .. v14}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iput-object v3, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@1bf
    .line 573
    move-object/from16 v0, p0

    #@1c1
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@1c3
    add-int/lit8 v2, v2, 0x1

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@1c9
    .line 579
    :goto_4
    move-object/from16 v0, p0

    #@1cb
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@1d1
    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    #@1d4
    .line 580
    const/4 v2, 0x0

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    #@1d9
    goto :goto_3

    #@1da
    .line 575
    :cond_c
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    #@1e0
    .line 576
    move-object/from16 v0, p0

    #@1e2
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget-boolean v6, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget-object v7, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    #@1ec
    .line 577
    move-object/from16 v0, p0

    #@1ee
    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-boolean v12, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    #@1f8
    .line 575
    invoke-direct/range {v2 .. v12}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@1ff
    goto :goto_4

    #@200
    .line 581
    :cond_d
    move-object/from16 v0, p0

    #@202
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    #@204
    const/4 v3, -0x1

    #@205
    if-eq v2, v3, :cond_e

    #@207
    .line 583
    :try_start_0
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork;

    #@209
    move-object/from16 v0, p0

    #@20b
    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    #@20d
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    #@210
    move-object/from16 v0, p0

    #@212
    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@214
    .line 588
    const v2, 0x7fffffff

    #@217
    move-object/from16 v0, p0

    #@219
    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@21b
    goto/16 :goto_3

    #@21d
    .line 584
    :catch_0
    move-exception v17

    #@21e
    .line 585
    .local v17, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@220
    const-string/jumbo v3, "Error binding to network socket."

    #@223
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@226
    .line 586
    const/4 v2, -0x5

    #@227
    return v2

    #@228
    .line 591
    .end local v17    # "e":Ljava/io/IOException;
    :cond_e
    move-object/from16 v0, p0

    #@22a
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@22c
    const/4 v3, 0x2

    #@22d
    if-lt v2, v3, :cond_f

    #@22f
    .line 592
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@231
    new-instance v3, Ljava/lang/StringBuilder;

    #@233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@236
    const-string/jumbo v4, "// Seeded: "

    #@239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v3

    #@23d
    move-object/from16 v0, p0

    #@23f
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@241
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@244
    move-result-object v3

    #@245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v3

    #@249
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24c
    .line 594
    :cond_f
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandom;

    #@24e
    move-object/from16 v0, p0

    #@250
    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    #@252
    move-object/from16 v0, p0

    #@254
    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    #@256
    .line 595
    move-object/from16 v0, p0

    #@258
    iget-wide v6, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget-boolean v8, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    #@25e
    move-object/from16 v0, p0

    #@260
    iget-boolean v9, v0, Lcom/android/commands/monkey/Monkey;->mPermissionTargetSystem:Z

    #@262
    .line 594
    invoke-direct/range {v3 .. v9}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/List;JZZ)V

    #@265
    move-object/from16 v0, p0

    #@267
    iput-object v3, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@269
    .line 596
    move-object/from16 v0, p0

    #@26b
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@271
    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    #@274
    .line 598
    const/16 v18, 0x0

    #@276
    :goto_5
    const/16 v2, 0xc

    #@278
    move/from16 v0, v18

    #@27a
    if-ge v0, v2, :cond_11

    #@27c
    .line 599
    move-object/from16 v0, p0

    #@27e
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@280
    aget v2, v2, v18

    #@282
    const/4 v3, 0x0

    #@283
    cmpg-float v2, v2, v3

    #@285
    if-gtz v2, :cond_10

    #@287
    .line 600
    move-object/from16 v0, p0

    #@289
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@28b
    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    #@28d
    move-object/from16 v0, p0

    #@28f
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    #@291
    aget v3, v3, v18

    #@293
    move/from16 v0, v18

    #@295
    invoke-virtual {v2, v0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    #@298
    .line 598
    :cond_10
    add-int/lit8 v18, v18, 0x1

    #@29a
    goto :goto_5

    #@29b
    .line 605
    :cond_11
    move-object/from16 v0, p0

    #@29d
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@29f
    check-cast v2, Lcom/android/commands/monkey/MonkeySourceRandom;

    #@2a1
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    #@2a4
    goto/16 :goto_3

    #@2a6
    .line 615
    :cond_12
    move-object/from16 v0, p0

    #@2a8
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    #@2aa
    if-eqz v2, :cond_13

    #@2ac
    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    #@2af
    .line 619
    :cond_13
    move-object/from16 v0, p0

    #@2b1
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@2b3
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    #@2b6
    .line 620
    const/4 v15, 0x0

    #@2b7
    .line 622
    .local v15, "crashedAtCycle":I
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2ba
    move-result v15

    #@2bb
    .line 626
    new-instance v2, Lcom/android/commands/monkey/MonkeyRotationEvent;

    #@2bd
    const/4 v3, 0x0

    #@2be
    const/4 v4, 0x0

    #@2bf
    invoke-direct {v2, v3, v4}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    #@2c2
    .line 627
    move-object/from16 v0, p0

    #@2c4
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    iget v5, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@2ce
    .line 626
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    #@2d1
    .line 629
    move-object/from16 v0, p0

    #@2d3
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@2d5
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    #@2d8
    .line 631
    monitor-enter p0

    #@2d9
    .line 632
    :try_start_2
    move-object/from16 v0, p0

    #@2db
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    #@2dd
    if-eqz v2, :cond_14

    #@2df
    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    #@2e2
    .line 634
    const/4 v2, 0x0

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    #@2e7
    .line 636
    :cond_14
    move-object/from16 v0, p0

    #@2e9
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    #@2eb
    if-eqz v2, :cond_15

    #@2ed
    .line 637
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2ef
    const-string/jumbo v3, "Print the anr report"

    #@2f2
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f5
    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2fa
    const-string/jumbo v3, "anr_"

    #@2fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v2

    #@301
    move-object/from16 v0, p0

    #@303
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    #@305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v2

    #@309
    const-string/jumbo v3, "_"

    #@30c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v2

    #@310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@313
    move-result-object v2

    #@314
    move-object/from16 v0, p0

    #@316
    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@319
    .line 639
    const/4 v2, 0x0

    #@31a
    move-object/from16 v0, p0

    #@31c
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    #@31e
    .line 641
    :cond_15
    move-object/from16 v0, p0

    #@320
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    #@322
    if-eqz v2, :cond_16

    #@324
    .line 642
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@326
    const-string/jumbo v3, "Print the watchdog report"

    #@329
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32c
    .line 643
    const-string/jumbo v2, "anr_watchdog_"

    #@32f
    move-object/from16 v0, p0

    #@331
    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@334
    .line 644
    const/4 v2, 0x0

    #@335
    move-object/from16 v0, p0

    #@337
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    #@339
    .line 646
    :cond_16
    move-object/from16 v0, p0

    #@33b
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    #@33d
    if-eqz v2, :cond_17

    #@33f
    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    #@341
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@344
    const-string/jumbo v3, "app_crash"

    #@347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v2

    #@34b
    move-object/from16 v0, p0

    #@34d
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    #@34f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@352
    move-result-object v2

    #@353
    const-string/jumbo v3, "_"

    #@356
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@359
    move-result-object v2

    #@35a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35d
    move-result-object v2

    #@35e
    move-object/from16 v0, p0

    #@360
    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@363
    .line 648
    const/4 v2, 0x0

    #@364
    move-object/from16 v0, p0

    #@366
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    #@368
    .line 650
    :cond_17
    move-object/from16 v0, p0

    #@36a
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    #@36c
    if-eqz v2, :cond_18

    #@36e
    .line 651
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    #@371
    .line 652
    const/4 v2, 0x0

    #@372
    move-object/from16 v0, p0

    #@374
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    #@376
    .line 654
    :cond_18
    move-object/from16 v0, p0

    #@378
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    #@37a
    if-eqz v2, :cond_19

    #@37c
    .line 655
    const-string/jumbo v2, "Bugreport_"

    #@37f
    move-object/from16 v0, p0

    #@381
    invoke-direct {v0, v2}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@384
    .line 656
    const/4 v2, 0x0

    #@385
    move-object/from16 v0, p0

    #@387
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    #@389
    .line 658
    :cond_19
    move-object/from16 v0, p0

    #@38b
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@38d
    if-eqz v2, :cond_1a

    #@38f
    .line 659
    const/4 v2, 0x0

    #@390
    move-object/from16 v0, p0

    #@392
    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@394
    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@397
    :cond_1a
    monitor-exit p0

    #@398
    .line 664
    move-object/from16 v0, p0

    #@39a
    iget-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    #@39c
    if-eqz v2, :cond_1b

    #@39e
    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    #@3a1
    .line 666
    move-object/from16 v0, p0

    #@3a3
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@3a5
    if-lez v2, :cond_1b

    #@3a7
    .line 667
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a9
    const-string/jumbo v3, "// Generated profiling reports in /data/misc"

    #@3ac
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3af
    .line 672
    :cond_1b
    :try_start_3
    move-object/from16 v0, p0

    #@3b1
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@3b3
    const/4 v3, 0x0

    #@3b4
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@3b7
    .line 673
    move-object/from16 v0, p0

    #@3b9
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@3bf
    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@3c2
    .line 683
    :cond_1c
    :goto_6
    move-object/from16 v0, p0

    #@3c4
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@3c6
    if-lez v2, :cond_1d

    #@3c8
    .line 684
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3ca
    const-string/jumbo v3, ":Dropped: keys="

    #@3cd
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3d0
    .line 685
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    #@3d6
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    #@3d9
    .line 686
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3db
    const-string/jumbo v3, " pointers="

    #@3de
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3e1
    .line 687
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e3
    move-object/from16 v0, p0

    #@3e5
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    #@3e7
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    #@3ea
    .line 688
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3ec
    const-string/jumbo v3, " trackballs="

    #@3ef
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3f2
    .line 689
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    #@3f8
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    #@3fb
    .line 690
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3fd
    const-string/jumbo v3, " flips="

    #@400
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@403
    .line 691
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@405
    move-object/from16 v0, p0

    #@407
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    #@409
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->print(J)V

    #@40c
    .line 692
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@40e
    const-string/jumbo v3, " rotations="

    #@411
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@414
    .line 693
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@416
    move-object/from16 v0, p0

    #@418
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    #@41a
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintStream;->println(J)V

    #@41d
    .line 697
    :cond_1d
    move-object/from16 v0, p0

    #@41f
    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    #@421
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    #@424
    .line 699
    move-object/from16 v0, p0

    #@426
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@428
    add-int/lit8 v2, v2, -0x1

    #@42a
    if-ge v15, v2, :cond_1e

    #@42c
    .line 700
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42e
    new-instance v3, Ljava/lang/StringBuilder;

    #@430
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@433
    const-string/jumbo v4, "** System appears to have crashed at event "

    #@436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@439
    move-result-object v3

    #@43a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43d
    move-result-object v3

    #@43e
    .line 701
    const-string/jumbo v4, " of "

    #@441
    .line 700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@444
    move-result-object v3

    #@445
    .line 701
    move-object/from16 v0, p0

    #@447
    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@449
    .line 700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44c
    move-result-object v3

    #@44d
    .line 701
    const-string/jumbo v4, " using seed "

    #@450
    .line 700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v3

    #@454
    .line 701
    move-object/from16 v0, p0

    #@456
    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    #@458
    .line 700
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v3

    #@45c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45f
    move-result-object v3

    #@460
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@463
    .line 702
    return v15

    #@464
    .line 623
    :catchall_0
    move-exception v2

    #@465
    .line 626
    new-instance v3, Lcom/android/commands/monkey/MonkeyRotationEvent;

    #@467
    const/4 v4, 0x0

    #@468
    const/4 v5, 0x0

    #@469
    invoke-direct {v3, v4, v5}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    #@46c
    .line 627
    move-object/from16 v0, p0

    #@46e
    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    #@470
    move-object/from16 v0, p0

    #@472
    iget-object v5, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@474
    move-object/from16 v0, p0

    #@476
    iget v6, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@478
    .line 626
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/commands/monkey/MonkeyRotationEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    #@47b
    .line 623
    throw v2

    #@47c
    .line 631
    :catchall_1
    move-exception v2

    #@47d
    monitor-exit p0

    #@47e
    throw v2

    #@47f
    .line 674
    :catch_1
    move-exception v16

    #@480
    .line 677
    .local v16, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@482
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@484
    if-lt v15, v2, :cond_1c

    #@486
    .line 678
    move-object/from16 v0, p0

    #@488
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@48a
    add-int/lit8 v15, v2, -0x1

    #@48c
    goto/16 :goto_6

    #@48e
    .line 704
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_1e
    move-object/from16 v0, p0

    #@490
    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@492
    if-lez v2, :cond_1f

    #@494
    .line 705
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@496
    const-string/jumbo v3, "// Monkey finished"

    #@499
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@49c
    .line 707
    :cond_1f
    const/4 v2, 0x0

    #@49d
    return v2
.end method

.method private runMonkeyCycles()I
    .locals 18

    #@0
    .prologue
    .line 1030
    const/4 v5, 0x0

    #@1
    .line 1031
    .local v5, "eventCounter":I
    const/4 v3, 0x0

    #@2
    .line 1033
    .local v3, "cycleCounter":I
    const/4 v8, 0x0

    #@3
    .line 1034
    .local v8, "shouldReportAnrTraces":Z
    const/4 v9, 0x0

    #@4
    .line 1035
    .local v9, "shouldReportDumpsysMemInfo":Z
    const/4 v7, 0x0

    #@5
    .line 1036
    .local v7, "shouldAbort":Z
    const/4 v10, 0x0

    #@6
    .line 1039
    .local v10, "systemCrashed":Z
    :cond_0
    :goto_0
    if-nez v10, :cond_1a

    #@8
    move-object/from16 v0, p0

    #@a
    iget v11, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    #@c
    if-ge v3, v11, :cond_1a

    #@e
    .line 1040
    monitor-enter p0

    #@f
    .line 1041
    :try_start_0
    move-object/from16 v0, p0

    #@11
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    #@13
    if-eqz v11, :cond_1

    #@15
    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    #@18
    .line 1043
    const/4 v11, 0x0

    #@19
    move-object/from16 v0, p0

    #@1b
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    #@1d
    .line 1045
    :cond_1
    move-object/from16 v0, p0

    #@1f
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    #@21
    if-eqz v11, :cond_2

    #@23
    .line 1046
    const/4 v11, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    #@28
    .line 1047
    const/4 v8, 0x1

    #@29
    .line 1049
    :cond_2
    move-object/from16 v0, p0

    #@2b
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    #@2d
    if-eqz v11, :cond_3

    #@2f
    .line 1050
    new-instance v11, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v14, "anr_"

    #@37
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v14, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    #@3f
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v11

    #@43
    const-string/jumbo v14, "_"

    #@46
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v11

    #@4a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v11

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@53
    .line 1051
    const/4 v11, 0x0

    #@54
    move-object/from16 v0, p0

    #@56
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    #@58
    .line 1053
    :cond_3
    move-object/from16 v0, p0

    #@5a
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    #@5c
    if-eqz v11, :cond_4

    #@5e
    .line 1054
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@60
    const-string/jumbo v14, "Print the watchdog report"

    #@63
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@66
    .line 1055
    const-string/jumbo v11, "anr_watchdog_"

    #@69
    move-object/from16 v0, p0

    #@6b
    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@6e
    .line 1056
    const/4 v11, 0x0

    #@6f
    move-object/from16 v0, p0

    #@71
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    #@73
    .line 1058
    :cond_4
    move-object/from16 v0, p0

    #@75
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    #@77
    if-eqz v11, :cond_5

    #@79
    .line 1059
    new-instance v11, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v14, "app_crash"

    #@81
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v11

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v14, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    #@89
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v11

    #@8d
    const-string/jumbo v14, "_"

    #@90
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v11

    #@98
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@9d
    .line 1060
    const/4 v11, 0x0

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    #@a2
    .line 1062
    :cond_5
    move-object/from16 v0, p0

    #@a4
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    #@a6
    if-eqz v11, :cond_6

    #@a8
    .line 1063
    const-string/jumbo v11, "Bugreport_"

    #@ab
    move-object/from16 v0, p0

    #@ad
    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@b0
    .line 1064
    const/4 v11, 0x0

    #@b1
    move-object/from16 v0, p0

    #@b3
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    #@b5
    .line 1066
    :cond_6
    move-object/from16 v0, p0

    #@b7
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    #@b9
    if-eqz v11, :cond_7

    #@bb
    .line 1067
    const/4 v11, 0x0

    #@bc
    move-object/from16 v0, p0

    #@be
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    #@c0
    .line 1068
    const/4 v9, 0x1

    #@c1
    .line 1070
    :cond_7
    move-object/from16 v0, p0

    #@c3
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    #@c5
    if-eqz v11, :cond_9

    #@c7
    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    #@ca
    move-result v11

    #@cb
    if-eqz v11, :cond_9

    #@cd
    if-lez v5, :cond_9

    #@cf
    .line 1074
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d1
    const-string/jumbo v14, "** New native crash detected."

    #@d4
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d7
    .line 1075
    move-object/from16 v0, p0

    #@d9
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    #@db
    if-eqz v11, :cond_8

    #@dd
    .line 1076
    const-string/jumbo v11, "native_crash_"

    #@e0
    move-object/from16 v0, p0

    #@e2
    invoke-direct {v0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    #@e5
    .line 1078
    :cond_8
    move-object/from16 v0, p0

    #@e7
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    #@e9
    if-nez v11, :cond_e

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    #@ef
    if-eqz v11, :cond_e

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    #@f5
    :goto_1
    move-object/from16 v0, p0

    #@f7
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    #@f9
    .line 1081
    :cond_9
    move-object/from16 v0, p0

    #@fb
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    #@fd
    if-eqz v11, :cond_a

    #@ff
    .line 1082
    const/4 v7, 0x1

    #@100
    .line 1084
    :cond_a
    move-object/from16 v0, p0

    #@102
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@104
    if-eqz v11, :cond_b

    #@106
    .line 1085
    const/4 v11, 0x0

    #@107
    move-object/from16 v0, p0

    #@109
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    #@10b
    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10e
    :cond_b
    monitor-exit p0

    #@10f
    .line 1092
    if-eqz v8, :cond_c

    #@111
    .line 1093
    const/4 v8, 0x0

    #@112
    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    #@115
    .line 1097
    :cond_c
    if-eqz v9, :cond_d

    #@117
    .line 1098
    const/4 v9, 0x0

    #@118
    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    #@11b
    .line 1102
    :cond_d
    if-eqz v7, :cond_f

    #@11d
    .line 1103
    const/4 v7, 0x0

    #@11e
    .line 1104
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@120
    const-string/jumbo v14, "** Monkey aborted due to error."

    #@123
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@126
    .line 1105
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@128
    new-instance v14, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v15, "Events injected: "

    #@130
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v14

    #@134
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@137
    move-result-object v14

    #@138
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v14

    #@13c
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13f
    .line 1106
    return v5

    #@140
    .line 1078
    :cond_e
    const/4 v11, 0x1

    #@141
    goto :goto_1

    #@142
    .line 1040
    :catchall_0
    move-exception v11

    #@143
    monitor-exit p0

    #@144
    throw v11

    #@145
    .line 1112
    :cond_f
    move-object/from16 v0, p0

    #@147
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    #@149
    if-eqz v11, :cond_10

    #@14b
    .line 1113
    add-int/lit8 v5, v5, 0x1

    #@14d
    .line 1114
    add-int/lit8 v3, v3, 0x1

    #@14f
    .line 1115
    goto/16 :goto_0

    #@151
    .line 1118
    :cond_10
    move-object/from16 v0, p0

    #@153
    iget v11, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@155
    if-lez v11, :cond_11

    #@157
    rem-int/lit8 v11, v5, 0x64

    #@159
    if-nez v11, :cond_11

    #@15b
    if-eqz v5, :cond_11

    #@15d
    .line 1119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@160
    move-result-wide v14

    #@161
    invoke-static {v14, v15}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    #@164
    move-result-object v2

    #@165
    .line 1120
    .local v2, "calendarTime":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@168
    move-result-wide v12

    #@169
    .line 1121
    .local v12, "systemUpTime":J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16b
    new-instance v14, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v15, "    //[calendar_time:"

    #@173
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v14

    #@177
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v14

    #@17b
    const-string/jumbo v15, " system_uptime:"

    #@17e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v14

    #@182
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@185
    move-result-object v14

    #@186
    .line 1122
    const-string/jumbo v15, "]"

    #@189
    .line 1121
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v14

    #@18d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v14

    #@191
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@194
    .line 1123
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@196
    new-instance v14, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v15, "    // Sending event #"

    #@19e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v14

    #@1a2
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v14

    #@1a6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v14

    #@1aa
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1ad
    .line 1126
    .end local v2    # "calendarTime":Ljava/lang/String;
    .end local v12    # "systemUpTime":J
    :cond_11
    move-object/from16 v0, p0

    #@1af
    iget-object v11, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    #@1b1
    invoke-interface {v11}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    #@1b4
    move-result-object v4

    #@1b5
    .line 1127
    .local v4, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v4, :cond_19

    #@1b7
    .line 1128
    move-object/from16 v0, p0

    #@1b9
    iget-object v11, v0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iget-object v14, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iget v15, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    #@1c3
    invoke-virtual {v4, v11, v14, v15}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    #@1c6
    move-result v6

    #@1c7
    .line 1129
    .local v6, "injectCode":I
    if-nez v6, :cond_16

    #@1c9
    .line 1130
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1cb
    const-string/jumbo v14, "    // Injection Failed"

    #@1ce
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d1
    .line 1131
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@1d3
    if-eqz v11, :cond_13

    #@1d5
    .line 1132
    move-object/from16 v0, p0

    #@1d7
    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    #@1d9
    const-wide/16 v16, 0x1

    #@1db
    add-long v14, v14, v16

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    #@1e1
    .line 1151
    :cond_12
    :goto_2
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    #@1e3
    if-nez v11, :cond_0

    #@1e5
    .line 1152
    add-int/lit8 v5, v5, 0x1

    #@1e7
    .line 1153
    move-object/from16 v0, p0

    #@1e9
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    #@1eb
    if-eqz v11, :cond_0

    #@1ed
    .line 1154
    add-int/lit8 v3, v3, 0x1

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 1133
    :cond_13
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@1f3
    if-eqz v11, :cond_14

    #@1f5
    .line 1134
    move-object/from16 v0, p0

    #@1f7
    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    #@1f9
    const-wide/16 v16, 0x1

    #@1fb
    add-long v14, v14, v16

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    #@201
    goto :goto_2

    #@202
    .line 1135
    :cond_14
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyFlipEvent;

    #@204
    if-eqz v11, :cond_15

    #@206
    .line 1136
    move-object/from16 v0, p0

    #@208
    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    #@20a
    const-wide/16 v16, 0x1

    #@20c
    add-long v14, v14, v16

    #@20e
    move-object/from16 v0, p0

    #@210
    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    #@212
    goto :goto_2

    #@213
    .line 1137
    :cond_15
    instance-of v11, v4, Lcom/android/commands/monkey/MonkeyRotationEvent;

    #@215
    if-eqz v11, :cond_12

    #@217
    .line 1138
    move-object/from16 v0, p0

    #@219
    iget-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    #@21b
    const-wide/16 v16, 0x1

    #@21d
    add-long v14, v14, v16

    #@21f
    move-object/from16 v0, p0

    #@221
    iput-wide v14, v0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    #@223
    goto :goto_2

    #@224
    .line 1140
    :cond_16
    const/4 v11, -0x1

    #@225
    if-ne v6, v11, :cond_17

    #@227
    .line 1141
    const/4 v10, 0x1

    #@228
    .line 1142
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22a
    const-string/jumbo v14, "** Error: RemoteException while injecting event."

    #@22d
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@230
    goto :goto_2

    #@231
    .line 1143
    :cond_17
    const/4 v11, -0x2

    #@232
    if-ne v6, v11, :cond_12

    #@234
    .line 1144
    move-object/from16 v0, p0

    #@236
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    #@238
    if-eqz v11, :cond_18

    #@23a
    const/4 v10, 0x0

    #@23b
    .line 1145
    :goto_3
    if-eqz v10, :cond_12

    #@23d
    .line 1146
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23f
    const-string/jumbo v14, "** Error: SecurityException while injecting event."

    #@242
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@245
    goto :goto_2

    #@246
    .line 1144
    :cond_18
    const/4 v10, 0x1

    #@247
    goto :goto_3

    #@248
    .line 1158
    .end local v6    # "injectCode":I
    :cond_19
    move-object/from16 v0, p0

    #@24a
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    #@24c
    if-nez v11, :cond_1a

    #@24e
    .line 1159
    add-int/lit8 v3, v3, 0x1

    #@250
    .line 1160
    move-object/from16 v0, p0

    #@252
    invoke-direct {v0, v3}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    #@255
    .line 1162
    move-object/from16 v0, p0

    #@257
    iget-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    #@259
    if-eqz v11, :cond_0

    #@25b
    .line 1163
    int-to-long v14, v3

    #@25c
    move-object/from16 v0, p0

    #@25e
    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    #@260
    move-wide/from16 v16, v0

    #@262
    rem-long v14, v14, v16

    #@264
    const-wide/16 v16, 0x0

    #@266
    cmp-long v11, v14, v16

    #@268
    if-nez v11, :cond_0

    #@26a
    .line 1164
    const/4 v11, 0x1

    #@26b
    move-object/from16 v0, p0

    #@26d
    iput-boolean v11, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    #@26f
    goto/16 :goto_0

    #@271
    .line 1173
    .end local v4    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1a
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@273
    new-instance v14, Ljava/lang/StringBuilder;

    #@275
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@278
    const-string/jumbo v15, "Events injected: "

    #@27b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v14

    #@27f
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@282
    move-result-object v14

    #@283
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@286
    move-result-object v14

    #@287
    invoke-virtual {v11, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28a
    .line 1174
    return v5
.end method

.method private showUsage()V
    .locals 3

    #@0
    .prologue
    .line 1320
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1321
    .local v0, "usage":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 1322
    const-string/jumbo v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 1323
    const-string/jumbo v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 1324
    const-string/jumbo v1, "              [--ignore-security-exceptions]\n"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 1325
    const-string/jumbo v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 1326
    const-string/jumbo v1, "              [--kill-process-after-error] [--hprof]\n"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 1327
    const-string/jumbo v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 1328
    const-string/jumbo v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    .line 1329
    const-string/jumbo v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    .line 1330
    const-string/jumbo v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    .line 1331
    const-string/jumbo v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    .line 1332
    const-string/jumbo v1, "              [--pct-permission PERCENT]\n"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4d
    .line 1333
    const-string/jumbo v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    .line 1334
    const-string/jumbo v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    .line 1335
    const-string/jumbo v1, "              [--wait-dbg] [--dbg-no-events]\n"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 1336
    const-string/jumbo v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 1337
    const-string/jumbo v1, "              [--port port]\n"

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 1338
    const-string/jumbo v1, "              [-s SEED] [-v [-v] ...]\n"

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@71
    .line 1339
    const-string/jumbo v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    .line 1340
    const-string/jumbo v1, "              [--profile-wait MILLISEC]\n"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 1341
    const-string/jumbo v1, "              [--device-sleep-time MILLISEC]\n"

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 1342
    const-string/jumbo v1, "              [--randomize-script]\n"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    .line 1343
    const-string/jumbo v1, "              [--script-log]\n"

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8f
    .line 1344
    const-string/jumbo v1, "              [--bugreport]\n"

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@95
    .line 1345
    const-string/jumbo v1, "              [--periodic-bugreport]\n"

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9b
    .line 1346
    const-string/jumbo v1, "              [--permission-target-system]\n"

    #@9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a1
    .line 1347
    const-string/jumbo v1, "              COUNT\n"

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a7
    .line 1348
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 1319
    return-void
.end method

.method private signalPersistentProcesses()V
    .locals 4

    #@0
    .prologue
    .line 1183
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    #@2
    const/16 v3, 0xa

    #@4
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    #@7
    .line 1185
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    #@8
    .line 1186
    const-wide/16 v2, 0x7d0

    #@a
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lcom/android/commands/monkey/Monkey;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    :try_start_2
    monitor-exit p0

    #@e
    .line 1181
    :goto_0
    return-void

    #@f
    .line 1185
    :catchall_0
    move-exception v2

    #@10
    monitor-exit p0

    #@11
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    #@12
    .line 1188
    :catch_0
    move-exception v0

    #@13
    .line 1189
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15
    const-string/jumbo v3, "** Failed talking with activity manager!"

    #@18
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1190
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@1d
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private writeScriptLog(I)V
    .locals 6
    .param p1, "count"    # I

    #@0
    .prologue
    .line 459
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    #@2
    new-instance v2, Ljava/io/FileWriter;

    #@4
    new-instance v3, Ljava/io/File;

    #@6
    .line 460
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@9
    move-result-object v4

    #@a
    const-string/jumbo v5, "scriptlog.txt"

    #@d
    .line 459
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 460
    const/4 v4, 0x1

    #@11
    .line 459
    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    #@14
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@17
    .line 461
    .local v1, "output":Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "iteration: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, " time: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31
    move-result-wide v4

    #@32
    invoke-static {v4, v5}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 462
    const-string/jumbo v3, "\n"

    #@3d
    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@48
    .line 463
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 456
    .end local v1    # "output":Ljava/io/Writer;
    :goto_0
    return-void

    #@4c
    .line 464
    :catch_0
    move-exception v0

    #@4d
    .line 465
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4f
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@56
    goto :goto_0
.end method
