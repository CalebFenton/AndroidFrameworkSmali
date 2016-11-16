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
    .line 647
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    #@5
    .line 650
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@8
    .line 647
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
    .line 1179
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@2
    new-instance v2, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@7
    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 1180
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    #@c
    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@f
    .line 1181
    .local v0, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    #@12
    .line 1182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@15
    .line 1178
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 54
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z

    #@0
    .prologue
    .line 1036
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    #@3
    move-result-wide v4

    #@4
    const-wide/16 v6, 0x400

    #@6
    div-long v12, v4, v6

    #@8
    .line 1037
    .local v12, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    #@b
    move-result-wide v4

    #@c
    const-wide/16 v6, 0x400

    #@e
    div-long v14, v4, v6

    #@10
    .line 1038
    .local v14, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    #@13
    move-result-wide v4

    #@14
    const-wide/16 v6, 0x400

    #@16
    div-long v16, v4, v6

    #@18
    .line 1040
    .local v16, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1b
    move-result-object v39

    #@1c
    .line 1041
    .local v39, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Runtime;->gc()V

    #@1f
    .line 1042
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Runtime;->totalMemory()J

    #@22
    move-result-wide v4

    #@23
    const-wide/16 v6, 0x400

    #@25
    div-long v18, v4, v6

    #@27
    .line 1043
    .local v18, "dalvikMax":J
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Runtime;->freeMemory()J

    #@2a
    move-result-wide v4

    #@2b
    const-wide/16 v6, 0x400

    #@2d
    div-long v22, v4, v6

    #@2f
    .line 1044
    .local v22, "dalvikFree":J
    sub-long v20, v18, v22

    #@31
    .line 1046
    .local v20, "dalvikAllocated":J
    const/4 v4, 0x4

    #@32
    new-array v0, v4, [Ljava/lang/Class;

    #@34
    move-object/from16 v33, v0

    #@36
    .line 1047
    const-class v4, Landroid/app/ContextImpl;

    #@38
    const/4 v5, 0x0

    #@39
    aput-object v4, v33, v5

    #@3b
    .line 1048
    const-class v4, Landroid/app/Activity;

    #@3d
    const/4 v5, 0x1

    #@3e
    aput-object v4, v33, v5

    #@40
    .line 1049
    const-class v4, Landroid/webkit/WebView;

    #@42
    const/4 v5, 0x2

    #@43
    aput-object v4, v33, v5

    #@45
    .line 1050
    const-class v4, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@47
    const/4 v5, 0x3

    #@48
    aput-object v4, v33, v5

    #@4a
    .line 1052
    .local v33, "classesToCount":[Ljava/lang/Class;
    const/4 v4, 0x1

    #@4b
    move-object/from16 v0, v33

    #@4d
    invoke-static {v0, v4}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    #@50
    move-result-object v38

    #@51
    .line 1053
    .local v38, "instanceCounts":[J
    const/4 v4, 0x0

    #@52
    aget-wide v28, v38, v4

    #@54
    .line 1054
    .local v28, "appContextInstanceCount":J
    const/4 v4, 0x1

    #@55
    aget-wide v26, v38, v4

    #@57
    .line 1055
    .local v26, "activityInstanceCount":J
    const/4 v4, 0x2

    #@58
    aget-wide v52, v38, v4

    #@5a
    .line 1056
    .local v52, "webviewInstanceCount":J
    const/4 v4, 0x3

    #@5b
    aget-wide v40, v38, v4

    #@5d
    .line 1058
    .local v40, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    #@60
    move-result-wide v48

    #@61
    .line 1059
    .local v48, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    #@64
    move-result-wide v50

    #@65
    .line 1060
    .local v50, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    #@68
    move-result v35

    #@69
    .line 1061
    .local v35, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    #@6c
    move-result v36

    #@6d
    .line 1062
    .local v36, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    #@70
    move-result v31

    #@71
    .line 1063
    .local v31, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    #@74
    move-result v32

    #@75
    .line 1064
    .local v32, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    #@78
    move-result v30

    #@79
    .line 1065
    .local v30, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    #@7c
    move-result-wide v44

    #@7d
    .line 1066
    .local v44, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    #@80
    move-result-wide v42

    #@81
    .line 1067
    .local v42, "parcelCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    #@84
    move-result-object v47

    #@85
    .line 1070
    .local v47, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@88
    move-result v10

    #@89
    .line 1071
    move-object/from16 v0, p0

    #@8b
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@8d
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@8f
    if-eqz v4, :cond_0

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@95
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@97
    iget-object v11, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@99
    :goto_0
    move-object/from16 v4, p1

    #@9b
    move-object/from16 v5, p2

    #@9d
    move/from16 v6, p3

    #@9f
    move/from16 v7, p4

    #@a1
    move/from16 v8, p5

    #@a3
    move/from16 v9, p6

    #@a5
    .line 1069
    invoke-static/range {v4 .. v23}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    #@a8
    .line 1075
    if-eqz p3, :cond_2

    #@aa
    .line 1080
    move-object/from16 v0, p1

    #@ac
    move-wide/from16 v1, v48

    #@ae
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@b1
    const/16 v4, 0x2c

    #@b3
    move-object/from16 v0, p1

    #@b5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@b8
    .line 1081
    move-object/from16 v0, p1

    #@ba
    move-wide/from16 v1, v50

    #@bc
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@bf
    const/16 v4, 0x2c

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@c6
    .line 1082
    move-object/from16 v0, p1

    #@c8
    move-wide/from16 v1, v28

    #@ca
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@cd
    const/16 v4, 0x2c

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@d4
    .line 1083
    move-object/from16 v0, p1

    #@d6
    move-wide/from16 v1, v26

    #@d8
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@db
    const/16 v4, 0x2c

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@e2
    .line 1085
    move-object/from16 v0, p1

    #@e4
    move/from16 v1, v35

    #@e6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@e9
    const/16 v4, 0x2c

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@f0
    .line 1086
    move-object/from16 v0, p1

    #@f2
    move/from16 v1, v36

    #@f4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@f7
    const/16 v4, 0x2c

    #@f9
    move-object/from16 v0, p1

    #@fb
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@fe
    .line 1087
    move-object/from16 v0, p1

    #@100
    move/from16 v1, v31

    #@102
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@105
    const/16 v4, 0x2c

    #@107
    move-object/from16 v0, p1

    #@109
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@10c
    .line 1088
    move-object/from16 v0, p1

    #@10e
    move/from16 v1, v32

    #@110
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@113
    const/16 v4, 0x2c

    #@115
    move-object/from16 v0, p1

    #@117
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@11a
    .line 1090
    move-object/from16 v0, p1

    #@11c
    move/from16 v1, v30

    #@11e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@121
    const/16 v4, 0x2c

    #@123
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@128
    .line 1091
    move-object/from16 v0, p1

    #@12a
    move-wide/from16 v1, v40

    #@12c
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@12f
    const/16 v4, 0x2c

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@136
    .line 1094
    move-object/from16 v0, v47

    #@138
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@13a
    div-int/lit16 v4, v4, 0x400

    #@13c
    move-object/from16 v0, p1

    #@13e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@141
    const/16 v4, 0x2c

    #@143
    move-object/from16 v0, p1

    #@145
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@148
    .line 1095
    move-object/from16 v0, v47

    #@14a
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@14c
    div-int/lit16 v4, v4, 0x400

    #@14e
    move-object/from16 v0, p1

    #@150
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@153
    const/16 v4, 0x2c

    #@155
    move-object/from16 v0, p1

    #@157
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@15a
    .line 1096
    move-object/from16 v0, v47

    #@15c
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    #@15e
    div-int/lit16 v4, v4, 0x400

    #@160
    move-object/from16 v0, p1

    #@162
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@165
    const/16 v4, 0x2c

    #@167
    move-object/from16 v0, p1

    #@169
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@16c
    .line 1097
    move-object/from16 v0, v47

    #@16e
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    #@170
    div-int/lit16 v4, v4, 0x400

    #@172
    move-object/from16 v0, p1

    #@174
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@177
    .line 1098
    const/16 v37, 0x0

    #@179
    .local v37, "i":I
    :goto_1
    move-object/from16 v0, v47

    #@17b
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@17d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@180
    move-result v4

    #@181
    move/from16 v0, v37

    #@183
    if-ge v0, v4, :cond_1

    #@185
    .line 1099
    move-object/from16 v0, v47

    #@187
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@189
    move/from16 v0, v37

    #@18b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18e
    move-result-object v34

    #@18f
    check-cast v34, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@191
    .line 1100
    .local v34, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v4, 0x2c

    #@193
    move-object/from16 v0, p1

    #@195
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@198
    move-object/from16 v0, v34

    #@19a
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    #@19c
    move-object/from16 v0, p1

    #@19e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    .line 1101
    const/16 v4, 0x2c

    #@1a3
    move-object/from16 v0, p1

    #@1a5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1a8
    move-object/from16 v0, v34

    #@1aa
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@1ac
    move-object/from16 v0, p1

    #@1ae
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@1b1
    .line 1102
    const/16 v4, 0x2c

    #@1b3
    move-object/from16 v0, p1

    #@1b5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1b8
    move-object/from16 v0, v34

    #@1ba
    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@1bc
    move-object/from16 v0, p1

    #@1be
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@1c1
    .line 1103
    const/16 v4, 0x2c

    #@1c3
    move-object/from16 v0, p1

    #@1c5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1c8
    move-object/from16 v0, v34

    #@1ca
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@1cc
    move-object/from16 v0, p1

    #@1ce
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@1d1
    .line 1104
    const/16 v4, 0x2c

    #@1d3
    move-object/from16 v0, p1

    #@1d5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1d8
    move-object/from16 v0, v34

    #@1da
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@1dc
    move-object/from16 v0, p1

    #@1de
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e1
    .line 1105
    const/16 v4, 0x2c

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    #@1e8
    move-object/from16 v0, v34

    #@1ea
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@1ec
    move-object/from16 v0, p1

    #@1ee
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f1
    .line 1098
    add-int/lit8 v37, v37, 0x1

    #@1f3
    goto :goto_1

    #@1f4
    .line 1071
    .end local v34    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v37    # "i":I
    :cond_0
    const-string/jumbo v11, "unknown"

    #@1f7
    goto/16 :goto_0

    #@1f9
    .line 1107
    .restart local v37    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1fc
    .line 1109
    return-void

    #@1fd
    .line 1112
    .end local v37    # "i":I
    :cond_2
    const-string/jumbo v4, " "

    #@200
    move-object/from16 v0, p1

    #@202
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@205
    .line 1113
    const-string/jumbo v4, " Objects"

    #@208
    move-object/from16 v0, p1

    #@20a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@20d
    .line 1114
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@210
    const/4 v5, 0x4

    #@211
    new-array v5, v5, [Ljava/lang/Object;

    #@213
    const-string/jumbo v6, "Views:"

    #@216
    const/4 v7, 0x0

    #@217
    aput-object v6, v5, v7

    #@219
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21c
    move-result-object v6

    #@21d
    const/4 v7, 0x1

    #@21e
    aput-object v6, v5, v7

    #@220
    const-string/jumbo v6, "ViewRootImpl:"

    #@223
    const/4 v7, 0x2

    #@224
    aput-object v6, v5, v7

    #@226
    .line 1115
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@229
    move-result-object v6

    #@22a
    const/4 v7, 0x3

    #@22b
    aput-object v6, v5, v7

    #@22d
    .line 1114
    move-object/from16 v0, p1

    #@22f
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@232
    .line 1117
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@235
    const/4 v5, 0x4

    #@236
    new-array v5, v5, [Ljava/lang/Object;

    #@238
    const-string/jumbo v6, "AppContexts:"

    #@23b
    const/4 v7, 0x0

    #@23c
    aput-object v6, v5, v7

    #@23e
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@241
    move-result-object v6

    #@242
    const/4 v7, 0x1

    #@243
    aput-object v6, v5, v7

    #@245
    .line 1118
    const-string/jumbo v6, "Activities:"

    #@248
    const/4 v7, 0x2

    #@249
    aput-object v6, v5, v7

    #@24b
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24e
    move-result-object v6

    #@24f
    const/4 v7, 0x3

    #@250
    aput-object v6, v5, v7

    #@252
    .line 1117
    move-object/from16 v0, p1

    #@254
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@257
    .line 1120
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@25a
    const/4 v5, 0x4

    #@25b
    new-array v5, v5, [Ljava/lang/Object;

    #@25d
    const-string/jumbo v6, "Assets:"

    #@260
    const/4 v7, 0x0

    #@261
    aput-object v6, v5, v7

    #@263
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@266
    move-result-object v6

    #@267
    const/4 v7, 0x1

    #@268
    aput-object v6, v5, v7

    #@26a
    .line 1121
    const-string/jumbo v6, "AssetManagers:"

    #@26d
    const/4 v7, 0x2

    #@26e
    aput-object v6, v5, v7

    #@270
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@273
    move-result-object v6

    #@274
    const/4 v7, 0x3

    #@275
    aput-object v6, v5, v7

    #@277
    .line 1120
    move-object/from16 v0, p1

    #@279
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@27c
    .line 1123
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@27f
    const/4 v5, 0x4

    #@280
    new-array v5, v5, [Ljava/lang/Object;

    #@282
    const-string/jumbo v6, "Local Binders:"

    #@285
    const/4 v7, 0x0

    #@286
    aput-object v6, v5, v7

    #@288
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28b
    move-result-object v6

    #@28c
    const/4 v7, 0x1

    #@28d
    aput-object v6, v5, v7

    #@28f
    .line 1124
    const-string/jumbo v6, "Proxy Binders:"

    #@292
    const/4 v7, 0x2

    #@293
    aput-object v6, v5, v7

    #@295
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@298
    move-result-object v6

    #@299
    const/4 v7, 0x3

    #@29a
    aput-object v6, v5, v7

    #@29c
    .line 1123
    move-object/from16 v0, p1

    #@29e
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2a1
    .line 1125
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@2a4
    const/4 v5, 0x4

    #@2a5
    new-array v5, v5, [Ljava/lang/Object;

    #@2a7
    const-string/jumbo v6, "Parcel memory:"

    #@2aa
    const/4 v7, 0x0

    #@2ab
    aput-object v6, v5, v7

    #@2ad
    const-wide/16 v6, 0x400

    #@2af
    div-long v6, v44, v6

    #@2b1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b4
    move-result-object v6

    #@2b5
    const/4 v7, 0x1

    #@2b6
    aput-object v6, v5, v7

    #@2b8
    .line 1126
    const-string/jumbo v6, "Parcel count:"

    #@2bb
    const/4 v7, 0x2

    #@2bc
    aput-object v6, v5, v7

    #@2be
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c1
    move-result-object v6

    #@2c2
    const/4 v7, 0x3

    #@2c3
    aput-object v6, v5, v7

    #@2c5
    .line 1125
    move-object/from16 v0, p1

    #@2c7
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2ca
    .line 1127
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@2cd
    const/4 v5, 0x4

    #@2ce
    new-array v5, v5, [Ljava/lang/Object;

    #@2d0
    const-string/jumbo v6, "Death Recipients:"

    #@2d3
    const/4 v7, 0x0

    #@2d4
    aput-object v6, v5, v7

    #@2d6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d9
    move-result-object v6

    #@2da
    const/4 v7, 0x1

    #@2db
    aput-object v6, v5, v7

    #@2dd
    .line 1128
    const-string/jumbo v6, "OpenSSL Sockets:"

    #@2e0
    const/4 v7, 0x2

    #@2e1
    aput-object v6, v5, v7

    #@2e3
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e6
    move-result-object v6

    #@2e7
    const/4 v7, 0x3

    #@2e8
    aput-object v6, v5, v7

    #@2ea
    .line 1127
    move-object/from16 v0, p1

    #@2ec
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2ef
    .line 1129
    const-string/jumbo v4, "%21s %8d"

    #@2f2
    const/4 v5, 0x2

    #@2f3
    new-array v5, v5, [Ljava/lang/Object;

    #@2f5
    const-string/jumbo v6, "WebViews:"

    #@2f8
    const/4 v7, 0x0

    #@2f9
    aput-object v6, v5, v7

    #@2fb
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2fe
    move-result-object v6

    #@2ff
    const/4 v7, 0x1

    #@300
    aput-object v6, v5, v7

    #@302
    move-object/from16 v0, p1

    #@304
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@307
    .line 1132
    const-string/jumbo v4, " "

    #@30a
    move-object/from16 v0, p1

    #@30c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30f
    .line 1133
    const-string/jumbo v4, " SQL"

    #@312
    move-object/from16 v0, p1

    #@314
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@317
    .line 1134
    const-string/jumbo v4, "%21s %8d"

    #@31a
    const/4 v5, 0x2

    #@31b
    new-array v5, v5, [Ljava/lang/Object;

    #@31d
    const-string/jumbo v6, "MEMORY_USED:"

    #@320
    const/4 v7, 0x0

    #@321
    aput-object v6, v5, v7

    #@323
    move-object/from16 v0, v47

    #@325
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    #@327
    div-int/lit16 v6, v6, 0x400

    #@329
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32c
    move-result-object v6

    #@32d
    const/4 v7, 0x1

    #@32e
    aput-object v6, v5, v7

    #@330
    move-object/from16 v0, p1

    #@332
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@335
    .line 1135
    const-string/jumbo v4, "%21s %8d %21s %8d"

    #@338
    const/4 v5, 0x4

    #@339
    new-array v5, v5, [Ljava/lang/Object;

    #@33b
    const-string/jumbo v6, "PAGECACHE_OVERFLOW:"

    #@33e
    const/4 v7, 0x0

    #@33f
    aput-object v6, v5, v7

    #@341
    .line 1136
    move-object/from16 v0, v47

    #@343
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    #@345
    div-int/lit16 v6, v6, 0x400

    #@347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34a
    move-result-object v6

    #@34b
    const/4 v7, 0x1

    #@34c
    aput-object v6, v5, v7

    #@34e
    const-string/jumbo v6, "MALLOC_SIZE:"

    #@351
    const/4 v7, 0x2

    #@352
    aput-object v6, v5, v7

    #@354
    move-object/from16 v0, v47

    #@356
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    #@358
    div-int/lit16 v6, v6, 0x400

    #@35a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35d
    move-result-object v6

    #@35e
    const/4 v7, 0x3

    #@35f
    aput-object v6, v5, v7

    #@361
    .line 1135
    move-object/from16 v0, p1

    #@363
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@366
    .line 1137
    const-string/jumbo v4, " "

    #@369
    move-object/from16 v0, p1

    #@36b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36e
    .line 1138
    move-object/from16 v0, v47

    #@370
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@372
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@375
    move-result v24

    #@376
    .line 1139
    .local v24, "N":I
    if-lez v24, :cond_6

    #@378
    .line 1140
    const-string/jumbo v4, " DATABASES"

    #@37b
    move-object/from16 v0, p1

    #@37d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@380
    .line 1141
    const-string/jumbo v4, "  %8s %8s %14s %14s  %s"

    #@383
    const/4 v5, 0x5

    #@384
    new-array v5, v5, [Ljava/lang/Object;

    #@386
    const-string/jumbo v6, "pgsz"

    #@389
    const/4 v7, 0x0

    #@38a
    aput-object v6, v5, v7

    #@38c
    const-string/jumbo v6, "dbsz"

    #@38f
    const/4 v7, 0x1

    #@390
    aput-object v6, v5, v7

    #@392
    const-string/jumbo v6, "Lookaside(b)"

    #@395
    const/4 v7, 0x2

    #@396
    aput-object v6, v5, v7

    #@398
    const-string/jumbo v6, "cache"

    #@39b
    const/4 v7, 0x3

    #@39c
    aput-object v6, v5, v7

    #@39e
    .line 1142
    const-string/jumbo v6, "Dbname"

    #@3a1
    const/4 v7, 0x4

    #@3a2
    aput-object v6, v5, v7

    #@3a4
    .line 1141
    move-object/from16 v0, p1

    #@3a6
    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3a9
    .line 1143
    const/16 v37, 0x0

    #@3ab
    .restart local v37    # "i":I
    :goto_2
    move/from16 v0, v37

    #@3ad
    move/from16 v1, v24

    #@3af
    if-ge v0, v1, :cond_6

    #@3b1
    .line 1144
    move-object/from16 v0, v47

    #@3b3
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@3b5
    move/from16 v0, v37

    #@3b7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3ba
    move-result-object v34

    #@3bb
    check-cast v34, Landroid/database/sqlite/SQLiteDebug$DbStats;

    #@3bd
    .line 1145
    .restart local v34    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string/jumbo v5, "  %8s %8s %14s %14s  %s"

    #@3c0
    const/4 v4, 0x5

    #@3c1
    new-array v6, v4, [Ljava/lang/Object;

    #@3c3
    .line 1146
    move-object/from16 v0, v34

    #@3c5
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@3c7
    const-wide/16 v10, 0x0

    #@3c9
    cmp-long v4, v8, v10

    #@3cb
    if-lez v4, :cond_3

    #@3cd
    move-object/from16 v0, v34

    #@3cf
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    #@3d1
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3d4
    move-result-object v4

    #@3d5
    :goto_3
    const/4 v7, 0x0

    #@3d6
    aput-object v4, v6, v7

    #@3d8
    .line 1147
    move-object/from16 v0, v34

    #@3da
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@3dc
    const-wide/16 v10, 0x0

    #@3de
    cmp-long v4, v8, v10

    #@3e0
    if-lez v4, :cond_4

    #@3e2
    move-object/from16 v0, v34

    #@3e4
    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    #@3e6
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3e9
    move-result-object v4

    #@3ea
    :goto_4
    const/4 v7, 0x1

    #@3eb
    aput-object v4, v6, v7

    #@3ed
    .line 1148
    move-object/from16 v0, v34

    #@3ef
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@3f1
    if-lez v4, :cond_5

    #@3f3
    move-object/from16 v0, v34

    #@3f5
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    #@3f7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3fa
    move-result-object v4

    #@3fb
    :goto_5
    const/4 v7, 0x2

    #@3fc
    aput-object v4, v6, v7

    #@3fe
    .line 1149
    move-object/from16 v0, v34

    #@400
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    #@402
    const/4 v7, 0x3

    #@403
    aput-object v4, v6, v7

    #@405
    move-object/from16 v0, v34

    #@407
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    #@409
    const/4 v7, 0x4

    #@40a
    aput-object v4, v6, v7

    #@40c
    .line 1145
    move-object/from16 v0, p1

    #@40e
    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@411
    .line 1143
    add-int/lit8 v37, v37, 0x1

    #@413
    goto :goto_2

    #@414
    .line 1146
    :cond_3
    const-string/jumbo v4, " "

    #@417
    goto :goto_3

    #@418
    .line 1147
    :cond_4
    const-string/jumbo v4, " "

    #@41b
    goto :goto_4

    #@41c
    .line 1148
    :cond_5
    const-string/jumbo v4, " "

    #@41f
    goto :goto_5

    #@420
    .line 1154
    .end local v34    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v37    # "i":I
    :cond_6
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    #@423
    move-result-object v25

    #@424
    .line 1155
    .local v25, "assetAlloc":Ljava/lang/String;
    if-eqz v25, :cond_7

    #@426
    .line 1156
    const-string/jumbo v4, " "

    #@429
    move-object/from16 v0, p1

    #@42b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42e
    .line 1157
    const-string/jumbo v4, " Asset Allocations"

    #@431
    move-object/from16 v0, p1

    #@433
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@436
    .line 1158
    move-object/from16 v0, p1

    #@438
    move-object/from16 v1, v25

    #@43a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43d
    .line 1162
    :cond_7
    if-eqz p7, :cond_8

    #@43f
    .line 1163
    move-object/from16 v0, p0

    #@441
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@443
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@445
    if-eqz v4, :cond_9

    #@447
    .line 1164
    move-object/from16 v0, p0

    #@449
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@44b
    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@44d
    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@44f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@451
    and-int/lit8 v4, v4, 0x2

    #@453
    if-eqz v4, :cond_9

    #@455
    .line 1163
    const/16 v46, 0x1

    #@457
    .line 1166
    :goto_6
    const-string/jumbo v4, " "

    #@45a
    move-object/from16 v0, p1

    #@45c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45f
    .line 1167
    const-string/jumbo v4, " Unreachable memory"

    #@462
    move-object/from16 v0, p1

    #@464
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@467
    .line 1168
    const/16 v4, 0x64

    #@469
    move/from16 v0, v46

    #@46b
    invoke-static {v4, v0}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    #@46e
    move-result-object v4

    #@46f
    move-object/from16 v0, p1

    #@471
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@474
    .line 1035
    :cond_8
    return-void

    #@475
    .line 1165
    :cond_9
    sget-boolean v46, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@477
    .local v46, "showContents":Z
    goto :goto_6
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@9
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 655
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@f
    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@11
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@14
    move-result v0

    #@15
    .line 654
    if-eqz v0, :cond_1

    #@17
    .line 656
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
    .line 652
    return-void

    #@1d
    .line 653
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
    .line 861
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p16, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p16, :cond_0

    #@2
    .line 863
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    #@5
    .line 866
    :cond_0
    move-object/from16 v0, p17

    #@7
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    #@a
    .line 868
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    #@c
    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    #@f
    .line 869
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@11
    .line 870
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    .line 871
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    #@15
    .line 872
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@17
    .line 873
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    #@19
    .line 874
    iput-object p7, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    #@1b
    .line 875
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@1d
    .line 876
    iput p9, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@1f
    .line 877
    iput-boolean p10, v1, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    #@21
    .line 878
    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    #@23
    .line 879
    move/from16 v0, p12

    #@25
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@27
    .line 880
    move/from16 v0, p13

    #@29
    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    #@2b
    .line 881
    move-object/from16 v0, p14

    #@2d
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@2f
    .line 882
    move-object/from16 v0, p15

    #@31
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@33
    .line 883
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@35
    .line 884
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@37
    const/16 v3, 0x6e

    #@39
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@3c
    .line 859
    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    #@0
    .prologue
    .line 906
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    #@3
    .line 909
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    #@a
    .line 904
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 987
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@7
    .line 986
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
    .line 996
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 998
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 999
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 1000
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    #@f
    .line 1001
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@11
    .line 1002
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
    .line 995
    :goto_0
    return-void

    #@1c
    .line 1003
    :catch_0
    move-exception v6

    #@1d
    .line 1004
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
    .line 1187
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    iget-boolean v2, v2, Landroid/app/ActivityThread;->mSystemThread:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1193
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v0

    #@a
    .line 1199
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@c
    new-instance v3, Landroid/app/ActivityThread$ApplicationThread$1;

    #@e
    invoke-direct {v3, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    #@11
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@14
    .line 1186
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    #@15
    .line 1194
    :catch_0
    move-exception v1

    #@16
    .line 1195
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
    .line 1196
    return-void

    #@35
    .line 1210
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
    .line 1174
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-wrap1(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    #@5
    .line 1175
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@c
    .line 1173
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
    .line 968
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    #@4
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    #@7
    .line 969
    .local v2, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    #@9
    .line 970
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 971
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
    .line 967
    return-void

    #@16
    :cond_0
    move v3, v4

    #@17
    .line 971
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
    .line 1025
    new-instance v8, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@5
    .line 1026
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
    .line 1028
    :try_start_0
    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 1030
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@18
    .line 1024
    return-void

    #@19
    .line 1029
    :catchall_0
    move-exception v0

    #@1a
    .line 1030
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@1d
    .line 1029
    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1010
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 1012
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 1013
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 1014
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@f
    .line 1015
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
    .line 1009
    :goto_0
    return-void

    #@1a
    .line 1016
    :catch_0
    move-exception v6

    #@1b
    .line 1017
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
    .line 928
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    #@2
    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    #@5
    .line 930
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v0

    #@9
    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 931
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@d
    .line 932
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@f
    .line 933
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
    .line 927
    :goto_0
    return-void

    #@1a
    .line 934
    :catch_0
    move-exception v6

    #@1b
    .line 935
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
    .line 1306
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1307
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    #@9
    .line 1305
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x78

    #@2
    .line 923
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@4
    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@6
    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@9
    .line 924
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
    .line 922
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    #@0
    .prologue
    .line 964
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
    .line 963
    return-void

    #@b
    .line 964
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
    .line 1222
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    #@5
    .line 1223
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    #@7
    .line 1224
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    #@9
    .line 1225
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    #@b
    .line 1226
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    #@d
    .line 1227
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@f
    const/16 v2, 0x8f

    #@11
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@14
    .line 1221
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "reportToActivity"    # Z

    #@0
    .prologue
    .line 958
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 959
    new-instance v2, Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@4
    invoke-direct {v2, p1, p2}, Landroid/app/ActivityThread$ActivityConfigChangeData;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    #@7
    if-eqz p3, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 958
    :goto_0
    const/16 v3, 0x7d

    #@c
    invoke-static {v1, v3, v2, v0}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@f
    .line 957
    return-void

    #@10
    .line 959
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
    .line 1296
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
    .line 1295
    return-void

    #@b
    .line 1296
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
    .line 816
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 817
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    #@6
    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    #@9
    .line 818
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@b
    .line 819
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@d
    .line 820
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    #@f
    .line 825
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x79

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 815
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x93

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1290
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 896
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    #@3
    .line 897
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@5
    const/16 v1, 0x76

    #@7
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@a
    .line 895
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 991
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 990
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    #@0
    .prologue
    .line 786
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    #@5
    .line 787
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 788
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 789
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@b
    .line 791
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    const/16 v2, 0x80

    #@f
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@12
    .line 785
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
    .line 805
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 806
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    #@6
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    #@9
    .line 807
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@b
    .line 808
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@d
    .line 809
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@f
    .line 811
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x72

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 804
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    .line 769
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
    .line 768
    return-void

    #@b
    .line 769
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
    .line 796
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    #@5
    .line 797
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 798
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 800
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x81

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 795
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x95

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1300
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x6f

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 887
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 1281
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x91

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1280
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
    .line 720
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0, p10, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 722
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@6
    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    #@9
    .line 724
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@b
    .line 725
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@d
    .line 726
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@f
    .line 727
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    #@11
    .line 728
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@13
    .line 729
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@15
    .line 730
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@17
    .line 731
    iput-object p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@19
    .line 732
    move-object/from16 v0, p12

    #@1b
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@1d
    .line 734
    move-object/from16 v0, p13

    #@1f
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@21
    .line 735
    move-object/from16 v0, p14

    #@23
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@25
    .line 737
    move/from16 v0, p15

    #@27
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@29
    .line 738
    move/from16 v0, p16

    #@2b
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    #@2d
    .line 740
    move-object/from16 v0, p17

    #@2f
    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@31
    .line 742
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@33
    .line 743
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    #@36
    .line 745
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@38
    const/16 v3, 0x64

    #@3a
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@3d
    .line 718
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
    .line 1339
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 1340
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 1341
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 1342
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@a
    const/16 v2, 0x9a

    #@c
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@f
    .line 1338
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 952
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x7c

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 951
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
    .line 1327
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
    .line 1326
    return-void

    #@b
    .line 1327
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "andPause"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 759
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    #@5
    .line 760
    .local v0, "data":Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    #@7
    .line 761
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    #@9
    .line 762
    iput-boolean p3, v0, Landroid/app/ActivityThread$NewIntentData;->andPause:Z

    #@b
    .line 764
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@d
    const/16 v2, 0x70

    #@f
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@12
    .line 758
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 1250
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 1251
    new-instance v1, Landroid/util/Pair;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@7
    .line 1250
    const/16 v2, 0x92

    #@9
    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@c
    .line 1249
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
    .line 663
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@3
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    #@6
    move-result v5

    #@7
    .line 666
    .local v5, "seq":I
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@9
    .line 667
    if-eqz p2, :cond_1

    #@b
    const/16 v1, 0x66

    #@d
    .line 669
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
    .line 666
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    #@19
    .line 662
    return-void

    #@1a
    .line 667
    :cond_1
    const/16 v1, 0x65

    #@1c
    goto :goto_0

    #@1d
    :cond_2
    move v3, v2

    #@1e
    .line 669
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
    .line 1333
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
    .line 1332
    return-void

    #@b
    .line 1333
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
    .line 776
    const/4 v2, 0x0

    #@1
    move/from16 v0, p9

    #@3
    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@6
    .line 777
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    #@8
    .line 778
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
    .line 777
    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    #@1d
    .line 779
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    #@1f
    .line 780
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@21
    .line 781
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@23
    const/16 v3, 0x71

    #@25
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@28
    .line 775
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
    .line 945
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 946
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    #@7
    .line 944
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
    .line 753
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 754
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
    .line 753
    invoke-virtual/range {v0 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    #@11
    .line 752
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
    .line 696
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@3
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    #@6
    move-result v5

    #@7
    .line 699
    .local v5, "seq":I
    invoke-virtual {p0, p2, v4}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@a
    .line 700
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
    .line 695
    return-void

    #@16
    :cond_0
    move v3, v4

    #@17
    .line 700
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
    .line 704
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    #@5
    .line 705
    .local v0, "res":Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    #@7
    .line 706
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    #@9
    .line 707
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x6c

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 703
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
    .line 838
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    #@5
    .line 839
    .local v0, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    #@7
    .line 840
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    #@9
    .line 841
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    #@b
    .line 842
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    #@d
    .line 843
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@f
    .line 845
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@11
    const/16 v2, 0x73

    #@13
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@16
    .line 837
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    .line 691
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
    .line 690
    return-void

    #@b
    .line 691
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
    .line 676
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-static {v0}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;)I

    #@5
    move-result v5

    #@6
    .line 679
    .local v5, "seq":I
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@8
    .line 680
    if-eqz p2, :cond_0

    #@a
    const/16 v1, 0x67

    #@c
    .line 681
    :goto_0
    const/4 v3, 0x0

    #@d
    move-object v2, p1

    #@e
    move v4, p3

    #@f
    .line 679
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V

    #@12
    .line 675
    return-void

    #@13
    .line 680
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
    .line 849
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x74

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 848
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x82

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 891
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    #@0
    .prologue
    .line 1246
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
    .line 1245
    return-void

    #@b
    .line 1246
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
    .line 1242
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8c

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->-wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    #@8
    .line 1241
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 829
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    #@5
    .line 830
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@7
    .line 831
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@9
    .line 833
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x7a

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 828
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z

    #@0
    .prologue
    .line 685
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    .line 686
    if-eqz p2, :cond_0

    #@4
    const/16 v0, 0x69

    #@6
    .line 685
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@9
    .line 684
    return-void

    #@a
    .line 686
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
    .line 1231
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1230
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
    .line 913
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
    .line 914
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    #@d
    move-result-object v1

    #@e
    .line 915
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_0

    #@10
    .line 916
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    #@17
    .line 912
    :goto_0
    return-void

    #@18
    .line 918
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
    .line 1255
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    #@4
    .line 1254
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    #@0
    .prologue
    .line 980
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v1

    #@4
    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 974
    :goto_0
    return-void

    #@8
    .line 981
    :catch_0
    move-exception v0

    #@9
    .line 982
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
    .line 1313
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x96

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@8
    .line 1312
    return-void
.end method

.method public stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 1319
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
    .line 1317
    :goto_0
    return-void

    #@c
    .line 1320
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
    .line 1216
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@7
    .line 1215
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 1235
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    #@5
    .line 1236
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@7
    .line 1237
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 1238
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #@b
    const/16 v2, 0x8b

    #@d
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    #@10
    .line 1234
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    #@0
    .prologue
    .line 1259
    monitor-enter p0

    #@1
    .line 1260
    :try_start_0
    iget v3, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@3
    if-eq v3, p1, :cond_1

    #@5
    .line 1261
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    #@7
    .line 1263
    const/4 v1, 0x0

    #@8
    .line 1264
    .local v1, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v0, 0x1

    #@9
    .line 1265
    .local v0, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    #@a
    .line 1267
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x6

    #@b
    if-gt p1, v3, :cond_0

    #@d
    .line 1268
    const/4 v2, 0x0

    #@e
    .line 1270
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
    .line 1258
    return-void

    #@17
    .line 1259
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
    .line 1286
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    #@3
    .line 1285
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    #@0
    .prologue
    .line 901
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@4
    .line 900
    return-void
.end method
