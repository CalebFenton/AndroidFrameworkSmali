.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorWindow$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, -0x1

    #@1
    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    #@3
    .line 683
    new-instance v0, Landroid/database/CursorWindow$1;

    #@5
    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    #@8
    .line 682
    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    .line 720
    new-instance v0, Landroid/util/LongSparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@f
    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@11
    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    #@3
    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@f
    .line 135
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@15
    .line 136
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@17
    const-wide/16 v2, 0x0

    #@19
    cmp-long v0, v0, v2

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 137
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    #@1f
    const-string/jumbo v1, "Cursor window could not be created from binder."

    #@22
    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 140
    :cond_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@28
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetName(J)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    #@2e
    .line 141
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@30
    const-string/jumbo v1, "close"

    #@33
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@36
    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    #@4
    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@a
    .line 97
    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@c
    .line 98
    if-eqz p1, :cond_1

    #@e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    #@16
    .line 99
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    #@18
    if-gez v0, :cond_0

    #@1a
    .line 103
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1d
    move-result-object v0

    #@1e
    .line 104
    const v1, 0x10e0077

    #@21
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@24
    move-result v0

    #@25
    mul-int/lit16 v0, v0, 0x400

    #@27
    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    #@29
    .line 106
    :cond_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    #@2b
    sget v1, Landroid/database/CursorWindow;->sCursorWindowSize:I

    #@2d
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@33
    .line 107
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@35
    const-wide/16 v2, 0x0

    #@37
    cmp-long v0, v0, v2

    #@39
    if-nez v0, :cond_2

    #@3b
    .line 108
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "Cursor window allocation of "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 109
    sget v2, Landroid/database/CursorWindow;->sCursorWindowSize:I

    #@4b
    div-int/lit16 v2, v2, 0x400

    #@4d
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 109
    const-string/jumbo v2, " kb failed. "

    #@54
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 109
    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    .line 98
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo p1, "<unnamed>"

    #@6b
    goto :goto_0

    #@6c
    .line 111
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6e
    const-string/jumbo v1, "close"

    #@71
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@74
    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@77
    move-result v0

    #@78
    iget-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@7a
    invoke-direct {p0, v0, v2, v3}, Landroid/database/CursorWindow;->recordNewWindow(IJ)V

    #@7d
    .line 96
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    #@6
    .line 129
    return-void
.end method

.method private dispose()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 157
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 158
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@8
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@b
    .line 160
    :cond_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@d
    cmp-long v0, v0, v2

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 161
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@13
    invoke-direct {p0, v0, v1}, Landroid/database/CursorWindow;->recordClosingOfWindow(J)V

    #@16
    .line 162
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@18
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeDispose(J)V

    #@1b
    .line 163
    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@1d
    .line 156
    :cond_1
    return-void
.end method

.method private static native nativeAllocRow(J)Z
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFreeLastRow(J)V
.end method

.method private static native nativeGetBlob(JII)[B
.end method

.method private static native nativeGetDouble(JII)D
.end method

.method private static native nativeGetLong(JII)J
.end method

.method private static native nativeGetName(J)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(J)I
.end method

.method private static native nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native nativeGetType(JII)I
.end method

.method private static native nativePutBlob(J[BII)Z
.end method

.method private static native nativePutDouble(JDII)Z
.end method

.method private static native nativePutLong(JJII)Z
.end method

.method private static native nativePutNull(JII)Z
.end method

.method private static native nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(JI)Z
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 694
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/database/CursorWindow;

    #@8
    return-object v0
.end method

.method private printStats()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 743
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@8
    move-result v3

    #@9
    .line 744
    .local v3, "myPid":I
    const/4 v10, 0x0

    #@a
    .line 745
    .local v10, "total":I
    new-instance v7, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    .line 746
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@11
    monitor-enter v13

    #@12
    .line 747
    :try_start_0
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@14
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    #@17
    move-result v9

    #@18
    .line 748
    .local v9, "size":I
    if-nez v9, :cond_0

    #@1a
    .line 750
    const-string/jumbo v12, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v13

    #@1e
    return-object v12

    #@1f
    .line 752
    :cond_0
    const/4 v2, 0x0

    #@20
    .local v2, "indx":I
    :goto_0
    if-ge v2, v9, :cond_1

    #@22
    .line 753
    :try_start_1
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@24
    invoke-virtual {v12, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v12

    #@28
    check-cast v12, Ljava/lang/Integer;

    #@2a
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v6

    #@2e
    .line 754
    .local v6, "pid":I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@31
    move-result v11

    #@32
    .line 755
    .local v11, "value":I
    add-int/lit8 v11, v11, 0x1

    #@34
    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 752
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .end local v6    # "pid":I
    .end local v11    # "value":I
    :cond_1
    monitor-exit v13

    #@3b
    .line 758
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    #@3e
    move-result v5

    #@3f
    .line 759
    .local v5, "numPids":I
    const/4 v1, 0x0

    #@40
    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    #@42
    .line 760
    const-string/jumbo v12, " (# cursors opened by "

    #@45
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 761
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@4b
    move-result v6

    #@4c
    .line 762
    .restart local v6    # "pid":I
    if-ne v6, v3, :cond_2

    #@4e
    .line 763
    const-string/jumbo v12, "this proc="

    #@51
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 767
    :goto_2
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    #@57
    move-result v4

    #@58
    .line 768
    .local v4, "num":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v12

    #@5c
    const-string/jumbo v13, ")"

    #@5f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 769
    add-int/2addr v10, v4

    #@63
    .line 759
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_1

    #@66
    .line 746
    .end local v1    # "i":I
    .end local v2    # "indx":I
    .end local v4    # "num":I
    .end local v5    # "numPids":I
    .end local v6    # "pid":I
    .end local v9    # "size":I
    :catchall_0
    move-exception v12

    #@67
    monitor-exit v13

    #@68
    throw v12

    #@69
    .line 765
    .restart local v1    # "i":I
    .restart local v2    # "indx":I
    .restart local v5    # "numPids":I
    .restart local v6    # "pid":I
    .restart local v9    # "size":I
    :cond_2
    const-string/jumbo v12, "pid "

    #@6c
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v12

    #@74
    const-string/jumbo v13, "="

    #@77
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    goto :goto_2

    #@7b
    .line 772
    .end local v6    # "pid":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@7e
    move-result v12

    #@7f
    const/16 v13, 0x3d4

    #@81
    if-le v12, v13, :cond_4

    #@83
    const/4 v12, 0x0

    #@84
    const/16 v13, 0x3d4

    #@86
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    .line 773
    .local v8, "s":Ljava/lang/String;
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v13, "# Open Cursors="

    #@92
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v12

    #@9a
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v12

    #@9e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v12

    #@a2
    return-object v12

    #@a3
    .line 772
    .end local v8    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    .restart local v8    # "s":Ljava/lang/String;
    goto :goto_3
.end method

.method private recordClosingOfWindow(J)V
    .locals 3
    .param p1, "window"    # J

    #@0
    .prologue
    .line 732
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 733
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    monitor-exit v1

    #@c
    .line 735
    return-void

    #@d
    .line 737
    :cond_0
    :try_start_1
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 731
    return-void

    #@14
    .line 732
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private recordNewWindow(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "window"    # J

    #@0
    .prologue
    .line 723
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 724
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, p2, p3, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@c
    .line 725
    const-string/jumbo v0, "CursorWindowStats"

    #@f
    const/4 v2, 0x2

    #@10
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 726
    const-string/jumbo v0, "CursorWindowStats"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Created a new Cursor. "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :cond_0
    monitor-exit v1

    #@35
    .line 722
    return-void

    #@36
    .line 723
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 2

    #@0
    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 261
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeAllocRow(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 263
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@c
    .line 261
    return v0

    #@d
    .line 262
    :catchall_0
    move-exception v0

    #@e
    .line 263
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@11
    .line 262
    throw v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 186
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@6
    .line 187
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@8
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeClear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 189
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@e
    .line 183
    return-void

    #@f
    .line 188
    :catchall_0
    move-exception v0

    #@10
    .line 189
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@13
    .line 188
    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    #@0
    .prologue
    .line 475
    if-nez p3, :cond_0

    #@2
    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "CharArrayBuffer should not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 478
    :cond_0
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@e
    .line 480
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@10
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@12
    sub-int v2, p1, v2

    #@14
    invoke-static {v0, v1, v2, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 482
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@1a
    .line 474
    return-void

    #@1b
    .line 481
    :catchall_0
    move-exception v0

    #@1c
    .line 482
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@1f
    .line 481
    throw v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 698
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 150
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 152
    invoke-super {p0}, Landroid/database/sqlite/SQLiteClosable;->finalize()V

    #@f
    .line 145
    return-void

    #@10
    .line 151
    :catchall_0
    move-exception v0

    #@11
    .line 152
    invoke-super {p0}, Landroid/database/sqlite/SQLiteClosable;->finalize()V

    #@14
    .line 151
    throw v0
.end method

.method public freeLastRow()V
    .locals 2

    #@0
    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 273
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 275
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@b
    .line 270
    return-void

    #@c
    .line 274
    :catchall_0
    move-exception v0

    #@d
    .line 275
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 274
    throw v0
.end method

.method public getBlob(II)[B
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 403
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p1, v2

    #@9
    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetBlob(JII)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .line 405
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 403
    return-object v0

    #@11
    .line 404
    :catchall_0
    move-exception v0

    #@12
    .line 405
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 404
    throw v0
.end method

.method public getDouble(II)D
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 543
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p1, v2

    #@9
    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetDouble(JII)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    .line 545
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 543
    return-wide v0

    #@11
    .line 544
    :catchall_0
    move-exception v0

    #@12
    .line 545
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 544
    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 594
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    #@3
    move-result-wide v0

    #@4
    double-to-float v0, v0

    #@5
    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 578
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public getLong(II)J
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 511
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p1, v2

    #@9
    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetLong(JII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    .line 513
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 511
    return-wide v0

    #@11
    .line 512
    :catchall_0
    move-exception v0

    #@12
    .line 513
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 512
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumRows()I
    .locals 2

    #@0
    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 227
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetNumRows(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 229
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@c
    .line 227
    return v0

    #@d
    .line 228
    :catchall_0
    move-exception v0

    #@e
    .line 229
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@11
    .line 228
    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 562
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method public getStartPosition()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@2
    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 438
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p1, v2

    #@9
    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .line 440
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 438
    return-object v0

    #@11
    .line 439
    :catchall_0
    move-exception v0

    #@12
    .line 440
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 439
    throw v0
.end method

.method public getType(II)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 373
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p1, v2

    #@9
    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetType(JII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 375
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 373
    return v0

    #@11
    .line 374
    :catchall_0
    move-exception v0

    #@12
    .line 375
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 374
    throw v0
.end method

.method public isBlob(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 305
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    #@5
    move-result v0

    #@6
    .line 306
    .local v0, "type":I
    const/4 v3, 0x4

    #@7
    if-eq v0, v3, :cond_0

    #@9
    if-nez v0, :cond_1

    #@b
    :cond_0
    :goto_0
    return v1

    #@c
    :cond_1
    move v1, v2

    #@d
    goto :goto_0
.end method

.method public isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 334
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 320
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 290
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isString(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 349
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    #@5
    move-result v0

    #@6
    .line 350
    .local v0, "type":I
    const/4 v3, 0x3

    #@7
    if-eq v0, v3, :cond_0

    #@9
    if-nez v0, :cond_1

    #@b
    :cond_0
    :goto_0
    return v1

    #@c
    :cond_1
    move v1, v2

    #@d
    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    #@0
    .prologue
    .line 717
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    #@3
    .line 716
    return-void
.end method

.method public putBlob([BII)Z
    .locals 3
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 608
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p2, v2

    #@9
    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutBlob(J[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 610
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 608
    return v0

    #@11
    .line 609
    :catchall_0
    move-exception v0

    #@12
    .line 610
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 609
    throw v0
.end method

.method public putDouble(DII)Z
    .locals 7
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    #@0
    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 660
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v4, p3, v2

    #@9
    move-wide v2, p1

    #@a
    move v5, p4

    #@b
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutDouble(JDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    .line 662
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@12
    .line 660
    return v0

    #@13
    .line 661
    :catchall_0
    move-exception v0

    #@14
    .line 662
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@17
    .line 661
    throw v0
.end method

.method public putLong(JII)Z
    .locals 7
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    #@0
    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 642
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v4, p3, v2

    #@9
    move-wide v2, p1

    #@a
    move v5, p4

    #@b
    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutLong(JJII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    .line 644
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@12
    .line 642
    return v0

    #@13
    .line 643
    :catchall_0
    move-exception v0

    #@14
    .line 644
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@17
    .line 643
    throw v0
.end method

.method public putNull(II)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 676
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p1, v2

    #@9
    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativePutNull(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 678
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 676
    return v0

    #@11
    .line 677
    :catchall_0
    move-exception v0

    #@12
    .line 678
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 677
    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    #@0
    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 625
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@7
    sub-int v2, p2, v2

    #@9
    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 627
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 625
    return v0

    #@11
    .line 626
    :catchall_0
    move-exception v0

    #@12
    .line 627
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@15
    .line 626
    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 2
    .param p1, "columnNum"    # I

    #@0
    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 247
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@5
    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 249
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@c
    .line 247
    return v0

    #@d
    .line 248
    :catchall_0
    move-exception v0

    #@e
    .line 249
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@11
    .line 248
    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 216
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@2
    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " {"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "}"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 702
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    #@3
    .line 704
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 705
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    #@a
    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 707
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@10
    .line 710
    and-int/lit8 v0, p2, 0x1

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 711
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@17
    .line 701
    :cond_0
    return-void

    #@18
    .line 706
    :catchall_0
    move-exception v0

    #@19
    .line 707
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    #@1c
    .line 706
    throw v0
.end method
