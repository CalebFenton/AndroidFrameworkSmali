.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method static synthetic -wrap0(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 574
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    #@5
    .line 577
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@8
    .line 574
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    #@3
    return-void
.end method

.method private dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1108
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@2
    new-instance v2, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@7
    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 1109
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@c
    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@f
    .line 1110
    .local v0, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    #@12
    .line 1111
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@15
    .line 1107
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z

    #@0
    .prologue
    .line 986
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    #@3
    move-result-wide v4

    #@4
    const-wide/16 v6, 0x400

    #@6
    div-long v12, v4, v6

    #@8
    .line 987
    .local v12, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    #@b
    move-result-wide v4

    #@c
    const-wide/16 v6, 0x400

    #@e
    div-long v14, v4, v6

    #@10
    .line 988
    .local v14, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    #@13
    move-result-wide v4

    #@14
    const-wide/16 v6, 0x400

    #@16
    div-long v16, v4, v6

    #@18
    .line 990
    .local v16, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1b
    move-result-object v37

    #@1c
    .line 992
    .local v37, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->totalMemory()J

    #@1f
    move-result-wide v4

    #@20
    const-wide/16 v6, 0x400

    #@22
    div-long v18, v4, v6

    #@24
    .line 993
    .local v18, "dalvikMax":J
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->freeMemory()J

    #@27
    move-result-wide v4

    #@28
    const-wide/16 v6, 0x400

    #@2a
    div-long v22, v4, v6

    #@2c
    .line 994
    .local v22, "dalvikFree":J
    sub-long v20, v18, v22

    #@2e
    .line 995
    .local v20, "dalvikAllocated":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    #@31
    move-result-wide v46

    #@32
    .line 996
    .local v46, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    #@35
    move-result-wide v48

    #@36
    .line 997
    .local v48, "viewRootInstanceCount":J
    const-class v4, Landroid/app/ContextImpl;

    #@38
    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@3b
    move-result-wide v28

    #@3c
    .line 998
    .local v28, "appContextInstanceCount":J
    const-class v4, Landroid/app/Activity;

    #@3e
    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@41
    move-result-wide v26

    #@42
    .line 999
    .local v26, "activityInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    #@45
    move-result v34

    #@46
    .line 1000
    .local v34, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    #@49
    move-result v35

    #@4a
    .line 1001
    .local v35, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    #@4d
    move-result v31

    #@4e
    .line 1002
    .local v31, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    #@51
    move-result v32

    #@52
    .line 1003
    .local v32, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    #@55
    move-result v30

    #@56
    .line 1004
    .local v30, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    #@59
    move-result-wide v42

    #@5a
    .line 1005
    .local v42, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    #@5d
    move-result-wide v40

    #@5e
    .line 1006
    .local v40, "parcelCount":J
    const-class v4, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@60
    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@63
    move-result-wide v38

    #@64
    .line 1007
    .local v38, "openSslSocketCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    #@67
    move-result-object v44

    #@68
    .line 1010
    .local v44, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@6b
    move-result v10

    #@6c
    .line 1011
    move-object/from16 v0, p0

    #@6e
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@70
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@72
    if-eqz v4, :cond_0

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@78
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@7a
    iget-object v11, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@7c
    :goto_0
    move-object/from16 v4, p1

    #@7e
    move-object/from16 v5, p2

    #@80
    move/from16 v6, p3

    #@82
    move/from16 v7, p4

    #@84
    move/from16 v8, p5

    #@86
    move/from16 v9, p6

    #@88
    .line 1009
    invoke-static/range {v4 .. v23}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    #@8b
    .line 1015
    if-eqz p3, :cond_2

    #@8d
    .line 1020
    move-object/from16 v0, p1

    #@8f
    move-wide/from16 v1, v46

    #@91
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@94
    const/16 v4, 0x2c

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@9b
    .line 1021
    move-object/from16 v0, p1

    #@9d
    move-wide/from16 v1, v48

    #@9f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@a2
    const/16 v4, 0x2c

    #@a4
    move-object/from16 v0, p1

    #@a6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@a9
    .line 1022
    move-object/from16 v0, p1

    #@ab
    move-wide/from16 v1, v28

    #@ad
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@b0
    const/16 v4, 0x2c

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@b7
    .line 1023
    move-object/from16 v0, p1

    #@b9
    move-wide/from16 v1, v26

    #@bb
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@be
    const/16 v4, 0x2c

    #@c0
    move-object/from16 v0, p1

    #@c2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@c5
    .line 1025
    move-object/from16 v0, p1

    #@c7
    move/from16 v1, v34

    #@c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@cc
    const/16 v4, 0x2c

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@d3
    .line 1026
    move-object/from16 v0, p1

    #@d5
    move/from16 v1, v35

    #@d7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@da
    const/16 v4, 0x2c

    #@dc
    move-object/from16 v0, p1

    #@de
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@e1
    .line 1027
    move-object/from16 v0, p1

    #@e3
    move/from16 v1, v31

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@e8
    const/16 v4, 0x2c

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@ef
    .line 1028
    move-object/from16 v0, p1

    #@f1
    move/from16 v1, v32

    #@f3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@f6
    const/16 v4, 0x2c

    #@f8
    move-object/from16 v0, p1

    #@fa
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@fd
    .line 1030
    move-object/from16 v0, p1

    #@ff
    move/from16 v1, v30

    #@101
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@104
    const/16 v4, 0x2c

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@10b
    .line 1031
    move-object/from16 v0, p1

    #@10d
    move-wide/from16 v1, v38

    #@10f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@112
    const/16 v4, 0x2c

    #@114
    move-object/from16 v0, p1

    #@116
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@119
    .line 1034
    move-object/from16 v0, v44

    #@11b
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@11d
    div-int/lit16 v4, v4, 0x400

    #@11f
    move-object/from16 v0, p1

    #@121
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@124
    const/16 v4, 0x2c

    #@126
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@12b
    .line 1035
    move-object/from16 v0, v44

    #@12d
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@12f
    div-int/lit16 v4, v4, 0x400

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@136
    const/16 v4, 0x2c

    #@138
    move-object/from16 v0, p1

    #@13a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@13d
    .line 1036
    move-object/from16 v0, v44

    #@13f
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    #@141
    div-int/lit16 v4, v4, 0x400

    #@143
    move-object/from16 v0, p1

    #@145
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@148
    const/16 v4, 0x2c

    #@14a
    move-object/from16 v0, p1

    #@14c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@14f
    .line 1037
    move-object/from16 v0, v44

    #@151
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    #@153
    div-int/lit16 v4, v4, 0x400

    #@155
    move-object/from16 v0, p1

    #@157
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@15a
    .line 1038
    const/16 v36, 0x0

    #@15c
    .local v36, "i":I
    :goto_1
    move-object/from16 v0, v44

    #@15e
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@160
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@163
    move-result v4

    #@164
    move/from16 v0, v36

    #@166
    if-ge v0, v4, :cond_1

    #@168
    .line 1039
    move-object/from16 v0, v44

    #@16a
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@16c
    move/from16 v0, v36

    #@16e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@171
    move-result-object v33

    #@172
    check-cast v33, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@174
    .line 1040
    .local v33, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v4, 0x2c

    #@176
    move-object/from16 v0, p1

    #@178
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@17b
    move-object/from16 v0, v33

    #@17d
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    #@17f
    move-object/from16 v0, p1

    #@181
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    .line 1041
    const/16 v4, 0x2c

    #@186
    move-object/from16 v0, p1

    #@188
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@18b
    move-object/from16 v0, v33

    #@18d
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@18f
    move-object/from16 v0, p1

    #@191
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@194
    .line 1042
    const/16 v4, 0x2c

    #@196
    move-object/from16 v0, p1

    #@198
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@19b
    move-object/from16 v0, v33

    #@19d
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@19f
    move-object/from16 v0, p1

    #@1a1
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@1a4
    .line 1043
    const/16 v4, 0x2c

    #@1a6
    move-object/from16 v0, p1

    #@1a8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1ab
    move-object/from16 v0, v33

    #@1ad
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@1af
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@1b4
    .line 1044
    const/16 v4, 0x2c

    #@1b6
    move-object/from16 v0, p1

    #@1b8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1bb
    move-object/from16 v0, v33

    #@1bd
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@1bf
    move-object/from16 v0, p1

    #@1c1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    .line 1045
    const/16 v4, 0x2c

    #@1c6
    move-object/from16 v0, p1

    #@1c8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1cb
    move-object/from16 v0, v33

    #@1cd
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@1cf
    move-object/from16 v0, p1

    #@1d1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d4
    .line 1038
    add-int/lit8 v36, v36, 0x1

    #@1d6
    goto :goto_1

    #@1d7
    .line 1011
    .end local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v36    # "i":I
    :cond_0
    const-string/jumbo v11, "unknown"

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 1047
    .restart local v36    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1df
    .line 1049
    return-void

    #@1e0
    .line 1052
    .end local v36    # "i":I
    :cond_2
    const-string/jumbo v4, " "

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e8
    .line 1053
    const-string/jumbo v4, " Objects"

    #@1eb
    move-object/from16 v0, p1

    #@1ed
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f0
    .line 1054
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@1f3
    const/4 v5, 0x4

    #@1f4
    new-array v5, v5, [Ljava/lang/Object;

    #@1f6
    const-string/jumbo v6, "Views:"

    #@1f9
    const/4 v7, 0x0

    #@1fa
    aput-object v6, v5, v7

    #@1fc
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1ff
    move-result-object v6

    #@200
    const/4 v7, 0x1

    #@201
    aput-object v6, v5, v7

    #@203
    const-string/jumbo v6, "ViewRootImpl:"

    #@206
    const/4 v7, 0x2

    #@207
    aput-object v6, v5, v7

    #@209
    .line 1055
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20c
    move-result-object v6

    #@20d
    const/4 v7, 0x3

    #@20e
    aput-object v6, v5, v7

    #@210
    .line 1054
    move-object/from16 v0, p1

    #@212
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@215
    .line 1057
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@218
    const/4 v5, 0x4

    #@219
    new-array v5, v5, [Ljava/lang/Object;

    #@21b
    const-string/jumbo v6, "AppContexts:"

    #@21e
    const/4 v7, 0x0

    #@21f
    aput-object v6, v5, v7

    #@221
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@224
    move-result-object v6

    #@225
    const/4 v7, 0x1

    #@226
    aput-object v6, v5, v7

    #@228
    .line 1058
    const-string/jumbo v6, "Activities:"

    #@22b
    const/4 v7, 0x2

    #@22c
    aput-object v6, v5, v7

    #@22e
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@231
    move-result-object v6

    #@232
    const/4 v7, 0x3

    #@233
    aput-object v6, v5, v7

    #@235
    .line 1057
    move-object/from16 v0, p1

    #@237
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@23a
    .line 1060
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@23d
    const/4 v5, 0x4

    #@23e
    new-array v5, v5, [Ljava/lang/Object;

    #@240
    const-string/jumbo v6, "Assets:"

    #@243
    const/4 v7, 0x0

    #@244
    aput-object v6, v5, v7

    #@246
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@249
    move-result-object v6

    #@24a
    const/4 v7, 0x1

    #@24b
    aput-object v6, v5, v7

    #@24d
    .line 1061
    const-string/jumbo v6, "AssetManagers:"

    #@250
    const/4 v7, 0x2

    #@251
    aput-object v6, v5, v7

    #@253
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@256
    move-result-object v6

    #@257
    const/4 v7, 0x3

    #@258
    aput-object v6, v5, v7

    #@25a
    .line 1060
    move-object/from16 v0, p1

    #@25c
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@25f
    .line 1063
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@262
    const/4 v5, 0x4

    #@263
    new-array v5, v5, [Ljava/lang/Object;

    #@265
    const-string/jumbo v6, "Local Binders:"

    #@268
    const/4 v7, 0x0

    #@269
    aput-object v6, v5, v7

    #@26b
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26e
    move-result-object v6

    #@26f
    const/4 v7, 0x1

    #@270
    aput-object v6, v5, v7

    #@272
    .line 1064
    const-string/jumbo v6, "Proxy Binders:"

    #@275
    const/4 v7, 0x2

    #@276
    aput-object v6, v5, v7

    #@278
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27b
    move-result-object v6

    #@27c
    const/4 v7, 0x3

    #@27d
    aput-object v6, v5, v7

    #@27f
    .line 1063
    move-object/from16 v0, p1

    #@281
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@284
    .line 1065
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@287
    const/4 v5, 0x4

    #@288
    new-array v5, v5, [Ljava/lang/Object;

    #@28a
    const-string/jumbo v6, "Parcel memory:"

    #@28d
    const/4 v7, 0x0

    #@28e
    aput-object v6, v5, v7

    #@290
    const-wide/16 v6, 0x400

    #@292
    div-long v6, v42, v6

    #@294
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@297
    move-result-object v6

    #@298
    const/4 v7, 0x1

    #@299
    aput-object v6, v5, v7

    #@29b
    .line 1066
    const-string/jumbo v6, "Parcel count:"

    #@29e
    const/4 v7, 0x2

    #@29f
    aput-object v6, v5, v7

    #@2a1
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a4
    move-result-object v6

    #@2a5
    const/4 v7, 0x3

    #@2a6
    aput-object v6, v5, v7

    #@2a8
    .line 1065
    move-object/from16 v0, p1

    #@2aa
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2ad
    .line 1067
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@2b0
    const/4 v5, 0x4

    #@2b1
    new-array v5, v5, [Ljava/lang/Object;

    #@2b3
    const-string/jumbo v6, "Death Recipients:"

    #@2b6
    const/4 v7, 0x0

    #@2b7
    aput-object v6, v5, v7

    #@2b9
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bc
    move-result-object v6

    #@2bd
    const/4 v7, 0x1

    #@2be
    aput-object v6, v5, v7

    #@2c0
    .line 1068
    const-string/jumbo v6, "OpenSSL Sockets:"

    #@2c3
    const/4 v7, 0x2

    #@2c4
    aput-object v6, v5, v7

    #@2c6
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c9
    move-result-object v6

    #@2ca
    const/4 v7, 0x3

    #@2cb
    aput-object v6, v5, v7

    #@2cd
    .line 1067
    move-object/from16 v0, p1

    #@2cf
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2d2
    .line 1071
    const-string/jumbo v4, " "

    #@2d5
    move-object/from16 v0, p1

    #@2d7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2da
    .line 1072
    const-string/jumbo v4, " SQL"

    #@2dd
    move-object/from16 v0, p1

    #@2df
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e2
    .line 1073
    const-string/jumbo v4, "%21s %8d"

    #@2e5
    const/4 v5, 0x2

    #@2e6
    new-array v5, v5, [Ljava/lang/Object;

    #@2e8
    const-string/jumbo v6, "MEMORY_USED:"

    #@2eb
    const/4 v7, 0x0

    #@2ec
    aput-object v6, v5, v7

    #@2ee
    move-object/from16 v0, v44

    #@2f0
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@2f2
    div-int/lit16 v6, v6, 0x400

    #@2f4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f7
    move-result-object v6

    #@2f8
    const/4 v7, 0x1

    #@2f9
    aput-object v6, v5, v7

    #@2fb
    move-object/from16 v0, p1

    #@2fd
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@300
    .line 1074
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@303
    const/4 v5, 0x4

    #@304
    new-array v5, v5, [Ljava/lang/Object;

    #@306
    const-string/jumbo v6, "PAGECACHE_OVERFLOW:"

    #@309
    const/4 v7, 0x0

    #@30a
    aput-object v6, v5, v7

    #@30c
    .line 1075
    move-object/from16 v0, v44

    #@30e
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    #@310
    div-int/lit16 v6, v6, 0x400

    #@312
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@315
    move-result-object v6

    #@316
    const/4 v7, 0x1

    #@317
    aput-object v6, v5, v7

    #@319
    const-string/jumbo v6, "MALLOC_SIZE:"

    #@31c
    const/4 v7, 0x2

    #@31d
    aput-object v6, v5, v7

    #@31f
    move-object/from16 v0, v44

    #@321
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    #@323
    div-int/lit16 v6, v6, 0x400

    #@325
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@328
    move-result-object v6

    #@329
    const/4 v7, 0x3

    #@32a
    aput-object v6, v5, v7

    #@32c
    .line 1074
    move-object/from16 v0, p1

    #@32e
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@331
    .line 1076
    const-string/jumbo v4, " "

    #@334
    move-object/from16 v0, p1

    #@336
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@339
    .line 1077
    move-object/from16 v0, v44

    #@33b
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@33d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@340
    move-result v24

    #@341
    .line 1078
    .local v24, "N":I
    if-lez v24, :cond_6

    #@343
    .line 1079
    const-string/jumbo v4, " DATABASES"

    #@346
    move-object/from16 v0, p1

    #@348
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34b
    .line 1080
    const-string/jumbo v4, "  %8s %8s %14s %14s  %s"

    #@34e
    const/4 v5, 0x5

    #@34f
    new-array v5, v5, [Ljava/lang/Object;

    #@351
    const-string/jumbo v6, "pgsz"

    #@354
    const/4 v7, 0x0

    #@355
    aput-object v6, v5, v7

    #@357
    const-string/jumbo v6, "dbsz"

    #@35a
    const/4 v7, 0x1

    #@35b
    aput-object v6, v5, v7

    #@35d
    const-string/jumbo v6, "Lookaside(b)"

    #@360
    const/4 v7, 0x2

    #@361
    aput-object v6, v5, v7

    #@363
    const-string/jumbo v6, "cache"

    #@366
    const/4 v7, 0x3

    #@367
    aput-object v6, v5, v7

    #@369
    .line 1081
    const-string/jumbo v6, "Dbname"

    #@36c
    const/4 v7, 0x4

    #@36d
    aput-object v6, v5, v7

    #@36f
    .line 1080
    move-object/from16 v0, p1

    #@371
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@374
    .line 1082
    const/16 v36, 0x0

    #@376
    .restart local v36    # "i":I
    :goto_2
    move/from16 v0, v36

    #@378
    move/from16 v1, v24

    #@37a
    if-ge v0, v1, :cond_6

    #@37c
    .line 1083
    move-object/from16 v0, v44

    #@37e
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@380
    move/from16 v0, v36

    #@382
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@385
    move-result-object v33

    #@386
    check-cast v33, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@388
    .line 1084
    .restart local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string/jumbo v5, "  %8s %8s %14s %14s  %s"

    #@38b
    const/4 v4, 0x5

    #@38c
    new-array v6, v4, [Ljava/lang/Object;

    #@38e
    .line 1085
    move-object/from16 v0, v33

    #@390
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@392
    const-wide/16 v10, 0x0

    #@394
    cmp-long v4, v8, v10

    #@396
    if-lez v4, :cond_3

    #@398
    move-object/from16 v0, v33

    #@39a
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@39c
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@39f
    move-result-object v4

    #@3a0
    :goto_3
    const/4 v7, 0x0

    #@3a1
    aput-object v4, v6, v7

    #@3a3
    .line 1086
    move-object/from16 v0, v33

    #@3a5
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@3a7
    const-wide/16 v10, 0x0

    #@3a9
    cmp-long v4, v8, v10

    #@3ab
    if-lez v4, :cond_4

    #@3ad
    move-object/from16 v0, v33

    #@3af
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@3b1
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3b4
    move-result-object v4

    #@3b5
    :goto_4
    const/4 v7, 0x1

    #@3b6
    aput-object v4, v6, v7

    #@3b8
    .line 1087
    move-object/from16 v0, v33

    #@3ba
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@3bc
    if-lez v4, :cond_5

    #@3be
    move-object/from16 v0, v33

    #@3c0
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@3c2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3c5
    move-result-object v4

    #@3c6
    :goto_5
    const/4 v7, 0x2

    #@3c7
    aput-object v4, v6, v7

    #@3c9
    .line 1088
    move-object/from16 v0, v33

    #@3cb
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@3cd
    const/4 v7, 0x3

    #@3ce
    aput-object v4, v6, v7

    #@3d0
    move-object/from16 v0, v33

    #@3d2
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    #@3d4
    const/4 v7, 0x4

    #@3d5
    aput-object v4, v6, v7

    #@3d7
    .line 1084
    move-object/from16 v0, p1

    #@3d9
    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3dc
    .line 1082
    add-int/lit8 v36, v36, 0x1

    #@3de
    goto :goto_2

    #@3df
    .line 1085
    :cond_3
    const-string/jumbo v4, " "

    #@3e2
    goto :goto_3

    #@3e3
    .line 1086
    :cond_4
    const-string/jumbo v4, " "

    #@3e6
    goto :goto_4

    #@3e7
    .line 1087
    :cond_5
    const-string/jumbo v4, " "

    #@3ea
    goto :goto_5

    #@3eb
    .line 1093
    .end local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v36    # "i":I
    :cond_6
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    #@3ee
    move-result-object v25

    #@3ef
    .line 1094
    .local v25, "assetAlloc":Ljava/lang/String;
    if-eqz v25, :cond_7

    #@3f1
    .line 1095
    const-string/jumbo v4, " "

    #@3f4
    move-object/from16 v0, p1

    #@3f6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f9
    .line 1096
    const-string/jumbo v4, " Asset Allocations"

    #@3fc
    move-object/from16 v0, p1

    #@3fe
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@401
    .line 1097
    move-object/from16 v0, p1

    #@403
    move-object/from16 v1, v25

    #@405
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@408
    .line 985
    :cond_7
    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 581
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@9
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 582
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@f
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@11
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@14
    move-result v0

    #@15
    .line 581
    if-eqz v0, :cond_1

    #@17
    .line 583
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@19
    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v1

    #@1c
    .line 579
    return-void

    #@1d
    .line 580
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableOpenGlTrace"    # Z
    .param p11, "isRestrictedBackupMode"    # Z
    .param p12, "persistent"    # Z
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 776
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p15, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p15, :cond_0

    #@2
    .line 778
    invoke-static/range {p15 .. p15}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    #@5
    .line 781
    :cond_0
    move-object/from16 v0, p16

    #@7
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    #@a
    .line 799
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@d
    move-result-object v4

    #@e
    .line 800
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    #@f
    .line 802
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@14
    move-result v9

    #@15
    const/4 v10, 0x0

    #@16
    invoke-interface {v4, v8, v10, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    .line 805
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v3, :cond_1

    #@1c
    .line 806
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@1e
    if-eqz v8, :cond_2

    #@20
    const/4 v7, 0x1

    #@21
    .line 808
    .local v7, "sharedUserIdSet":Z
    :goto_1
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    if-eqz v8, :cond_4

    #@25
    .line 809
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@27
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@29
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_3

    #@31
    const/4 v5, 0x0

    #@32
    .line 810
    .local v5, "processNameNotDefault":Z
    :goto_2
    if-nez v7, :cond_5

    #@34
    move v6, v5

    #@35
    .line 814
    :goto_3
    if-nez v6, :cond_1

    #@37
    .line 815
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@39
    iget-object v9, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@3b
    .line 816
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@3d
    .line 815
    invoke-static {v8, v9, v10}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 820
    .end local v5    # "processNameNotDefault":Z
    .end local v7    # "sharedUserIdSet":Z
    :cond_1
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    #@42
    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    #@45
    .line 821
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@47
    .line 822
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    .line 823
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    #@4b
    .line 824
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@4d
    .line 825
    move-object/from16 v0, p6

    #@4f
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    #@51
    .line 826
    move-object/from16 v0, p7

    #@53
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    #@55
    .line 827
    move-object/from16 v0, p8

    #@57
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@59
    .line 828
    move/from16 v0, p9

    #@5b
    iput v0, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@5d
    .line 829
    move/from16 v0, p10

    #@5f
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    #@61
    .line 830
    move/from16 v0, p11

    #@63
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@65
    .line 831
    move/from16 v0, p12

    #@67
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    #@69
    .line 832
    move-object/from16 v0, p13

    #@6b
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@6d
    .line 833
    move-object/from16 v0, p14

    #@6f
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@71
    .line 834
    move-object/from16 v0, p5

    #@73
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@75
    .line 835
    iget-object v8, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@77
    const/16 v9, 0x6e

    #@79
    invoke-static {v8, v9, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7c
    .line 774
    return-void

    #@7d
    .line 806
    .end local v1    # "data":Landroid/app/ActivityThread$AppBindData;
    :cond_2
    const/4 v7, 0x0

    #@7e
    .restart local v7    # "sharedUserIdSet":Z
    goto :goto_1

    #@7f
    .line 809
    :cond_3
    const/4 v5, 0x1

    #@80
    .restart local v5    # "processNameNotDefault":Z
    goto :goto_2

    #@81
    .line 808
    .end local v5    # "processNameNotDefault":Z
    :cond_4
    const/4 v5, 0x0

    #@82
    .restart local v5    # "processNameNotDefault":Z
    goto :goto_2

    #@83
    .line 810
    :cond_5
    const/4 v6, 0x1

    #@84
    .local v6, "sharable":Z
    goto :goto_3

    #@85
    .line 803
    .end local v5    # "processNameNotDefault":Z
    .end local v6    # "sharable":Z
    .end local v7    # "sharedUserIdSet":Z
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@86
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearDnsCache()V
    .locals 1

    #@0
    .prologue
    .line 857
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    #@3
    .line 860
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    #@a
    .line 855
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 938
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@7
    .line 937
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 947
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 949
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 950
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 951
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    #@f
    .line 952
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@11
    .line 953
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@13
    const/16 v1, 0x88

    #@15
    const/4 v3, 0x0

    #@16
    const/4 v4, 0x0

    #@17
    const/4 v5, 0x1

    #@18
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 946
    :goto_0
    return-void

    #@1c
    .line 954
    :catch_0
    move-exception v6

    #@1d
    .line 955
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    #@20
    const-string/jumbo v1, "dumpActivity failed"

    #@23
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1116
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1119
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@8
    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$1;

    #@a
    invoke-direct {v1, p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@d
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@10
    .line 1115
    :goto_0
    return-void

    #@11
    .line 1126
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@14
    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1103
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    #@5
    .line 1104
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@c
    .line 1102
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 919
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    #@4
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    #@7
    .line 920
    .local v2, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    #@9
    .line 921
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 922
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    if-eqz p1, :cond_0

    #@f
    move v3, v5

    #@10
    :goto_0
    const/16 v1, 0x87

    #@12
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    #@15
    .line 918
    return-void

    #@16
    :cond_0
    move v3, v4

    #@17
    .line 922
    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 975
    new-instance v7, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 976
    .local v7, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@7
    invoke-direct {v1, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .local v1, "pw":Ljava/io/PrintWriter;
    move-object v0, p0

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    .line 978
    :try_start_0
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 980
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@16
    .line 974
    return-void

    #@17
    .line 979
    :catchall_0
    move-exception v0

    #@18
    .line 980
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@1b
    .line 979
    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 961
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 963
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 964
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 965
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@f
    .line 966
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v1, 0x8d

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x1

    #@16
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 960
    :goto_0
    return-void

    #@1a
    .line 967
    :catch_0
    move-exception v6

    #@1b
    .line 968
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    #@1e
    const-string/jumbo v1, "dumpProvider failed"

    #@21
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 879
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 881
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 882
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 883
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@f
    .line 884
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v1, 0x7b

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    const/4 v5, 0x1

    #@16
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 878
    :goto_0
    return-void

    #@1a
    .line 885
    :catch_0
    move-exception v6

    #@1b
    .line 886
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    #@1e
    const-string/jumbo v1, "dumpService failed"

    #@21
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    #@0
    .prologue
    .line 1221
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1222
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    #@9
    .line 1220
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x78

    #@2
    .line 874
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@4
    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@6
    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@9
    .line 875
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@d
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@f
    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@11
    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 873
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    #@0
    .prologue
    .line 915
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x7f

    #@7
    invoke-static {v1, v2, p2, v0, p3}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    #@a
    .line 914
    return-void

    #@b
    .line 915
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I

    #@0
    .prologue
    .line 1138
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    #@5
    .line 1139
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    #@7
    .line 1140
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    #@9
    .line 1141
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    #@b
    .line 1142
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    const/16 v2, 0x8f

    #@f
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@12
    .line 1137
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 910
    new-instance v1, Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/app/ActivityThread$ActivityConfigChangeData;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    #@7
    .line 909
    const/16 v2, 0x7d

    #@9
    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@c
    .line 908
    return-void
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 1211
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x94

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 1210
    return-void

    #@b
    .line 1211
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    #@0
    .prologue
    .line 731
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 732
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    #@6
    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    #@9
    .line 733
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@b
    .line 734
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@d
    .line 735
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    #@f
    .line 740
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x79

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 730
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1206
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x93

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1205
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 847
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    #@3
    .line 848
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@5
    const/16 v1, 0x76

    #@7
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@a
    .line 846
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 942
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 941
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    #@0
    .prologue
    .line 701
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    #@5
    .line 702
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 703
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 704
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@b
    .line 706
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    const/16 v2, 0x80

    #@f
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@12
    .line 700
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    #@0
    .prologue
    .line 720
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 721
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    #@6
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    #@9
    .line 722
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@b
    .line 723
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@d
    .line 724
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@f
    .line 726
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x72

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 719
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    .line 684
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x6d

    #@7
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    #@a
    .line 683
    return-void

    #@b
    .line 684
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 711
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    #@5
    .line 712
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 713
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 715
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x81

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 710
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1216
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x95

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1215
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    #@0
    .prologue
    .line 839
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x6f

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 838
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 1196
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x91

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1195
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "referrer"    # Ljava/lang/String;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "procState"    # I
    .param p11, "state"    # Landroid/os/Bundle;
    .param p12, "persistentState"    # Landroid/os/PersistableBundle;
    .param p15, "notResumed"    # Z
    .param p16, "isForward"    # Z
    .param p17, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;ZZ",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 637
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0, p10, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 639
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@6
    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    #@9
    .line 641
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@b
    .line 642
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@d
    .line 643
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@f
    .line 644
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    #@11
    .line 645
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@13
    .line 646
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@15
    .line 647
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@17
    .line 648
    iput-object p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@19
    .line 649
    move-object/from16 v0, p12

    #@1b
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@1d
    .line 651
    move-object/from16 v0, p13

    #@1f
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@21
    .line 652
    move-object/from16 v0, p14

    #@23
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@25
    .line 654
    move/from16 v0, p15

    #@27
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@29
    .line 655
    move/from16 v0, p16

    #@2b
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    #@2d
    .line 657
    move-object/from16 v0, p17

    #@2f
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@31
    .line 659
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@33
    .line 660
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    #@36
    .line 662
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@38
    const/16 v3, 0x64

    #@3a
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@3d
    .line 635
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x7c

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 902
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 675
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    #@5
    .line 676
    .local v0, "data":Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    #@7
    .line 677
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    #@9
    .line 679
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x70

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 674
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 1165
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 1166
    new-instance v1, Landroid/util/Pair;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    .line 1165
    const/16 v2, 0x92

    #@9
    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@c
    .line 1164
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 590
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@3
    .line 591
    if-eqz p2, :cond_1

    #@5
    const/16 v1, 0x66

    #@7
    move v2, v1

    #@8
    .line 593
    :goto_0
    if-eqz p3, :cond_2

    #@a
    const/4 v1, 0x1

    #@b
    :goto_1
    if-eqz p5, :cond_0

    #@d
    const/4 v0, 0x2

    #@e
    :cond_0
    or-int/2addr v0, v1

    #@f
    .line 590
    invoke-static {v3, v2, p1, v0, p4}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    #@12
    .line 589
    return-void

    #@13
    .line 591
    :cond_1
    const/16 v1, 0x65

    #@15
    move v2, v1

    #@16
    goto :goto_0

    #@17
    :cond_2
    move v1, v0

    #@18
    .line 593
    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    #@0
    .prologue
    .line 691
    const/4 v2, 0x0

    #@1
    move/from16 v0, p9

    #@3
    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@6
    .line 692
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    #@8
    .line 693
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@a
    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@c
    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v8

    #@10
    const/4 v7, 0x0

    #@11
    move-object v2, p1

    #@12
    move v3, p4

    #@13
    move-object v4, p5

    #@14
    move-object/from16 v5, p6

    #@16
    move/from16 v6, p7

    #@18
    move/from16 v9, p8

    #@1a
    .line 692
    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    #@1d
    .line 694
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    #@1f
    .line 695
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@21
    .line 696
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@23
    const/16 v3, 0x71

    #@25
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@28
    .line 690
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 896
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 897
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@7
    .line 895
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 670
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 671
    const/4 v8, 0x1

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move-object v6, p6

    #@9
    move-object/from16 v7, p7

    #@b
    .line 670
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    #@e
    .line 669
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "processState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 616
    invoke-virtual {p0, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 617
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@6
    if-eqz p3, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    const/16 v2, 0x6b

    #@b
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@e
    .line 615
    return-void
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 621
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    #@5
    .line 622
    .local v0, "res":Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    #@7
    .line 623
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    #@9
    .line 624
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x6c

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 620
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 753
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    #@5
    .line 754
    .local v0, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    #@7
    .line 755
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    #@9
    .line 756
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    #@b
    .line 757
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    #@d
    .line 758
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@f
    .line 760
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x73

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 752
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    .line 611
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x89

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 610
    return-void

    #@b
    .line 611
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    .line 599
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 600
    if-eqz p2, :cond_0

    #@4
    const/16 v0, 0x67

    #@6
    .line 601
    :goto_0
    const/4 v2, 0x0

    #@7
    .line 599
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    #@a
    .line 598
    return-void

    #@b
    .line 600
    :cond_0
    const/16 v0, 0x68

    #@d
    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x74

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 763
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    #@0
    .prologue
    .line 843
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x82

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 842
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    #@0
    .prologue
    .line 1161
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x90

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 1160
    return-void

    #@b
    .line 1161
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8c

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@8
    .line 1156
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 744
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    #@5
    .line 745
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@7
    .line 746
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@9
    .line 748
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x7a

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 743
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z

    #@0
    .prologue
    .line 605
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 606
    if-eqz p2, :cond_0

    #@4
    const/16 v0, 0x69

    #@6
    .line 605
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@9
    .line 604
    return-void

    #@a
    .line 606
    :cond_0
    const/16 v0, 0x6a

    #@c
    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1146
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1145
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 864
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@9
    move-result-object v0

    #@a
    .line 865
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    #@d
    move-result-object v1

    #@e
    .line 866
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_0

    #@10
    .line 867
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    #@17
    .line 863
    :goto_0
    return-void

    #@18
    .line 869
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    #@1b
    goto :goto_0
.end method

.method public setProcessState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1170
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 1169
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    #@0
    .prologue
    .line 931
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v1

    #@4
    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 925
    :goto_0
    return-void

    #@8
    .line 932
    :catch_0
    move-exception v0

    #@9
    .line 933
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ActivityThread"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Failed setting process group to "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1132
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1131
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 1150
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    #@5
    .line 1151
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@7
    .line 1152
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 1153
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x8b

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 1149
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    #@0
    .prologue
    .line 1174
    monitor-enter p0

    #@1
    .line 1175
    :try_start_0
    iget v3, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@3
    if-eq v3, p1, :cond_1

    #@5
    .line 1176
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@7
    .line 1178
    const/4 v1, 0x0

    #@8
    .line 1179
    .local v1, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v0, 0x1

    #@9
    .line 1180
    .local v0, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    #@a
    .line 1182
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x6

    #@b
    if-gt p1, v3, :cond_0

    #@d
    .line 1183
    const/4 v2, 0x0

    #@e
    .line 1185
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .end local v0    # "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    .end local v1    # "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    .end local v2    # "dalvikProcessState":I
    :cond_1
    monitor-exit p0

    #@16
    .line 1173
    return-void

    #@17
    .line 1174
    :catchall_0
    move-exception v3

    #@18
    monitor-exit p0

    #@19
    throw v3
.end method

.method public final updateTimePrefs(Z)V
    .locals 0
    .param p1, "is24Hour"    # Z

    #@0
    .prologue
    .line 1201
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    #@3
    .line 1200
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    #@0
    .prologue
    .line 852
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@4
    .line 851
    return-void
.end method
