.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;,
        Lcom/android/server/GraphicsStatsService$HistoricalData;
    }
.end annotation


# static fields
.field private static final ASHMEM_SIZE:I = 0x100

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final HISTORY_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

.field private final mLock:Ljava/lang/Object;

.field private mNextHistoricalSlot:I

.field private mTempBuffer:[B


# direct methods
.method static synthetic -wrap0(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/GraphicsStatsService;->removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    #@3
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    #@a
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@11
    .line 71
    const/16 v0, 0x14

    #@13
    new-array v0, v0, [Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@15
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@17
    .line 72
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@1a
    .line 73
    const/16 v0, 0x100

    #@1c
    new-array v0, v0, [B

    #@1e
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    #@20
    .line 76
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    #@22
    .line 75
    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v8

    #@6
    .line 145
    .local v8, "size":I
    const/4 v7, 0x0

    #@7
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    #@9
    .line 146
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    #@11
    .line 147
    .local v0, "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    #@13
    if-ne v1, p3, :cond_0

    #@15
    .line 148
    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    #@17
    if-ne v1, p2, :cond_0

    #@19
    .line 149
    return-object v0

    #@1a
    .line 145
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 154
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    #@1f
    move-object v1, p0

    #@20
    move-object v2, p1

    #@21
    move v3, p2

    #@22
    move v4, p3

    #@23
    move-object v5, p4

    #@24
    invoke-direct/range {v0 .. v5}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V

    #@27
    .line 155
    .restart local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 156
    return-object v0

    #@2d
    .line 157
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catch_0
    move-exception v6

    #@2e
    .line 158
    .local v6, "ex":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    #@30
    const-string/jumbo v2, "Failed to allocate space"

    #@33
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "file"    # Landroid/os/MemoryFile;

    #@0
    .prologue
    .line 110
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@2
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    return-object v1

    #@a
    .line 111
    :catch_0
    move-exception v0

    #@b
    .line 112
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v2, "Failed to get PFD from memory file"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method private isValid(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v3

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@b
    move-result-object v1

    #@c
    .line 82
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    if-ne v3, p1, :cond_0

    #@12
    const/4 v2, 0x1

    #@13
    :cond_0
    return v2

    #@14
    .line 83
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@15
    .line 85
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 123
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 125
    const-string/jumbo v1, "GraphicsStats"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Buffer count: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 127
    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@2c
    .line 128
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    iput-object v5, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@2e
    .line 129
    if-nez v0, :cond_0

    #@30
    .line 130
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@32
    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@34
    aget-object v0, v1, v2

    #@36
    .line 131
    if-nez v0, :cond_0

    #@38
    .line 132
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@3a
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    invoke-direct {v0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>(Lcom/android/server/GraphicsStatsService$HistoricalData;)V

    #@3d
    .line 135
    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_0
    iget-object v1, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    #@3f
    iget v2, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    #@41
    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@43
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/GraphicsStatsService$HistoricalData;->update(Ljava/lang/String;ILandroid/os/MemoryFile;)V

    #@46
    .line 136
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    #@49
    .line 138
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@4b
    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@4d
    aput-object v0, v1, v2

    #@4f
    .line 139
    iget v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@51
    add-int/lit8 v1, v1, 0x1

    #@53
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@55
    array-length v2, v2

    #@56
    rem-int/2addr v1, v2

    #@57
    iput v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@59
    .line 122
    return-void

    #@5a
    .line 123
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit v2

    #@5c
    throw v1
.end method

.method private removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 163
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_2

    #@7
    .line 164
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@9
    aget-object v0, v2, v1

    #@b
    .line 165
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-eqz v0, :cond_1

    #@d
    iget v2, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    #@f
    if-ne v2, p1, :cond_1

    #@11
    .line 166
    iget-object v2, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    #@13
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    .line 165
    if-eqz v2, :cond_1

    #@19
    .line 167
    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@1b
    if-ne v1, v2, :cond_0

    #@1d
    .line 168
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@1f
    aput-object v5, v2, v1

    #@21
    .line 173
    :goto_1
    return-object v0

    #@22
    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@24
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@26
    iget v4, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@28
    aget-object v3, v3, v4

    #@2a
    aput-object v3, v2, v1

    #@2c
    .line 171
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@2e
    iget v3, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    #@30
    aput-object v5, v2, v3

    #@32
    goto :goto_1

    #@33
    .line 163
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 176
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_2
    return-object v5
.end method

.method private requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@6
    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 181
    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.DUMP"

    #@6
    const-string/jumbo v7, "GraphicsStatsService"

    #@9
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 182
    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v5

    #@f
    .line 183
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v6

    #@16
    if-ge v3, v6, :cond_0

    #@18
    .line 184
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    #@20
    .line 185
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    const-string/jumbo v6, "Package: "

    #@23
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 186
    iget-object v6, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    #@28
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 187
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 189
    :try_start_1
    iget-object v6, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@30
    iget-object v7, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    #@32
    const/4 v8, 0x0

    #@33
    const/4 v9, 0x0

    #@34
    const/16 v10, 0x100

    #@36
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/MemoryFile;->readBytes([BIII)I

    #@39
    .line 190
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    #@3b
    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 194
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@41
    .line 183
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 191
    :catch_0
    move-exception v2

    #@45
    .line 192
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Failed to dump"

    #@48
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_1

    #@4c
    .line 182
    .end local v0    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@4d
    monitor-exit v5

    #@4e
    throw v4

    #@4f
    .line 196
    :cond_0
    :try_start_3
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@51
    array-length v7, v6

    #@52
    :goto_2
    if-ge v4, v7, :cond_2

    #@54
    aget-object v1, v6, v4

    #@56
    .line 197
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-nez v1, :cond_1

    #@58
    .line 196
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@5a
    goto :goto_2

    #@5b
    .line 198
    :cond_1
    const-string/jumbo v8, "Package: "

    #@5e
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    .line 199
    iget-object v8, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    #@63
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 200
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@69
    .line 201
    iget-object v8, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    #@6b
    invoke-static {v8, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V

    #@6e
    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    goto :goto_3

    #@72
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_2
    monitor-exit v5

    #@73
    .line 180
    return-void
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    .line 92
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v3

    #@8
    .line 93
    .local v3, "pid":I
    const/4 v2, 0x0

    #@9
    .line 94
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 96
    .local v0, "callingIdentity":J
    :try_start_0
    invoke-direct {p0, v4, p1}, Lcom/android/server/GraphicsStatsService;->isValid(ILjava/lang/String;)Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_0

    #@13
    .line 97
    new-instance v5, Landroid/os/RemoteException;

    #@15
    const-string/jumbo v6, "Invalid package name"

    #@18
    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 102
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v5

    #@1d
    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 102
    throw v5

    #@21
    .line 99
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    #@23
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 100
    :try_start_2
    invoke-direct {p0, p2, v4, v3, p1}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    move-result-object v2

    #@28
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 105
    return-object v2

    #@2d
    .line 99
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v6

    #@2e
    :try_start_4
    monitor-exit v5

    #@2f
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
