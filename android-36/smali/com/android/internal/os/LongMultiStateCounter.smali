.class public final Lcom/android/internal/os/LongMultiStateCounter;
.super Ljava/lang/Object;
.source "LongMultiStateCounter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/LongMultiStateCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field final blacklist mNativeObject:J

.field private final blacklist mStateCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 201
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter$1;

    invoke-direct {v0}, Lcom/android/internal/os/LongMultiStateCounter$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "stateCount"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string/jumbo v0, "stateCount must be greater than 0"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 76
    iput p1, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    .line 77
    invoke-static {p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    .line 78
    invoke-direct {p0}, Lcom/android/internal/os/LongMultiStateCounter;->registerNativeAllocation()V

    .line 79
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_initFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    .line 83
    invoke-direct {p0}, Lcom/android/internal/os/LongMultiStateCounter;->registerNativeAllocation()V

    .line 85
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_getStateCount(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/os/LongMultiStateCounter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static native blacklist native_addCount(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getCount(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
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

.method private static native blacklist native_incrementValue(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init(I)J
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

.method private static native blacklist native_toString(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_updateValue(JJJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_writeToParcel(JLandroid/os/Parcel;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist registerNativeAllocation()V
    .registers 5

    .line 90
    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v0, :cond_20

    .line 91
    const-class v0, Lcom/android/internal/os/LongMultiStateCounter;

    monitor-enter v0

    .line 92
    :try_start_7
    sget-object v1, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    if-nez v1, :cond_1b

    .line 93
    const-class v1, Lcom/android/internal/os/LongMultiStateCounter;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/LongMultiStateCounter;->native_getReleaseFunc()J

    move-result-wide v2

    .line 93
    invoke-static {v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 96
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 98
    :cond_20
    :goto_20
    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 99
    return-void
.end method

.method private blacklist registerNativeAllocation$ravenwood()V
    .registers 1

    .line 103
    return-void
.end method


# virtual methods
.method public blacklist addCount(J)V
    .registers 5
    .param p1, "count"    # J

    .line 154
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->native_addCount(JJ)V

    .line 155
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCount(I)J
    .registers 5
    .param p1, "state"    # I

    .line 168
    if-ltz p1, :cond_d

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_d

    .line 172
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_getCount(JI)J

    move-result-wide v0

    return-wide v0

    .line 169
    :cond_d
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

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

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
    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    return v0
.end method

.method public blacklist getTotalCount()J
    .registers 6

    .line 179
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "total":J
    const/4 v2, 0x0

    .local v2, "state":I
    :goto_3
    iget v3, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge v2, v3, :cond_11

    .line 181
    iget-wide v3, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v3, v4, v2}, Lcom/android/internal/os/LongMultiStateCounter;->native_getCount(JI)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 183
    .end local v2    # "state":I
    :cond_11
    return-wide v0
.end method

.method public blacklist incrementValue(JJ)V
    .registers 11
    .param p1, "count"    # J
    .param p3, "timestampMs"    # J

    .line 147
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "count":J
    .end local p3    # "timestampMs":J
    .local v2, "count":J
    .local v4, "timestampMs":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/LongMultiStateCounter;->native_incrementValue(JJJ)V

    .line 148
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_reset(J)V

    .line 162
    return-void
.end method

.method public blacklist setEnabled(ZJ)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 114
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->native_setEnabled(JZJ)V

    .line 115
    return-void
.end method

.method public blacklist setState(IJ)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 125
    if-ltz p1, :cond_c

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_c

    .line 129
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->native_setState(JIJ)V

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

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

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

    .line 188
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateValue(JJ)J
    .registers 11
    .param p1, "value"    # J
    .param p3, "timestampMs"    # J

    .line 140
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "value":J
    .end local p3    # "timestampMs":J
    .local v2, "value":J
    .local v4, "timestampMs":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/LongMultiStateCounter;->native_updateValue(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->native_writeToParcel(JLandroid/os/Parcel;I)V

    .line 194
    return-void
.end method
