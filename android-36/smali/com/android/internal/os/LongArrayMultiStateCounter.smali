.class public final Lcom/android/internal/os/LongArrayMultiStateCounter;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/LongArrayMultiStateCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mLength:I

.field final blacklist mNativeObject:J

.field private final blacklist mStateCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 228
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter$1;

    invoke-direct {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "stateCount"    # I
    .param p2, "arrayLength"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "stateCount must be greater than 0"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 73
    iput p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    .line 74
    iput p2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    .line 75
    invoke-static {p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    .line 76
    invoke-direct {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->registerNativeAllocation()V

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_initFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    .line 99
    invoke-direct {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->registerNativeAllocation()V

    .line 101
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getStateCount(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    .line 102
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getArrayLength(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/os/LongArrayMultiStateCounter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static native blacklist native_addCounts(J[J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_copyStatesFrom(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getArrayLength(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getCounts(J[JI)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_getReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getStateCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_incrementValues(J[JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_init(II)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_initFromParcel(Landroid/os/Parcel;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_reset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_setEnabled(JZJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_setState(JIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_setValues(JI[J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_toString(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_updateValues(J[JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_writeToParcel(JLandroid/os/Parcel;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist registerNativeAllocation()V
    .registers 5

    .line 81
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v0, :cond_20

    .line 82
    const-class v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    monitor-enter v0

    .line 83
    :try_start_7
    sget-object v1, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v1, :cond_1b

    .line 84
    const-class v1, Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getReleaseFunc()J

    move-result-wide v2

    .line 84
    invoke-static {v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 88
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 90
    :cond_20
    :goto_20
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method private blacklist registerNativeAllocation$ravenwood()V
    .registers 1

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist addCounts([J)V
    .registers 5
    .param p1, "counts"    # [J

    .line 183
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    if-ne v0, v1, :cond_b

    .line 187
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_addCounts(J[J)V

    .line 188
    return-void

    .line 184
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V
    .registers 6
    .param p1, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 136
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    iget v1, p1, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    if-ne v0, v1, :cond_e

    .line 140
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    iget-wide v2, p1, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_copyStatesFrom(JJ)V

    .line 141
    return-void

    .line 137
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State count is not the same: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getArrayLength()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    return v0
.end method

.method public blacklist getCounts([JI)Z
    .registers 6
    .param p1, "counts"    # [J
    .param p2, "state"    # I

    .line 202
    if-ltz p2, :cond_38

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    if-ge p2, v0, :cond_38

    .line 206
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    if-ne v0, v1, :cond_12

    .line 210
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_getCounts(J[JI)Z

    move-result v0

    return v0

    .line 207
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStateCount()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    return v0
.end method

.method public blacklist incrementValues([JJ)V
    .registers 6
    .param p1, "values"    # [J
    .param p2, "timestampMs"    # J

    .line 163
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_incrementValues(J[JJ)V

    .line 164
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 194
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_reset(J)V

    .line 195
    return-void
.end method

.method public blacklist setEnabled(ZJ)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 118
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_setEnabled(JZJ)V

    .line 119
    return-void
.end method

.method public blacklist setState(IJ)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 125
    if-ltz p1, :cond_c

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_c

    .line 129
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_setState(JIJ)V

    .line 130
    return-void

    .line 126
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setValues(I[J)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "values"    # [J

    .line 147
    if-ltz p1, :cond_37

    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_37

    .line 151
    array-length v0, p2

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    if-ne v0, v1, :cond_11

    .line 155
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_setValues(JI[J)V

    .line 156
    return-void

    .line 152
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mStateCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 215
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateValues([JJ)V
    .registers 7
    .param p1, "values"    # [J
    .param p2, "timestampMs"    # J

    .line 172
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    if-ne v0, v1, :cond_b

    .line 176
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_updateValues(J[JJ)V

    .line 177
    return-void

    .line 173
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 220
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->native_writeToParcel(JLandroid/os/Parcel;I)V

    .line 221
    return-void
.end method
