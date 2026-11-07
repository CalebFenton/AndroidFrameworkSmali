.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
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
.field private static final blacklist DB_CONNECTION_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %5d %5d %5d  %s"

.field private static final blacklist DB_CONNECTION_INFO_HEADER:Ljava/lang/String; = "  %8s %8s %14s %5s %5s %5s  %s"

.field private static final blacklist DB_POOL_INFO_FORMAT:Ljava/lang/String; = "  %13d %13d %13d  %s"

.field private static final blacklist DB_POOL_INFO_HEADER:Ljava/lang/String; = "  %13s %13s %13s  %s"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method public static synthetic blacklist $r8$lambda$G6hCvS-Qza2XVRHE5EG8OQS6lcg(Landroid/app/ActivityThread;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/ActivityThread;->-$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JtANQHbm8_woSrSSrItwPFzx9Rc(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vumqJ-Lh07Ah5KHzY1DRdGdc7Do(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdumpDatabaseInfo(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1143
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private blacklist dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "isSystem"    # Z

    .line 2024
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 2025
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2026
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2027
    .local v1, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v1, p2, p3}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;Z)V

    .line 2028
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2029
    return-void
.end method

.method private greylist-max-o dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .registers 73
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1881
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    const-wide/16 v17, 0x400

    div-long v5, v2, v17

    .line 1882
    .local v5, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    div-long v7, v2, v17

    .line 1883
    .local v7, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    div-long v9, v2, v17

    .line 1885
    .local v9, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    .line 1886
    .local v19, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->gc()V

    .line 1887
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long v11, v2, v17

    .line 1888
    .local v11, "dalvikMax":J
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long v15, v2, v17

    .line 1889
    .local v15, "dalvikFree":J
    sub-long v13, v11, v15

    .line 1891
    .local v13, "dalvikAllocated":J
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/ContextImpl;

    const/16 v20, 0x0

    aput-object v3, v2, v20

    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/WebView;

    const/16 v21, 0x2

    aput-object v3, v2, v21

    const-class v3, Landroid/view/View;

    const/16 v22, 0x3

    aput-object v3, v2, v22

    const-class v3, Landroid/view/ViewRootImpl;

    const/16 v23, 0x4

    aput-object v3, v2, v23

    .line 1898
    .local v2, "classesToCount":[Ljava/lang/Class;
    invoke-static {v2, v4}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v24

    .line 1899
    .local v24, "instanceCounts":[J
    move-object/from16 v25, v2

    .end local v2    # "classesToCount":[Ljava/lang/Class;
    .local v25, "classesToCount":[Ljava/lang/Class;
    aget-wide v2, v24, v20

    .line 1900
    .local v2, "appContextInstanceCount":J
    move-wide/from16 v26, v2

    .end local v2    # "appContextInstanceCount":J
    .local v26, "appContextInstanceCount":J
    aget-wide v2, v24, v4

    .line 1901
    .local v2, "activityInstanceCount":J
    move-wide/from16 v28, v2

    .end local v2    # "activityInstanceCount":J
    .local v28, "activityInstanceCount":J
    aget-wide v2, v24, v21

    .line 1902
    .local v2, "webviewInstanceCount":J
    move-wide/from16 v30, v2

    .end local v2    # "webviewInstanceCount":J
    .local v30, "webviewInstanceCount":J
    aget-wide v2, v24, v22

    .line 1903
    .local v2, "viewInstanceCount":J
    move-wide/from16 v21, v2

    .end local v2    # "viewInstanceCount":J
    .local v21, "viewInstanceCount":J
    aget-wide v2, v24, v23

    .line 1905
    .local v2, "viewRootInstanceCount":J
    move-wide/from16 v32, v2

    .end local v2    # "viewRootInstanceCount":J
    .local v32, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v2

    .line 1906
    .local v2, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v3

    .line 1907
    .local v3, "globalAssetManagerCount":I
    move/from16 v23, v2

    .end local v2    # "globalAssetCount":I
    .local v23, "globalAssetCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v2

    .line 1908
    .local v2, "binderLocalObjectCount":I
    move/from16 v34, v2

    .end local v2    # "binderLocalObjectCount":I
    .local v34, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v2

    .line 1909
    .local v2, "binderProxyObjectCount":I
    move/from16 v35, v2

    .end local v2    # "binderProxyObjectCount":I
    .local v35, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v2

    .line 1910
    .local v2, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v36

    .line 1911
    .local v36, "parcelSize":J
    move/from16 v39, v2

    move/from16 v38, v3

    .end local v2    # "binderDeathObjectCount":I
    .end local v3    # "globalAssetManagerCount":I
    .local v38, "globalAssetManagerCount":I
    .local v39, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v2

    .line 1912
    .local v2, "parcelCount":J
    move-wide/from16 v40, v2

    .end local v2    # "parcelCount":J
    .local v40, "parcelCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v2

    .line 1914
    .local v2, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v42, v5

    .end local v5    # "nativeMax":J
    .local v42, "nativeMax":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1915
    .local v4, "mToken":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    move-object/from16 v44, v2

    .end local v2    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v44, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1916
    nop

    .line 1917
    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_ba

    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_bd

    :cond_ba
    const-string/jumbo v6, "unknown"

    .line 1916
    :goto_bd
    const-wide v2, 0x10900000002L

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1918
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v64, v4

    move-wide/from16 v53, v21

    move/from16 v0, v23

    move-wide/from16 v47, v26

    move-wide/from16 v49, v28

    move-wide/from16 v51, v30

    move-wide/from16 v55, v32

    move/from16 v58, v34

    move/from16 v59, v35

    move/from16 v57, v38

    move/from16 v60, v39

    move-wide/from16 v61, v40

    move-wide/from16 v5, v42

    move-object/from16 v63, v44

    const/16 v45, 0x1

    move/from16 v4, p5

    .end local v4    # "mToken":J
    .end local v21    # "viewInstanceCount":J
    .end local v23    # "globalAssetCount":I
    .end local v26    # "appContextInstanceCount":J
    .end local v28    # "activityInstanceCount":J
    .end local v30    # "webviewInstanceCount":J
    .end local v32    # "viewRootInstanceCount":J
    .end local v34    # "binderLocalObjectCount":I
    .end local v35    # "binderProxyObjectCount":I
    .end local v38    # "globalAssetManagerCount":I
    .end local v39    # "binderDeathObjectCount":I
    .end local v40    # "parcelCount":J
    .end local v42    # "nativeMax":J
    .end local v44    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v0, "globalAssetCount":I
    .restart local v5    # "nativeMax":J
    .local v47, "appContextInstanceCount":J
    .local v49, "activityInstanceCount":J
    .local v51, "webviewInstanceCount":J
    .local v53, "viewInstanceCount":J
    .local v55, "viewRootInstanceCount":J
    .local v57, "globalAssetManagerCount":I
    .local v58, "binderLocalObjectCount":I
    .local v59, "binderProxyObjectCount":I
    .local v60, "binderDeathObjectCount":I
    .local v61, "parcelCount":J
    .local v63, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v64, "mToken":J
    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1921
    .end local v5    # "nativeMax":J
    .restart local v42    # "nativeMax":J
    move-wide/from16 v2, v64

    .end local v64    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1923
    const-wide v4, 0x10b00000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1924
    .local v4, "oToken":J
    move-wide/from16 v21, v7

    move-wide/from16 v2, v53

    const-wide v6, 0x10500000001L

    .end local v7    # "nativeAllocated":J
    .end local v53    # "viewInstanceCount":J
    .local v2, "viewInstanceCount":J
    .local v21, "nativeAllocated":J
    .restart local v64    # "mToken":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1926
    const-wide v6, 0x10500000002L

    move-wide/from16 v2, v55

    .end local v55    # "viewRootInstanceCount":J
    .local v2, "viewRootInstanceCount":J
    .restart local v53    # "viewInstanceCount":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1928
    const-wide v6, 0x10500000003L

    move-wide/from16 v32, v2

    move-wide/from16 v2, v47

    .end local v47    # "appContextInstanceCount":J
    .local v2, "appContextInstanceCount":J
    .restart local v32    # "viewRootInstanceCount":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1930
    const-wide v6, 0x10500000004L

    move-wide/from16 v2, v49

    .end local v49    # "activityInstanceCount":J
    .local v2, "activityInstanceCount":J
    .restart local v47    # "appContextInstanceCount":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1932
    const-wide v6, 0x10500000005L

    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1934
    const-wide v6, 0x10500000006L

    move/from16 v8, v57

    .end local v57    # "globalAssetManagerCount":I
    .local v8, "globalAssetManagerCount":I
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1936
    const-wide v6, 0x10500000007L

    move/from16 v0, v58

    .end local v58    # "binderLocalObjectCount":I
    .local v0, "binderLocalObjectCount":I
    .restart local v23    # "globalAssetCount":I
    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1938
    const-wide v6, 0x10500000008L

    move/from16 v0, v59

    .end local v59    # "binderProxyObjectCount":I
    .local v0, "binderProxyObjectCount":I
    .restart local v58    # "binderLocalObjectCount":I
    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1940
    const-wide v6, 0x10300000009L

    .end local v2    # "activityInstanceCount":J
    .restart local v49    # "activityInstanceCount":J
    div-long v2, v36, v17

    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1942
    const-wide v2, 0x1050000000aL

    move-wide/from16 v6, v61

    .end local v61    # "parcelCount":J
    .local v6, "parcelCount":J
    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1943
    const-wide v2, 0x1050000000bL

    move/from16 v0, v60

    .end local v60    # "binderDeathObjectCount":I
    .local v0, "binderDeathObjectCount":I
    .restart local v59    # "binderProxyObjectCount":I
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1945
    const-wide v2, 0x1050000000dL

    move-wide/from16 v6, v51

    .end local v51    # "webviewInstanceCount":J
    .local v6, "webviewInstanceCount":J
    .restart local v61    # "parcelCount":J
    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1947
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1950
    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1951
    .local v2, "sToken":J
    move-wide/from16 v17, v4

    move-object/from16 v0, v63

    .end local v4    # "oToken":J
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v0, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v17, "oToken":J
    .restart local v60    # "binderDeathObjectCount":I
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000001L

    .end local v6    # "webviewInstanceCount":J
    .restart local v51    # "webviewInstanceCount":J
    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1953
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1955
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000003L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1957
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1958
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1af
    if-ge v5, v4, :cond_221

    .line 1959
    iget-object v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1961
    .local v6, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move v7, v4

    move/from16 v44, v5

    .end local v4    # "n":I
    .end local v5    # "i":I
    .local v7, "n":I
    .local v44, "i":I
    const-wide v4, 0x20b00000004L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1962
    .local v4, "dToken":J
    move/from16 v46, v7

    move/from16 v57, v8

    .end local v7    # "n":I
    .end local v8    # "globalAssetManagerCount":I
    .local v46, "n":I
    .restart local v57    # "globalAssetManagerCount":I
    const-wide v7, 0x10900000001L

    move-object/from16 v63, v0

    .end local v0    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    iget-object v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1963
    iget-wide v7, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v55, v9

    const-wide v9, 0x10500000002L

    .end local v9    # "nativeFree":J
    .local v55, "nativeFree":J
    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1964
    iget-wide v7, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1965
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v7, 0x10500000004L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1967
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    const-wide v7, 0x10500000006L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1969
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    const-wide v7, 0x10500000007L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1971
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    const-wide v7, 0x10500000008L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1973
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1958
    .end local v4    # "dToken":J
    .end local v6    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v5, v44, 0x1

    move/from16 v4, v46

    move-wide/from16 v9, v55

    move/from16 v8, v57

    move-object/from16 v0, v63

    .end local v44    # "i":I
    .restart local v5    # "i":I
    goto :goto_1af

    .end local v46    # "n":I
    .end local v55    # "nativeFree":J
    .end local v57    # "globalAssetManagerCount":I
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v0    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v4, "n":I
    .restart local v8    # "globalAssetManagerCount":I
    .restart local v9    # "nativeFree":J
    :cond_221
    move-object/from16 v63, v0

    move/from16 v46, v4

    move/from16 v44, v5

    move/from16 v57, v8

    move-wide/from16 v55, v9

    .line 1975
    .end local v0    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v8    # "globalAssetManagerCount":I
    .end local v9    # "nativeFree":J
    .restart local v46    # "n":I
    .restart local v55    # "nativeFree":J
    .restart local v57    # "globalAssetManagerCount":I
    .restart local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1978
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v0

    .line 1979
    .local v0, "assetAlloc":Ljava/lang/String;
    if-eqz v0, :cond_23c

    .line 1980
    const-wide v4, 0x10900000004L

    invoke-virtual {v1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1984
    :cond_23c
    if-eqz p6, :cond_26d

    .line 1985
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v5, :cond_249

    move/from16 v5, v20

    goto :goto_251

    :cond_249
    iget-object v5, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1986
    .local v5, "flags":I
    :goto_251
    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_259

    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_25b

    :cond_259
    move/from16 v20, v45

    :cond_25b
    move/from16 v6, v20

    .line 1988
    .local v6, "showContents":Z
    nop

    .line 1989
    const/16 v7, 0x64

    invoke-static {v7, v6}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v7

    .line 1988
    const-wide v8, 0x10900000005L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_26f

    .line 1984
    .end local v5    # "flags":I
    .end local v6    # "showContents":Z
    :cond_26d
    move-object/from16 v4, p0

    .line 1991
    :goto_26f
    return-void
.end method

.method private blacklist dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    .registers 68
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "dumpAllocatorStats"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1702
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v9, v1, v21

    .line 1703
    .local v9, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v11, v1, v21

    .line 1704
    .local v11, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v13, v1, v21

    .line 1706
    .local v13, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    .line 1707
    .local v23, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->gc()V

    .line 1708
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v15, v1, v21

    .line 1709
    .local v15, "dalvikMax":J
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v19, v1, v21

    .line 1710
    .local v19, "dalvikFree":J
    sub-long v17, v15, v19

    .line 1712
    .local v17, "dalvikAllocated":J
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v24, 0x0

    aput-object v2, v1, v24

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/webkit/WebView;

    const/16 v25, 0x2

    aput-object v2, v1, v25

    const-class v2, Landroid/view/View;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-class v2, Landroid/view/ViewRootImpl;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 1719
    .local v1, "classesToCount":[Ljava/lang/Class;
    invoke-static {v1, v3}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v26

    .line 1720
    .local v26, "instanceCounts":[J
    aget-wide v6, v26, v24

    .line 1721
    .local v6, "appContextInstanceCount":J
    move-object v8, v1

    .end local v1    # "classesToCount":[Ljava/lang/Class;
    .local v8, "classesToCount":[Ljava/lang/Class;
    aget-wide v1, v26, v3

    .line 1722
    .local v1, "activityInstanceCount":J
    aget-wide v27, v26, v25

    .line 1723
    .local v27, "webviewInstanceCount":J
    move-wide/from16 v29, v1

    .end local v1    # "activityInstanceCount":J
    .local v29, "activityInstanceCount":J
    aget-wide v1, v26, v4

    .line 1724
    .local v1, "viewInstanceCount":J
    aget-wide v4, v26, v5

    .line 1726
    .local v4, "viewRootInstanceCount":J
    move-wide/from16 v31, v1

    .end local v1    # "viewInstanceCount":J
    .local v31, "viewInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v1

    .line 1727
    .local v1, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v2

    .line 1728
    .local v2, "globalAssetManagerCount":I
    move/from16 v33, v1

    .end local v1    # "globalAssetCount":I
    .local v33, "globalAssetCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v1

    .line 1729
    .local v1, "binderLocalObjectCount":I
    move/from16 v34, v1

    .end local v1    # "binderLocalObjectCount":I
    .local v34, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v1

    .line 1730
    .local v1, "binderProxyObjectCount":I
    move/from16 v35, v1

    .end local v1    # "binderProxyObjectCount":I
    .local v35, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v1

    .line 1731
    .local v1, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v36

    .line 1732
    .local v36, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v38

    .line 1733
    .local v38, "parcelCount":J
    move/from16 v40, v1

    .end local v1    # "binderDeathObjectCount":I
    .local v40, "binderDeathObjectCount":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v1

    .line 1735
    .local v1, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    nop

    .line 1736
    move-wide/from16 v41, v6

    .end local v6    # "appContextInstanceCount":J
    .local v41, "appContextInstanceCount":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 1737
    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_98

    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_9b

    :cond_98
    const-string/jumbo v6, "unknown"

    .line 1735
    :goto_9b
    move-object/from16 v55, v1

    move/from16 v51, v2

    move-wide/from16 v49, v4

    move-wide/from16 v45, v29

    move-wide/from16 v47, v31

    move/from16 v0, v33

    move/from16 v52, v34

    move/from16 v53, v35

    move/from16 v54, v40

    move-wide/from16 v43, v41

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v30, v3

    move-object/from16 v29, v8

    move/from16 v3, p3

    move-object v8, v6

    move/from16 v6, p6

    .end local v1    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v2    # "globalAssetManagerCount":I
    .end local v4    # "viewRootInstanceCount":J
    .end local v8    # "classesToCount":[Ljava/lang/Class;
    .end local v31    # "viewInstanceCount":J
    .end local v33    # "globalAssetCount":I
    .end local v34    # "binderLocalObjectCount":I
    .end local v35    # "binderProxyObjectCount":I
    .end local v40    # "binderDeathObjectCount":I
    .end local v41    # "appContextInstanceCount":J
    .local v0, "globalAssetCount":I
    .local v29, "classesToCount":[Ljava/lang/Class;
    .local v43, "appContextInstanceCount":J
    .local v45, "activityInstanceCount":J
    .local v47, "viewInstanceCount":J
    .local v49, "viewRootInstanceCount":J
    .local v51, "globalAssetManagerCount":I
    .local v52, "binderLocalObjectCount":I
    .local v53, "binderProxyObjectCount":I
    .local v54, "binderDeathObjectCount":I
    .local v55, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1741
    if-eqz p3, :cond_1a4

    .line 1746
    move-wide/from16 v2, v47

    .end local v47    # "viewInstanceCount":J
    .local v2, "viewInstanceCount":J
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1747
    move-wide/from16 v5, v49

    .end local v49    # "viewRootInstanceCount":J
    .local v5, "viewRootInstanceCount":J
    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1748
    move-wide/from16 v7, v43

    .end local v43    # "appContextInstanceCount":J
    .local v7, "appContextInstanceCount":J
    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1749
    move-wide/from16 v31, v2

    move-wide/from16 v2, v45

    .end local v45    # "activityInstanceCount":J
    .local v2, "activityInstanceCount":J
    .restart local v31    # "viewInstanceCount":J
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1751
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1752
    move/from16 v33, v0

    move/from16 v0, v51

    .end local v51    # "globalAssetManagerCount":I
    .local v0, "globalAssetManagerCount":I
    .restart local v33    # "globalAssetCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1753
    move/from16 v0, v52

    .end local v52    # "binderLocalObjectCount":I
    .local v0, "binderLocalObjectCount":I
    .restart local v51    # "globalAssetManagerCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1754
    move/from16 v34, v0

    move/from16 v0, v53

    .end local v53    # "binderProxyObjectCount":I
    .local v0, "binderProxyObjectCount":I
    .restart local v34    # "binderLocalObjectCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1756
    move/from16 v35, v0

    move/from16 v0, v54

    .end local v54    # "binderDeathObjectCount":I
    .local v0, "binderDeathObjectCount":I
    .restart local v35    # "binderProxyObjectCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1759
    move/from16 v40, v0

    move-object/from16 v4, v55

    .end local v0    # "binderDeathObjectCount":I
    .end local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v4, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v40    # "binderDeathObjectCount":I
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1760
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1761
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1762
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_145
    move-wide/from16 v45, v2

    .end local v2    # "activityInstanceCount":J
    .restart local v45    # "activityInstanceCount":J
    iget-object v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a0

    .line 1764
    iget-object v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1765
    .local v2, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v55, v4

    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    iget-wide v3, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1767
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v3, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1768
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1769
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1770
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1771
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1763
    .end local v2    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v45

    move-object/from16 v4, v55

    goto :goto_145

    .line 1773
    .end local v0    # "i":I
    .end local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_1a0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1775
    return-void

    .line 1778
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v5    # "viewRootInstanceCount":J
    .end local v7    # "appContextInstanceCount":J
    .end local v31    # "viewInstanceCount":J
    .end local v33    # "globalAssetCount":I
    .end local v34    # "binderLocalObjectCount":I
    .end local v35    # "binderProxyObjectCount":I
    .end local v40    # "binderDeathObjectCount":I
    .local v0, "globalAssetCount":I
    .restart local v43    # "appContextInstanceCount":J
    .restart local v47    # "viewInstanceCount":J
    .restart local v49    # "viewRootInstanceCount":J
    .restart local v52    # "binderLocalObjectCount":I
    .restart local v53    # "binderProxyObjectCount":I
    .restart local v54    # "binderDeathObjectCount":I
    .restart local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_1a4
    move/from16 v33, v0

    move-wide/from16 v7, v43

    move-wide/from16 v31, v47

    move-wide/from16 v5, v49

    move/from16 v34, v52

    move/from16 v35, v53

    move/from16 v40, v54

    .end local v0    # "globalAssetCount":I
    .end local v43    # "appContextInstanceCount":J
    .end local v47    # "viewInstanceCount":J
    .end local v49    # "viewRootInstanceCount":J
    .end local v52    # "binderLocalObjectCount":I
    .end local v53    # "binderProxyObjectCount":I
    .end local v54    # "binderDeathObjectCount":I
    .restart local v5    # "viewRootInstanceCount":J
    .restart local v7    # "appContextInstanceCount":J
    .restart local v31    # "viewInstanceCount":J
    .restart local v33    # "globalAssetCount":I
    .restart local v34    # "binderLocalObjectCount":I
    .restart local v35    # "binderProxyObjectCount":I
    .restart local v40    # "binderDeathObjectCount":I
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    const-string v2, " Objects"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1781
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Views:"

    .end local v5    # "viewRootInstanceCount":J
    .restart local v49    # "viewRootInstanceCount":J
    const-string v5, "ViewRootImpl:"

    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1780
    const-string v3, "%21s %8d %21s %8d"

    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1783
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1784
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "AppContexts:"

    const-string v6, "Activities:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1783
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1787
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Assets:"

    const-string v6, "AssetManagers:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1786
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1789
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1790
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Local Binders:"

    const-string v6, "Proxy Binders:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1789
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1791
    div-long v4, v36, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1792
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Parcel memory:"

    const-string v6, "Parcel count:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1791
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1793
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1794
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Death Recipients:"

    const-string v6, "WebViews:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1793
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1796
    invoke-static {}, Lcom/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v2

    if-eqz v2, :cond_23b

    .line 1797
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfoNativeAllocations(Ljava/io/PrintWriter;)V

    .line 1801
    :cond_23b
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    const-string v2, " SQL"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    move-object/from16 v4, v55

    .end local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "MEMORY_USED:"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%21s %8d"

    invoke-static {v1, v5, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1804
    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v2, v2, 0x400

    .line 1805
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PAGECACHE_OVERFLOW:"

    move-wide/from16 v41, v7

    .end local v7    # "appContextInstanceCount":J
    .restart local v41    # "appContextInstanceCount":J
    const-string v7, "MALLOC_SIZE:"

    filled-new-array {v6, v2, v7, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 1804
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1806
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    iget-object v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1808
    .local v2, "N":I
    if-lez v2, :cond_357

    .line 1809
    const-string v3, " DATABASES"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    const-string v57, "cache size"

    const-string v58, "Dbname"

    const-string/jumbo v52, "pgsz"

    const-string v53, "dbsz"

    const-string v54, "Lookaside(b)"

    const-string v55, "cache hits"

    const-string v56, "cache misses"

    filled-new-array/range {v52 .. v58}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "  %8s %8s %14s %5s %5s %5s  %s"

    invoke-static {v1, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1812
    const-string v3, "PER CONNECTION STATS"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a3
    if-ge v3, v2, :cond_308

    .line 1814
    iget-object v5, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1815
    .local v5, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    if-eqz v6, :cond_2b2

    .line 1817
    goto :goto_305

    .line 1819
    :cond_2b2
    nop

    .line 1820
    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v21, 0x0

    cmp-long v6, v6, v21

    if-lez v6, :cond_2c4

    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v52, v6

    goto :goto_2c6

    :cond_2c4
    move-object/from16 v52, v0

    .line 1821
    :goto_2c6
    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v6, v6, v21

    if-lez v6, :cond_2d5

    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v53, v6

    goto :goto_2d7

    :cond_2d5
    move-object/from16 v53, v0

    .line 1822
    :goto_2d7
    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v6, :cond_2e4

    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v54, v6

    goto :goto_2e6

    :cond_2e4
    move-object/from16 v54, v0

    :goto_2e6
    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 1823
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    iget-object v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v58, v6

    filled-new-array/range {v52 .. v58}, [Ljava/lang/Object;

    move-result-object v6

    .line 1819
    const-string v7, "  %8s %8s %14s %5d %5d %5d  %s"

    invoke-static {v1, v7, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    .end local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    :goto_305
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a3

    .line 1828
    .end local v3    # "i":I
    :cond_308
    const-string v3, "POOL STATS"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    const-string v3, "cache size"

    const-string v5, "Dbname"

    const-string v6, "cache hits"

    const-string v7, "cache misses"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "  %13s %13s %13s  %s"

    invoke-static {v1, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_31f
    if-ge v3, v2, :cond_354

    .line 1832
    iget-object v5, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1833
    .restart local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    if-nez v6, :cond_330

    .line 1834
    move/from16 v21, v2

    goto :goto_34f

    .line 1836
    :cond_330
    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 1837
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v21, v2

    .end local v2    # "N":I
    .local v21, "N":I
    iget-object v2, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    filled-new-array {v6, v7, v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1836
    const-string v6, "  %13d %13d %13d  %s"

    invoke-static {v1, v6, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    .end local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    :goto_34f
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    goto :goto_31f

    .end local v21    # "N":I
    .restart local v2    # "N":I
    :cond_354
    move/from16 v21, v2

    .end local v2    # "N":I
    .restart local v21    # "N":I
    goto :goto_359

    .line 1808
    .end local v3    # "i":I
    .end local v21    # "N":I
    .restart local v2    # "N":I
    :cond_357
    move/from16 v21, v2

    .line 1842
    .end local v2    # "N":I
    .restart local v21    # "N":I
    :goto_359
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v2

    .line 1843
    .local v2, "assetAlloc":Ljava/lang/String;
    if-eqz v2, :cond_36a

    .line 1844
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    const-string v3, " Asset Allocations"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    :cond_36a
    if-eqz p7, :cond_39a

    .line 1851
    move-object/from16 v3, p0

    iget-object v5, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_380

    iget-object v5, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_384

    :cond_380
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_386

    :cond_384
    move/from16 v24, v30

    :cond_386
    move/from16 v5, v24

    .line 1854
    .local v5, "showContents":Z
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    const-string v0, " Unreachable memory"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    const/16 v0, 0x64

    invoke-static {v0, v5}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_39c

    .line 1850
    .end local v5    # "showContents":Z
    :cond_39a
    move-object/from16 v3, p0

    .line 1858
    :goto_39c
    if-eqz p8, :cond_3a1

    .line 1859
    invoke-static {}, Landroid/os/Debug;->logAllocatorStats()Z

    .line 1861
    :cond_3a1
    return-void
.end method

.method private blacklist dumpMemInfoNativeAllocations(Ljava/io/PrintWriter;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1674
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    const-string v0, " Native Allocations"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    const-string v0, "Count"

    const-string v1, "Total(kB)"

    const-string v2, ""

    filled-new-array {v2, v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%21s %8s %21s %8s"

    invoke-static {p1, v1, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1677
    const-string v0, "------"

    filled-new-array {v2, v0, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    invoke-static {}, Llibcore/util/NativeAllocationRegistry;->getMetrics()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/NativeAllocationRegistry$Metrics;

    .line 1681
    .local v1, "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e2

    :cond_41
    goto :goto_56

    :sswitch_42
    const-string v4, "android.hardware.HardwareBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_57

    :sswitch_4c
    const-string v4, "android.graphics.Bitmap"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    goto :goto_57

    :goto_56
    const/4 v3, -0x1

    :goto_57
    packed-switch v3, :pswitch_data_ec

    .line 1684
    const-string v3, "Other"

    goto :goto_62

    .line 1683
    :pswitch_5d
    const-string v3, "HardwareBuffer"

    goto :goto_62

    .line 1682
    :pswitch_60
    const-string v3, "Bitmap"

    .line 1684
    :goto_62
    nop

    .line 1687
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x400

    const-string v5, "%21s %8d %21s %8d"

    if-nez v4, :cond_79

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-eqz v4, :cond_a4

    .line 1688
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (malloced):"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1689
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v11

    div-long/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v4, v10, v2, v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 1688
    invoke-static {p1, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1691
    :cond_a4
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-nez v4, :cond_b4

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-eqz v4, :cond_df

    .line 1692
    :cond_b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (nonmalloced):"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1693
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v6, v2, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 1692
    invoke-static {p1, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1695
    .end local v1    # "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    .end local v3    # "className":Ljava/lang/String;
    :cond_df
    goto/16 :goto_2a

    .line 1696
    :cond_e1
    return-void

    :sswitch_data_e2
    .sparse-switch
        -0xb9ab36d -> :sswitch_4c
        0x48440eaf -> :sswitch_42
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5d
    .end packed-switch
.end method

.method private blacklist getDatabasesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2020
    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private blacklist updateCompatOverrideDisplayRotation(Landroid/content/res/CompatibilityInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1420
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isOverrideDisplayRotationRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1421
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->setOverrideDisplayRotation(I)V

    goto :goto_10

    .line 1423
    :cond_c
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->setOverrideDisplayRotation(I)V

    .line 1426
    :goto_10
    return-void
.end method

.method private blacklist updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1410
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1411
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    goto :goto_13

    .line 1414
    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    .line 1417
    :goto_13
    return-void
.end method


# virtual methods
.method public greylist-max-o attachAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "agent"    # Ljava/lang/String;

    .line 1580
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1581
    return-void
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .registers 4
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 1584
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1585
    return-void
.end method

.method public final blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V
    .registers 48
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "isSdkInSandbox"    # Z
    .param p6, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p7, "instrumentationName"    # Landroid/content/ComponentName;
    .param p8, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p9, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p10, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p11, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p12, "debugMode"    # I
    .param p13, "enableBinderTracking"    # Z
    .param p14, "trackAllocation"    # Z
    .param p15, "isRestrictedBackupMode"    # Z
    .param p16, "persistent"    # Z
    .param p17, "config"    # Landroid/content/res/Configuration;
    .param p18, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p19, "services"    # Ljava/util/Map;
    .param p20, "coreSettings"    # Landroid/os/Bundle;
    .param p21, "buildSerial"    # Ljava/lang/String;
    .param p22, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p23, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p24, "disabledCompatChanges"    # [J
    .param p25, "loggableCompatChanges"    # [J
    .param p26, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p27, "applicationSharedMemoryFd"    # Ljava/io/FileDescriptor;
    .param p28, "startRequestedElapsedTime"    # J
    .param p30, "startRequestedUptime"    # J

    .line 1334
    move-object/from16 v0, p0

    move-object/from16 v1, p18

    if-eqz p19, :cond_9

    .line 1357
    invoke-static/range {p19 .. p19}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1362
    :cond_9
    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1363
    nop

    .line 1364
    const/4 v2, 0x0

    move-object/from16 v3, p27

    invoke-static {v3, v2}, Lcom/android/internal/os/ApplicationSharedMemory;->fromFileDescriptor(Ljava/io/FileDescriptor;Z)Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v2

    .line 1366
    .local v2, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->cacheSdkSystemFeatures()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1367
    new-instance v4, Landroid/content/pm/SystemFeaturesCache;

    .line 1368
    invoke-virtual {v2}, Lcom/android/internal/os/ApplicationSharedMemory;->readSystemFeaturesCache()[I

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/SystemFeaturesCache;-><init>([I)V

    .line 1367
    invoke-static {v4}, Landroid/content/pm/SystemFeaturesCache;->setInstance(Landroid/content/pm/SystemFeaturesCache;)V

    .line 1370
    :cond_29
    invoke-virtual {v2}, Lcom/android/internal/os/ApplicationSharedMemory;->closeFileDescriptor()V

    .line 1371
    invoke-static {v2}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    goto :goto_32

    .line 1362
    .end local v2    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    :cond_30
    move-object/from16 v3, p27

    .line 1374
    :goto_32
    move-object/from16 v2, p20

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1376
    new-instance v4, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v4}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 1377
    .local v4, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v5, p1

    iput-object v5, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1378
    move-object/from16 v6, p2

    iput-object v6, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1379
    move-object/from16 v7, p3

    iput-object v7, v4, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 1380
    move-object/from16 v8, p4

    iput-object v8, v4, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 1381
    move/from16 v9, p5

    iput-boolean v9, v4, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    .line 1382
    invoke-virtual/range {p6 .. p6}, Landroid/content/pm/ProviderInfoList;->getList()Ljava/util/List;

    move-result-object v10

    iput-object v10, v4, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 1383
    move-object/from16 v10, p7

    iput-object v10, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 1384
    move-object/from16 v11, p9

    iput-object v11, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 1385
    move-object/from16 v12, p10

    iput-object v12, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1386
    move-object/from16 v13, p11

    iput-object v13, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1387
    move/from16 v14, p12

    iput v14, v4, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 1388
    move/from16 v15, p13

    iput-boolean v15, v4, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 1389
    move/from16 v2, p14

    iput-boolean v2, v4, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 1390
    move/from16 v2, p15

    iput-boolean v2, v4, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 1391
    move/from16 v2, p16

    iput-boolean v2, v4, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 1392
    move-object/from16 v2, p17

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1393
    iput-object v1, v4, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1394
    move-object/from16 v2, p8

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1395
    move-object/from16 v2, p21

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 1396
    move-object/from16 v2, p22

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    .line 1397
    move-object/from16 v2, p23

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 1398
    move-object/from16 v2, p24

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    .line 1399
    move-object/from16 v2, p25

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->mLoggableCompatChanges:[J

    .line 1400
    move-object/from16 v2, p26

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    .line 1401
    move-wide/from16 v2, p28

    iput-wide v2, v4, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    .line 1402
    move-wide/from16 v2, p30

    iput-wide v2, v4, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    .line 1403
    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V

    .line 1404
    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideDisplayRotation(Landroid/content/res/CompatibilityInfo;)V

    .line 1405
    invoke-static/range {p17 .. p17}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 1406
    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0, v4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1407
    return-void
.end method

.method public greylist-max-o clearDnsCache()V
    .registers 2

    .line 1465
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 1468
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    .line 1469
    return-void
.end method

.method public greylist-max-o dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1601
    return-void
.end method

.method public greylist-max-o dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1627
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1629
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1630
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1631
    iput-object p3, v3, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1632
    iput-object p4, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1633
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x88

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1c} :catch_1f
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    .line 1637
    goto :goto_28

    :catchall_1d
    move-exception v0

    goto :goto_2d

    .line 1634
    :catch_1f
    move-exception v0

    .line 1635
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    const-string v1, "ActivityThread"

    const-string v2, "dumpActivity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 1637
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_28
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1637
    :goto_2d
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1638
    throw v0
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2011
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 2012
    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 2014
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2015
    nop

    .line 2016
    return-void

    .line 2014
    :catchall_b
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2015
    throw v0
.end method

.method public greylist-max-o dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2033
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_44

    .line 2039
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_1b
    .catchall {:try_start_6 .. :try_end_a} :catchall_19

    .line 2044
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2045
    nop

    .line 2047
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2057
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    goto :goto_4b

    .line 2044
    :catchall_19
    move-exception v0

    goto :goto_40

    .line 2040
    :catch_1b
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup FD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_19

    .line 2044
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2042
    return-void

    .line 2044
    .end local v0    # "e":Ljava/io/IOException;
    :goto_40
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2045
    throw v0

    .line 2058
    :cond_44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    .line 2059
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2061
    :goto_4b
    return-void
.end method

.method public greylist-max-o dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 10
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1995
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1997
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1998
    const/4 v0, 0x0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1999
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 2000
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0xa5

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_1e
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    .line 2004
    goto :goto_27

    :catchall_1c
    move-exception v0

    goto :goto_2c

    .line 2001
    :catch_1e
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/io/IOException;
    :try_start_1f
    const-string v1, "ActivityThread"

    const-string v2, "dumpGfxInfo failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 2004
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_27
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2005
    nop

    .line 2006
    return-void

    .line 2004
    :goto_2c
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2005
    throw v0
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 15
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "dumpBitmaps"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "finishCallback"    # Landroid/os/RemoteCallback;

    .line 1559
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    move-object v3, v0

    .line 1560
    .local v3, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-boolean p1, v3, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1561
    iput-boolean p2, v3, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1562
    iput-object p4, v3, Landroid/app/ActivityThread$DumpHeapData;->dumpBitmaps:Ljava/lang/String;

    .line 1563
    iput-boolean p3, v3, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1564
    iput-object p5, v3, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1568
    :try_start_10
    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_29
    .catchall {:try_start_10 .. :try_end_16} :catchall_27

    .line 1573
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1574
    nop

    .line 1575
    iput-object p7, v3, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1576
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x87

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1577
    return-void

    .line 1573
    :catchall_27
    move-exception v0

    goto :goto_35

    .line 1569
    :catch_29
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/io/IOException;
    :try_start_2a
    const-string v1, "ActivityThread"

    const-string v2, "Failed to duplicate heap dump file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 1573
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1571
    return-void

    .line 1573
    .end local v0    # "e":Ljava/io/IOException;
    :goto_35
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1574
    throw v0
.end method

.method public blacklist dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .registers 21
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "dumpAllocatorStats"    # Z
    .param p9, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1661
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1662
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 1664
    .local v3, "pw":Ljava/io/PrintWriter;
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_1c
    invoke-direct/range {v2 .. v10}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_27

    .line 1667
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1668
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1669
    nop

    .line 1670
    return-void

    .line 1667
    :catchall_27
    move-exception v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1668
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1669
    throw v0
.end method

.method public greylist-max-o dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .registers 17
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1868
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 1870
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    :try_start_10
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1b

    .line 1872
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1873
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1874
    nop

    .line 1875
    return-void

    .line 1872
    :catchall_1b
    move-exception v0

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1873
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1874
    throw v0
.end method

.method public greylist-max-o dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1643
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1645
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1646
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1647
    iput-object p3, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1648
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x8d

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_1d
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    .line 1652
    goto :goto_26

    :catchall_1b
    move-exception v0

    goto :goto_2b

    .line 1649
    :catch_1d
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v1, "ActivityThread"

    const-string v2, "dumpProvider failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 1652
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_26
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1653
    nop

    .line 1654
    return-void

    .line 1652
    :goto_2b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1653
    throw v0
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1613
    new-instance v0, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpResourcesData;-><init>()V

    move-object v3, v0

    .line 1615
    .local v3, "data":Landroid/app/ActivityThread$DumpResourcesData;
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1616
    iput-object p2, v3, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1617
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0xa6

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_1b
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    .line 1621
    goto :goto_24

    :catchall_19
    move-exception v0

    goto :goto_29

    .line 1618
    :catch_1b
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v1, "ActivityThread"

    const-string v2, "dumpResources failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 1621
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_24
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1622
    nop

    .line 1623
    return-void

    .line 1621
    :goto_29
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1622
    throw v0
.end method

.method public greylist-max-o dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1492
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1494
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1495
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1496
    iput-object p3, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1497
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x7b

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_1d
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    .line 1501
    goto :goto_26

    :catchall_1b
    move-exception v0

    goto :goto_2b

    .line 1498
    :catch_1d
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v1, "ActivityThread"

    const-string v2, "dumpService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 1501
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_26
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1502
    nop

    .line 1503
    return-void

    .line 1501
    :goto_2b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1502
    throw v0
.end method

.method public blacklist getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .registers 8
    .param p1, "methodDescriptor"    # Landroid/os/instrumentation/MethodDescriptor;
    .param p2, "resultCallback"    # Landroid/os/instrumentation/IOffsetCallback;

    .line 2284
    nop

    .line 2285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2284
    invoke-static {v0, p1}, Landroid/os/instrumentation/MethodDescriptorParser;->parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;

    move-result-object v0

    .line 2287
    .local v0, "executable":Ljava/lang/reflect/Executable;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2288
    invoke-static {v0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v1

    .local v1, "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    goto :goto_23

    .line 2289
    .end local v1    # "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    :cond_18
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4c

    .line 2290
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {v1}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Method;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v1

    .line 2295
    .restart local v1    # "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    :goto_23
    if-nez v1, :cond_2a

    .line 2296
    const/4 v2, 0x0

    :try_start_26
    invoke-interface {p2, v2}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V

    .line 2297
    return-void

    .line 2299
    :cond_2a
    new-instance v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    invoke-direct {v2}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;-><init>()V

    .line 2300
    .local v2, "ret":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerPath:Ljava/lang/String;

    .line 2301
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerOffset()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerOffset:J

    .line 2302
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getMethodOffset()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->methodOffset:J

    .line 2303
    invoke-interface {p2, v2}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_44} :catch_46

    .line 2306
    .end local v2    # "ret":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    nop

    .line 2307
    return-void

    .line 2304
    :catch_46
    move-exception v2

    .line 2305
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 2292
    .end local v1    # "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 2

    .line 2189
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 2190
    return-void
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2257
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v0}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 2258
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 2259
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 2260
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2261
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2262
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 2263
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2264
    return-void
.end method

.method public greylist-max-o notifyCleartextNetwork([B)V
    .registers 3
    .param p1, "firstPacket"    # [B

    .line 2158
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2159
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 2161
    :cond_9
    return-void
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z

    .line 2243
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, "auths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 2245
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3, p3}, Landroid/app/ActivityThread;->-$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v4

    .line 2246
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2247
    :try_start_15
    iput-object p1, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 2248
    iget-object v6, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 2249
    monitor-exit v5

    .line 2244
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2249
    .restart local v3    # "auth":Ljava/lang/String;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_20
    move-exception v1

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v1

    .line 2251
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_23
    return-void
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 14
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 2226
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    move-object v6, v0

    .line 2227
    .local v6, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p4, :cond_21

    .line 2228
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v0

    .line 2230
    .local v0, "transport":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2231
    .local v1, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2232
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2231
    const-string/jumbo v3, "key_cancellation_signal"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2233
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2235
    .end local v0    # "transport":Landroid/os/ICancellationSignal;
    .end local v1    # "cancellationResult":Landroid/os/Bundle;
    :cond_21
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "actionId":Ljava/lang/String;
    .end local p3    # "arguments":Landroid/os/Bundle;
    .end local p5    # "resultCallback":Landroid/os/RemoteCallback;
    .local v3, "activityToken":Landroid/os/IBinder;
    .local v4, "actionId":Ljava/lang/String;
    .local v5, "arguments":Landroid/os/Bundle;
    .local v7, "resultCallback":Landroid/os/RemoteCallback;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2238
    return-void
.end method

.method public greylist-max-o processInBackground()V
    .registers 4

    .line 1487
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1488
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1489
    return-void
.end method

.method public greylist-max-o profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 6
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 1553
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1554
    return-void
.end method

.method public greylist-max-o requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I

    .line 2071
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 2072
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 2073
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 2074
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 2075
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 2076
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 2077
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2078
    return-void
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 13
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 2208
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    move-object v5, v0

    .line 2209
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p3, :cond_21

    .line 2210
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v5}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v0

    .line 2212
    .local v0, "transport":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2213
    .local v1, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2214
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2213
    const-string/jumbo v3, "key_cancellation_signal"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2215
    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2217
    .end local v0    # "transport":Landroid/os/ICancellationSignal;
    .end local v1    # "cancellationResult":Landroid/os/Bundle;
    :cond_21
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 2219
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2217
    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    .end local p4    # "callback":Landroid/os/RemoteCallback;
    .local v3, "activityToken":Landroid/os/IBinder;
    .local v4, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    .local v6, "callback":Landroid/os/RemoteCallback;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2220
    return-void
.end method

.method public final greylist-max-o runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 1429
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1430
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1431
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1432
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1433
    return-void
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1444
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 1445
    :try_start_7
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->-$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1446
    .local v1, "oldAi":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_52

    iget-wide v2, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_52

    .line 1447
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping application info changed for obsolete AI with TS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < already pending TS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    monitor-exit v0

    return-void

    .line 1453
    .end local v1    # "oldAi":Landroid/content/pm/ApplicationInfo;
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_75

    .line 1454
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1455
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 1456
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1457
    return-void

    .line 1453
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public final blacklist scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .param p5, "bindSeq"    # J

    .line 1220
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1221
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1222
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1223
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1224
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 1225
    iput-wide p5, v0, Landroid/app/ActivityThread$BindServiceData;->bindSeq:J

    .line 1231
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleBindService. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1235
    :cond_3c
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1236
    return-void
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1605
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1606
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1607
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1608
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x86

    invoke-static {v1, v2, v0, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1609
    return-void
.end method

.method public final blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V
    .registers 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupMode"    # I
    .param p3, "userId"    # I
    .param p4, "backupDestination"    # I

    .line 1187
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1188
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1189
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 1190
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1191
    iput p4, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupDestination:I

    .line 1193
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1194
    return-void
.end method

.method public final greylist-max-o scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .line 1206
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1207
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 1208
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 1209
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 1211
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleCreateService. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1215
    :cond_2e
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public final blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .registers 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 1197
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1198
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1199
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1201
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1202
    return-void
.end method

.method public greylist-max-o scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2153
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2154
    return-void
.end method

.method public final greylist-max-o scheduleExit()V
    .registers 4

    .line 1436
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1437
    return-void
.end method

.method public greylist-max-o scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 2132
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2133
    return-void
.end method

.method public greylist-max-o scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2182
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2183
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2184
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2185
    return-void
.end method

.method public greylist-max-o scheduleLowMemory()V
    .registers 4

    .line 1548
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1549
    return-void
.end method

.method public blacklist scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 2110
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2112
    return-void
.end method

.method public final blacklist schedulePing(Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "pong"    # Landroid/os/RemoteCallback;

    .line 1290
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1291
    return-void
.end method

.method public final blacklist scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .registers 31
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "ordered"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sendingUid"    # I
    .param p12, "sendingPackage"    # Ljava/lang/String;

    .line 1153
    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    .line 1154
    .local v1, "debugStoreId":J
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1155
    invoke-static {}, Lcom/android/internal/os/DebugStore;->recordScheduleReceiver()J

    move-result-wide v1

    .line 1157
    :cond_e
    iget-object v3, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    move/from16 v5, p10

    invoke-virtual {v3, v5, v4}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1158
    new-instance v6, Landroid/app/ActivityThread$ReceiverData;

    iget-object v3, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 1159
    invoke-virtual {v3}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v13, p8

    move/from16 v15, p9

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v6 .. v17}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZLandroid/os/IBinder;IILjava/lang/String;)V

    .line 1161
    .local v6, "r":Landroid/app/ActivityThread$ReceiverData;
    move-object/from16 v3, p2

    iput-object v3, v6, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 1162
    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v7, 0x71

    invoke-virtual {v4, v7, v6}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1163
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1164
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 1166
    :cond_4a
    return-void
.end method

.method public final blacklist scheduleReceiverList(Ljava/util/List;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ReceiverInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 1170
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ReceiverInfo;

    .line 1171
    .local v2, "r":Landroid/app/ReceiverInfo;
    iget-boolean v3, v2, Landroid/app/ReceiverInfo;->registered:Z

    if-eqz v3, :cond_33

    .line 1172
    iget-object v5, v2, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    iget-object v6, v2, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    iget v7, v2, Landroid/app/ReceiverInfo;->resultCode:I

    iget-object v8, v2, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    iget-boolean v10, v2, Landroid/app/ReceiverInfo;->ordered:Z

    iget-boolean v11, v2, Landroid/app/ReceiverInfo;->sticky:Z

    iget-boolean v12, v2, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    iget v13, v2, Landroid/app/ReceiverInfo;->sendingUser:I

    iget v14, v2, Landroid/app/ReceiverInfo;->processState:I

    iget v15, v2, Landroid/app/ReceiverInfo;->sendingUid:I

    iget-object v3, v2, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v16, v3

    invoke-virtual/range {v4 .. v16}, Landroid/app/ActivityThread$ApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    goto :goto_68

    .line 1177
    :cond_33
    iget-object v3, v2, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget v6, v2, Landroid/app/ReceiverInfo;->resultCode:I

    iget-object v7, v2, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    iget-object v8, v2, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    iget-boolean v9, v2, Landroid/app/ReceiverInfo;->sync:Z

    iget-boolean v10, v2, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    iget v11, v2, Landroid/app/ReceiverInfo;->sendingUser:I

    iget v12, v2, Landroid/app/ReceiverInfo;->processState:I

    iget v13, v2, Landroid/app/ReceiverInfo;->sendingUid:I

    iget-object v14, v2, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-object/from16 v28, v14

    invoke-virtual/range {v16 .. v28}, Landroid/app/ActivityThread$ApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 1169
    .end local v2    # "r":Landroid/app/ReceiverInfo;
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6b
    move-object/from16 v1, p1

    .line 1183
    .end local v0    # "i":I
    return-void
.end method

.method public blacklist scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .registers 29
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sendingUid"    # I
    .param p12, "sendingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1513
    move-object/from16 v0, p1

    const-wide/16 v1, -0x1

    .line 1514
    .local v1, "debugStoreId":J
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1515
    invoke-static {}, Lcom/android/internal/os/DebugStore;->recordScheduleRegisteredReceiver()J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_11

    .line 1514
    :cond_10
    move-wide v12, v1

    .line 1517
    .end local v1    # "debugStoreId":J
    .local v12, "debugStoreId":J
    :goto_11
    move-object/from16 v14, p0

    iget-object v1, v14, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x0

    move/from16 v15, p10

    invoke-virtual {v1, v15, v2}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1523
    instance-of v1, v0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    if-eqz v1, :cond_3c

    .line 1524
    move-object v1, v0

    check-cast v1, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v1 .. v11}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_b7

    .line 1528
    :cond_3c
    move-object/from16 v1, p2

    move/from16 v10, p11

    move-object/from16 v11, p12

    const-string v2, " and "

    const-string/jumbo v3, "scheduleRegisteredReceiver() called for "

    const-string v4, "ActivityThread"

    if-nez p8, :cond_6d

    .line 1529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without mechanism to finish delivery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_6d
    const/4 v5, -0x1

    if-ne v10, v5, :cond_72

    if-eqz v11, :cond_a8

    .line 1533
    :cond_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") without mechanism to propagate the sender\'s identity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_a8
    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-interface/range {v0 .. v7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1541
    :goto_b7
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1542
    invoke-static {v12, v13}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 1544
    :cond_c0
    return-void
.end method

.method public final greylist-max-o scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;

    .line 1252
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1254
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ServiceStartArgs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 1255
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    .line 1256
    .local v2, "ssa":Landroid/app/ServiceStartArgs;
    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 1257
    .local v3, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 1258
    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 1259
    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 1260
    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 1261
    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 1263
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 1264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduleServiceArgs. token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1267
    :cond_53
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1254
    .end local v2    # "ssa":Landroid/app/ServiceStartArgs;
    .end local v3    # "s":Landroid/app/ActivityThread$ServiceArgsData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1269
    .end local v1    # "i":I
    :cond_5d
    return-void
.end method

.method public final greylist-max-o scheduleStopService(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1272
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopService. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1276
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1277
    return-void
.end method

.method public final greylist-max-o scheduleSuicide()V
    .registers 4

    .line 1440
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1441
    return-void
.end method

.method public blacklist scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "transaction"    # Landroid/window/TaskFragmentTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2201
    invoke-interface {p1, p2}, Landroid/window/ITaskFragmentOrganizer;->onTransactionReady(Landroid/window/TaskFragmentTransaction;)V

    .line 2202
    return-void
.end method

.method public final blacklist scheduleTimeoutService(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I

    .line 1281
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleTimeoutService. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1285
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa7

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1286
    return-void
.end method

.method public final blacklist scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .param p3, "fgsType"    # I

    .line 1296
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleTimeoutServiceForType. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1300
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xac

    invoke-static {v0, v1, p1, p2, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1301
    return-void
.end method

.method public greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2194
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2195
    return-void
.end method

.method public greylist-max-o scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 2106
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 2107
    return-void
.end method

.method public greylist-max-o scheduleTrimMemory(I)V
    .registers 6
    .param p1, "level"    # I

    .line 2094
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 2095
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2094
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2095
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2097
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 2098
    .local v1, "choreographer":Landroid/view/Choreographer;
    if-eqz v1, :cond_1f

    .line 2099
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_26

    .line 2101
    :cond_1f
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 2103
    :goto_26
    return-void
.end method

.method public final greylist-max-o scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1239
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1240
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1241
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1242
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/ActivityThread$BindServiceData;->bindSeq:J

    .line 1244
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleUnbindService. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1248
    :cond_2c
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1249
    return-void
.end method

.method public greylist-max-o setCoreSettings(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 2081
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2082
    return-void
.end method

.method public greylist-max-o setNetworkBlockSeq(J)V
    .registers 5
    .param p1, "procStateSeq"    # J

    .line 2125
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2126
    :try_start_7
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V

    .line 2127
    monitor-exit v0

    .line 2128
    return-void

    .line 2127
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o setProcessState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2115
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 2116
    return-void
.end method

.method public greylist-max-o setSchedulingGroup(I)V
    .registers 5
    .param p1, "group"    # I

    .line 1593
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1596
    goto :goto_21

    .line 1594
    :catch_8
    move-exception v0

    .line 1595
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting process group to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public greylist-max-o startBinderTracking()V
    .registers 4

    .line 2165
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2166
    return-void
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 2171
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_11
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_12

    .line 2174
    :catchall_c
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2175
    throw v0

    .line 2172
    :catch_11
    move-exception v0

    .line 2174
    :goto_12
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2175
    nop

    .line 2176
    return-void
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 2065
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2066
    return-void
.end method

.method public blacklist updateHttpProxy()V
    .registers 5

    .line 1473
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    monitor-enter v0

    .line 1474
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1475
    .local v1, "app":Landroid/app/Application;
    if-nez v1, :cond_13

    .line 1478
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/ActivityThread;->-$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V

    .line 1479
    monitor-exit v0

    return-void

    .line 1481
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 1483
    invoke-static {v1}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 1484
    return-void

    .line 1481
    .end local v1    # "app":Landroid/app/Application;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-o updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 2085
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 2086
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 2087
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 2088
    invoke-direct {p0, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V

    .line 2089
    invoke-direct {p0, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideDisplayRotation(Landroid/content/res/CompatibilityInfo;)V

    .line 2090
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2091
    return-void
.end method

.method public final greylist-max-o updateTimePrefs(I)V
    .registers 3
    .param p1, "timeFormatPreference"    # I

    .line 2139
    if-nez p1, :cond_5

    .line 2140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_c

    .line 2141
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_c

    .line 2146
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_b
    const/4 v0, 0x0

    .line 2148
    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_c
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 2149
    return-void
.end method

.method public greylist-max-o updateTimeZone()V
    .registers 2

    .line 1460
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1461
    return-void
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 2270
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2271
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2273
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2274
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2275
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2276
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2277
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa3

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2278
    return-void
.end method
