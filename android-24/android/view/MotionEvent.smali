.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$1;,
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RELATIVE_X:I = 0x1b

.field public static final AXIS_RELATIVE_Y:I = 0x1c

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SCROLL:I = 0x1a

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:J

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 1207
    new-instance v1, Landroid/util/SparseArray;

    #@7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@a
    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    #@c
    .line 1209
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    #@e
    .line 1210
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "AXIS_X"

    #@11
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@14
    .line 1211
    const-string/jumbo v1, "AXIS_Y"

    #@17
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@1a
    .line 1212
    const-string/jumbo v1, "AXIS_PRESSURE"

    #@1d
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@20
    .line 1213
    const-string/jumbo v1, "AXIS_SIZE"

    #@23
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@26
    .line 1214
    const-string/jumbo v1, "AXIS_TOUCH_MAJOR"

    #@29
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@2c
    .line 1215
    const-string/jumbo v1, "AXIS_TOUCH_MINOR"

    #@2f
    const/4 v2, 0x5

    #@30
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@33
    .line 1216
    const-string/jumbo v1, "AXIS_TOOL_MAJOR"

    #@36
    const/4 v2, 0x6

    #@37
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@3a
    .line 1217
    const-string/jumbo v1, "AXIS_TOOL_MINOR"

    #@3d
    const/4 v2, 0x7

    #@3e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@41
    .line 1218
    const-string/jumbo v1, "AXIS_ORIENTATION"

    #@44
    const/16 v2, 0x8

    #@46
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@49
    .line 1219
    const-string/jumbo v1, "AXIS_VSCROLL"

    #@4c
    const/16 v2, 0x9

    #@4e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@51
    .line 1220
    const-string/jumbo v1, "AXIS_HSCROLL"

    #@54
    const/16 v2, 0xa

    #@56
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@59
    .line 1221
    const-string/jumbo v1, "AXIS_Z"

    #@5c
    const/16 v2, 0xb

    #@5e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@61
    .line 1222
    const-string/jumbo v1, "AXIS_RX"

    #@64
    const/16 v2, 0xc

    #@66
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@69
    .line 1223
    const-string/jumbo v1, "AXIS_RY"

    #@6c
    const/16 v2, 0xd

    #@6e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@71
    .line 1224
    const-string/jumbo v1, "AXIS_RZ"

    #@74
    const/16 v2, 0xe

    #@76
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@79
    .line 1225
    const-string/jumbo v1, "AXIS_HAT_X"

    #@7c
    const/16 v2, 0xf

    #@7e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@81
    .line 1226
    const-string/jumbo v1, "AXIS_HAT_Y"

    #@84
    const/16 v2, 0x10

    #@86
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@89
    .line 1227
    const-string/jumbo v1, "AXIS_LTRIGGER"

    #@8c
    const/16 v2, 0x11

    #@8e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@91
    .line 1228
    const-string/jumbo v1, "AXIS_RTRIGGER"

    #@94
    const/16 v2, 0x12

    #@96
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@99
    .line 1229
    const-string/jumbo v1, "AXIS_THROTTLE"

    #@9c
    const/16 v2, 0x13

    #@9e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@a1
    .line 1230
    const-string/jumbo v1, "AXIS_RUDDER"

    #@a4
    const/16 v2, 0x14

    #@a6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@a9
    .line 1231
    const-string/jumbo v1, "AXIS_WHEEL"

    #@ac
    const/16 v2, 0x15

    #@ae
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@b1
    .line 1232
    const-string/jumbo v1, "AXIS_GAS"

    #@b4
    const/16 v2, 0x16

    #@b6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@b9
    .line 1233
    const-string/jumbo v1, "AXIS_BRAKE"

    #@bc
    const/16 v2, 0x17

    #@be
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@c1
    .line 1234
    const-string/jumbo v1, "AXIS_DISTANCE"

    #@c4
    const/16 v2, 0x18

    #@c6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@c9
    .line 1235
    const-string/jumbo v1, "AXIS_TILT"

    #@cc
    const/16 v2, 0x19

    #@ce
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@d1
    .line 1236
    const-string/jumbo v1, "AXIS_SCROLL"

    #@d4
    const/16 v2, 0x1a

    #@d6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@d9
    .line 1237
    const-string/jumbo v1, "AXIS_REALTIVE_X"

    #@dc
    const/16 v2, 0x1b

    #@de
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@e1
    .line 1238
    const-string/jumbo v1, "AXIS_REALTIVE_Y"

    #@e4
    const/16 v2, 0x1c

    #@e6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@e9
    .line 1239
    const-string/jumbo v1, "AXIS_GENERIC_1"

    #@ec
    const/16 v2, 0x20

    #@ee
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@f1
    .line 1240
    const-string/jumbo v1, "AXIS_GENERIC_2"

    #@f4
    const/16 v2, 0x21

    #@f6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@f9
    .line 1241
    const-string/jumbo v1, "AXIS_GENERIC_3"

    #@fc
    const/16 v2, 0x22

    #@fe
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@101
    .line 1242
    const-string/jumbo v1, "AXIS_GENERIC_4"

    #@104
    const/16 v2, 0x23

    #@106
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@109
    .line 1243
    const-string/jumbo v1, "AXIS_GENERIC_5"

    #@10c
    const/16 v2, 0x24

    #@10e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@111
    .line 1244
    const-string/jumbo v1, "AXIS_GENERIC_6"

    #@114
    const/16 v2, 0x25

    #@116
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@119
    .line 1245
    const-string/jumbo v1, "AXIS_GENERIC_7"

    #@11c
    const/16 v2, 0x26

    #@11e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@121
    .line 1246
    const-string/jumbo v1, "AXIS_GENERIC_8"

    #@124
    const/16 v2, 0x27

    #@126
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@129
    .line 1247
    const-string/jumbo v1, "AXIS_GENERIC_9"

    #@12c
    const/16 v2, 0x28

    #@12e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@131
    .line 1248
    const-string/jumbo v1, "AXIS_GENERIC_10"

    #@134
    const/16 v2, 0x29

    #@136
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@139
    .line 1249
    const-string/jumbo v1, "AXIS_GENERIC_11"

    #@13c
    const/16 v2, 0x2a

    #@13e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@141
    .line 1250
    const-string/jumbo v1, "AXIS_GENERIC_12"

    #@144
    const/16 v2, 0x2b

    #@146
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@149
    .line 1251
    const-string/jumbo v1, "AXIS_GENERIC_13"

    #@14c
    const/16 v2, 0x2c

    #@14e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@151
    .line 1252
    const-string/jumbo v1, "AXIS_GENERIC_14"

    #@154
    const/16 v2, 0x2d

    #@156
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@159
    .line 1253
    const-string/jumbo v1, "AXIS_GENERIC_15"

    #@15c
    const/16 v2, 0x2e

    #@15e
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@161
    .line 1254
    const-string/jumbo v1, "AXIS_GENERIC_16"

    #@164
    const/16 v2, 0x2f

    #@166
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@169
    .line 1322
    const/16 v1, 0x20

    #@16b
    new-array v1, v1, [Ljava/lang/String;

    #@16d
    .line 1323
    const-string/jumbo v2, "BUTTON_PRIMARY"

    #@170
    aput-object v2, v1, v4

    #@172
    .line 1324
    const-string/jumbo v2, "BUTTON_SECONDARY"

    #@175
    aput-object v2, v1, v5

    #@177
    .line 1325
    const-string/jumbo v2, "BUTTON_TERTIARY"

    #@17a
    aput-object v2, v1, v6

    #@17c
    .line 1326
    const-string/jumbo v2, "BUTTON_BACK"

    #@17f
    aput-object v2, v1, v7

    #@181
    .line 1327
    const-string/jumbo v2, "BUTTON_FORWARD"

    #@184
    aput-object v2, v1, v8

    #@186
    .line 1328
    const-string/jumbo v2, "BUTTON_STYLUS_PRIMARY"

    #@189
    const/4 v3, 0x5

    #@18a
    aput-object v2, v1, v3

    #@18c
    .line 1329
    const-string/jumbo v2, "BUTTON_STYLUS_SECONDARY"

    #@18f
    const/4 v3, 0x6

    #@190
    aput-object v2, v1, v3

    #@192
    .line 1330
    const-string/jumbo v2, "0x00000080"

    #@195
    const/4 v3, 0x7

    #@196
    aput-object v2, v1, v3

    #@198
    .line 1331
    const-string/jumbo v2, "0x00000100"

    #@19b
    const/16 v3, 0x8

    #@19d
    aput-object v2, v1, v3

    #@19f
    .line 1332
    const-string/jumbo v2, "0x00000200"

    #@1a2
    const/16 v3, 0x9

    #@1a4
    aput-object v2, v1, v3

    #@1a6
    .line 1333
    const-string/jumbo v2, "0x00000400"

    #@1a9
    const/16 v3, 0xa

    #@1ab
    aput-object v2, v1, v3

    #@1ad
    .line 1334
    const-string/jumbo v2, "0x00000800"

    #@1b0
    const/16 v3, 0xb

    #@1b2
    aput-object v2, v1, v3

    #@1b4
    .line 1335
    const-string/jumbo v2, "0x00001000"

    #@1b7
    const/16 v3, 0xc

    #@1b9
    aput-object v2, v1, v3

    #@1bb
    .line 1336
    const-string/jumbo v2, "0x00002000"

    #@1be
    const/16 v3, 0xd

    #@1c0
    aput-object v2, v1, v3

    #@1c2
    .line 1337
    const-string/jumbo v2, "0x00004000"

    #@1c5
    const/16 v3, 0xe

    #@1c7
    aput-object v2, v1, v3

    #@1c9
    .line 1338
    const-string/jumbo v2, "0x00008000"

    #@1cc
    const/16 v3, 0xf

    #@1ce
    aput-object v2, v1, v3

    #@1d0
    .line 1339
    const-string/jumbo v2, "0x00010000"

    #@1d3
    const/16 v3, 0x10

    #@1d5
    aput-object v2, v1, v3

    #@1d7
    .line 1340
    const-string/jumbo v2, "0x00020000"

    #@1da
    const/16 v3, 0x11

    #@1dc
    aput-object v2, v1, v3

    #@1de
    .line 1341
    const-string/jumbo v2, "0x00040000"

    #@1e1
    const/16 v3, 0x12

    #@1e3
    aput-object v2, v1, v3

    #@1e5
    .line 1342
    const-string/jumbo v2, "0x00080000"

    #@1e8
    const/16 v3, 0x13

    #@1ea
    aput-object v2, v1, v3

    #@1ec
    .line 1343
    const-string/jumbo v2, "0x00100000"

    #@1ef
    const/16 v3, 0x14

    #@1f1
    aput-object v2, v1, v3

    #@1f3
    .line 1344
    const-string/jumbo v2, "0x00200000"

    #@1f6
    const/16 v3, 0x15

    #@1f8
    aput-object v2, v1, v3

    #@1fa
    .line 1345
    const-string/jumbo v2, "0x00400000"

    #@1fd
    const/16 v3, 0x16

    #@1ff
    aput-object v2, v1, v3

    #@201
    .line 1346
    const-string/jumbo v2, "0x00800000"

    #@204
    const/16 v3, 0x17

    #@206
    aput-object v2, v1, v3

    #@208
    .line 1347
    const-string/jumbo v2, "0x01000000"

    #@20b
    const/16 v3, 0x18

    #@20d
    aput-object v2, v1, v3

    #@20f
    .line 1348
    const-string/jumbo v2, "0x02000000"

    #@212
    const/16 v3, 0x19

    #@214
    aput-object v2, v1, v3

    #@216
    .line 1349
    const-string/jumbo v2, "0x04000000"

    #@219
    const/16 v3, 0x1a

    #@21b
    aput-object v2, v1, v3

    #@21d
    .line 1350
    const-string/jumbo v2, "0x08000000"

    #@220
    const/16 v3, 0x1b

    #@222
    aput-object v2, v1, v3

    #@224
    .line 1351
    const-string/jumbo v2, "0x10000000"

    #@227
    const/16 v3, 0x1c

    #@229
    aput-object v2, v1, v3

    #@22b
    .line 1352
    const-string/jumbo v2, "0x20000000"

    #@22e
    const/16 v3, 0x1d

    #@230
    aput-object v2, v1, v3

    #@232
    .line 1353
    const-string/jumbo v2, "0x40000000"

    #@235
    const/16 v3, 0x1e

    #@237
    aput-object v2, v1, v3

    #@239
    .line 1354
    const-string/jumbo v2, "0x80000000"

    #@23c
    const/16 v3, 0x1f

    #@23e
    aput-object v2, v1, v3

    #@240
    .line 1322
    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    #@242
    .line 1398
    new-instance v1, Landroid/util/SparseArray;

    #@244
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@247
    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    #@249
    .line 1400
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    #@24b
    .line 1401
    const-string/jumbo v1, "TOOL_TYPE_UNKNOWN"

    #@24e
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@251
    .line 1402
    const-string/jumbo v1, "TOOL_TYPE_FINGER"

    #@254
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@257
    .line 1403
    const-string/jumbo v1, "TOOL_TYPE_STYLUS"

    #@25a
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@25d
    .line 1404
    const-string/jumbo v1, "TOOL_TYPE_MOUSE"

    #@260
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@263
    .line 1405
    const-string/jumbo v1, "TOOL_TYPE_ERASER"

    #@266
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@269
    .line 1412
    new-instance v1, Ljava/lang/Object;

    #@26b
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@26e
    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    #@270
    .line 1418
    new-instance v1, Ljava/lang/Object;

    #@272
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@275
    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@277
    .line 3333
    new-instance v1, Landroid/view/MotionEvent$1;

    #@279
    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    #@27c
    .line 3332
    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27e
    .line 168
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1501
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # I

    #@0
    .prologue
    .line 3193
    packed-switch p0, :pswitch_data_0

    #@3
    .line 3217
    :pswitch_0
    const v1, 0xff00

    #@6
    and-int/2addr v1, p0

    #@7
    shr-int/lit8 v0, v1, 0x8

    #@9
    .line 3218
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    #@b
    packed-switch v1, :pswitch_data_1

    #@e
    .line 3224
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 3195
    .end local v0    # "index":I
    :pswitch_1
    const-string/jumbo v1, "ACTION_DOWN"

    #@16
    return-object v1

    #@17
    .line 3197
    :pswitch_2
    const-string/jumbo v1, "ACTION_UP"

    #@1a
    return-object v1

    #@1b
    .line 3199
    :pswitch_3
    const-string/jumbo v1, "ACTION_CANCEL"

    #@1e
    return-object v1

    #@1f
    .line 3201
    :pswitch_4
    const-string/jumbo v1, "ACTION_OUTSIDE"

    #@22
    return-object v1

    #@23
    .line 3203
    :pswitch_5
    const-string/jumbo v1, "ACTION_MOVE"

    #@26
    return-object v1

    #@27
    .line 3205
    :pswitch_6
    const-string/jumbo v1, "ACTION_HOVER_MOVE"

    #@2a
    return-object v1

    #@2b
    .line 3207
    :pswitch_7
    const-string/jumbo v1, "ACTION_SCROLL"

    #@2e
    return-object v1

    #@2f
    .line 3209
    :pswitch_8
    const-string/jumbo v1, "ACTION_HOVER_ENTER"

    #@32
    return-object v1

    #@33
    .line 3211
    :pswitch_9
    const-string/jumbo v1, "ACTION_HOVER_EXIT"

    #@36
    return-object v1

    #@37
    .line 3213
    :pswitch_a
    const-string/jumbo v1, "ACTION_BUTTON_PRESS"

    #@3a
    return-object v1

    #@3b
    .line 3215
    :pswitch_b
    const-string/jumbo v1, "ACTION_BUTTON_RELEASE"

    #@3e
    return-object v1

    #@3f
    .line 3220
    .restart local v0    # "index":I
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "ACTION_POINTER_DOWN("

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, ")"

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    return-object v1

    #@5b
    .line 3222
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "ACTION_POINTER_UP("

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    const-string/jumbo v2, ")"

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    return-object v1

    #@77
    .line 3193
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    #@96
    .line 3218
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3249
    const-string/jumbo v2, "AXIS_"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 3250
    const-string/jumbo v2, "AXIS_"

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    .line 3251
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 3252
    .local v0, "axis":I
    if-ltz v0, :cond_0

    #@1a
    .line 3253
    return v0

    #@1b
    .line 3257
    .end local v0    # "axis":I
    :cond_0
    const/16 v2, 0xa

    #@1d
    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 3258
    :catch_0
    move-exception v1

    #@23
    .line 3259
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    #@24
    return v2
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "axis"    # I

    #@0
    .prologue
    .line 3236
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3237
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "AXIS_"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    :goto_0
    return-object v1

    #@1b
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    goto :goto_0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "buttonState"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3274
    if-nez p0, :cond_0

    #@3
    .line 3275
    const-string/jumbo v4, "0"

    #@6
    return-object v4

    #@7
    .line 3277
    :cond_0
    const/4 v3, 0x0

    #@8
    .line 3278
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@9
    .line 3279
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_5

    #@b
    .line 3280
    and-int/lit8 v5, p0, 0x1

    #@d
    if-eqz v5, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    .line 3281
    .local v1, "isSet":Z
    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    #@12
    .line 3282
    if-eqz v1, :cond_3

    #@14
    .line 3283
    sget-object v5, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    #@16
    aget-object v2, v5, v0

    #@18
    .line 3284
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    #@1a
    .line 3285
    if-nez p0, :cond_2

    #@1c
    .line 3286
    return-object v2

    #@1d
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    move v1, v4

    #@1e
    .line 3280
    goto :goto_1

    #@1f
    .line 3288
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    .line 3294
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 3290
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x7c

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 3291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_2

    #@30
    .line 3296
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4
.end method

.method private static final clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    #@0
    .prologue
    .line 3017
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .line 3018
    return p1

    #@5
    .line 3019
    :cond_0
    cmpl-float v0, p0, p2

    #@7
    if-lez v0, :cond_1

    #@9
    .line 3020
    return p2

    #@a
    .line 3022
    :cond_1
    return p0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3346
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    .line 3347
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6
    invoke-static {v2, v3, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    #@9
    move-result-wide v2

    #@a
    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@c
    .line 3348
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2
    .param p0, "desiredCapacity"    # I

    #@0
    .prologue
    .line 1424
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1425
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@6
    array-length v1, v1

    #@7
    if-ge v1, p0, :cond_3

    #@9
    .line 1426
    :cond_0
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@b
    if-eqz v1, :cond_1

    #@d
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@f
    array-length v0, v1

    #@10
    .line 1427
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p0, :cond_2

    #@12
    .line 1428
    mul-int/lit8 v0, v0, 0x2

    #@14
    goto :goto_0

    #@15
    .line 1426
    .end local v0    # "capacity":I
    :cond_1
    const/16 v0, 0x8

    #@17
    .restart local v0    # "capacity":I
    goto :goto_0

    #@18
    .line 1430
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    #@1b
    move-result-object v1

    #@1c
    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@1e
    .line 1431
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    #@21
    move-result-object v1

    #@22
    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@24
    .line 1432
    new-array v1, v0, [I

    #@26
    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    #@28
    .line 1423
    .end local v0    # "capacity":I
    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
.end method

.method private static native nativeGetAction(J)I
.end method

.method private static native nativeGetActionButton(J)I
.end method

.method private static native nativeGetAxisValue(JIII)F
.end method

.method private static native nativeGetButtonState(J)I
.end method

.method private static native nativeGetDeviceId(J)I
.end method

.method private static native nativeGetDownTimeNanos(J)J
.end method

.method private static native nativeGetEdgeFlags(J)I
.end method

.method private static native nativeGetEventTimeNanos(JI)J
.end method

.method private static native nativeGetFlags(J)I
.end method

.method private static native nativeGetHistorySize(J)I
.end method

.method private static native nativeGetMetaState(J)I
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
.end method

.method private static native nativeGetPointerId(JI)I
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
.end method

.method private static native nativeGetSource(J)I
.end method

.method private static native nativeGetToolType(JI)I
.end method

.method private static native nativeGetXOffset(J)F
.end method

.method private static native nativeGetXPrecision(J)F
.end method

.method private static native nativeGetYOffset(J)F
.end method

.method private static native nativeGetYPrecision(J)F
.end method

.method private static native nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
.end method

.method private static native nativeOffsetLocation(JFF)V
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
.end method

.method private static native nativeSetAction(JI)V
.end method

.method private static native nativeSetActionButton(JI)V
.end method

.method private static native nativeSetButtonState(JI)V
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
.end method

.method private static native nativeSetEdgeFlags(JI)V
.end method

.method private static native nativeSetFlags(JI)V
.end method

.method private static native nativeSetSource(JI)I
.end method

.method private static native nativeTransform(JLandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1518
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1519
    :try_start_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    #@6
    .line 1520
    .local v0, "ev":Landroid/view/MotionEvent;
    if-nez v0, :cond_0

    #@8
    .line 1521
    new-instance v1, Landroid/view/MotionEvent;

    #@a
    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    return-object v1

    #@f
    .line 1523
    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    #@11
    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    #@13
    .line 1524
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 1526
    iput-object v3, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    #@1c
    .line 1527
    invoke-virtual {v0}, Landroid/view/MotionEvent;->prepareForReuse()V

    #@1f
    .line 1528
    return-object v0

    #@20
    .line 1518
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 24
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

    #@0
    .prologue
    .line 1652
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@3
    move-result-object v2

    #@4
    .line 1653
    .local v2, "ev":Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@6
    monitor-enter v23

    #@7
    .line 1654
    const/4 v3, 0x1

    #@8
    :try_start_0
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    #@b
    .line 1655
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@d
    .line 1656
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v3, 0x0

    #@e
    aget-object v3, v21, v3

    #@10
    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    #@13
    .line 1657
    const/4 v3, 0x0

    #@14
    aget-object v3, v21, v3

    #@16
    const/4 v4, 0x0

    #@17
    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@19
    .line 1659
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@1b
    .line 1660
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v3, 0x0

    #@1c
    aget-object v3, v22, v3

    #@1e
    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    #@21
    .line 1661
    const/4 v3, 0x0

    #@22
    aget-object v3, v22, v3

    #@24
    move/from16 v0, p5

    #@26
    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@28
    .line 1662
    const/4 v3, 0x0

    #@29
    aget-object v3, v22, v3

    #@2b
    move/from16 v0, p6

    #@2d
    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@2f
    .line 1663
    const/4 v3, 0x0

    #@30
    aget-object v3, v22, v3

    #@32
    move/from16 v0, p7

    #@34
    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@36
    .line 1664
    const/4 v3, 0x0

    #@37
    aget-object v3, v22, v3

    #@39
    move/from16 v0, p8

    #@3b
    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@3d
    .line 1666
    iget-wide v3, v2, Landroid/view/MotionEvent;->mNativePtr:J

    #@3f
    .line 1668
    const/4 v12, 0x0

    #@40
    const/4 v13, 0x0

    #@41
    .line 1669
    const-wide/32 v6, 0xf4240

    #@44
    mul-long v16, p0, v6

    #@46
    const-wide/32 v6, 0xf4240

    #@49
    mul-long v18, p2, v6

    #@4b
    .line 1667
    const/4 v6, 0x0

    #@4c
    const/4 v8, 0x0

    #@4d
    const/4 v11, 0x0

    #@4e
    .line 1670
    const/16 v20, 0x1

    #@50
    move/from16 v5, p12

    #@52
    move/from16 v7, p4

    #@54
    move/from16 v9, p13

    #@56
    move/from16 v10, p9

    #@58
    move/from16 v14, p10

    #@5a
    move/from16 v15, p11

    #@5c
    .line 1666
    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    #@5f
    move-result-wide v4

    #@60
    iput-wide v4, v2, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    monitor-exit v23

    #@63
    .line 1671
    return-object v2

    #@64
    .line 1653
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v3

    #@65
    monitor-exit v23

    #@66
    throw v3
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    #@0
    .prologue
    .line 1733
    const/high16 v7, 0x3f800000    # 1.0f

    #@2
    const/high16 v8, 0x3f800000    # 1.0f

    #@4
    .line 1734
    const/high16 v10, 0x3f800000    # 1.0f

    #@6
    const/high16 v11, 0x3f800000    # 1.0f

    #@8
    const/4 v12, 0x0

    #@9
    const/4 v13, 0x0

    #@a
    move-wide v0, p0

    #@b
    move-wide/from16 v2, p2

    #@d
    move/from16 v4, p4

    #@f
    move/from16 v5, p5

    #@11
    move/from16 v6, p6

    #@13
    move/from16 v9, p7

    #@15
    .line 1733
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
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

    #@0
    .prologue
    move-wide v0, p0

    #@1
    move-wide/from16 v2, p2

    #@3
    move/from16 v4, p4

    #@5
    move/from16 v5, p6

    #@7
    move/from16 v6, p7

    #@9
    move/from16 v7, p8

    #@b
    move/from16 v8, p9

    #@d
    move/from16 v9, p10

    #@f
    move/from16 v10, p11

    #@11
    move/from16 v11, p12

    #@13
    move/from16 v12, p13

    #@15
    move/from16 v13, p14

    #@17
    .line 1712
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 20
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

    #@0
    .prologue
    .line 1607
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@2
    monitor-enter v19

    #@3
    .line 1608
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    #@6
    .line 1609
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@8
    .line 1610
    .local v8, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    #@a
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@c
    move/from16 v1, p5

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 1611
    aget-object v2, v8, v18

    #@12
    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    #@15
    .line 1612
    aget-object v2, v8, v18

    #@17
    aget v3, p6, v18

    #@19
    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@1b
    .line 1610
    add-int/lit8 v18, v18, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1615
    :cond_0
    const/4 v11, 0x0

    #@1f
    move-wide/from16 v2, p0

    #@21
    move-wide/from16 v4, p2

    #@23
    move/from16 v6, p4

    #@25
    move/from16 v7, p5

    #@27
    move-object/from16 v9, p7

    #@29
    move/from16 v10, p8

    #@2b
    move/from16 v12, p9

    #@2d
    move/from16 v13, p10

    #@2f
    move/from16 v14, p11

    #@31
    move/from16 v15, p12

    #@33
    move/from16 v16, p13

    #@35
    move/from16 v17, p14

    #@37
    .line 1614
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result-object v2

    #@3b
    monitor-exit v19

    #@3c
    return-object v2

    #@3d
    .line 1607
    .end local v8    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v18    # "i":I
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit v19

    #@3f
    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 22
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

    #@0
    .prologue
    .line 1564
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    .line 1565
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6
    .line 1567
    const/4 v10, 0x0

    #@7
    const/4 v11, 0x0

    #@8
    .line 1568
    const-wide/32 v4, 0xf4240

    #@b
    mul-long v14, p0, v4

    #@d
    const-wide/32 v4, 0xf4240

    #@10
    mul-long v16, p2, v4

    #@12
    move/from16 v3, p12

    #@14
    move/from16 v4, p14

    #@16
    move/from16 v5, p4

    #@18
    move/from16 v6, p15

    #@1a
    move/from16 v7, p13

    #@1c
    move/from16 v8, p8

    #@1e
    move/from16 v9, p9

    #@20
    move/from16 v12, p10

    #@22
    move/from16 v13, p11

    #@24
    move/from16 v18, p5

    #@26
    move-object/from16 v19, p6

    #@28
    move-object/from16 v20, p7

    #@2a
    .line 1565
    invoke-static/range {v1 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    #@2d
    move-result-wide v2

    #@2e
    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@30
    .line 1570
    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p0, "other"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1741
    if-nez p0, :cond_0

    #@2
    .line 1742
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "other motion event must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1745
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@e
    move-result-object v0

    #@f
    .line 1746
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@11
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@13
    const/4 v1, 0x1

    #@14
    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@1a
    .line 1747
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p0, "other"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1755
    if-nez p0, :cond_0

    #@2
    .line 1756
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "other motion event must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1759
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@e
    move-result-object v0

    #@f
    .line 1760
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@11
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@1a
    .line 1761
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "toolType"    # I

    #@0
    .prologue
    .line 3308
    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 3309
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    #@0
    .prologue
    .line 2910
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 2911
    const/4 v0, 0x1

    #@4
    :try_start_0
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    #@7
    .line 2912
    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@9
    .line 2913
    .local v4, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    #@a
    aget-object v0, v4, v0

    #@c
    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    #@f
    .line 2914
    const/4 v0, 0x0

    #@10
    aget-object v0, v4, v0

    #@12
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@14
    .line 2915
    const/4 v0, 0x0

    #@15
    aget-object v0, v4, v0

    #@17
    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@19
    .line 2916
    const/4 v0, 0x0

    #@1a
    aget-object v0, v4, v0

    #@1c
    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@1e
    .line 2917
    const/4 v0, 0x0

    #@1f
    aget-object v0, v4, v0

    #@21
    iput p6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@23
    .line 2919
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@25
    const-wide/32 v2, 0xf4240

    #@28
    mul-long/2addr v2, p1

    #@29
    move v5, p7

    #@2a
    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v6

    #@2e
    .line 2909
    return-void

    #@2f
    .line 2910
    .end local v4    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v6

    #@31
    throw v0
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    #@0
    .prologue
    .line 2935
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const-wide/32 v2, 0xf4240

    #@5
    mul-long/2addr v2, p1

    #@6
    move-object v4, p3

    #@7
    move v5, p4

    #@8
    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    #@b
    .line 2934
    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2951
    move-object/from16 v0, p0

    #@2
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@4
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@7
    move-result v8

    #@8
    .line 2952
    .local v8, "action":I
    const/4 v2, 0x2

    #@9
    if-eq v8, v2, :cond_0

    #@b
    const/4 v2, 0x7

    #@c
    if-eq v8, v2, :cond_0

    #@e
    .line 2953
    const/4 v2, 0x0

    #@f
    return v2

    #@10
    .line 2955
    :cond_0
    move-object/from16 v0, p1

    #@12
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@14
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@17
    move-result v2

    #@18
    if-eq v8, v2, :cond_1

    #@1a
    .line 2956
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 2959
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@20
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    #@23
    move-result v2

    #@24
    move-object/from16 v0, p1

    #@26
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@28
    move-wide/from16 v16, v0

    #@2a
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    #@2d
    move-result v3

    #@2e
    if-ne v2, v3, :cond_2

    #@30
    .line 2960
    move-object/from16 v0, p0

    #@32
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@34
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    #@37
    move-result v2

    #@38
    move-object/from16 v0, p1

    #@3a
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@3c
    move-wide/from16 v16, v0

    #@3e
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    #@41
    move-result v3

    #@42
    if-eq v2, v3, :cond_3

    #@44
    .line 2962
    :cond_2
    const/4 v2, 0x0

    #@45
    return v2

    #@46
    .line 2961
    :cond_3
    move-object/from16 v0, p0

    #@48
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@4a
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    #@4d
    move-result v2

    #@4e
    move-object/from16 v0, p1

    #@50
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@52
    move-wide/from16 v16, v0

    #@54
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    #@57
    move-result v3

    #@58
    if-ne v2, v3, :cond_2

    #@5a
    .line 2965
    move-object/from16 v0, p0

    #@5c
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@5e
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@61
    move-result v13

    #@62
    .line 2966
    .local v13, "pointerCount":I
    move-object/from16 v0, p1

    #@64
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@66
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@69
    move-result v2

    #@6a
    if-eq v13, v2, :cond_4

    #@6c
    .line 2967
    const/4 v2, 0x0

    #@6d
    return v2

    #@6e
    .line 2970
    :cond_4
    sget-object v15, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@70
    monitor-enter v15

    #@71
    .line 2971
    const/4 v2, 0x2

    #@72
    :try_start_0
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    #@75
    move-result v2

    #@76
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    #@79
    .line 2972
    sget-object v14, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@7b
    .line 2973
    .local v14, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@7d
    .line 2975
    .local v6, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v12, 0x0

    #@7e
    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_6

    #@80
    .line 2976
    move-object/from16 v0, p0

    #@82
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@84
    const/16 v16, 0x0

    #@86
    aget-object v16, v14, v16

    #@88
    move-object/from16 v0, v16

    #@8a
    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    #@8d
    .line 2977
    move-object/from16 v0, p1

    #@8f
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@91
    const/16 v16, 0x1

    #@93
    aget-object v16, v14, v16

    #@95
    move-object/from16 v0, v16

    #@97
    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    #@9a
    .line 2978
    const/4 v2, 0x0

    #@9b
    aget-object v2, v14, v2

    #@9d
    const/4 v3, 0x1

    #@9e
    aget-object v3, v14, v3

    #@a0
    invoke-static {v2, v3}, Landroid/view/MotionEvent$PointerProperties;->-wrap0(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a3
    move-result v2

    #@a4
    if-nez v2, :cond_5

    #@a6
    .line 2979
    const/4 v2, 0x0

    #@a7
    monitor-exit v15

    #@a8
    return v2

    #@a9
    .line 2975
    :cond_5
    add-int/lit8 v12, v12, 0x1

    #@ab
    goto :goto_0

    #@ac
    .line 2983
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    #@ae
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@b0
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    #@b3
    move-result v7

    #@b4
    .line 2984
    .local v7, "metaState":I
    move-object/from16 v0, p1

    #@b6
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@b8
    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    #@bb
    move-result v11

    #@bc
    .line 2985
    .local v11, "historySize":I
    const/4 v9, 0x0

    #@bd
    .local v9, "h":I
    :goto_1
    if-gt v9, v11, :cond_9

    #@bf
    .line 2986
    if-ne v9, v11, :cond_7

    #@c1
    const/high16 v10, -0x80000000

    #@c3
    .line 2988
    .local v10, "historyPos":I
    :goto_2
    const/4 v12, 0x0

    #@c4
    :goto_3
    if-ge v12, v13, :cond_8

    #@c6
    .line 2989
    move-object/from16 v0, p1

    #@c8
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@ca
    aget-object v16, v6, v12

    #@cc
    move-object/from16 v0, v16

    #@ce
    invoke-static {v2, v3, v12, v10, v0}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    #@d1
    .line 2988
    add-int/lit8 v12, v12, 0x1

    #@d3
    goto :goto_3

    #@d4
    .line 2986
    .end local v10    # "historyPos":I
    :cond_7
    move v10, v9

    #@d5
    .restart local v10    # "historyPos":I
    goto :goto_2

    #@d6
    .line 2992
    :cond_8
    move-object/from16 v0, p1

    #@d8
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@da
    invoke-static {v2, v3, v10}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@dd
    move-result-wide v4

    #@de
    .line 2993
    .local v4, "eventTimeNanos":J
    move-object/from16 v0, p0

    #@e0
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@e2
    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e5
    .line 2985
    add-int/lit8 v9, v9, 0x1

    #@e7
    goto :goto_1

    #@e8
    .end local v4    # "eventTimeNanos":J
    .end local v10    # "historyPos":I
    :cond_9
    monitor-exit v15

    #@e9
    .line 2996
    const/4 v2, 0x1

    #@ea
    return v2

    #@eb
    .line 2970
    .end local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v7    # "metaState":I
    .end local v9    # "h":I
    .end local v11    # "historySize":I
    .end local v12    # "i":I
    .end local v14    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_0
    move-exception v2

    #@ec
    monitor-exit v15

    #@ed
    throw v2
.end method

.method public final cancel()V
    .locals 1

    #@0
    .prologue
    .line 3354
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    #@4
    .line 3353
    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 28
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    .line 3030
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@3
    move-result-object v4

    #@4
    .line 3031
    .local v4, "ev":Landroid/view/MotionEvent;
    sget-object v26, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@6
    monitor-enter v26

    #@7
    .line 3032
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@b
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@e
    move-result v22

    #@f
    .line 3034
    .local v22, "pointerCount":I
    invoke-static/range {v22 .. v22}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    #@12
    .line 3035
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@14
    .line 3036
    .local v23, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@16
    .line 3038
    .local v24, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v25, 0x0

    #@18
    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    #@1a
    move/from16 v1, v22

    #@1c
    if-ge v0, v1, :cond_0

    #@1e
    .line 3039
    move-object/from16 v0, p0

    #@20
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@22
    aget-object v5, v23, v25

    #@24
    move/from16 v0, v25

    #@26
    invoke-static {v6, v7, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    #@29
    .line 3040
    move-object/from16 v0, p0

    #@2b
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2d
    aget-object v5, v24, v25

    #@2f
    const/high16 v8, -0x80000000

    #@31
    move/from16 v0, v25

    #@33
    invoke-static {v6, v7, v0, v8, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    #@36
    .line 3041
    aget-object v5, v24, v25

    #@38
    aget-object v6, v24, v25

    #@3a
    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@3c
    move/from16 v0, p1

    #@3e
    move/from16 v1, p3

    #@40
    invoke-static {v6, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    #@43
    move-result v6

    #@44
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@46
    .line 3042
    aget-object v5, v24, v25

    #@48
    aget-object v6, v24, v25

    #@4a
    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@4c
    move/from16 v0, p2

    #@4e
    move/from16 v1, p4

    #@50
    invoke-static {v6, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    #@53
    move-result v6

    #@54
    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@56
    .line 3038
    add-int/lit8 v25, v25, 0x1

    #@58
    goto :goto_0

    #@59
    .line 3044
    :cond_0
    iget-wide v5, v4, Landroid/view/MotionEvent;->mNativePtr:J

    #@5b
    .line 3045
    move-object/from16 v0, p0

    #@5d
    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@5f
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    #@62
    move-result v7

    #@63
    move-object/from16 v0, p0

    #@65
    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@67
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    #@6a
    move-result v8

    #@6b
    .line 3046
    move-object/from16 v0, p0

    #@6d
    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6f
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@72
    move-result v9

    #@73
    move-object/from16 v0, p0

    #@75
    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@77
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    #@7a
    move-result v10

    #@7b
    .line 3047
    move-object/from16 v0, p0

    #@7d
    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@7f
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    #@82
    move-result v11

    #@83
    move-object/from16 v0, p0

    #@85
    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@87
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    #@8a
    move-result v12

    #@8b
    .line 3048
    move-object/from16 v0, p0

    #@8d
    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@8f
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    #@92
    move-result v13

    #@93
    .line 3049
    move-object/from16 v0, p0

    #@95
    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@97
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    #@9a
    move-result v14

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@9f
    move-wide/from16 v16, v0

    #@a1
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    #@a4
    move-result v15

    #@a5
    .line 3050
    move-object/from16 v0, p0

    #@a7
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@a9
    move-wide/from16 v16, v0

    #@ab
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    #@ae
    move-result v16

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@b3
    move-wide/from16 v18, v0

    #@b5
    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    #@b8
    move-result v17

    #@b9
    .line 3051
    move-object/from16 v0, p0

    #@bb
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@bd
    move-wide/from16 v18, v0

    #@bf
    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    #@c2
    move-result-wide v18

    #@c3
    .line 3052
    move-object/from16 v0, p0

    #@c5
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@c7
    move-wide/from16 v20, v0

    #@c9
    const/high16 v27, -0x80000000

    #@cb
    move-wide/from16 v0, v20

    #@cd
    move/from16 v2, v27

    #@cf
    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@d2
    move-result-wide v20

    #@d3
    .line 3044
    invoke-static/range {v5 .. v24}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    #@d6
    move-result-wide v6

    #@d7
    iput-wide v6, v4, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d9
    monitor-exit v26

    #@da
    .line 3054
    return-object v4

    #@db
    .line 3031
    .end local v22    # "pointerCount":I
    .end local v23    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v24    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v25    # "i":I
    :catchall_0
    move-exception v5

    #@dc
    monitor-exit v26

    #@dd
    throw v5
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    #@0
    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    #@0
    .prologue
    .line 1767
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1507
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1508
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@a
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    #@d
    .line 1509
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 1512
    :cond_0
    invoke-super {p0}, Landroid/view/InputEvent;->finalize()V

    #@14
    .line 1505
    return-void

    #@15
    .line 1511
    :catchall_0
    move-exception v0

    #@16
    .line 1512
    invoke-super {p0}, Landroid/view/InputEvent;->finalize()V

    #@19
    .line 1511
    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 2
    .param p1, "pointerId"    # I

    #@0
    .prologue
    .line 2107
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getAction()I
    .locals 2

    #@0
    .prologue
    .line 1830
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getActionButton()I
    .locals 2

    #@0
    .prologue
    .line 2349
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    #@0
    .prologue
    .line 1853
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@5
    move-result v0

    #@6
    const v1, 0xff00

    #@9
    and-int/2addr v0, v1

    #@a
    shr-int/lit8 v0, v0, 0x8

    #@c
    return v0
.end method

.method public final getActionMasked()I
    .locals 2

    #@0
    .prologue
    .line 1839
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, 0xff

    #@8
    return v0
.end method

.method public final getAxisValue(I)F
    .locals 4
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 2057
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x0

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getAxisValue(II)F
    .locals 3
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 2267
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/high16 v2, -0x80000000

    #@4
    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getButtonState()I
    .locals 2

    #@0
    .prologue
    .line 2327
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getDeviceId()I
    .locals 2

    #@0
    .prologue
    .line 1807
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getDownTime()J
    .locals 4

    #@0
    .prologue
    .line 1913
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    #@5
    move-result-wide v0

    #@6
    const-wide/32 v2, 0xf4240

    #@9
    div-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 2

    #@0
    .prologue
    .line 2837
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getEventTime()J
    .locals 4

    #@0
    .prologue
    .line 1935
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/high16 v2, -0x80000000

    #@4
    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@7
    move-result-wide v0

    #@8
    const-wide/32 v2, 0xf4240

    #@b
    div-long/2addr v0, v2

    #@c
    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 3

    #@0
    .prologue
    .line 1954
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/high16 v2, -0x80000000

    #@4
    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final getFlags()I
    .locals 2

    #@0
    .prologue
    .line 1877
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 3
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2619
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 2
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    #@0
    .prologue
    .line 2800
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2441
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@5
    move-result-wide v0

    #@6
    const-wide/32 v2, 0xf4240

    #@9
    div-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2467
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2602
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/16 v2, 0x8

    #@4
    const/4 v3, 0x0

    #@5
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2781
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/16 v2, 0x8

    #@4
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    #@0
    .prologue
    .line 2821
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    #@5
    .line 2820
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2512
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2673
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x2

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2527
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2691
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x3

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2572
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x6

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2745
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x6

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2587
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x7

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2763
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x7

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2542
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x4

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2709
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x4

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2557
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x5

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2727
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x5

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 3
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2482
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@3
    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2637
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 4
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 2497
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 2655
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public final getHistorySize()I
    .locals 2

    #@0
    .prologue
    .line 2421
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getMetaState()I
    .locals 2

    #@0
    .prologue
    .line 2310
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getOrientation()F
    .locals 5

    #@0
    .prologue
    .line 2044
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/16 v2, 0x8

    #@4
    const/4 v3, 0x0

    #@5
    const/high16 v4, -0x80000000

    #@7
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final getOrientation(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2251
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/16 v2, 0x8

    #@4
    const/high16 v3, -0x80000000

    #@6
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    #@0
    .prologue
    .line 2281
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/high16 v2, -0x80000000

    #@4
    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    #@7
    .line 2280
    return-void
.end method

.method public final getPointerCount()I
    .locals 2

    #@0
    .prologue
    .line 2065
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getPointerId(I)I
    .locals 2
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2077
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getPointerIdBits()I
    .locals 6

    #@0
    .prologue
    .line 3063
    const/4 v1, 0x0

    #@1
    .line 3064
    .local v1, "idBits":I
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@3
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@6
    move-result v2

    #@7
    .line 3065
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@a
    .line 3066
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@c
    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    #@f
    move-result v3

    #@10
    const/4 v4, 0x1

    #@11
    shl-int v3, v4, v3

    #@13
    or-int/2addr v1, v3

    #@14
    .line 3065
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3068
    :cond_0
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    #@0
    .prologue
    .line 2296
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    #@5
    .line 2295
    return-void
.end method

.method public final getPressure()F
    .locals 5

    #@0
    .prologue
    .line 1984
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getPressure(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2154
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x2

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getRawX()F
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2372
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@3
    const/high16 v2, -0x80000000

    #@5
    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getRawY()F
    .locals 5

    #@0
    .prologue
    .line 2385
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getSize()F
    .locals 5

    #@0
    .prologue
    .line 1994
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getSize(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2172
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x3

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getSource()I
    .locals 2

    #@0
    .prologue
    .line 1813
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getToolMajor()F
    .locals 5

    #@0
    .prologue
    .line 2024
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x6

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getToolMajor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2216
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x6

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getToolMinor()F
    .locals 5

    #@0
    .prologue
    .line 2034
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x7

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getToolMinor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2232
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x7

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getToolType(I)I
    .locals 2
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2095
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getTouchMajor()F
    .locals 5

    #@0
    .prologue
    .line 2004
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x4

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2186
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x4

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getTouchMinor()F
    .locals 5

    #@0
    .prologue
    .line 2014
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x5

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2200
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x5

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getX()F
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1964
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@3
    const/high16 v2, -0x80000000

    #@5
    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getX(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2122
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x0

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getXPrecision()F
    .locals 2

    #@0
    .prologue
    .line 2397
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getY()F
    .locals 5

    #@0
    .prologue
    .line 1974
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/high16 v4, -0x80000000

    #@6
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getY(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    #@0
    .prologue
    .line 2137
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const/4 v2, 0x1

    #@3
    const/high16 v3, -0x80000000

    #@5
    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final getYPrecision()F
    .locals 2

    #@0
    .prologue
    .line 2409
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isButtonPressed(I)Z
    .locals 2
    .param p1, "button"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3326
    if-nez p1, :cond_0

    #@3
    .line 3327
    return v0

    #@4
    .line 3329
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    #@7
    move-result v1

    #@8
    and-int/2addr v1, p1

    #@9
    if-ne v1, p1, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :cond_1
    return v0
.end method

.method public final isTainted()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1883
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    #@4
    move-result v0

    #@5
    .line 1884
    .local v0, "flags":I
    const/high16 v2, -0x80000000

    #@7
    and-int/2addr v2, v0

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1
.end method

.method public final isTargetAccessibilityFocus()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1896
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    #@4
    move-result v0

    #@5
    .line 1897
    .local v0, "flags":I
    const/high16 v2, 0x40000000    # 2.0f

    #@7
    and-int/2addr v2, v0

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1
.end method

.method public final isTouchEvent()Z
    .locals 2

    #@0
    .prologue
    .line 1868
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/high16 v6, -0x80000000

    #@4
    .line 3005
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@9
    move-result v1

    #@a
    .line 3006
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@d
    .line 3007
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@f
    invoke-static {v4, v5, v7, v0, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@12
    move-result v2

    #@13
    .line 3008
    .local v2, "x":F
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@15
    invoke-static {v4, v5, v8, v0, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    #@18
    move-result v3

    #@19
    .line 3009
    .local v3, "y":F
    cmpg-float v4, v2, p1

    #@1b
    if-ltz v4, :cond_0

    #@1d
    cmpl-float v4, v2, p3

    #@1f
    if-lez v4, :cond_1

    #@21
    .line 3010
    :cond_0
    return v7

    #@22
    .line 3009
    :cond_1
    cmpg-float v4, v3, p2

    #@24
    if-ltz v4, :cond_0

    #@26
    cmpl-float v4, v3, p4

    #@28
    if-gtz v4, :cond_0

    #@2a
    .line 3006
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3013
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    return v8
.end method

.method public final offsetLocation(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2863
    cmpl-float v0, p1, v1

    #@3
    if-nez v0, :cond_0

    #@5
    cmpl-float v0, p2, v1

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 2864
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    #@e
    .line 2862
    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    #@0
    .prologue
    .line 1776
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    #@3
    .line 1778
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1779
    :try_start_0
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    #@8
    const/16 v2, 0xa

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 1780
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    #@12
    .line 1781
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    #@14
    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    #@16
    .line 1782
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 1775
    return-void

    #@1a
    .line 1778
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public final scale(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 1799
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1800
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    #@b
    .line 1798
    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 2854
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    #@5
    .line 2853
    return-void
.end method

.method public final setActionButton(I)V
    .locals 2
    .param p1, "button"    # I

    #@0
    .prologue
    .line 2359
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    #@5
    .line 2358
    return-void
.end method

.method public final setButtonState(I)V
    .locals 2
    .param p1, "buttonState"    # I

    #@0
    .prologue
    .line 2337
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    #@5
    .line 2336
    return-void
.end method

.method public final setDownTime(J)V
    .locals 5
    .param p1, "downTime"    # J

    #@0
    .prologue
    .line 1923
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    const-wide/32 v2, 0xf4240

    #@5
    mul-long/2addr v2, p1

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    #@9
    .line 1922
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 2847
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    #@5
    .line 2846
    return-void
.end method

.method public final setLocation(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 2876
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    .line 2877
    .local v0, "oldX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    #@7
    move-result v1

    #@8
    .line 2878
    .local v1, "oldY":F
    sub-float v2, p1, v0

    #@a
    sub-float v3, p2, v1

    #@c
    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@f
    .line 2875
    return-void
.end method

.method public final setSource(I)V
    .locals 2
    .param p1, "source"    # I

    #@0
    .prologue
    .line 1819
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)I

    #@5
    .line 1818
    return-void
.end method

.method public final setTainted(Z)V
    .locals 4
    .param p1, "tainted"    # Z

    #@0
    .prologue
    .line 1890
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    #@3
    move-result v0

    #@4
    .line 1891
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6
    if-eqz p1, :cond_0

    #@8
    const/high16 v1, -0x80000000

    #@a
    or-int/2addr v1, v0

    #@b
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    #@e
    .line 1889
    return-void

    #@f
    .line 1891
    :cond_0
    const v1, 0x7fffffff

    #@12
    and-int/2addr v1, v0

    #@13
    goto :goto_0
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .locals 4
    .param p1, "targetsFocus"    # Z

    #@0
    .prologue
    .line 1902
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    #@3
    move-result v0

    #@4
    .line 1903
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 1904
    const/high16 v1, 0x40000000    # 2.0f

    #@a
    or-int/2addr v1, v0

    #@b
    .line 1903
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    #@e
    .line 1901
    return-void

    #@f
    .line 1905
    :cond_0
    const v1, -0x40000001    # -1.9999999f

    #@12
    and-int/2addr v1, v0

    #@13
    goto :goto_0
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 36
    .param p1, "idBits"    # I

    #@0
    .prologue
    .line 3076
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    #@3
    move-result-object v2

    #@4
    .line 3077
    .local v2, "ev":Landroid/view/MotionEvent;
    sget-object v35, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    #@6
    monitor-enter v35

    #@7
    .line 3078
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@b
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    #@e
    move-result v34

    #@f
    .line 3079
    .local v34, "oldPointerCount":I
    invoke-static/range {v34 .. v34}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    #@12
    .line 3080
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    #@14
    .line 3081
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    #@16
    .line 3082
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    sget-object v28, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    #@18
    .line 3084
    .local v28, "map":[I
    move-object/from16 v0, p0

    #@1a
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@1c
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    #@1f
    move-result v31

    #@20
    .line 3085
    .local v31, "oldAction":I
    move/from16 v0, v31

    #@22
    and-int/lit16 v0, v0, 0xff

    #@24
    move/from16 v32, v0

    #@26
    .line 3086
    .local v32, "oldActionMasked":I
    const v3, 0xff00

    #@29
    and-int v3, v3, v31

    #@2b
    shr-int/lit8 v33, v3, 0x8

    #@2d
    .line 3088
    .local v33, "oldActionPointerIndex":I
    const/16 v29, -0x1

    #@2f
    .line 3089
    .local v29, "newActionPointerIndex":I
    const/16 v20, 0x0

    #@31
    .line 3090
    .local v20, "newPointerCount":I
    const/16 v30, 0x0

    #@33
    .line 3091
    .local v30, "newIdBits":I
    const/16 v26, 0x0

    #@35
    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    #@37
    move/from16 v1, v34

    #@39
    if-ge v0, v1, :cond_2

    #@3b
    .line 3092
    move-object/from16 v0, p0

    #@3d
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@3f
    aget-object v3, v21, v20

    #@41
    move/from16 v0, v26

    #@43
    invoke-static {v4, v5, v0, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    #@46
    .line 3093
    aget-object v3, v21, v20

    #@48
    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@4a
    const/4 v4, 0x1

    #@4b
    shl-int v27, v4, v3

    #@4d
    .line 3094
    .local v27, "idBit":I
    and-int v3, v27, p1

    #@4f
    if-eqz v3, :cond_1

    #@51
    .line 3095
    move/from16 v0, v26

    #@53
    move/from16 v1, v33

    #@55
    if-ne v0, v1, :cond_0

    #@57
    .line 3096
    move/from16 v29, v20

    #@59
    .line 3098
    :cond_0
    aput v26, v28, v20

    #@5b
    .line 3099
    add-int/lit8 v20, v20, 0x1

    #@5d
    .line 3100
    or-int v30, v30, v27

    #@5f
    .line 3091
    :cond_1
    add-int/lit8 v26, v26, 0x1

    #@61
    goto :goto_0

    #@62
    .line 3104
    .end local v27    # "idBit":I
    :cond_2
    if-nez v20, :cond_3

    #@64
    .line 3105
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@66
    const-string/jumbo v4, "idBits did not match any ids in the event"

    #@69
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    .line 3077
    .end local v20    # "newPointerCount":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "i":I
    .end local v28    # "map":[I
    .end local v29    # "newActionPointerIndex":I
    .end local v30    # "newIdBits":I
    .end local v31    # "oldAction":I
    .end local v32    # "oldActionMasked":I
    .end local v33    # "oldActionPointerIndex":I
    .end local v34    # "oldPointerCount":I
    :catchall_0
    move-exception v3

    #@6e
    monitor-exit v35

    #@6f
    throw v3

    #@70
    .line 3109
    .restart local v20    # "newPointerCount":I
    .restart local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v26    # "i":I
    .restart local v28    # "map":[I
    .restart local v29    # "newActionPointerIndex":I
    .restart local v30    # "newIdBits":I
    .restart local v31    # "oldAction":I
    .restart local v32    # "oldActionMasked":I
    .restart local v33    # "oldActionPointerIndex":I
    .restart local v34    # "oldPointerCount":I
    :cond_3
    const/4 v3, 0x5

    #@71
    move/from16 v0, v32

    #@73
    if-eq v0, v3, :cond_4

    #@75
    const/4 v3, 0x6

    #@76
    move/from16 v0, v32

    #@78
    if-ne v0, v3, :cond_8

    #@7a
    .line 3110
    :cond_4
    if-gez v29, :cond_5

    #@7c
    .line 3112
    const/4 v7, 0x2

    #@7d
    .line 3127
    .local v7, "newAction":I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    #@7f
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@81
    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    #@84
    move-result v25

    #@85
    .line 3128
    .local v25, "historySize":I
    const/16 v23, 0x0

    #@87
    .local v23, "h":I
    :goto_2
    move/from16 v0, v23

    #@89
    move/from16 v1, v25

    #@8b
    if-gt v0, v1, :cond_c

    #@8d
    .line 3129
    move/from16 v0, v23

    #@8f
    move/from16 v1, v25

    #@91
    if-ne v0, v1, :cond_9

    #@93
    const/high16 v24, -0x80000000

    #@95
    .line 3131
    .local v24, "historyPos":I
    :goto_3
    const/16 v26, 0x0

    #@97
    :goto_4
    move/from16 v0, v26

    #@99
    move/from16 v1, v20

    #@9b
    if-ge v0, v1, :cond_a

    #@9d
    .line 3132
    move-object/from16 v0, p0

    #@9f
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@a1
    aget v3, v28, v26

    #@a3
    aget-object v6, v22, v26

    #@a5
    move/from16 v0, v24

    #@a7
    invoke-static {v4, v5, v3, v0, v6}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    #@aa
    .line 3131
    add-int/lit8 v26, v26, 0x1

    #@ac
    goto :goto_4

    #@ad
    .line 3113
    .end local v7    # "newAction":I
    .end local v23    # "h":I
    .end local v24    # "historyPos":I
    .end local v25    # "historySize":I
    :cond_5
    const/4 v3, 0x1

    #@ae
    move/from16 v0, v20

    #@b0
    if-ne v0, v3, :cond_7

    #@b2
    .line 3115
    const/4 v3, 0x5

    #@b3
    move/from16 v0, v32

    #@b5
    if-ne v0, v3, :cond_6

    #@b7
    .line 3116
    const/4 v7, 0x0

    #@b8
    .restart local v7    # "newAction":I
    goto :goto_1

    #@b9
    .end local v7    # "newAction":I
    :cond_6
    const/4 v7, 0x1

    #@ba
    .restart local v7    # "newAction":I
    goto :goto_1

    #@bb
    .line 3120
    .end local v7    # "newAction":I
    :cond_7
    shl-int/lit8 v3, v29, 0x8

    #@bd
    .line 3119
    or-int v7, v32, v3

    #@bf
    .restart local v7    # "newAction":I
    goto :goto_1

    #@c0
    .line 3124
    .end local v7    # "newAction":I
    :cond_8
    move/from16 v7, v31

    #@c2
    .restart local v7    # "newAction":I
    goto :goto_1

    #@c3
    .line 3129
    .restart local v23    # "h":I
    .restart local v25    # "historySize":I
    :cond_9
    move/from16 v24, v23

    #@c5
    .restart local v24    # "historyPos":I
    goto :goto_3

    #@c6
    .line 3135
    :cond_a
    move-object/from16 v0, p0

    #@c8
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@ca
    move/from16 v0, v24

    #@cc
    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    #@cf
    move-result-wide v18

    #@d0
    .line 3136
    .local v18, "eventTimeNanos":J
    if-nez v23, :cond_b

    #@d2
    .line 3137
    iget-wide v3, v2, Landroid/view/MotionEvent;->mNativePtr:J

    #@d4
    .line 3138
    move-object/from16 v0, p0

    #@d6
    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@d8
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    #@db
    move-result v5

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@e0
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    #@e3
    move-result v6

    #@e4
    .line 3139
    move-object/from16 v0, p0

    #@e6
    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@e8
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    #@eb
    move-result v8

    #@ec
    .line 3140
    move-object/from16 v0, p0

    #@ee
    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@f0
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    #@f3
    move-result v9

    #@f4
    move-object/from16 v0, p0

    #@f6
    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@f8
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    #@fb
    move-result v10

    #@fc
    .line 3141
    move-object/from16 v0, p0

    #@fe
    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@100
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    #@103
    move-result v11

    #@104
    .line 3142
    move-object/from16 v0, p0

    #@106
    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@108
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    #@10b
    move-result v12

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@110
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    #@113
    move-result v13

    #@114
    .line 3143
    move-object/from16 v0, p0

    #@116
    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@118
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    #@11b
    move-result v14

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@120
    move-wide/from16 v16, v0

    #@122
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    #@125
    move-result v15

    #@126
    .line 3144
    move-object/from16 v0, p0

    #@128
    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    #@12a
    move-wide/from16 v16, v0

    #@12c
    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    #@12f
    move-result-wide v16

    #@130
    .line 3137
    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    #@133
    move-result-wide v4

    #@134
    iput-wide v4, v2, Landroid/view/MotionEvent;->mNativePtr:J

    #@136
    .line 3128
    :goto_5
    add-int/lit8 v23, v23, 0x1

    #@138
    goto/16 :goto_2

    #@13a
    .line 3147
    :cond_b
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    #@13c
    const/4 v13, 0x0

    #@13d
    move-wide/from16 v10, v18

    #@13f
    move-object/from16 v12, v22

    #@141
    invoke-static/range {v8 .. v13}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@144
    goto :goto_5

    #@145
    .end local v18    # "eventTimeNanos":J
    .end local v24    # "historyPos":I
    :cond_c
    monitor-exit v35

    #@146
    .line 3150
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 3156
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3157
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "MotionEvent { action="

    #@8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v4

    #@10
    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 3158
    const-string/jumbo v3, ", actionButton="

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    #@21
    move-result v4

    #@22
    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 3160
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    #@2c
    move-result v2

    #@2d
    .line 3161
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    #@2e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@30
    .line 3162
    const-string/jumbo v3, ", id["

    #@33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    const-string/jumbo v4, "]="

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@45
    move-result v4

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    .line 3163
    const-string/jumbo v3, ", x["

    #@4c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    const-string/jumbo v4, "]="

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@5e
    move-result v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@62
    .line 3164
    const-string/jumbo v3, ", y["

    #@65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    const-string/jumbo v4, "]="

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@77
    move-result v4

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7b
    .line 3165
    const-string/jumbo v3, ", toolType["

    #@7e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    const-string/jumbo v4, "]="

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    .line 3166
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    #@90
    move-result v4

    #@91
    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    .line 3165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    .line 3161
    add-int/lit8 v0, v0, 0x1

    #@9a
    goto :goto_0

    #@9b
    .line 3169
    :cond_0
    const-string/jumbo v3, ", buttonState="

    #@9e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    #@a5
    move-result v4

    #@a6
    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 3170
    const-string/jumbo v3, ", metaState="

    #@b0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    #@b7
    move-result v4

    #@b8
    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 3171
    const-string/jumbo v3, ", flags=0x"

    #@c2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    #@c9
    move-result v4

    #@ca
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    .line 3172
    const-string/jumbo v3, ", edgeFlags=0x"

    #@d4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v3

    #@d8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@db
    move-result v4

    #@dc
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@df
    move-result-object v4

    #@e0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 3173
    const-string/jumbo v3, ", pointerCount="

    #@e6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ed
    .line 3174
    const-string/jumbo v3, ", historySize="

    #@f0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    #@f7
    move-result v4

    #@f8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    .line 3175
    const-string/jumbo v3, ", eventTime="

    #@fe
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v3

    #@102
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@105
    move-result-wide v4

    #@106
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@109
    .line 3176
    const-string/jumbo v3, ", downTime="

    #@10c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v3

    #@110
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    #@113
    move-result-wide v4

    #@114
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@117
    .line 3177
    const-string/jumbo v3, ", deviceId="

    #@11a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v3

    #@11e
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    #@121
    move-result v4

    #@122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    .line 3178
    const-string/jumbo v3, ", source=0x"

    #@128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v3

    #@12c
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    #@12f
    move-result v4

    #@130
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@133
    move-result-object v4

    #@134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    .line 3179
    const-string/jumbo v3, " }"

    #@13a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    .line 3180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v3

    #@141
    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 2887
    if-nez p1, :cond_0

    #@2
    .line 2888
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "matrix must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2891
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    #@10
    .line 2886
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 3358
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 3359
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    #@6
    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    #@9
    .line 3357
    return-void
.end method
