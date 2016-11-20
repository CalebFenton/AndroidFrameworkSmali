.class public Lcom/android/server/display/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDaltonizerModeLock"
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Landroid/util/SparseArray;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@b
    .line 60
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@d
    const/4 v1, 0x2

    #@e
    const/16 v2, 0x10

    #@10
    filled-new-array {v1, v2}, [I

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [[F

    #@1a
    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    #@1c
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    #@23
    .line 67
    const/4 v0, -0x1

    #@24
    iput v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    #@26
    .line 69
    return-void
.end method

.method private static applyColorMatrix([F)V
    .locals 7
    .param p0, "m"    # [F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 162
    const-string/jumbo v4, "SurfaceFlinger"

    #@4
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    .line 163
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    #@a
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@d
    move-result-object v0

    #@e
    .line 165
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    #@11
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@14
    .line 166
    if-eqz p0, :cond_0

    #@16
    .line 167
    const/4 v4, 0x1

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 168
    const/4 v3, 0x0

    #@1b
    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    #@1d
    if-ge v3, v4, :cond_1

    #@1f
    .line 169
    aget v4, p0, v3

    #@21
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    #@24
    .line 168
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 172
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 175
    :cond_1
    const/16 v4, 0x3f7

    #@2c
    const/4 v5, 0x0

    #@2d
    const/4 v6, 0x0

    #@2e
    :try_start_0
    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 161
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    #@35
    .line 176
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    #@36
    .line 177
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "DisplayTransformManager"

    #@39
    const-string/jumbo v5, "Failed to set color transform"

    #@3c
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    goto :goto_1

    #@43
    .line 178
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@44
    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 178
    throw v4
.end method

.method private static applyDaltonizerMode(I)V
    .locals 6
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 188
    const-string/jumbo v3, "SurfaceFlinger"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 189
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    #@9
    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v0

    #@d
    .line 191
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    #@10
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@13
    .line 192
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 194
    const/16 v3, 0x3f6

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    :try_start_0
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 187
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return-void

    #@21
    .line 195
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    #@22
    .line 196
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "DisplayTransformManager"

    #@25
    const-string/jumbo v4, "Failed to set Daltonizer mode"

    #@28
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    goto :goto_0

    #@2f
    .line 197
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@30
    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 197
    throw v3
.end method

.method private computeColorMatrixLocked()[F
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v6

    #@7
    .line 121
    .local v6, "count":I
    if-nez v6, :cond_0

    #@9
    .line 122
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 125
    :cond_0
    iget-object v8, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    #@d
    .line 126
    .local v8, "result":[[F
    aget-object v0, v8, v1

    #@f
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    #@12
    .line 127
    const/4 v7, 0x0

    #@13
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    #@15
    .line 128
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, [F

    #@1d
    .line 129
    .local v4, "rhs":[F
    add-int/lit8 v0, v7, 0x1

    #@1f
    rem-int/lit8 v0, v0, 0x2

    #@21
    aget-object v0, v8, v0

    #@23
    rem-int/lit8 v2, v7, 0x2

    #@25
    aget-object v2, v8, v2

    #@27
    move v3, v1

    #@28
    move v5, v1

    #@29
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    #@2c
    .line 127
    add-int/lit8 v7, v7, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 131
    .end local v4    # "rhs":[F
    :cond_1
    rem-int/lit8 v0, v6, 0x2

    #@31
    aget-object v0, v8, v0

    #@33
    return-object v0
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .locals 4
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 76
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@3
    monitor-enter v2

    #@4
    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 78
    .local v0, "value":[F
    if-nez v0, :cond_0

    #@e
    :goto_0
    monitor-exit v2

    #@f
    return-object v1

    #@10
    :cond_0
    :try_start_1
    array-length v1, v0

    #@11
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-object v1

    #@15
    goto :goto_0

    #@16
    .line 76
    .end local v0    # "value":[F
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public getDaltonizerMode()I
    .locals 2

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 139
    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 138
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setColorMatrix(I[F)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "value"    # [F

    #@0
    .prologue
    .line 93
    if-eqz p2, :cond_0

    #@2
    array-length v1, p2

    #@3
    const/16 v2, 0x10

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Expected length: 16 (4x4 matrix), actual length: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 95
    array-length v3, p2

    #@16
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@24
    monitor-enter v2

    #@25
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, [F

    #@2d
    .line 100
    .local v0, "oldValue":[F
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([F[F)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_1

    #@33
    .line 101
    if-nez p2, :cond_2

    #@35
    .line 102
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@3a
    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v1}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    :cond_1
    monitor-exit v2

    #@42
    .line 92
    return-void

    #@43
    .line 103
    :cond_2
    if-nez v0, :cond_3

    #@45
    .line 104
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    #@47
    array-length v3, p2

    #@48
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 98
    .end local v0    # "oldValue":[F
    :catchall_0
    move-exception v1

    #@51
    monitor-exit v2

    #@52
    throw v1

    #@53
    .line 106
    .restart local v0    # "oldValue":[F
    :cond_3
    :try_start_2
    array-length v1, p2

    #@54
    const/4 v3, 0x0

    #@55
    const/4 v4, 0x0

    #@56
    invoke-static {p2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy([FI[FII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    goto :goto_0
.end method

.method public setDaltonizerMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 151
    :try_start_0
    iget v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 152
    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    #@9
    .line 153
    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 149
    return-void

    #@e
    .line 150
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
