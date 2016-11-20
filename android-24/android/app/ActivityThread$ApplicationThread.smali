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
    .line 643
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    #@5
    .line 646
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@8
    .line 643
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
    .line 1162
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@2
    new-instance v2, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@7
    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 1163
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@c
    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@f
    .line 1164
    .local v0, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    #@12
    .line 1165
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@15
    .line 1161
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z

    #@0
    .prologue
    .line 1030
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    #@3
    move-result-wide v4

    #@4
    const-wide/16 v6, 0x400

    #@6
    div-long v12, v4, v6

    #@8
    .line 1031
    .local v12, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    #@b
    move-result-wide v4

    #@c
    const-wide/16 v6, 0x400

    #@e
    div-long v14, v4, v6

    #@10
    .line 1032
    .local v14, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    #@13
    move-result-wide v4

    #@14
    const-wide/16 v6, 0x400

    #@16
    div-long v16, v4, v6

    #@18
    .line 1034
    .local v16, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1b
    move-result-object v37

    #@1c
    .line 1035
    .local v37, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->gc()V

    #@1f
    .line 1036
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->totalMemory()J

    #@22
    move-result-wide v4

    #@23
    const-wide/16 v6, 0x400

    #@25
    div-long v18, v4, v6

    #@27
    .line 1037
    .local v18, "dalvikMax":J
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->freeMemory()J

    #@2a
    move-result-wide v4

    #@2b
    const-wide/16 v6, 0x400

    #@2d
    div-long v22, v4, v6

    #@2f
    .line 1038
    .local v22, "dalvikFree":J
    sub-long v20, v18, v22

    #@31
    .line 1039
    .local v20, "dalvikAllocated":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    #@34
    move-result-wide v46

    #@35
    .line 1040
    .local v46, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    #@38
    move-result-wide v48

    #@39
    .line 1041
    .local v48, "viewRootInstanceCount":J
    const-class v4, Landroid/app/ContextImpl;

    #@3b
    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@3e
    move-result-wide v28

    #@3f
    .line 1042
    .local v28, "appContextInstanceCount":J
    const-class v4, Landroid/app/Activity;

    #@41
    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@44
    move-result-wide v26

    #@45
    .line 1043
    .local v26, "activityInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    #@48
    move-result v34

    #@49
    .line 1044
    .local v34, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    #@4c
    move-result v35

    #@4d
    .line 1045
    .local v35, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    #@50
    move-result v31

    #@51
    .line 1046
    .local v31, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    #@54
    move-result v32

    #@55
    .line 1047
    .local v32, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    #@58
    move-result v30

    #@59
    .line 1048
    .local v30, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    #@5c
    move-result-wide v42

    #@5d
    .line 1049
    .local v42, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    #@60
    move-result-wide v40

    #@61
    .line 1050
    .local v40, "parcelCount":J
    const-class v4, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@63
    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    #@66
    move-result-wide v38

    #@67
    .line 1051
    .local v38, "openSslSocketCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    #@6a
    move-result-object v45

    #@6b
    .line 1054
    .local v45, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@6e
    move-result v10

    #@6f
    .line 1055
    move-object/from16 v0, p0

    #@71
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@73
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@75
    if-eqz v4, :cond_0

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@7b
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@7d
    iget-object v11, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@7f
    :goto_0
    move-object/from16 v4, p1

    #@81
    move-object/from16 v5, p2

    #@83
    move/from16 v6, p3

    #@85
    move/from16 v7, p4

    #@87
    move/from16 v8, p5

    #@89
    move/from16 v9, p6

    #@8b
    .line 1053
    invoke-static/range {v4 .. v23}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    #@8e
    .line 1059
    if-eqz p3, :cond_2

    #@90
    .line 1064
    move-object/from16 v0, p1

    #@92
    move-wide/from16 v1, v46

    #@94
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@97
    const/16 v4, 0x2c

    #@99
    move-object/from16 v0, p1

    #@9b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@9e
    .line 1065
    move-object/from16 v0, p1

    #@a0
    move-wide/from16 v1, v48

    #@a2
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@a5
    const/16 v4, 0x2c

    #@a7
    move-object/from16 v0, p1

    #@a9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@ac
    .line 1066
    move-object/from16 v0, p1

    #@ae
    move-wide/from16 v1, v28

    #@b0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@b3
    const/16 v4, 0x2c

    #@b5
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@ba
    .line 1067
    move-object/from16 v0, p1

    #@bc
    move-wide/from16 v1, v26

    #@be
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@c1
    const/16 v4, 0x2c

    #@c3
    move-object/from16 v0, p1

    #@c5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@c8
    .line 1069
    move-object/from16 v0, p1

    #@ca
    move/from16 v1, v34

    #@cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@cf
    const/16 v4, 0x2c

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@d6
    .line 1070
    move-object/from16 v0, p1

    #@d8
    move/from16 v1, v35

    #@da
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@dd
    const/16 v4, 0x2c

    #@df
    move-object/from16 v0, p1

    #@e1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@e4
    .line 1071
    move-object/from16 v0, p1

    #@e6
    move/from16 v1, v31

    #@e8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@eb
    const/16 v4, 0x2c

    #@ed
    move-object/from16 v0, p1

    #@ef
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@f2
    .line 1072
    move-object/from16 v0, p1

    #@f4
    move/from16 v1, v32

    #@f6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@f9
    const/16 v4, 0x2c

    #@fb
    move-object/from16 v0, p1

    #@fd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@100
    .line 1074
    move-object/from16 v0, p1

    #@102
    move/from16 v1, v30

    #@104
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@107
    const/16 v4, 0x2c

    #@109
    move-object/from16 v0, p1

    #@10b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@10e
    .line 1075
    move-object/from16 v0, p1

    #@110
    move-wide/from16 v1, v38

    #@112
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@115
    const/16 v4, 0x2c

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@11c
    .line 1078
    move-object/from16 v0, v45

    #@11e
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@120
    div-int/lit16 v4, v4, 0x400

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@127
    const/16 v4, 0x2c

    #@129
    move-object/from16 v0, p1

    #@12b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@12e
    .line 1079
    move-object/from16 v0, v45

    #@130
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@132
    div-int/lit16 v4, v4, 0x400

    #@134
    move-object/from16 v0, p1

    #@136
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@139
    const/16 v4, 0x2c

    #@13b
    move-object/from16 v0, p1

    #@13d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@140
    .line 1080
    move-object/from16 v0, v45

    #@142
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    #@144
    div-int/lit16 v4, v4, 0x400

    #@146
    move-object/from16 v0, p1

    #@148
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@14b
    const/16 v4, 0x2c

    #@14d
    move-object/from16 v0, p1

    #@14f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@152
    .line 1081
    move-object/from16 v0, v45

    #@154
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    #@156
    div-int/lit16 v4, v4, 0x400

    #@158
    move-object/from16 v0, p1

    #@15a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@15d
    .line 1082
    const/16 v36, 0x0

    #@15f
    .local v36, "i":I
    :goto_1
    move-object/from16 v0, v45

    #@161
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@163
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@166
    move-result v4

    #@167
    move/from16 v0, v36

    #@169
    if-ge v0, v4, :cond_1

    #@16b
    .line 1083
    move-object/from16 v0, v45

    #@16d
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@16f
    move/from16 v0, v36

    #@171
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@174
    move-result-object v33

    #@175
    check-cast v33, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@177
    .line 1084
    .local v33, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v4, 0x2c

    #@179
    move-object/from16 v0, p1

    #@17b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@17e
    move-object/from16 v0, v33

    #@180
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    #@182
    move-object/from16 v0, p1

    #@184
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    .line 1085
    const/16 v4, 0x2c

    #@189
    move-object/from16 v0, p1

    #@18b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@18e
    move-object/from16 v0, v33

    #@190
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@192
    move-object/from16 v0, p1

    #@194
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@197
    .line 1086
    const/16 v4, 0x2c

    #@199
    move-object/from16 v0, p1

    #@19b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@19e
    move-object/from16 v0, v33

    #@1a0
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@1a2
    move-object/from16 v0, p1

    #@1a4
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@1a7
    .line 1087
    const/16 v4, 0x2c

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1ae
    move-object/from16 v0, v33

    #@1b0
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@1b2
    move-object/from16 v0, p1

    #@1b4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@1b7
    .line 1088
    const/16 v4, 0x2c

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1be
    move-object/from16 v0, v33

    #@1c0
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@1c2
    move-object/from16 v0, p1

    #@1c4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    .line 1089
    const/16 v4, 0x2c

    #@1c9
    move-object/from16 v0, p1

    #@1cb
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1ce
    move-object/from16 v0, v33

    #@1d0
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    .line 1082
    add-int/lit8 v36, v36, 0x1

    #@1d9
    goto :goto_1

    #@1da
    .line 1055
    .end local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v36    # "i":I
    :cond_0
    const-string/jumbo v11, "unknown"

    #@1dd
    goto/16 :goto_0

    #@1df
    .line 1091
    .restart local v36    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1e2
    .line 1093
    return-void

    #@1e3
    .line 1096
    .end local v36    # "i":I
    :cond_2
    const-string/jumbo v4, " "

    #@1e6
    move-object/from16 v0, p1

    #@1e8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1eb
    .line 1097
    const-string/jumbo v4, " Objects"

    #@1ee
    move-object/from16 v0, p1

    #@1f0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f3
    .line 1098
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@1f6
    const/4 v5, 0x4

    #@1f7
    new-array v5, v5, [Ljava/lang/Object;

    #@1f9
    const-string/jumbo v6, "Views:"

    #@1fc
    const/4 v7, 0x0

    #@1fd
    aput-object v6, v5, v7

    #@1ff
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@202
    move-result-object v6

    #@203
    const/4 v7, 0x1

    #@204
    aput-object v6, v5, v7

    #@206
    const-string/jumbo v6, "ViewRootImpl:"

    #@209
    const/4 v7, 0x2

    #@20a
    aput-object v6, v5, v7

    #@20c
    .line 1099
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20f
    move-result-object v6

    #@210
    const/4 v7, 0x3

    #@211
    aput-object v6, v5, v7

    #@213
    .line 1098
    move-object/from16 v0, p1

    #@215
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@218
    .line 1101
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@21b
    const/4 v5, 0x4

    #@21c
    new-array v5, v5, [Ljava/lang/Object;

    #@21e
    const-string/jumbo v6, "AppContexts:"

    #@221
    const/4 v7, 0x0

    #@222
    aput-object v6, v5, v7

    #@224
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@227
    move-result-object v6

    #@228
    const/4 v7, 0x1

    #@229
    aput-object v6, v5, v7

    #@22b
    .line 1102
    const-string/jumbo v6, "Activities:"

    #@22e
    const/4 v7, 0x2

    #@22f
    aput-object v6, v5, v7

    #@231
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@234
    move-result-object v6

    #@235
    const/4 v7, 0x3

    #@236
    aput-object v6, v5, v7

    #@238
    .line 1101
    move-object/from16 v0, p1

    #@23a
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@23d
    .line 1104
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@240
    const/4 v5, 0x4

    #@241
    new-array v5, v5, [Ljava/lang/Object;

    #@243
    const-string/jumbo v6, "Assets:"

    #@246
    const/4 v7, 0x0

    #@247
    aput-object v6, v5, v7

    #@249
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24c
    move-result-object v6

    #@24d
    const/4 v7, 0x1

    #@24e
    aput-object v6, v5, v7

    #@250
    .line 1105
    const-string/jumbo v6, "AssetManagers:"

    #@253
    const/4 v7, 0x2

    #@254
    aput-object v6, v5, v7

    #@256
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@259
    move-result-object v6

    #@25a
    const/4 v7, 0x3

    #@25b
    aput-object v6, v5, v7

    #@25d
    .line 1104
    move-object/from16 v0, p1

    #@25f
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@262
    .line 1107
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@265
    const/4 v5, 0x4

    #@266
    new-array v5, v5, [Ljava/lang/Object;

    #@268
    const-string/jumbo v6, "Local Binders:"

    #@26b
    const/4 v7, 0x0

    #@26c
    aput-object v6, v5, v7

    #@26e
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@271
    move-result-object v6

    #@272
    const/4 v7, 0x1

    #@273
    aput-object v6, v5, v7

    #@275
    .line 1108
    const-string/jumbo v6, "Proxy Binders:"

    #@278
    const/4 v7, 0x2

    #@279
    aput-object v6, v5, v7

    #@27b
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27e
    move-result-object v6

    #@27f
    const/4 v7, 0x3

    #@280
    aput-object v6, v5, v7

    #@282
    .line 1107
    move-object/from16 v0, p1

    #@284
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@287
    .line 1109
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@28a
    const/4 v5, 0x4

    #@28b
    new-array v5, v5, [Ljava/lang/Object;

    #@28d
    const-string/jumbo v6, "Parcel memory:"

    #@290
    const/4 v7, 0x0

    #@291
    aput-object v6, v5, v7

    #@293
    const-wide/16 v6, 0x400

    #@295
    div-long v6, v42, v6

    #@297
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29a
    move-result-object v6

    #@29b
    const/4 v7, 0x1

    #@29c
    aput-object v6, v5, v7

    #@29e
    .line 1110
    const-string/jumbo v6, "Parcel count:"

    #@2a1
    const/4 v7, 0x2

    #@2a2
    aput-object v6, v5, v7

    #@2a4
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a7
    move-result-object v6

    #@2a8
    const/4 v7, 0x3

    #@2a9
    aput-object v6, v5, v7

    #@2ab
    .line 1109
    move-object/from16 v0, p1

    #@2ad
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b0
    .line 1111
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@2b3
    const/4 v5, 0x4

    #@2b4
    new-array v5, v5, [Ljava/lang/Object;

    #@2b6
    const-string/jumbo v6, "Death Recipients:"

    #@2b9
    const/4 v7, 0x0

    #@2ba
    aput-object v6, v5, v7

    #@2bc
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bf
    move-result-object v6

    #@2c0
    const/4 v7, 0x1

    #@2c1
    aput-object v6, v5, v7

    #@2c3
    .line 1112
    const-string/jumbo v6, "OpenSSL Sockets:"

    #@2c6
    const/4 v7, 0x2

    #@2c7
    aput-object v6, v5, v7

    #@2c9
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2cc
    move-result-object v6

    #@2cd
    const/4 v7, 0x3

    #@2ce
    aput-object v6, v5, v7

    #@2d0
    .line 1111
    move-object/from16 v0, p1

    #@2d2
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2d5
    .line 1115
    const-string/jumbo v4, " "

    #@2d8
    move-object/from16 v0, p1

    #@2da
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2dd
    .line 1116
    const-string/jumbo v4, " SQL"

    #@2e0
    move-object/from16 v0, p1

    #@2e2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e5
    .line 1117
    const-string/jumbo v4, "%21s %8d"

    #@2e8
    const/4 v5, 0x2

    #@2e9
    new-array v5, v5, [Ljava/lang/Object;

    #@2eb
    const-string/jumbo v6, "MEMORY_USED:"

    #@2ee
    const/4 v7, 0x0

    #@2ef
    aput-object v6, v5, v7

    #@2f1
    move-object/from16 v0, v45

    #@2f3
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@2f5
    div-int/lit16 v6, v6, 0x400

    #@2f7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2fa
    move-result-object v6

    #@2fb
    const/4 v7, 0x1

    #@2fc
    aput-object v6, v5, v7

    #@2fe
    move-object/from16 v0, p1

    #@300
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@303
    .line 1118
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@306
    const/4 v5, 0x4

    #@307
    new-array v5, v5, [Ljava/lang/Object;

    #@309
    const-string/jumbo v6, "PAGECACHE_OVERFLOW:"

    #@30c
    const/4 v7, 0x0

    #@30d
    aput-object v6, v5, v7

    #@30f
    .line 1119
    move-object/from16 v0, v45

    #@311
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    #@313
    div-int/lit16 v6, v6, 0x400

    #@315
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@318
    move-result-object v6

    #@319
    const/4 v7, 0x1

    #@31a
    aput-object v6, v5, v7

    #@31c
    const-string/jumbo v6, "MALLOC_SIZE:"

    #@31f
    const/4 v7, 0x2

    #@320
    aput-object v6, v5, v7

    #@322
    move-object/from16 v0, v45

    #@324
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    #@326
    div-int/lit16 v6, v6, 0x400

    #@328
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32b
    move-result-object v6

    #@32c
    const/4 v7, 0x3

    #@32d
    aput-object v6, v5, v7

    #@32f
    .line 1118
    move-object/from16 v0, p1

    #@331
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@334
    .line 1120
    const-string/jumbo v4, " "

    #@337
    move-object/from16 v0, p1

    #@339
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33c
    .line 1121
    move-object/from16 v0, v45

    #@33e
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@340
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@343
    move-result v24

    #@344
    .line 1122
    .local v24, "N":I
    if-lez v24, :cond_6

    #@346
    .line 1123
    const-string/jumbo v4, " DATABASES"

    #@349
    move-object/from16 v0, p1

    #@34b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34e
    .line 1124
    const-string/jumbo v4, "  %8s %8s %14s %14s  %s"

    #@351
    const/4 v5, 0x5

    #@352
    new-array v5, v5, [Ljava/lang/Object;

    #@354
    const-string/jumbo v6, "pgsz"

    #@357
    const/4 v7, 0x0

    #@358
    aput-object v6, v5, v7

    #@35a
    const-string/jumbo v6, "dbsz"

    #@35d
    const/4 v7, 0x1

    #@35e
    aput-object v6, v5, v7

    #@360
    const-string/jumbo v6, "Lookaside(b)"

    #@363
    const/4 v7, 0x2

    #@364
    aput-object v6, v5, v7

    #@366
    const-string/jumbo v6, "cache"

    #@369
    const/4 v7, 0x3

    #@36a
    aput-object v6, v5, v7

    #@36c
    .line 1125
    const-string/jumbo v6, "Dbname"

    #@36f
    const/4 v7, 0x4

    #@370
    aput-object v6, v5, v7

    #@372
    .line 1124
    move-object/from16 v0, p1

    #@374
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@377
    .line 1126
    const/16 v36, 0x0

    #@379
    .restart local v36    # "i":I
    :goto_2
    move/from16 v0, v36

    #@37b
    move/from16 v1, v24

    #@37d
    if-ge v0, v1, :cond_6

    #@37f
    .line 1127
    move-object/from16 v0, v45

    #@381
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@383
    move/from16 v0, v36

    #@385
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@388
    move-result-object v33

    #@389
    check-cast v33, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@38b
    .line 1128
    .restart local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string/jumbo v5, "  %8s %8s %14s %14s  %s"

    #@38e
    const/4 v4, 0x5

    #@38f
    new-array v6, v4, [Ljava/lang/Object;

    #@391
    .line 1129
    move-object/from16 v0, v33

    #@393
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@395
    const-wide/16 v10, 0x0

    #@397
    cmp-long v4, v8, v10

    #@399
    if-lez v4, :cond_3

    #@39b
    move-object/from16 v0, v33

    #@39d
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@39f
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3a2
    move-result-object v4

    #@3a3
    :goto_3
    const/4 v7, 0x0

    #@3a4
    aput-object v4, v6, v7

    #@3a6
    .line 1130
    move-object/from16 v0, v33

    #@3a8
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@3aa
    const-wide/16 v10, 0x0

    #@3ac
    cmp-long v4, v8, v10

    #@3ae
    if-lez v4, :cond_4

    #@3b0
    move-object/from16 v0, v33

    #@3b2
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@3b4
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3b7
    move-result-object v4

    #@3b8
    :goto_4
    const/4 v7, 0x1

    #@3b9
    aput-object v4, v6, v7

    #@3bb
    .line 1131
    move-object/from16 v0, v33

    #@3bd
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@3bf
    if-lez v4, :cond_5

    #@3c1
    move-object/from16 v0, v33

    #@3c3
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@3c5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3c8
    move-result-object v4

    #@3c9
    :goto_5
    const/4 v7, 0x2

    #@3ca
    aput-object v4, v6, v7

    #@3cc
    .line 1132
    move-object/from16 v0, v33

    #@3ce
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@3d0
    const/4 v7, 0x3

    #@3d1
    aput-object v4, v6, v7

    #@3d3
    move-object/from16 v0, v33

    #@3d5
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    #@3d7
    const/4 v7, 0x4

    #@3d8
    aput-object v4, v6, v7

    #@3da
    .line 1128
    move-object/from16 v0, p1

    #@3dc
    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3df
    .line 1126
    add-int/lit8 v36, v36, 0x1

    #@3e1
    goto :goto_2

    #@3e2
    .line 1129
    :cond_3
    const-string/jumbo v4, " "

    #@3e5
    goto :goto_3

    #@3e6
    .line 1130
    :cond_4
    const-string/jumbo v4, " "

    #@3e9
    goto :goto_4

    #@3ea
    .line 1131
    :cond_5
    const-string/jumbo v4, " "

    #@3ed
    goto :goto_5

    #@3ee
    .line 1137
    .end local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v36    # "i":I
    :cond_6
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    #@3f1
    move-result-object v25

    #@3f2
    .line 1138
    .local v25, "assetAlloc":Ljava/lang/String;
    if-eqz v25, :cond_7

    #@3f4
    .line 1139
    const-string/jumbo v4, " "

    #@3f7
    move-object/from16 v0, p1

    #@3f9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3fc
    .line 1140
    const-string/jumbo v4, " Asset Allocations"

    #@3ff
    move-object/from16 v0, p1

    #@401
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@404
    .line 1141
    move-object/from16 v0, p1

    #@406
    move-object/from16 v1, v25

    #@408
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40b
    .line 1145
    :cond_7
    if-eqz p7, :cond_8

    #@40d
    .line 1146
    move-object/from16 v0, p0

    #@40f
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@411
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@413
    if-eqz v4, :cond_9

    #@415
    .line 1147
    move-object/from16 v0, p0

    #@417
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@419
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@41b
    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@41d
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@41f
    and-int/lit8 v4, v4, 0x2

    #@421
    if-eqz v4, :cond_9

    #@423
    .line 1146
    const/16 v44, 0x1

    #@425
    .line 1149
    :goto_6
    const-string/jumbo v4, " "

    #@428
    move-object/from16 v0, p1

    #@42a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42d
    .line 1150
    const-string/jumbo v4, " Unreachable memory"

    #@430
    move-object/from16 v0, p1

    #@432
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@435
    .line 1151
    const/16 v4, 0x64

    #@437
    move/from16 v0, v44

    #@439
    invoke-static {v4, v0}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    #@43c
    move-result-object v4

    #@43d
    move-object/from16 v0, p1

    #@43f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@442
    .line 1029
    :cond_8
    return-void

    #@443
    .line 1148
    :cond_9
    sget-boolean v44, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@445
    .local v44, "showContents":Z
    goto :goto_6
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@9
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 651
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@f
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@11
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@14
    move-result v0

    #@15
    .line 650
    if-eqz v0, :cond_1

    #@17
    .line 652
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
    .line 648
    return-void

    #@1d
    .line 649
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableBinderTracking"    # Z
    .param p11, "trackAllocation"    # Z
    .param p12, "isRestrictedBackupMode"    # Z
    .param p13, "persistent"    # Z
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p17, "coreSettings"    # Landroid/os/Bundle;
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
            "IZZZZ",
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
    .line 855
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p16, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p16, :cond_0

    #@2
    .line 857
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    #@5
    .line 860
    :cond_0
    move-object/from16 v0, p17

    #@7
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    #@a
    .line 862
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    #@c
    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    #@f
    .line 863
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@11
    .line 864
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    .line 865
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    #@15
    .line 866
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@17
    .line 867
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    #@19
    .line 868
    iput-object p7, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    #@1b
    .line 869
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@1d
    .line 870
    iput p9, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@1f
    .line 871
    iput-boolean p10, v1, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    #@21
    .line 872
    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    #@23
    .line 873
    move/from16 v0, p12

    #@25
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@27
    .line 874
    move/from16 v0, p13

    #@29
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    #@2b
    .line 875
    move-object/from16 v0, p14

    #@2d
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@2f
    .line 876
    move-object/from16 v0, p15

    #@31
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@33
    .line 877
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@35
    .line 878
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@37
    const/16 v3, 0x6e

    #@39
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@3c
    .line 853
    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    #@0
    .prologue
    .line 900
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    #@3
    .line 903
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    #@a
    .line 898
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 981
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@7
    .line 980
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
    .line 990
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 992
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 993
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 994
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    #@f
    .line 995
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@11
    .line 996
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
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 989
    :goto_0
    return-void

    #@1c
    .line 997
    :catch_0
    move-exception v6

    #@1d
    .line 998
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
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1170
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    iget-boolean v2, v2, Landroid/app/ActivityThread;->mSystemThread:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1176
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v0

    #@a
    .line 1182
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@c
    new-instance v3, Landroid/app/ActivityThread$ApplicationThread$1;

    #@e
    invoke-direct {v3, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    #@11
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@14
    .line 1169
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    #@15
    .line 1177
    :catch_0
    move-exception v1

    #@16
    .line 1178
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Could not dup FD "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    #@28
    move-result v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 1179
    return-void

    #@35
    .line 1193
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@38
    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-wrap1(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    #@5
    .line 1158
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@c
    .line 1156
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
    .line 962
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    #@4
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    #@7
    .line 963
    .local v2, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    #@9
    .line 964
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 965
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    if-eqz p1, :cond_0

    #@f
    move v3, v5

    #@10
    :goto_0
    const/16 v1, 0x87

    #@12
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    #@15
    .line 961
    return-void

    #@16
    :cond_0
    move v3, v4

    #@17
    .line 965
    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1019
    new-instance v8, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 1020
    .local v8, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@7
    invoke-direct {v1, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

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
    move/from16 v7, p7

    #@12
    .line 1022
    :try_start_0
    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 1024
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@18
    .line 1018
    return-void

    #@19
    .line 1023
    :catchall_0
    move-exception v0

    #@1a
    .line 1024
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@1d
    .line 1023
    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1004
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 1006
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 1007
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 1008
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@f
    .line 1009
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
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 1003
    :goto_0
    return-void

    #@1a
    .line 1010
    :catch_0
    move-exception v6

    #@1b
    .line 1011
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
    .line 922
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 924
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 925
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 926
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@f
    .line 927
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
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 921
    :goto_0
    return-void

    #@1a
    .line 928
    :catch_0
    move-exception v6

    #@1b
    .line 929
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
    .line 1289
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1290
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    #@9
    .line 1288
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x78

    #@2
    .line 917
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@4
    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@6
    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@9
    .line 918
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
    .line 916
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    #@0
    .prologue
    .line 958
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x7f

    #@7
    invoke-static {v1, v2, p2, v0, p3}, Landroid/app/ActivityThread;->-wrap34(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    #@a
    .line 957
    return-void

    #@b
    .line 958
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I

    #@0
    .prologue
    .line 1205
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    #@5
    .line 1206
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    #@7
    .line 1207
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    #@9
    .line 1208
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    #@b
    .line 1209
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    #@d
    .line 1210
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@f
    const/16 v2, 0x8f

    #@11
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@14
    .line 1204
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "reportToActivity"    # Z

    #@0
    .prologue
    .line 952
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 953
    new-instance v2, Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@4
    invoke-direct {v2, p1, p2}, Landroid/app/ActivityThread$ActivityConfigChangeData;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    #@7
    if-eqz p3, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 952
    :goto_0
    const/16 v3, 0x7d

    #@c
    invoke-static {v1, v3, v2, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@f
    .line 951
    return-void

    #@10
    .line 953
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 1279
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x94

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 1278
    return-void

    #@b
    .line 1279
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
    .line 810
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 811
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    #@6
    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    #@9
    .line 812
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@b
    .line 813
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@d
    .line 814
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    #@f
    .line 819
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x79

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 809
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1274
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x93

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1273
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 890
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    #@3
    .line 891
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@5
    const/16 v1, 0x76

    #@7
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@a
    .line 889
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 985
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 984
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    #@0
    .prologue
    .line 780
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    #@5
    .line 781
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 782
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 783
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@b
    .line 785
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    const/16 v2, 0x80

    #@f
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@12
    .line 779
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
    .line 799
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 800
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    #@6
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    #@9
    .line 801
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@b
    .line 802
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@d
    .line 803
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@f
    .line 805
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x72

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 798
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    .line 763
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x6d

    #@7
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->-wrap34(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    #@a
    .line 762
    return-void

    #@b
    .line 763
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
    .line 790
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    #@5
    .line 791
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 792
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 794
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x81

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 789
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1284
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x95

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1283
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x6f

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 881
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x91

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1263
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
    .line 716
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0, p10, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 718
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@6
    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    #@9
    .line 720
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@b
    .line 721
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@d
    .line 722
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@f
    .line 723
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    #@11
    .line 724
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@13
    .line 725
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@15
    .line 726
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@17
    .line 727
    iput-object p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@19
    .line 728
    move-object/from16 v0, p12

    #@1b
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@1d
    .line 730
    move-object/from16 v0, p13

    #@1f
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@21
    .line 731
    move-object/from16 v0, p14

    #@23
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@25
    .line 733
    move/from16 v0, p15

    #@27
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@29
    .line 734
    move/from16 v0, p16

    #@2b
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    #@2d
    .line 736
    move-object/from16 v0, p17

    #@2f
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@31
    .line 738
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@33
    .line 739
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    #@36
    .line 741
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@38
    const/16 v3, 0x64

    #@3a
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@3d
    .line 714
    return-void
.end method

.method public scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1322
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 1323
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 1324
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 1325
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@a
    const/16 v2, 0x9a

    #@c
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@f
    .line 1321
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 946
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x7c

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 945
    return-void
.end method

.method public scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1310
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x98

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 1309
    return-void

    #@b
    .line 1310
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
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
    .line 754
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    #@5
    .line 755
    .local v0, "data":Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    #@7
    .line 756
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    #@9
    .line 758
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x70

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 753
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 1233
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 1234
    new-instance v1, Landroid/util/Pair;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    .line 1233
    const/16 v2, 0x92

    #@9
    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@c
    .line 1232
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 659
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@3
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    #@6
    move-result v5

    #@7
    .line 662
    .local v5, "seq":I
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@9
    .line 663
    if-eqz p2, :cond_1

    #@b
    const/16 v1, 0x66

    #@d
    .line 665
    :goto_0
    if-eqz p3, :cond_2

    #@f
    const/4 v3, 0x1

    #@10
    :goto_1
    if-eqz p5, :cond_0

    #@12
    const/4 v2, 0x2

    #@13
    :cond_0
    or-int/2addr v3, v2

    #@14
    move-object v2, p1

    #@15
    move v4, p4

    #@16
    .line 662
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    #@19
    .line 658
    return-void

    #@1a
    .line 663
    :cond_1
    const/16 v1, 0x65

    #@1c
    goto :goto_0

    #@1d
    :cond_2
    move v3, v2

    #@1e
    .line 665
    goto :goto_1
.end method

.method public schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1316
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x99

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 1315
    return-void

    #@b
    .line 1316
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
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
    .line 770
    const/4 v2, 0x0

    #@1
    move/from16 v0, p9

    #@3
    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@6
    .line 771
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    #@8
    .line 772
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
    .line 771
    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    #@1d
    .line 773
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    #@1f
    .line 774
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@21
    .line 775
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@23
    const/16 v3, 0x71

    #@25
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@28
    .line 769
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
    .line 939
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 940
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@7
    .line 938
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "preserveWindow"    # Z
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
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 749
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 750
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
    move-object/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    move/from16 v9, p8

    #@e
    .line 749
    invoke-virtual/range {v0 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    #@11
    .line 748
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "processState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 692
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@3
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    #@6
    move-result v5

    #@7
    .line 695
    .local v5, "seq":I
    invoke-virtual {p0, p2, v4}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@a
    .line 696
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@c
    if-eqz p3, :cond_0

    #@e
    const/4 v3, 0x1

    #@f
    :goto_0
    const/16 v1, 0x6b

    #@11
    move-object v2, p1

    #@12
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    #@15
    .line 691
    return-void

    #@16
    :cond_0
    move v3, v4

    #@17
    .line 696
    goto :goto_0
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
    .line 700
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    #@5
    .line 701
    .local v0, "res":Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    #@7
    .line 702
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    #@9
    .line 703
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x6c

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 699
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
    .line 832
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    #@5
    .line 833
    .local v0, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    #@7
    .line 834
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    #@9
    .line 835
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    #@b
    .line 836
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    #@d
    .line 837
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@f
    .line 839
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x73

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 831
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    .line 687
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x89

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 686
    return-void

    #@b
    .line 687
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    #@5
    move-result v5

    #@6
    .line 675
    .local v5, "seq":I
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@8
    .line 676
    if-eqz p2, :cond_0

    #@a
    const/16 v1, 0x67

    #@c
    .line 677
    :goto_0
    const/4 v3, 0x0

    #@d
    move-object v2, p1

    #@e
    move v4, p3

    #@f
    .line 675
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    #@12
    .line 671
    return-void

    #@13
    .line 676
    :cond_0
    const/16 v1, 0x68

    #@15
    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 843
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x74

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 842
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    #@0
    .prologue
    .line 886
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x82

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 885
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    #@0
    .prologue
    .line 1229
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/16 v2, 0x90

    #@7
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@a
    .line 1228
    return-void

    #@b
    .line 1229
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
    .line 1225
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8c

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@8
    .line 1224
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 823
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    #@5
    .line 824
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@7
    .line 825
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@9
    .line 827
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x7a

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 822
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z

    #@0
    .prologue
    .line 681
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 682
    if-eqz p2, :cond_0

    #@4
    const/16 v0, 0x69

    #@6
    .line 681
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@9
    .line 680
    return-void

    #@a
    .line 682
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
    .line 1214
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1213
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
    .line 907
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
    .line 908
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    #@d
    move-result-object v1

    #@e
    .line 909
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_0

    #@10
    .line 910
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    #@17
    .line 906
    :goto_0
    return-void

    #@18
    .line 912
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
    .line 1238
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 1237
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    #@0
    .prologue
    .line 974
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v1

    #@4
    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 968
    :goto_0
    return-void

    #@8
    .line 975
    :catch_0
    move-exception v0

    #@9
    .line 976
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

.method public startBinderTracking()V
    .locals 3

    #@0
    .prologue
    .line 1296
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x96

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 1295
    return-void
.end method

.method public stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 1302
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v2

    #@6
    const/16 v3, 0x97

    #@8
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1300
    :goto_0
    return-void

    #@c
    .line 1303
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1199
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1198
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 1218
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    #@5
    .line 1219
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@7
    .line 1220
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 1221
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x8b

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 1217
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    #@0
    .prologue
    .line 1242
    monitor-enter p0

    #@1
    .line 1243
    :try_start_0
    iget v3, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@3
    if-eq v3, p1, :cond_1

    #@5
    .line 1244
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@7
    .line 1246
    const/4 v1, 0x0

    #@8
    .line 1247
    .local v1, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v0, 0x1

    #@9
    .line 1248
    .local v0, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    #@a
    .line 1250
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x6

    #@b
    if-gt p1, v3, :cond_0

    #@d
    .line 1251
    const/4 v2, 0x0

    #@e
    .line 1253
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
    .line 1241
    return-void

    #@17
    .line 1242
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
    .line 1269
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    #@3
    .line 1268
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    #@0
    .prologue
    .line 895
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@4
    .line 894
    return-void
.end method
