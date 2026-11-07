.class public abstract Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.super Ljava/lang/Object;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    }
.end annotation


# static fields
.field public static final blacklist FLOAT_ACCELERATION_X:F

.field public static final blacklist FLOAT_ACCELERATION_Y:F

.field public static final blacklist FLOAT_ACCELERATION_Z:F

.field public static final blacklist FLOAT_ANIMATION_DELTA_TIME:F

.field public static final blacklist FLOAT_ANIMATION_TIME:F

.field public static final blacklist FLOAT_API_LEVEL:F

.field public static final blacklist FLOAT_CALENDAR_MONTH:F

.field public static final blacklist FLOAT_COMPONENT_HEIGHT:F

.field public static final blacklist FLOAT_COMPONENT_WIDTH:F

.field public static final blacklist FLOAT_CONTINUOUS_SEC:F

.field public static final blacklist FLOAT_DAY_OF_MONTH:F

.field public static final blacklist FLOAT_DENSITY:F

.field public static final blacklist FLOAT_FONT_SIZE:F

.field public static final blacklist FLOAT_GYRO_ROT_X:F

.field public static final blacklist FLOAT_GYRO_ROT_Y:F

.field public static final blacklist FLOAT_GYRO_ROT_Z:F

.field public static final blacklist FLOAT_LIGHT:F

.field public static final blacklist FLOAT_MAGNETIC_X:F

.field public static final blacklist FLOAT_MAGNETIC_Y:F

.field public static final blacklist FLOAT_MAGNETIC_Z:F

.field public static final blacklist FLOAT_OFFSET_TO_UTC:F

.field public static final blacklist FLOAT_TIME_IN_HR:F

.field public static final blacklist FLOAT_TIME_IN_MIN:F

.field public static final blacklist FLOAT_TIME_IN_SEC:F

.field public static final blacklist FLOAT_TOUCH_EVENT_TIME:F

.field public static final blacklist FLOAT_TOUCH_POS_X:F

.field public static final blacklist FLOAT_TOUCH_POS_Y:F

.field public static final blacklist FLOAT_TOUCH_VEL_X:F

.field public static final blacklist FLOAT_TOUCH_VEL_Y:F

.field public static final blacklist FLOAT_WEEK_DAY:F

.field public static final blacklist FLOAT_WINDOW_HEIGHT:F

.field public static final blacklist FLOAT_WINDOW_WIDTH:F

.field public static final blacklist ID_ACCELERATION_X:I = 0x11

.field public static final blacklist ID_ACCELERATION_Y:I = 0x12

.field public static final blacklist ID_ACCELERATION_Z:I = 0x13

.field public static final blacklist ID_ANIMATION_DELTA_TIME:I = 0x1f

.field public static final blacklist ID_ANIMATION_TIME:I = 0x1e

.field public static final blacklist ID_API_LEVEL:I = 0x1c

.field public static final blacklist ID_CALENDAR_MONTH:I = 0x9

.field public static final blacklist ID_COMPONENT_HEIGHT:I = 0x8

.field public static final blacklist ID_COMPONENT_WIDTH:I = 0x7

.field public static final blacklist ID_CONTINUOUS_SEC:I = 0x1

.field public static final blacklist ID_DAY_OF_MONTH:I = 0xc

.field public static final blacklist ID_DENSITY:I = 0x1b

.field public static final blacklist ID_EPOCH_SECOND:I = 0x20

.field public static final blacklist ID_FONT_SIZE:I = 0x21

.field public static final blacklist ID_GYRO_ROT_X:I = 0x14

.field public static final blacklist ID_GYRO_ROT_Y:I = 0x15

.field public static final blacklist ID_GYRO_ROT_Z:I = 0x16

.field public static final blacklist ID_LIGHT:I = 0x1a

.field public static final blacklist ID_MAGNETIC_X:I = 0x17

.field public static final blacklist ID_MAGNETIC_Y:I = 0x18

.field public static final blacklist ID_MAGNETIC_Z:I = 0x19

.field public static final blacklist ID_OFFSET_TO_UTC:I = 0xa

.field public static final blacklist ID_TIME_IN_HR:I = 0x4

.field public static final blacklist ID_TIME_IN_MIN:I = 0x3

.field public static final blacklist ID_TIME_IN_SEC:I = 0x2

.field public static final blacklist ID_TOUCH_EVENT_TIME:I = 0x1d

.field public static final blacklist ID_TOUCH_POS_X:I = 0xd

.field public static final blacklist ID_TOUCH_POS_Y:I = 0xe

.field public static final blacklist ID_TOUCH_VEL_X:I = 0xf

.field public static final blacklist ID_TOUCH_VEL_Y:I = 0x10

.field public static final blacklist ID_WEEK_DAY:I = 0xb

.field public static final blacklist ID_WINDOW_HEIGHT:I = 0x6

.field public static final blacklist ID_WINDOW_WIDTH:I = 0x5

.field public static final blacklist INT_EPOCH_SECOND:J = 0x100000020L

.field private static final blacklist MAX_OP_COUNT:I = 0x4e20


# instance fields
.field public blacklist currentTime:J

.field private blacklist mAnimate:Z

.field private blacklist mAnimationTime:F

.field blacklist mDebug:I

.field protected blacklist mDensity:F

.field private blacklist mDocLoadTime:J

.field protected blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field public blacklist mHeight:F

.field public blacklist mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field blacklist mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field private blacklist mOpCount:I

.field protected blacklist mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

.field public blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mTheme:I

.field private blacklist mUseChoreographer:Z

.field public blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 670
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DENSITY:F

    .line 673
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CONTINUOUS_SEC:F

    .line 676
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_SEC:F

    .line 679
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_MIN:F

    .line 682
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_HR:F

    .line 685
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CALENDAR_MONTH:F

    .line 688
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WEEK_DAY:F

    .line 691
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DAY_OF_MONTH:F

    .line 693
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_WIDTH:F

    .line 694
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_HEIGHT:F

    .line 695
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_WIDTH:F

    .line 696
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_HEIGHT:F

    .line 699
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_OFFSET_TO_UTC:F

    .line 702
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    .line 705
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    .line 708
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_X:F

    .line 711
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_Y:F

    .line 714
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_EVENT_TIME:F

    .line 717
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_TIME:F

    .line 720
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_DELTA_TIME:F

    .line 723
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_X:F

    .line 726
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Y:F

    .line 729
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Z:F

    .line 732
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_X:F

    .line 735
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Y:F

    .line 738
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Z:F

    .line 741
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_X:F

    .line 744
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Y:F

    .line 747
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Z:F

    .line 750
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_LIGHT:F

    .line 753
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_API_LEVEL:F

    .line 756
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_FONT_SIZE:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 51
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    .line 53
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    .line 61
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    .line 69
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return-void
.end method

.method public static blacklist getTime(F)F
    .registers 15
    .param p0, "fl"    # F

    .line 784
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 792
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    .line 793
    .local v1, "value":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v2

    .line 794
    .local v2, "month":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 795
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 796
    .local v4, "minute":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 797
    .local v5, "seconds":I
    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    .line 798
    .local v6, "currentMinute":I
    mul-int/lit8 v7, v4, 0x3c

    add-int/2addr v7, v5

    .line 799
    .local v7, "currentSeconds":I
    int-to-float v8, v7

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 800
    .local v8, "sec":F
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/DayOfWeek;->getValue()I

    move-result v9

    .line 802
    .local v9, "day_week":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    .line 803
    .local v10, "zone":Ljava/time/ZoneId;
    invoke-virtual {v0, v10}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v11

    .line 804
    .local v11, "offsetDateTime":Ljava/time/OffsetDateTime;
    invoke-virtual {v11}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v12

    .line 805
    .local v12, "offset":Ljava/time/ZoneOffset;
    packed-switch v1, :pswitch_data_5e

    .line 822
    :pswitch_4c
    return p0

    .line 820
    :pswitch_4d
    int-to-float v13, v9

    return v13

    .line 807
    :pswitch_4f
    invoke-virtual {v12}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v13

    int-to-float v13, v13

    return v13

    .line 818
    :pswitch_55
    int-to-float v13, v2

    return v13

    .line 815
    :pswitch_57
    int-to-float v13, v3

    return v13

    .line 813
    :pswitch_59
    int-to-float v13, v6

    return v13

    .line 811
    :pswitch_5b
    int-to-float v13, v7

    return v13

    .line 809
    :pswitch_5d
    return v8

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5b
        :pswitch_59
        :pswitch_57
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_55
        :pswitch_4f
        :pswitch_4d
        :pswitch_55
    .end packed-switch
.end method

.method public static blacklist isTime(F)Z
    .registers 4
    .param p0, "fl"    # F

    .line 772
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    .line 773
    .local v0, "value":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    const/16 v2, 0xc

    if-gt v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method


# virtual methods
.method public abstract blacklist addClickArea(IIFFFFI)V
.end method

.method public abstract blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .registers 2
    .param p1, "touchExpression"    # Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 327
    return-void
.end method

.method public blacklist clearLastOpCount()V
    .registers 2

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 867
    return-void
.end method

.method public abstract blacklist clearNamedDataOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedFloatOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedStringOverride(Ljava/lang/String;)V
.end method

.method public blacklist getAnimationTime()F
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    return v0
.end method

.method public blacklist getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public abstract blacklist getColor(I)I
.end method

.method public abstract blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.end method

.method public blacklist getDensity()F
    .registers 2

    .line 84
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    return v0
.end method

.method public blacklist getDocLoadTime()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    return-wide v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public abstract blacklist getFloat(I)F
.end method

.method public abstract blacklist getInteger(I)I
.end method

.method public blacklist getLastOpCount()I
    .registers 3

    .line 859
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 860
    .local v0, "count":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 861
    return v0
.end method

.method public abstract blacklist getLong(I)J
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object v0
.end method

.method public abstract blacklist getObject(I)Ljava/lang/Object;
.end method

.method public blacklist getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-object v0
.end method

.method public abstract blacklist getPathData(I)[F
.end method

.method public abstract blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public blacklist getTheme()I
    .registers 2

    .line 373
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return v0
.end method

.method public abstract blacklist hapticEffect(I)V
.end method

.method public blacklist header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 11
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "capabilities"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIJ",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 440
    .local p8, "properties":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p6, p7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRequiredCapabilities(J)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 447
    return-void
.end method

.method public blacklist incrementOpCount()V
    .registers 3

    .line 847
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 848
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    const/16 v1, 0x4e20

    if-gt v0, v1, :cond_d

    .line 851
    return-void

    .line 849
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too many operations executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAnimationEnabled()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    return v0
.end method

.method public blacklist isDebug()Z
    .registers 3

    .line 402
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isVisualDebug()Z
    .registers 3

    .line 406
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public abstract blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
.end method

.method public abstract blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
.end method

.method public abstract blacklist loadBitmap(ISSII[B)V
.end method

.method public abstract blacklist loadColor(II)V
.end method

.method public abstract blacklist loadFloat(IF)V
.end method

.method public abstract blacklist loadInteger(II)V
.end method

.method public abstract blacklist loadPathData(I[F)V
.end method

.method public abstract blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
.end method

.method public abstract blacklist loadText(ILjava/lang/String;)V
.end method

.method public abstract blacklist loadVariableName(Ljava/lang/String;II)V
.end method

.method public blacklist needsRepaint()V
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 341
    :cond_9
    return-void
.end method

.method public abstract blacklist overrideFloat(IF)V
.end method

.method public abstract blacklist overrideInteger(II)V
.end method

.method public abstract blacklist overrideText(II)V
.end method

.method public abstract blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
.end method

.method public abstract blacklist putObject(ILjava/lang/Object;)V
.end method

.method public abstract blacklist runAction(ILjava/lang/String;)V
.end method

.method public abstract blacklist runNamedAction(ILjava/lang/Object;)V
.end method

.method public blacklist setAnimationEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    .line 118
    return-void
.end method

.method public blacklist setAnimationTime(F)V
    .registers 2
    .param p1, "time"    # F

    .line 168
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    .line 169
    return-void
.end method

.method public blacklist setDebug(I)V
    .registers 2
    .param p1, "debug"    # I

    .line 410
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    .line 411
    return-void
.end method

.method public blacklist setDensity(F)V
    .registers 3
    .param p1, "density"    # F

    .line 93
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 94
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    .line 96
    :cond_d
    return-void
.end method

.method public blacklist setDocLoadTime()V
    .registers 3

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    .line 110
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 2
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 414
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 415
    return-void
.end method

.method public blacklist setDocumentContentDescription(I)V
    .registers 4
    .param p1, "contentDescriptionId"    # I

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setContentDescription(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public blacklist setMode(Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 385
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 386
    return-void
.end method

.method public abstract blacklist setNamedColorOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setNamedFloatOverride(Ljava/lang/String;F)V
.end method

.method public abstract blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedLong(Ljava/lang/String;J)V
.end method

.method public abstract blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist setPaintContext(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 2
    .param p1, "paintContext"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 394
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 395
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .registers 6
    .param p1, "scroll"    # I
    .param p2, "alignment"    # I
    .param p3, "sizing"    # I
    .param p4, "mode"    # I

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRootContentBehavior(IIII)V

    .line 463
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 2
    .param p1, "theme"    # I

    .line 377
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    .line 378
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 358
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    .line 359
    return-void
.end method

.method public blacklist supportsVersion(III)Z
    .registers 5
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->supportsVersion(III)Z

    move-result v0

    return v0
.end method

.method public abstract blacklist updateOps()I
.end method

.method public blacklist useChoreographer()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return v0
.end method
