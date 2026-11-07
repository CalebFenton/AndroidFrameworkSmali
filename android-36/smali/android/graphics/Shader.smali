.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$NoImagePreloadHolder;,
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private greylist-max-o mCleaner:Ljava/lang/Runnable;

.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mLocalMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mNativeInstance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Shader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 47
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/graphics/ColorSpace;)V
    .registers 4
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 54
    if-eqz p1, :cond_d

    .line 60
    iget-object v0, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    .line 61
    return-void

    .line 55
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use Shader() to create a Shader with no ColorSpace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist convertColors([I)[J
    .registers 5
    .param p0, "colors"    # [I

    .line 215
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 219
    array-length v0, p0

    new-array v0, v0, [J

    .line 220
    .local v0, "colorLongs":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 221
    aget v2, p0, v1

    invoke-static {v2}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 224
    .end local v1    # "i":I
    :cond_16
    return-object v0

    .line 216
    .end local v0    # "colorLongs":[J
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist detectColorSpace([J)Landroid/graphics/ColorSpace;
    .registers 5
    .param p0, "colors"    # [J

    .line 236
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_23

    .line 239
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 240
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 241
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-ne v2, v0, :cond_1a

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 242
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All colors must be in the same ColorSpace!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v1    # "i":I
    :cond_22
    return-object v0

    .line 237
    .end local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist discardNativeInstanceLocked()V
    .registers 5

    .line 165
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 166
    iget-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    .line 168
    iput-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 170
    :cond_12
    return-void
.end method

.method private static native greylist-max-o nativeGetFinalizer()J
.end method


# virtual methods
.method protected blacklist colorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/graphics/Shader;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method protected blacklist createNativeInstance(JZ)J
    .registers 6
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 153
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final declared-synchronized greylist-max-o discardNativeInstance()V
    .registers 2

    monitor-enter p0

    .line 160
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/Shader;->discardNativeInstanceLocked()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 161
    monitor-exit p0

    return-void

    .line 159
    .end local p0    # "this":Landroid/graphics/Shader;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public whitelist getLocalMatrix(Landroid/graphics/Matrix;)Z
    .registers 3
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .line 118
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 120
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o getNativeInstance()J
    .registers 3

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized blacklist getNativeInstance(Z)J
    .registers 6
    .param p1, "filterFromPaint"    # Z

    monitor-enter p0

    .line 187
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/graphics/Shader;->shouldDiscardNativeInstance(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    invoke-direct {p0}, Landroid/graphics/Shader;->discardNativeInstanceLocked()V

    .line 191
    .end local p0    # "this":Landroid/graphics/Shader;
    :cond_a
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 192
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_18

    .line 193
    move-wide v0, v2

    goto :goto_1e

    :cond_18
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v0

    .line 192
    :goto_1e
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Shader;->createNativeInstance(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    .line 194
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    .line 195
    sget-object v0, Landroid/graphics/Shader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Shader;->mNativeInstance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    .line 199
    :cond_34
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-wide v0

    .line 186
    .end local p1    # "filterFromPaint":Z
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public whitelist setLocalMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "localM"    # Landroid/graphics/Matrix;

    .line 133
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_29

    .line 139
    :cond_9
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_18

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_33

    .line 142
    :cond_18
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 143
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_33

    .line 134
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_33

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    .line 147
    :cond_33
    :goto_33
    return-void
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .registers 3
    .param p1, "filterBitmap"    # Z

    .line 178
    const/4 v0, 0x0

    return v0
.end method
