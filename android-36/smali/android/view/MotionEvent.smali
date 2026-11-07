.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$ToolType;,
        Landroid/view/MotionEvent$Classification;,
        Landroid/view/MotionEvent$Button;,
        Landroid/view/MotionEvent$Axis;,
        Landroid/view/MotionEvent$Flag;,
        Landroid/view/MotionEvent$ActionMasked;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BUTTON_PRESS:I = 0xb

.field public static final whitelist ACTION_BUTTON_RELEASE:I = 0xc

.field public static final whitelist ACTION_CANCEL:I = 0x3

.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_HOVER_ENTER:I = 0x9

.field public static final whitelist ACTION_HOVER_EXIT:I = 0xa

.field public static final whitelist ACTION_HOVER_MOVE:I = 0x7

.field public static final whitelist ACTION_MASK:I = 0xff

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final whitelist ACTION_OUTSIDE:I = 0x4

.field public static final whitelist ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_DOWN:I = 0x5

.field public static final whitelist ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final whitelist ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final whitelist ACTION_POINTER_UP:I = 0x6

.field public static final whitelist ACTION_SCROLL:I = 0x8

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist AXIS_BRAKE:I = 0x17

.field public static final whitelist AXIS_DISTANCE:I = 0x18

.field public static final whitelist AXIS_GAS:I = 0x16

.field public static final whitelist AXIS_GENERIC_1:I = 0x20

.field public static final whitelist AXIS_GENERIC_10:I = 0x29

.field public static final whitelist AXIS_GENERIC_11:I = 0x2a

.field public static final whitelist AXIS_GENERIC_12:I = 0x2b

.field public static final whitelist AXIS_GENERIC_13:I = 0x2c

.field public static final whitelist AXIS_GENERIC_14:I = 0x2d

.field public static final whitelist AXIS_GENERIC_15:I = 0x2e

.field public static final whitelist AXIS_GENERIC_16:I = 0x2f

.field public static final whitelist AXIS_GENERIC_2:I = 0x21

.field public static final whitelist AXIS_GENERIC_3:I = 0x22

.field public static final whitelist AXIS_GENERIC_4:I = 0x23

.field public static final whitelist AXIS_GENERIC_5:I = 0x24

.field public static final whitelist AXIS_GENERIC_6:I = 0x25

.field public static final whitelist AXIS_GENERIC_7:I = 0x26

.field public static final whitelist AXIS_GENERIC_8:I = 0x27

.field public static final whitelist AXIS_GENERIC_9:I = 0x28

.field public static final whitelist AXIS_GESTURE_PINCH_SCALE_FACTOR:I = 0x34

.field public static final whitelist AXIS_GESTURE_SCROLL_X_DISTANCE:I = 0x32

.field public static final whitelist AXIS_GESTURE_SCROLL_Y_DISTANCE:I = 0x33

.field public static final blacklist AXIS_GESTURE_SWIPE_FINGER_COUNT:I = 0x35

.field public static final whitelist AXIS_GESTURE_X_OFFSET:I = 0x30

.field public static final whitelist AXIS_GESTURE_Y_OFFSET:I = 0x31

.field public static final whitelist AXIS_HAT_X:I = 0xf

.field public static final whitelist AXIS_HAT_Y:I = 0x10

.field public static final whitelist AXIS_HSCROLL:I = 0xa

.field public static final whitelist AXIS_LTRIGGER:I = 0x11

.field public static final whitelist AXIS_ORIENTATION:I = 0x8

.field public static final whitelist AXIS_PRESSURE:I = 0x2

.field public static final whitelist AXIS_RELATIVE_X:I = 0x1b

.field public static final whitelist AXIS_RELATIVE_Y:I = 0x1c

.field public static final whitelist AXIS_RTRIGGER:I = 0x12

.field public static final whitelist AXIS_RUDDER:I = 0x14

.field public static final whitelist AXIS_RX:I = 0xc

.field public static final whitelist AXIS_RY:I = 0xd

.field public static final whitelist AXIS_RZ:I = 0xe

.field public static final whitelist AXIS_SCROLL:I = 0x1a

.field public static final whitelist AXIS_SIZE:I = 0x3

.field private static final greylist-max-o AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist AXIS_THROTTLE:I = 0x13

.field public static final whitelist AXIS_TILT:I = 0x19

.field public static final whitelist AXIS_TOOL_MAJOR:I = 0x6

.field public static final whitelist AXIS_TOOL_MINOR:I = 0x7

.field public static final whitelist AXIS_TOUCH_MAJOR:I = 0x4

.field public static final whitelist AXIS_TOUCH_MINOR:I = 0x5

.field public static final whitelist AXIS_VSCROLL:I = 0x9

.field public static final whitelist AXIS_WHEEL:I = 0x15

.field public static final whitelist AXIS_X:I = 0x0

.field public static final whitelist AXIS_Y:I = 0x1

.field public static final whitelist AXIS_Z:I = 0xb

.field public static final whitelist BUTTON_BACK:I = 0x8

.field public static final whitelist BUTTON_FORWARD:I = 0x10

.field public static final whitelist BUTTON_PRIMARY:I = 0x1

.field public static final whitelist BUTTON_SECONDARY:I = 0x2

.field public static final whitelist BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final whitelist BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final greylist-max-o BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final whitelist BUTTON_TERTIARY:I = 0x4

.field public static final whitelist CLASSIFICATION_AMBIGUOUS_GESTURE:I = 0x1

.field public static final whitelist CLASSIFICATION_DEEP_PRESS:I = 0x2

.field public static final blacklist CLASSIFICATION_MULTI_FINGER_SWIPE:I = 0x4

.field public static final whitelist CLASSIFICATION_NONE:I = 0x0

.field public static final whitelist CLASSIFICATION_PINCH:I = 0x5

.field public static final whitelist CLASSIFICATION_TWO_FINGER_SWIPE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field public static final whitelist EDGE_BOTTOM:I = 0x2

.field public static final whitelist EDGE_LEFT:I = 0x4

.field public static final whitelist EDGE_RIGHT:I = 0x8

.field public static final whitelist EDGE_TOP:I = 0x1

.field public static final whitelist FLAG_CANCELED:I = 0x20

.field public static final greylist-max-o FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY_TOOL:I = 0x1000

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final greylist-max-o FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final blacklist FLAG_NO_FOCUS_CHANGE:I = 0x40

.field public static final greylist-max-o FLAG_TAINTED:I = -0x80000000

.field public static final greylist-max-o FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final whitelist FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final whitelist FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final greylist-max-r HISTORY_CURRENT:I = -0x80000000

.field private static final blacklist INVALID_CURSOR_POSITION:F = NaNf

.field public static final whitelist INVALID_POINTER_ID:I = -0x1

.field private static final greylist-max-o LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-o NS_PER_MS:J = 0xf4240L

.field private static final blacklist TAG:Ljava/lang/String; = "MotionEvent"

.field public static final whitelist TOOL_TYPE_ERASER:I = 0x4

.field public static final whitelist TOOL_TYPE_FINGER:I = 0x1

.field public static final whitelist TOOL_TYPE_MOUSE:I = 0x3

.field public static final blacklist TOOL_TYPE_PALM:I = 0x5

.field public static final whitelist TOOL_TYPE_STYLUS:I = 0x2

.field private static final greylist-max-o TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TOOL_TYPE_UNKNOWN:I

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/MotionEvent;

.field private static greylist-max-o gRecyclerUsed:I

.field private static final greylist-max-o gSharedTempLock:Ljava/lang/Object;

.field private static greylist-max-o gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static greylist-max-o gSharedTempPointerIndexMap:[I

.field private static greylist-max-o gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private greylist-max-p mNativePtr:J

.field private greylist-max-o mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 40

    .line 1425
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1427
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1428
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "AXIS_X"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1429
    const-string v1, "AXIS_Y"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1430
    const-string v1, "AXIS_PRESSURE"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1431
    const-string v1, "AXIS_SIZE"

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1432
    const-string v1, "AXIS_TOUCH_MAJOR"

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1433
    const/4 v1, 0x5

    const-string v7, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1434
    const/4 v1, 0x6

    const-string v7, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1435
    const/4 v1, 0x7

    const-string v7, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1436
    const/16 v1, 0x8

    const-string v7, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1437
    const/16 v1, 0x9

    const-string v7, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1438
    const/16 v1, 0xa

    const-string v7, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1439
    const/16 v1, 0xb

    const-string v7, "AXIS_Z"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1440
    const/16 v1, 0xc

    const-string v7, "AXIS_RX"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1441
    const/16 v1, 0xd

    const-string v7, "AXIS_RY"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1442
    const/16 v1, 0xe

    const-string v7, "AXIS_RZ"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1443
    const/16 v1, 0xf

    const-string v7, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1444
    const/16 v1, 0x10

    const-string v7, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1445
    const/16 v1, 0x11

    const-string v7, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1446
    const/16 v1, 0x12

    const-string v7, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1447
    const/16 v1, 0x13

    const-string v7, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1448
    const/16 v1, 0x14

    const-string v7, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1449
    const/16 v1, 0x15

    const-string v7, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1450
    const/16 v1, 0x16

    const-string v7, "AXIS_GAS"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1451
    const/16 v1, 0x17

    const-string v7, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1452
    const/16 v1, 0x18

    const-string v7, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1453
    const/16 v1, 0x19

    const-string v7, "AXIS_TILT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1454
    const/16 v1, 0x1a

    const-string v7, "AXIS_SCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1455
    const/16 v1, 0x1b

    const-string v7, "AXIS_REALTIVE_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1456
    const/16 v1, 0x1c

    const-string v7, "AXIS_REALTIVE_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1457
    const/16 v1, 0x20

    const-string v7, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1458
    const/16 v1, 0x21

    const-string v7, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1459
    const/16 v1, 0x22

    const-string v7, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1460
    const/16 v1, 0x23

    const-string v7, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1461
    const/16 v1, 0x24

    const-string v7, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1462
    const/16 v1, 0x25

    const-string v7, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1463
    const/16 v1, 0x26

    const-string v7, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1464
    const/16 v1, 0x27

    const-string v7, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1465
    const/16 v1, 0x28

    const-string v7, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1466
    const/16 v1, 0x29

    const-string v7, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1467
    const/16 v1, 0x2a

    const-string v7, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1468
    const/16 v1, 0x2b

    const-string v7, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1469
    const/16 v1, 0x2c

    const-string v7, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1470
    const/16 v1, 0x2d

    const-string v7, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1471
    const/16 v1, 0x2e

    const-string v7, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1472
    const/16 v1, 0x2f

    const-string v7, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1473
    const/16 v1, 0x30

    const-string v7, "AXIS_GESTURE_X_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1474
    const/16 v1, 0x31

    const-string v7, "AXIS_GESTURE_Y_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1475
    const/16 v1, 0x32

    const-string v7, "AXIS_GESTURE_SCROLL_X_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1476
    const/16 v1, 0x33

    const-string v7, "AXIS_GESTURE_SCROLL_Y_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1477
    const/16 v1, 0x34

    const-string v7, "AXIS_GESTURE_PINCH_SCALE_FACTOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1478
    const/16 v1, 0x35

    const-string v7, "AXIS_GESTURE_SWIPE_FINGER_COUNT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1603
    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    const-string v8, "BUTTON_PRIMARY"

    const-string v9, "BUTTON_SECONDARY"

    const-string v10, "BUTTON_TERTIARY"

    const-string v11, "BUTTON_BACK"

    const-string v12, "BUTTON_FORWARD"

    const-string v13, "BUTTON_STYLUS_PRIMARY"

    const-string v14, "BUTTON_STYLUS_SECONDARY"

    const-string v15, "0x00000080"

    const-string v16, "0x00000100"

    const-string v17, "0x00000200"

    const-string v18, "0x00000400"

    const-string v19, "0x00000800"

    const-string v20, "0x00001000"

    const-string v21, "0x00002000"

    const-string v22, "0x00004000"

    const-string v23, "0x00008000"

    const-string v24, "0x00010000"

    const-string v25, "0x00020000"

    const-string v26, "0x00040000"

    const-string v27, "0x00080000"

    const-string v28, "0x00100000"

    const-string v29, "0x00200000"

    const-string v30, "0x00400000"

    const-string v31, "0x00800000"

    const-string v32, "0x01000000"

    const-string v33, "0x02000000"

    const-string v34, "0x04000000"

    const-string v35, "0x08000000"

    const-string v36, "0x10000000"

    const-string v37, "0x20000000"

    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1777
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1779
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1780
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1781
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1782
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1783
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1784
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1796
    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1802
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 4227
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1946
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1947
    return-void
.end method

.method public static whitelist actionToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "action"    # I

    .line 4008
    packed-switch p0, :pswitch_data_66

    .line 4032
    :pswitch_3
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    .line 4033
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    const-string v2, ")"

    packed-switch v1, :pswitch_data_84

    .line 4039
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4030
    .end local v0    # "index":I
    :pswitch_15
    const-string v0, "ACTION_BUTTON_RELEASE"

    return-object v0

    .line 4028
    :pswitch_18
    const-string v0, "ACTION_BUTTON_PRESS"

    return-object v0

    .line 4026
    :pswitch_1b
    const-string v0, "ACTION_HOVER_EXIT"

    return-object v0

    .line 4024
    :pswitch_1e
    const-string v0, "ACTION_HOVER_ENTER"

    return-object v0

    .line 4022
    :pswitch_21
    const-string v0, "ACTION_SCROLL"

    return-object v0

    .line 4020
    :pswitch_24
    const-string v0, "ACTION_HOVER_MOVE"

    return-object v0

    .line 4016
    :pswitch_27
    const-string v0, "ACTION_OUTSIDE"

    return-object v0

    .line 4014
    :pswitch_2a
    const-string v0, "ACTION_CANCEL"

    return-object v0

    .line 4018
    :pswitch_2d
    const-string v0, "ACTION_MOVE"

    return-object v0

    .line 4012
    :pswitch_30
    const-string v0, "ACTION_UP"

    return-object v0

    .line 4010
    :pswitch_33
    const-string v0, "ACTION_DOWN"

    return-object v0

    .line 4037
    .restart local v0    # "index":I
    :pswitch_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_UP("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4035
    :pswitch_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x5
        :pswitch_4e
        :pswitch_36
    .end packed-switch
.end method

.method private static greylist-max-o appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 3995
    .local p0, "defValue":Ljava/lang/Object;, "TT;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3996
    return-void
.end method

.method public static whitelist axisFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    .line 4064
    const-string v0, "AXIS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4065
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4066
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    .line 4067
    .local v0, "axis":I
    if-ltz v0, :cond_17

    .line 4068
    return v0

    .line 4072
    .end local v0    # "axis":I
    :cond_17
    const/16 v0, 0xa

    :try_start_19
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1d} :catch_1e

    return v0

    .line 4073
    :catch_1e
    move-exception v0

    .line 4074
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist axisToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "axis"    # I

    .line 4051
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    .line 4052
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method public static greylist-max-o buttonStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "buttonState"    # I

    .line 4089
    if-nez p0, :cond_5

    .line 4090
    const-string v0, "0"

    return-object v0

    .line 4092
    :cond_5
    const/4 v0, 0x0

    .line 4093
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 4094
    .local v1, "i":I
    :goto_7
    if-eqz p0, :cond_30

    .line 4095
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 4096
    .local v2, "isSet":Z
    :goto_10
    ushr-int/lit8 p0, p0, 0x1

    .line 4097
    if-eqz v2, :cond_2c

    .line 4098
    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 4099
    .local v3, "name":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 4100
    if-nez p0, :cond_1d

    .line 4101
    return-object v3

    .line 4103
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "result":Ljava/lang/StringBuilder;
    .local v4, "result":Ljava/lang/StringBuilder;
    goto :goto_2c

    .line 4105
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .restart local v0    # "result":Ljava/lang/StringBuilder;
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4109
    .end local v3    # "name":Ljava/lang/String;
    :cond_2c
    :goto_2c
    nop

    .end local v2    # "isSet":Z
    add-int/lit8 v1, v1, 0x1

    .line 4110
    goto :goto_7

    .line 4111
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final greylist-max-o clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 3840
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 3841
    return p1

    .line 3842
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    .line 3843
    return p2

    .line 3845
    :cond_a
    return p0
.end method

.method public static blacklist classificationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "classification"    # I

    .line 4122
    packed-switch p0, :pswitch_data_16

    .line 4134
    const-string v0, "UNKNOWN"

    return-object v0

    .line 4132
    :pswitch_6
    const-string v0, "MULTI_FINGER_SWIPE"

    return-object v0

    .line 4130
    :pswitch_9
    const-string v0, "TWO_FINGER_SWIPE"

    return-object v0

    .line 4128
    :pswitch_c
    const-string v0, "DEEP_PRESS"

    return-object v0

    .line 4126
    :pswitch_f
    const-string v0, "AMBIGUOUS_GESTURE"

    return-object v0

    .line 4124
    :pswitch_12
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 4241
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 4242
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 4243
    return-object v0
.end method

.method public static blacklist createRotateMatrix(III)Landroid/graphics/Matrix;
    .registers 22
    .param p0, "rotation"    # I
    .param p1, "rotatedFrameWidth"    # I
    .param p2, "rotatedFrameHeight"    # I

    .line 4204
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v0, :cond_10

    .line 4205
    new-instance v3, Landroid/graphics/Matrix;

    sget-object v4, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v3

    .line 4208
    :cond_10
    const/4 v3, 0x0

    .line 4209
    .local v3, "values":[F
    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x3

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    if-ne v0, v14, :cond_3c

    .line 4210
    const/16 v17, 0x8

    int-to-float v4, v2

    new-array v10, v10, [F

    aput v16, v10, v9

    aput v15, v10, v14

    aput v16, v10, v13

    aput v12, v10, v11

    aput v16, v10, v8

    aput v4, v10, v7

    aput v16, v10, v6

    aput v16, v10, v5

    aput v15, v10, v17

    move-object v3, v10

    goto :goto_74

    .line 4213
    :cond_3c
    const/16 v17, 0x8

    if-ne v0, v13, :cond_5a

    .line 4214
    int-to-float v4, v1

    move/from16 v18, v5

    int-to-float v5, v2

    new-array v10, v10, [F

    aput v12, v10, v9

    aput v16, v10, v14

    aput v4, v10, v13

    aput v16, v10, v11

    aput v12, v10, v8

    aput v5, v10, v7

    aput v16, v10, v6

    aput v16, v10, v18

    aput v15, v10, v17

    move-object v3, v10

    goto :goto_74

    .line 4217
    :cond_5a
    move/from16 v18, v5

    if-ne v0, v11, :cond_74

    .line 4218
    int-to-float v4, v1

    new-array v5, v10, [F

    aput v16, v5, v9

    aput v12, v5, v14

    aput v4, v5, v13

    aput v15, v5, v11

    aput v16, v5, v8

    aput v16, v5, v7

    aput v16, v5, v6

    aput v16, v5, v18

    aput v15, v5, v17

    move-object v3, v5

    .line 4222
    :cond_74
    :goto_74
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 4223
    .local v4, "toOrient":Landroid/graphics/Matrix;
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4224
    return-object v4
.end method

.method private static final greylist-max-o ensureSharedTempPointerCapacity(I)V
    .registers 3
    .param p0, "desiredCapacity"    # I

    .line 1808
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    if-ge v0, p0, :cond_28

    .line 1810
    :cond_9
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_13

    :cond_11
    const/16 v0, 0x8

    .line 1811
    .local v0, "capacity":I
    :goto_13
    if-ge v0, p0, :cond_18

    .line 1812
    mul-int/lit8 v0, v0, 0x2

    goto :goto_13

    .line 1814
    :cond_18
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1815
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1816
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1818
    .end local v0    # "capacity":I
    :cond_28
    return-void
.end method

.method private blacklist initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z
    .registers 45
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "displayId"    # I
    .param p4, "action"    # I
    .param p5, "flags"    # I
    .param p6, "edgeFlags"    # I
    .param p7, "metaState"    # I
    .param p8, "buttonState"    # I
    .param p9, "classification"    # I
    .param p10, "xOffset"    # F
    .param p11, "yOffset"    # F
    .param p12, "xPrecision"    # F
    .param p13, "yPrecision"    # F
    .param p14, "downTimeNanos"    # J
    .param p16, "eventTimeNanos"    # J
    .param p18, "pointerCount"    # I
    .param p19, "pointerIds"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p20, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;

    .line 2341
    move-object/from16 v0, p0

    const/4 v1, 0x3

    move/from16 v7, p4

    if-ne v7, v1, :cond_b

    .line 2342
    or-int/lit8 v1, p5, 0x20

    move v8, v1

    .end local p5    # "flags":I
    .local v1, "flags":I
    goto :goto_d

    .line 2341
    .end local v1    # "flags":I
    .restart local p5    # "flags":I
    :cond_b
    move/from16 v8, p5

    .line 2344
    .end local p5    # "flags":I
    .local v8, "flags":I
    :goto_d
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    invoke-static/range {v2 .. v23}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2348
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3f

    .line 2349
    const/4 v1, 0x0

    return v1

    .line 2351
    :cond_3f
    invoke-direct {v0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    .line 2352
    const/4 v1, 0x1

    return v1
.end method

.method private static native greylist-max-o nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native blacklist nativeApplyTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetClassification(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetDisplayId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native greylist-max-o nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native greylist nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetSurfaceRotation(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetXCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetYCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native greylist-max-o nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetCursorPosition(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDisplayId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetSource(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSplit(JJI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static greylist obtain()Landroid/view/MotionEvent;
    .registers 3

    .line 1964
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1965
    :try_start_3
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1966
    .local v1, "ev":Landroid/view/MotionEvent;
    if-nez v1, :cond_e

    .line 1967
    new-instance v2, Landroid/view/MotionEvent;

    invoke-direct {v2}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v2

    .line 1969
    :cond_e
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1970
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1971
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 1972
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1973
    invoke-virtual {v1}, Landroid/view/MotionEvent;->prepareForReuse()V

    .line 1974
    return-object v1

    .line 1971
    .end local v1    # "ev":Landroid/view/MotionEvent;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static whitelist obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 31
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I

    .line 2183
    const/4 v15, 0x2

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;
    .registers 39
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "displayId"    # I

    .line 2224
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 2225
    .local v1, "ev":Landroid/view/MotionEvent;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v22

    .line 2226
    const/4 v0, 0x1

    :try_start_8
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2227
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 2228
    .local v20, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v0, 0x0

    aget-object v2, v20, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 2229
    aget-object v2, v20, v0

    iput v0, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 2231
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2232
    .local v21, "pc":[Landroid/view/MotionEvent$PointerCoords;
    aget-object v2, v21, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 2233
    aget-object v2, v21, v0

    move/from16 v3, p5

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2234
    aget-object v2, v21, v0

    move/from16 v4, p6

    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2235
    aget-object v2, v21, v0

    move/from16 v5, p7

    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 2236
    aget-object v0, v21, v0

    move/from16 v2, p8

    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 2238
    const-wide/32 v6, 0xf4240

    mul-long v15, p0, v6

    mul-long v17, p2, v6

    const/16 v19, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p4

    move/from16 v8, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v2, p12

    move/from16 v7, p13

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-direct/range {v1 .. v21}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    .line 2243
    monitor-exit v22

    return-object v1

    .line 2244
    .end local v20    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v21    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_59
    move-exception v0

    monitor-exit v22
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public static whitelist obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    .line 2305
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v7

    return-object v7
.end method

.method public static whitelist obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 30
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "pressure"    # F
    .param p9, "size"    # F
    .param p10, "metaState"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2284
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v14

    return-object v14
.end method

.method public static whitelist obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 33
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerIds"    # [I
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "xPrecision"    # F
    .param p10, "yPrecision"    # F
    .param p11, "deviceId"    # I
    .param p12, "edgeFlags"    # I
    .param p13, "source"    # I
    .param p14, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2138
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2139
    :try_start_3
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2140
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object v8, v0

    .line 2141
    .local v8, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    move/from16 v7, p5

    if-ge v0, v7, :cond_1c

    .line 2142
    aget-object v2, v8, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 2143
    aget-object v2, v8, v0

    aget v3, p6, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 2141
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2145
    .end local v0    # "i":I
    :cond_1c
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2148
    .end local v8    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .registers 34
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I

    .line 2099
    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v17, p15

    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .registers 36
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "displayId"    # I
    .param p16, "flags"    # I

    .line 2061
    const/16 v18, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-static/range {v1 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;
    .registers 40
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "displayId"    # I
    .param p16, "flags"    # I
    .param p17, "classification"    # I

    .line 2013
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 2014
    .local v1, "ev":Landroid/view/MotionEvent;
    const-wide/32 v2, 0xf4240

    mul-long v15, p0, v2

    mul-long v17, p2, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v2, p12

    move/from16 v7, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v6, p16

    move/from16 v10, p17

    invoke-direct/range {v1 .. v21}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    .line 2018
    .local v0, "success":Z
    if-nez v0, :cond_3b

    .line 2019
    const-string v2, "MotionEvent"

    const-string v3, "Could not initialize MotionEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2021
    const/4 v2, 0x0

    return-object v2

    .line 2023
    :cond_3b
    return-object v1
.end method

.method public static whitelist obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7
    .param p0, "other"    # Landroid/view/MotionEvent;

    .line 2313
    if-eqz p0, :cond_12

    .line 2317
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2318
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2319
    return-object v0

    .line 2314
    .end local v0    # "ev":Landroid/view/MotionEvent;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other motion event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7
    .param p0, "other"    # Landroid/view/MotionEvent;

    .line 2327
    if-eqz p0, :cond_12

    .line 2331
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2332
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 2333
    return-object v0

    .line 2328
    .end local v0    # "ev":Landroid/view/MotionEvent;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other motion event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setCanceled(Z)V
    .registers 6
    .param p1, "canceled"    # Z

    .line 2535
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2536
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_b

    or-int/lit8 v3, v0, 0x20

    goto :goto_d

    :cond_b
    and-int/lit8 v3, v0, -0x21

    :goto_d
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2537
    return-void
.end method

.method private blacklist setCursorPosition(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3207
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetCursorPosition(JFF)V

    .line 3208
    return-void
.end method

.method public static greylist-max-o toolTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "toolType"    # I

    .line 4146
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4147
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private blacklist updateCursorPosition()V
    .registers 6

    .line 3933
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_e

    .line 3934
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, v0, v0}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    .line 3935
    return-void

    .line 3938
    :cond_e
    const/4 v0, 0x0

    .line 3939
    .local v0, "x":F
    const/4 v1, 0x0

    .line 3941
    .local v1, "y":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3942
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_24

    .line 3943
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    .line 3944
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 3942
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3949
    .end local v3    # "i":I
    :cond_24
    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 3950
    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 3951
    invoke-direct {p0, v0, v1}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    .line 3952
    return-void
.end method


# virtual methods
.method public final whitelist addBatch(JFFFFI)V
    .registers 16
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    .line 3729
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3730
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3731
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object v6, v0

    .line 3732
    .local v6, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    aget-object v2, v6, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3733
    aget-object v2, v6, v0

    iput p3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3734
    aget-object v2, v6, v0

    iput p4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3735
    aget-object v2, v6, v0

    iput p5, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3736
    aget-object v0, v6, v0

    iput p6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3738
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2c

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p1

    move v7, p7

    .end local p7    # "metaState":I
    .local v7, "metaState":I
    :try_start_27
    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3739
    .end local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    monitor-exit v1

    .line 3740
    return-void

    .line 3739
    .end local v7    # "metaState":I
    .restart local p7    # "metaState":I
    :catchall_2c
    move-exception v0

    move v7, p7

    move-object p7, v0

    .end local p7    # "metaState":I
    .restart local v7    # "metaState":I
    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    throw p7

    :catchall_31
    move-exception v0

    move-object p7, v0

    goto :goto_2f
.end method

.method public final whitelist addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    .line 3754
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    .end local p3    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local p4    # "metaState":I
    .local v4, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v5, "metaState":I
    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3755
    return-void
.end method

.method public final greylist addBatch(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3771
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v1

    .line 3772
    .local v1, "action":I
    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 v3, 0x7

    if-eq v1, v3, :cond_e

    .line 3773
    return v0

    .line 3775
    :cond_e
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    if-eq v1, v3, :cond_17

    .line 3776
    return v0

    .line 3779
    :cond_17
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v4

    if-ne v3, v4, :cond_d4

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3780
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v4

    if-ne v3, v4, :cond_d4

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3781
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v3

    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v4

    if-ne v3, v4, :cond_d4

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3782
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v4

    if-ne v3, v4, :cond_d4

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3783
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v3

    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3784
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v4

    if-eq v3, v4, :cond_5f

    goto/16 :goto_d4

    .line 3788
    :cond_5f
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    .line 3789
    .local v3, "pointerCount":I
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v4

    if-eq v3, v4, :cond_6e

    .line 3790
    return v0

    .line 3793
    :cond_6e
    sget-object v4, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3794
    :try_start_71
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3795
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3796
    .local v2, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v5, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object v10, v5

    .line 3798
    .local v10, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7e
    const/4 v12, 0x1

    if-ge v5, v3, :cond_9e

    .line 3799
    iget-wide v6, p0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v8, v2, v0

    invoke-static {v6, v7, v5, v8}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3800
    iget-wide v6, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v8, v2, v12

    invoke-static {v6, v7, v5, v8}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3801
    aget-object v6, v2, v0

    aget-object v7, v2, v12

    invoke-static {v6, v7}, Landroid/view/MotionEvent$PointerProperties;->-$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 3802
    monitor-exit v4

    return v0

    .line 3798
    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 3806
    .end local v5    # "i":I
    :cond_9e
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v11

    .line 3807
    .local v11, "metaState":I
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    .line 3808
    .local v0, "historySize":I
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_ab
    if-gt v5, v0, :cond_cf

    .line 3809
    if-ne v5, v0, :cond_b2

    const/high16 v6, -0x80000000

    goto :goto_b3

    :cond_b2
    move v6, v5

    :goto_b3
    move v13, v6

    .line 3811
    .local v13, "historyPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b5
    if-ge v6, v3, :cond_c1

    .line 3812
    iget-wide v7, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v9, v10, v6

    invoke-static {v7, v8, v6, v13, v9}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3811
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    .line 3815
    .end local v6    # "i":I
    :cond_c1
    iget-wide v6, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7, v13}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v8

    .line 3816
    .local v8, "eventTimeNanos":J
    iget-wide v6, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v6 .. v11}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3808
    .end local v8    # "eventTimeNanos":J
    .end local v13    # "historyPos":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 3818
    .end local v0    # "historySize":I
    .end local v2    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v5    # "h":I
    .end local v10    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v11    # "metaState":I
    :cond_cf
    monitor-exit v4

    .line 3819
    return v12

    .line 3818
    :catchall_d1
    move-exception v0

    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_71 .. :try_end_d3} :catchall_d1

    throw v0

    .line 3785
    .end local v3    # "pointerCount":I
    :cond_d4
    :goto_d4
    return v0
.end method

.method public blacklist applyTransform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 3706
    if-eqz p1, :cond_8

    .line 3710
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeApplyTransform(JLandroid/graphics/Matrix;)V

    .line 3711
    return-void

    .line 3707
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o cancel()V
    .registers 2

    .line 4249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    .line 4250
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4251
    return-void
.end method

.method public final greylist-max-o clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .registers 33
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 3853
    move-object/from16 v1, p0

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v2

    .line 3854
    .local v2, "ev":Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    .line 3855
    :try_start_9
    iget-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v20

    move/from16 v0, v20

    .line 3857
    .local v0, "pointerCount":I
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3858
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3859
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_f5

    .line 3861
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    const/high16 v4, -0x80000000

    if-ge v3, v0, :cond_5d

    .line 3862
    :try_start_1d
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v21, v3

    invoke-static {v5, v6, v3, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3863
    iget-wide v5, v1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v22, v3

    invoke-static {v5, v6, v3, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3864
    aget-object v4, v22, v3

    aget-object v5, v22, v3

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_52

    move/from16 v6, p1

    move/from16 v7, p3

    :try_start_35
    invoke-static {v5, v6, v7}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3865
    aget-object v4, v22, v3

    aget-object v5, v22, v3

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_4e

    move/from16 v8, p2

    move/from16 v9, p4

    :try_start_45
    invoke-static {v5, v8, v9}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3861
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3878
    .end local v0    # "pointerCount":I
    .end local v3    # "i":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_4e
    move-exception v0

    move/from16 v8, p2

    goto :goto_59

    :catchall_52
    move-exception v0

    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v7, p3

    :goto_59
    move/from16 v9, p4

    goto/16 :goto_f6

    .line 3861
    .restart local v0    # "pointerCount":I
    .restart local v3    # "i":I
    .restart local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :cond_5d
    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v7, p3

    move/from16 v9, p4

    .line 3867
    .end local v3    # "i":I
    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v10, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3868
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v10

    iget-wide v11, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3869
    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v11

    iget-wide v12, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v12

    iget-wide v13, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3870
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v13

    iget-wide v14, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v14

    move/from16 v16, v5

    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3871
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v4
    :try_end_97
    .catchall {:try_start_45 .. :try_end_97} :catchall_f5

    move-object v5, v2

    move/from16 v17, v3

    .end local v2    # "ev":Landroid/view/MotionEvent;
    .local v5, "ev":Landroid/view/MotionEvent;
    :try_start_9a
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v2

    move/from16 v18, v2

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3872
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetRawXOffset(J)F

    move-result v2

    move/from16 v19, v2

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetRawYOffset(J)F

    move-result v2

    move/from16 v20, v2

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3873
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v2

    move/from16 v24, v2

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v2

    move/from16 v25, v2

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3874
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v2

    move-wide/from16 v26, v2

    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3875
    const/high16 v15, -0x80000000

    invoke-static {v2, v3, v15}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v2
    :try_end_d2
    .catchall {:try_start_9a .. :try_end_d2} :catchall_f2

    .line 3867
    move v6, v11

    move v7, v12

    move v8, v13

    move v9, v14

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v20, v0

    move-wide/from16 v18, v2

    move-object v2, v5

    move v5, v10

    move/from16 v3, v17

    move v10, v4

    move/from16 v4, v16

    move-wide/from16 v16, v26

    .end local v0    # "pointerCount":I
    .end local v5    # "ev":Landroid/view/MotionEvent;
    .restart local v2    # "ev":Landroid/view/MotionEvent;
    .local v20, "pointerCount":I
    :try_start_ed
    invoke-direct/range {v2 .. v22}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    .line 3877
    monitor-exit v23

    return-object v2

    .line 3878
    .end local v2    # "ev":Landroid/view/MotionEvent;
    .end local v20    # "pointerCount":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v5    # "ev":Landroid/view/MotionEvent;
    :catchall_f2
    move-exception v0

    move-object v2, v5

    .end local v5    # "ev":Landroid/view/MotionEvent;
    .restart local v2    # "ev":Landroid/view/MotionEvent;
    goto :goto_f6

    :catchall_f5
    move-exception v0

    :goto_f6
    monitor-exit v23
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_f5

    throw v0
.end method

.method public bridge synthetic greylist copy()Landroid/view/InputEvent;
    .registers 2

    .line 197
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public greylist copy()Landroid/view/MotionEvent;
    .registers 2

    .line 2359
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1952
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 1953
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 1954
    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 1957
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1958
    nop

    .line 1959
    return-void

    .line 1957
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1958
    throw v0
.end method

.method public final whitelist findPointerIndex(I)I
    .registers 4
    .param p1, "pointerId"    # I

    .line 2789
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final whitelist getAction()I
    .registers 3

    .line 2447
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionButton()I
    .registers 3

    .line 3028
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getActionIndex()I
    .registers 3

    .line 2470
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final whitelist getActionMasked()I
    .registers 3

    .line 2456
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final whitelist getAxisValue(I)F
    .registers 6
    .param p1, "axis"    # I

    .line 2739
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getAxisValue(II)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .line 2933
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getButtonState()I
    .registers 3

    .line 2993
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public whitelist getClassification()I
    .registers 3

    .line 3016
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDeviceId()I
    .registers 3

    .line 2406
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 3

    .line 2429
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getDownTime()J
    .registers 5

    .line 2590
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist getEdgeFlags()I
    .registers 3

    .line 3633
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getEventTime()J
    .registers 5

    .line 2613
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 4

    .line 2630
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .registers 3

    .line 2517
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(II)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    .line 3415
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalAxisValue(III)F
    .registers 6
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    .line 3596
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalEventTime(I)J
    .registers 6
    .param p1, "pos"    # I

    .line 3239
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getHistoricalEventTimeNanos(I)J
    .registers 4
    .param p1, "pos"    # I

    .line 3263
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getHistoricalOrientation(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3398
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalOrientation(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3577
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .line 3617
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3618
    return-void
.end method

.method public final whitelist getHistoricalPressure(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3308
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalPressure(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3469
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalSize(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3323
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalSize(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3487
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMajor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3368
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMajor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3541
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMinor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3383
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalToolMinor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3559
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMajor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3338
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMajor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3505
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMinor(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3353
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalTouchMinor(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3523
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalX(I)F
    .registers 5
    .param p1, "pos"    # I

    .line 3278
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalX(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3433
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalY(I)F
    .registers 6
    .param p1, "pos"    # I

    .line 3293
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistoricalY(II)F
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .line 3451
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getHistorySize()I
    .registers 3

    .line 3219
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public blacklist getId()I
    .registers 3

    .line 2400
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetId(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMetaState()I
    .registers 3

    .line 2976
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation()F
    .registers 6

    .line 2726
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/16 v4, 0x8

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getOrientation(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2917
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .line 2947
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2948
    return-void
.end method

.method public final whitelist getPointerCount()I
    .registers 3

    .line 2747
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getPointerId(I)I
    .registers 4
    .param p1, "pointerIndex"    # I

    .line 2759
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final greylist getPointerIdBits()I
    .registers 6

    .line 3887
    const/4 v0, 0x0

    .line 3888
    .local v0, "idBits":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v1

    .line 3889
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_17

    .line 3890
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v0, v3

    .line 3889
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3892
    .end local v2    # "i":I
    :cond_17
    return v0
.end method

.method public final whitelist getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .registers 5
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    .line 2962
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2963
    return-void
.end method

.method public final whitelist getPressure()F
    .registers 6

    .line 2666
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getPressure(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2845
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getRawX()F
    .registers 5

    .line 3054
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getRawX(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 3109
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getRawY()F
    .registers 6

    .line 3068
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getRawY(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 3150
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSize()F
    .registers 6

    .line 2676
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSize(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2857
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getSource()I
    .registers 3

    .line 2412
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceRotation()I
    .registers 3

    .line 4183
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSurfaceRotation(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor()F
    .registers 6

    .line 2706
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMajor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2893
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor()F
    .registers 6

    .line 2716
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x7

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getToolMinor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2905
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public whitelist getToolType(I)I
    .registers 4
    .param p1, "pointerIndex"    # I

    .line 2777
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor()F
    .registers 6

    .line 2686
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMajor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2869
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor()F
    .registers 6

    .line 2696
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x5

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getTouchMinor(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2881
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX()F
    .registers 5

    .line 2643
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getX(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2811
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getXCursorPosition()F
    .registers 3

    .line 3185
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public blacklist getXDispatchLocation(I)F
    .registers 4
    .param p1, "pointerIndex"    # I

    .line 4266
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4267
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v0

    .line 4268
    .local v0, "xCursorPosition":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 4269
    return v0

    .line 4272
    .end local v0    # "xCursorPosition":F
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final whitelist getXPrecision()F
    .registers 3

    .line 3162
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist getY()F
    .registers 6

    .line 2656
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final whitelist getY(I)F
    .registers 6
    .param p1, "pointerIndex"    # I

    .line 2833
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public blacklist getYCursorPosition()F
    .registers 3

    .line 3196
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYCursorPosition(J)F

    move-result v0

    return v0
.end method

.method public blacklist getYDispatchLocation(I)F
    .registers 4
    .param p1, "pointerIndex"    # I

    .line 4283
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4284
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v0

    .line 4285
    .local v0, "yCursorPosition":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 4286
    return v0

    .line 4289
    .end local v0    # "yCursorPosition":F
    :cond_13
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public final whitelist getYPrecision()F
    .registers 3

    .line 3174
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final whitelist isButtonPressed(I)Z
    .registers 4
    .param p1, "button"    # I

    .line 4164
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4165
    return v0

    .line 4167
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public blacklist isHoverEvent()Z
    .registers 3

    .line 2506
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    .line 2507
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    .line 2508
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 2506
    :goto_1b
    return v0
.end method

.method public final greylist-max-o isHoverExitPending()Z
    .registers 3

    .line 2573
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2574
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist isInjectedFromAccessibilityService()Z
    .registers 3

    .line 2558
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2559
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist isInjectedFromAccessibilityTool()Z
    .registers 3

    .line 2567
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2568
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist isStylusPointer()Z
    .registers 4

    .line 2493
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2494
    .local v0, "actionIndex":I
    const/16 v1, 0x4002

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2495
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    .line 2496
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 2494
    :goto_1d
    return v1
.end method

.method public final greylist-max-o isTainted()Z
    .registers 3

    .line 2523
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2524
    .local v0, "flags":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public greylist-max-o isTargetAccessibilityFocus()Z
    .registers 3

    .line 2541
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2542
    .local v0, "flags":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public final greylist-max-o isTouchEvent()Z
    .registers 3

    .line 2485
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isWithinBoundsNoHistory(FFFF)Z
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 3828
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3829
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2e

    .line 3830
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-static {v3, v4, v5, v1, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    .line 3831
    .local v3, "x":F
    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8, v2, v1, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v2

    .line 3832
    .local v2, "y":F
    cmpg-float v4, v3, p1

    if-ltz v4, :cond_2d

    cmpl-float v4, v3, p3

    if-gtz v4, :cond_2d

    cmpg-float v4, v2, p2

    if-ltz v4, :cond_2d

    cmpl-float v4, v2, p4

    if-lez v4, :cond_2a

    goto :goto_2d

    .line 3829
    .end local v2    # "y":F
    .end local v3    # "x":F
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3833
    .restart local v2    # "y":F
    .restart local v3    # "x":F
    :cond_2d
    :goto_2d
    return v5

    .line 3836
    .end local v1    # "i":I
    .end local v2    # "y":F
    .end local v3    # "x":F
    :cond_2e
    return v2
.end method

.method public final whitelist offsetLocation(FF)V
    .registers 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 3667
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_9

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_e

    .line 3668
    :cond_9
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    .line 3670
    :cond_e
    return-void
.end method

.method public final whitelist recycle()V
    .registers 4

    .line 2368
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2370
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2371
    :try_start_6
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_18

    .line 2372
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 2373
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 2374
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 2376
    :cond_18
    monitor-exit v0

    .line 2377
    return-void

    .line 2376
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final greylist scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 2392
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2393
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    .line 2395
    :cond_b
    return-void
.end method

.method public final whitelist setAction(I)V
    .registers 5
    .param p1, "action"    # I

    .line 3650
    and-int/lit16 v0, p1, 0xff

    .line 3651
    .local v0, "actionMasked":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 3652
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/MotionEvent;->setCanceled(Z)V

    goto :goto_12

    .line 3653
    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    goto :goto_12

    .line 3656
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/MotionEvent;->setCanceled(Z)V

    .line 3658
    :goto_12
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    .line 3659
    return-void
.end method

.method public final greylist setActionButton(I)V
    .registers 4
    .param p1, "button"    # I

    .line 3040
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    .line 3041
    return-void
.end method

.method public final blacklist setButtonState(I)V
    .registers 4
    .param p1, "buttonState"    # I

    .line 3004
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    .line 3005
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 2436
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetDisplayId(JI)V

    .line 2437
    return-void
.end method

.method public final greylist setDownTime(J)V
    .registers 7
    .param p1, "downTime"    # J

    .line 2601
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    .line 2602
    return-void
.end method

.method public final whitelist setEdgeFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 3643
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    .line 3644
    return-void
.end method

.method public greylist-max-o setHoverExitPending(Z)V
    .registers 6
    .param p1, "hoverExitPending"    # Z

    .line 2579
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2580
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_b

    .line 2581
    or-int/lit8 v3, v0, 0x4

    goto :goto_d

    .line 2582
    :cond_b
    and-int/lit8 v3, v0, -0x5

    .line 2580
    :goto_d
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2583
    return-void
.end method

.method public final whitelist setLocation(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3680
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3681
    .local v0, "oldX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3682
    .local v1, "oldY":F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3683
    return-void
.end method

.method public final whitelist setSource(I)V
    .registers 4
    .param p1, "source"    # I

    .line 2418
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2419
    return-void

    .line 2421
    :cond_7
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)V

    .line 2422
    invoke-direct {p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    .line 2423
    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .registers 6
    .param p1, "tainted"    # Z

    .line 2530
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2531
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_c

    const/high16 v3, -0x80000000

    or-int/2addr v3, v0

    goto :goto_10

    :cond_c
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    :goto_10
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2532
    return-void
.end method

.method public greylist-max-o setTargetAccessibilityFocus(Z)V
    .registers 6
    .param p1, "targetsFocus"    # Z

    .line 2547
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2548
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_c

    .line 2549
    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v3, v0

    goto :goto_10

    .line 2550
    :cond_c
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v3, v0

    .line 2548
    :goto_10
    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2551
    return-void
.end method

.method public final greylist split(I)Landroid/view/MotionEvent;
    .registers 8
    .param p1, "idBits"    # I

    .line 3906
    if-eqz p1, :cond_4a

    .line 3910
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 3911
    .local v0, "currentBits":I
    and-int v1, v0, p1

    if-ne v1, p1, :cond_19

    .line 3917
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 3918
    .local v1, "event":Landroid/view/MotionEvent;
    iget-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v4, v5, p1}, Landroid/view/MotionEvent;->nativeSplit(JJI)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3919
    return-object v1

    .line 3912
    .end local v1    # "event":Landroid/view/MotionEvent;
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idBits must be a non-empty subset of the pointer IDs from this MotionEvent, got idBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3907
    .end local v0    # "currentBits":I
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idBits must contain at least one pointer from this motion event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 3956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3957
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "MotionEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3958
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, ", actionButton="

    invoke-static {v2, v0, v3, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3960
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 3961
    .local v1, "pointerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    const/4 v4, 0x1

    if-ge v3, v1, :cond_ad

    .line 3962
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", id["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v0, v6, v8}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3963
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 3964
    .local v5, "x":F
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 3966
    .local v6, "y":F
    const-string v8, ", x["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3967
    const-string v8, ", y["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3969
    sget-object v8, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", toolType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3970
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    invoke-static {v8}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v8

    .line 3969
    invoke-static {v4, v0, v7, v8}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3961
    .end local v5    # "x":F
    .end local v6    # "y":F
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a

    .line 3973
    .end local v3    # "i":I
    :cond_ad
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ", buttonState="

    invoke-static {v2, v0, v5, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3974
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v5

    .line 3975
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v6

    .line 3974
    const-string v7, ", classification="

    invoke-static {v5, v0, v7, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3976
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", metaState="

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3977
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", flags=0x"

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3978
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ", edgeFlags=0x"

    invoke-static {v2, v0, v6, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3979
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, ", pointerCount="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v0, v4, v5}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3980
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", historySize="

    invoke-static {v2, v0, v4, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3981
    const-string v2, ", eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3983
    const-string v2, ", downTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3984
    const-string v2, ", deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3985
    const-string v2, ", source=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3986
    const-string v2, ", displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3987
    const-string v2, ", eventId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3989
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final whitelist transform(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 3691
    if-eqz p1, :cond_8

    .line 3695
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    .line 3696
    return-void

    .line 3692
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4254
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4255
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 4256
    return-void
.end method
