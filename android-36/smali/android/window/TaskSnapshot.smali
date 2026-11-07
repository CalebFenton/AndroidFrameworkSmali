.class public Landroid/window/TaskSnapshot;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshot$Builder;,
        Landroid/window/TaskSnapshot$ReferenceFlags;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REFERENCE_BROADCAST:I = 0x1

.field public static final blacklist REFERENCE_CACHE:I = 0x2

.field public static final blacklist REFERENCE_CONTENT_SUGGESTION:I = 0x8

.field public static final blacklist REFERENCE_NONE:I = 0x0

.field public static final blacklist REFERENCE_PERSIST:I = 0x4

.field public static final blacklist REFERENCE_WRITE_TO_PARCEL:I = 0x10


# instance fields
.field private final blacklist mAppearance:I

.field private final blacklist mCaptureTime:J

.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContentInsets:Landroid/graphics/Rect;

.field private final blacklist mHasImeSurface:Z

.field private final blacklist mId:J

.field private blacklist mInternalReferences:I

.field private final blacklist mIsLowResolution:Z

.field private final blacklist mIsRealSnapshot:Z

.field private final blacklist mIsTranslucent:Z

.field private final blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private final blacklist mOrientation:I

.field private final blacklist mRotation:I

.field private blacklist mSafeSnapshotReleaser:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTaskSize:Landroid/graphics/Point;

.field private final blacklist mTopActivityComponent:Landroid/content/ComponentName;

.field private final blacklist mUiMode:I

.field private final blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 390
    new-instance v0, Landroid/window/TaskSnapshot$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZI)V
    .registers 36
    .param p1, "id"    # J
    .param p3, "captureTime"    # J
    .param p5, "topActivityComponent"    # Landroid/content/ComponentName;
    .param p6, "snapshot"    # Landroid/hardware/HardwareBuffer;
    .param p7, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p8, "orientation"    # I
    .param p9, "rotation"    # I
    .param p10, "taskSize"    # Landroid/graphics/Point;
    .param p11, "contentInsets"    # Landroid/graphics/Rect;
    .param p12, "letterboxInsets"    # Landroid/graphics/Rect;
    .param p13, "isLowResolution"    # Z
    .param p14, "isRealSnapshot"    # Z
    .param p15, "windowingMode"    # I
    .param p16, "appearance"    # I
    .param p17, "isTranslucent"    # Z
    .param p18, "hasImeSurface"    # Z
    .param p19, "uiMode"    # I

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 113
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/window/TaskSnapshot;->mId:J

    .line 114
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    .line 115
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 116
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 117
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/ColorSpace;->getId()I

    move-result v7

    if-gez v7, :cond_22

    .line 118
    sget-object v7, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    goto :goto_24

    :cond_22
    move-object/from16 v7, p7

    :goto_24
    iput-object v7, v0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 119
    move/from16 v7, p8

    iput v7, v0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 120
    move/from16 v8, p9

    iput v8, v0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 121
    new-instance v9, Landroid/graphics/Point;

    move-object/from16 v10, p10

    invoke-direct {v9, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v9, v0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 122
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v11, p11

    invoke-direct {v9, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v12, p12

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 124
    move/from16 v9, p13

    iput-boolean v9, v0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 125
    move/from16 v13, p14

    iput-boolean v13, v0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 126
    move/from16 v14, p15

    iput v14, v0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 127
    move/from16 v15, p16

    iput v15, v0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 128
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 129
    move/from16 v2, p18

    iput-boolean v2, v0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 130
    move/from16 v1, p19

    iput v1, v0, Landroid/window/TaskSnapshot;->mUiMode:I

    .line 131
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    .line 136
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 137
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "colorSpaceId":I
    if-ltz v0, :cond_37

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 140
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_3d

    .line 141
    :cond_37
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    :goto_3d
    iput-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mRotation:I

    .line 144
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 145
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 146
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskSnapshot-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addReference(I)V
    .registers 3
    .param p1, "usage"    # I

    monitor-enter p0

    .line 358
    :try_start_1
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 359
    monitor-exit p0

    return-void

    .line 357
    .end local p0    # "this":Landroid/window/TaskSnapshot;
    .end local p1    # "usage":I
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppearance()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    return v0
.end method

.method public blacklist getCaptureTime()J
    .registers 3

    .line 168
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    return-wide v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public greylist getContentInsets()Landroid/graphics/Rect;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 160
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    return-wide v0
.end method

.method public blacklist getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getOrientation()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public blacklist getRotation()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    return v0
.end method

.method public greylist getSnapshot()Landroid/graphics/GraphicBuffer;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getTaskSize()Landroid/graphics/Point;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getTopActivityComponent()Landroid/content/ComponentName;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUiMode()I
    .registers 2

    .line 295
    iget v0, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    return v0
.end method

.method public blacklist hasImeSurface()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    return v0
.end method

.method public greylist isLowResolution()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    return v0
.end method

.method public greylist isRealSnapshot()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    return v0
.end method

.method public declared-synchronized blacklist removeReference(I)V
    .registers 4
    .param p1, "usage"    # I

    monitor-enter p0

    .line 367
    :try_start_1
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    .line 368
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->releaseSnapshotAggressively()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 369
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 370
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;

    if-eqz v0, :cond_29

    .line 371
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2e

    .line 373
    .end local p0    # "this":Landroid/window/TaskSnapshot;
    :cond_29
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 376
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    .line 366
    .end local p1    # "usage":I
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public declared-synchronized blacklist setSafeRelease(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/HardwareBuffer;",
            ">;)V"
        }
    .end annotation

    .local p1, "releaser":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/HardwareBuffer;>;"
    monitor-enter p0

    .line 384
    :try_start_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->safeReleaseSnapshotAggressively()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_d

    if-nez v0, :cond_9

    .line 385
    monitor-exit p0

    return-void

    .line 387
    :cond_9
    :try_start_9
    iput-object p1, p0, Landroid/window/TaskSnapshot;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    .line 388
    monitor-exit p0

    return-void

    .line 383
    .end local p0    # "this":Landroid/window/TaskSnapshot;
    .end local p1    # "releaser":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/HardwareBuffer;>;"
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 330
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 331
    .local v0, "width":I
    :goto_d
    iget-object v2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_17

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    .line 332
    .local v1, "height":I
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshot{ mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCaptureTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTopActivityComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    .line 335
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mColorSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 337
    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTaskSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    .line 340
    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    .line 341
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLetterboxInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 342
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsLowResolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsRealSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAppearance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsTranslucent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasImeSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInternalReferences="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUiMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 305
    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 306
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 307
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 312
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 314
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 316
    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 319
    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    iget v0, p0, Landroid/window/TaskSnapshot;->mUiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    monitor-enter p0

    .line 322
    :try_start_64
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_6e

    .line 323
    invoke-virtual {p0, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 325
    :cond_6e
    monitor-exit p0

    .line 326
    return-void

    .line 325
    :catchall_70
    move-exception v0

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_70

    throw v0
.end method
