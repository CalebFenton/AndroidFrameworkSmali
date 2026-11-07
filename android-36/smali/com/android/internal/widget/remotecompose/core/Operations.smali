.class public Lcom/android/internal/widget/remotecompose/core/Operations;
.super Ljava/lang/Object;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_SEMANTICS:I = 0xfa

.field public static final blacklist ANIMATED_FLOAT:I = 0x51

.field public static final blacklist ANIMATION_SPEC:I = 0xe

.field public static final blacklist ATTRIBUTE_COLOR:I = 0xb4

.field public static final blacklist ATTRIBUTE_IMAGE:I = 0xab

.field public static final blacklist ATTRIBUTE_TEXT:I = 0xaa

.field public static final blacklist ATTRIBUTE_TIME:I = 0xac

.field public static final blacklist CANVAS_OPERATIONS:I = 0xad

.field public static final blacklist CLICK_AREA:I = 0x40

.field public static final blacklist CLIP_PATH:I = 0x26

.field public static final blacklist CLIP_RECT:I = 0x27

.field public static final blacklist COLOR_CONSTANT:I = 0x8a

.field public static final blacklist COLOR_EXPRESSIONS:I = 0x86

.field public static final blacklist COMPONENT_START:I = 0x2

.field public static final blacklist COMPONENT_VALUE:I = 0x96

.field public static final blacklist CONDITIONAL_OPERATIONS:I = 0xb2

.field public static final blacklist CONTAINER_END:I = 0xd6

.field public static final blacklist DATA_BITMAP:I = 0x65

.field public static final blacklist DATA_BITMAP_FONT:I = 0xa7

.field public static final blacklist DATA_BOOLEAN:I = 0x8f

.field public static final blacklist DATA_FLOAT:I = 0x50

.field public static final blacklist DATA_INT:I = 0x8c

.field public static final blacklist DATA_LONG:I = 0x94

.field public static final blacklist DATA_MAP_LOOKUP:I = 0x9a

.field public static final blacklist DATA_PATH:I = 0x7b

.field public static final blacklist DATA_SHADER:I = 0x2d

.field public static final blacklist DATA_TEXT:I = 0x66

.field public static final blacklist DEBUG_MESSAGE:I = 0xb3

.field public static final blacklist DRAW_ARC:I = 0x98

.field public static final blacklist DRAW_BITMAP:I = 0x2c

.field public static final blacklist DRAW_BITMAP_FONT_TEXT_RUN:I = 0x30

.field public static final blacklist DRAW_BITMAP_INT:I = 0x42

.field public static final blacklist DRAW_BITMAP_SCALED:I = 0x95

.field public static final blacklist DRAW_CIRCLE:I = 0x2e

.field public static final blacklist DRAW_CONTENT:I = 0x8b

.field public static final blacklist DRAW_LINE:I = 0x2f

.field public static final blacklist DRAW_OVAL:I = 0x38

.field public static final blacklist DRAW_PATH:I = 0x7c

.field public static final blacklist DRAW_RECT:I = 0x2a

.field public static final blacklist DRAW_ROUND_RECT:I = 0x33

.field public static final blacklist DRAW_SECTOR:I = 0x34

.field public static final blacklist DRAW_TEXT_ANCHOR:I = 0x85

.field public static final blacklist DRAW_TEXT_ON_PATH:I = 0x35

.field public static final blacklist DRAW_TEXT_RUN:I = 0x2b

.field public static final blacklist DRAW_TWEEN_PATH:I = 0x7d

.field public static final blacklist FLOAT_LIST:I = 0x93

.field public static final blacklist FUNCTION_CALL:I = 0xa6

.field public static final blacklist FUNCTION_DEFINE:I = 0xa8

.field public static final blacklist HAPTIC_FEEDBACK:I = 0xb1

.field public static final blacklist HEADER:I = 0x0

.field public static final blacklist HOST_ACTION:I = 0xd1

.field public static final blacklist HOST_METADATA_ACTION:I = 0xd8

.field public static final blacklist HOST_NAMED_ACTION:I = 0xd2

.field public static final blacklist ID_LIST:I = 0x92

.field public static final blacklist ID_MAP:I = 0x91

.field public static final blacklist IMPULSE_PROCESS:I = 0xa5

.field public static final blacklist IMPULSE_START:I = 0xa4

.field public static final blacklist INTEGER_EXPRESSION:I = 0x90

.field public static final blacklist LAYOUT_BOX:I = 0xca

.field public static final blacklist LAYOUT_CANVAS:I = 0xcd

.field public static final blacklist LAYOUT_CANVAS_CONTENT:I = 0xcf

.field public static final blacklist LAYOUT_COLLAPSIBLE_COLUMN:I = 0xe9

.field public static final blacklist LAYOUT_COLLAPSIBLE_ROW:I = 0xe6

.field public static final blacklist LAYOUT_COLUMN:I = 0xcc

.field public static final blacklist LAYOUT_CONTENT:I = 0xc9

.field public static final blacklist LAYOUT_FIT_BOX:I = 0xb0

.field public static final blacklist LAYOUT_IMAGE:I = 0xea

.field public static final blacklist LAYOUT_ROOT:I = 0xc8

.field public static final blacklist LAYOUT_ROW:I = 0xcb

.field public static final blacklist LAYOUT_STATE:I = 0xd9

.field public static final blacklist LAYOUT_TEXT:I = 0xd0

.field public static final blacklist LOAD_BITMAP:I = 0x4

.field public static final blacklist LOOP_START:I = 0xd7

.field public static final blacklist MATRIX_RESTORE:I = 0x83

.field public static final blacklist MATRIX_ROTATE:I = 0x81

.field public static final blacklist MATRIX_SAVE:I = 0x82

.field public static final blacklist MATRIX_SCALE:I = 0x7e

.field public static final blacklist MATRIX_SET:I = 0x84

.field public static final blacklist MATRIX_SKEW:I = 0x80

.field public static final blacklist MATRIX_TRANSLATE:I = 0x7f

.field public static final blacklist MODIFIER_BACKGROUND:I = 0x37

.field public static final blacklist MODIFIER_BORDER:I = 0x6b

.field public static final blacklist MODIFIER_CLICK:I = 0x3b

.field public static final blacklist MODIFIER_CLIP_RECT:I = 0x6c

.field public static final blacklist MODIFIER_COLLAPSIBLE_PRIORITY:I = 0xeb

.field public static final blacklist MODIFIER_DRAW_CONTENT:I = 0xae

.field public static final blacklist MODIFIER_GRAPHICS_LAYER:I = 0xe0

.field public static final blacklist MODIFIER_HEIGHT:I = 0x43

.field public static final blacklist MODIFIER_HEIGHT_IN:I = 0xe8

.field public static final blacklist MODIFIER_MARQUEE:I = 0xe4

.field public static final blacklist MODIFIER_OFFSET:I = 0xdd

.field public static final blacklist MODIFIER_PADDING:I = 0x3a

.field public static final blacklist MODIFIER_RIPPLE:I = 0xe5

.field public static final blacklist MODIFIER_ROUNDED_CLIP_RECT:I = 0x36

.field public static final blacklist MODIFIER_SCROLL:I = 0xe2

.field public static final blacklist MODIFIER_TOUCH_CANCEL:I = 0xe1

.field public static final blacklist MODIFIER_TOUCH_DOWN:I = 0xdb

.field public static final blacklist MODIFIER_TOUCH_UP:I = 0xdc

.field public static final blacklist MODIFIER_VISIBILITY:I = 0xd3

.field public static final blacklist MODIFIER_WIDTH:I = 0x10

.field public static final blacklist MODIFIER_WIDTH_IN:I = 0xe7

.field public static final blacklist MODIFIER_ZINDEX:I = 0xdf

.field public static final blacklist NAMED_VARIABLE:I = 0x89

.field public static final blacklist PAINT_VALUES:I = 0x28

.field public static final blacklist PARTICLE_DEFINE:I = 0xa1

.field public static final blacklist PARTICLE_LOOP:I = 0xa3

.field public static final blacklist PARTICLE_PROCESS:I = 0xa2

.field public static final blacklist PATH_ADD:I = 0xa0

.field public static final blacklist PATH_COMBINE:I = 0xaf

.field public static final blacklist PATH_CREATE:I = 0x9f

.field public static final blacklist PATH_TWEEN:I = 0x9e

.field public static final blacklist ROOT_CONTENT_BEHAVIOR:I = 0x41

.field public static final blacklist ROOT_CONTENT_DESCRIPTION:I = 0x67

.field public static final blacklist RUN_ACTION:I = 0xec

.field public static final blacklist TEXT_FROM_FLOAT:I = 0x87

.field public static final blacklist TEXT_LENGTH:I = 0x9c

.field public static final blacklist TEXT_LOOKUP:I = 0x97

.field public static final blacklist TEXT_LOOKUP_INT:I = 0x99

.field public static final blacklist TEXT_MEASURE:I = 0x9b

.field public static final blacklist TEXT_MERGE:I = 0x88

.field public static final blacklist THEME:I = 0x3f

.field public static final blacklist TOUCH_EXPRESSION:I = 0x9d

.field public static final blacklist VALUE_FLOAT_CHANGE_ACTION:I = 0xde

.field public static final blacklist VALUE_FLOAT_EXPRESSION_CHANGE_ACTION:I = 0xe3

.field public static final blacklist VALUE_INTEGER_CHANGE_ACTION:I = 0xd4

.field public static final blacklist VALUE_INTEGER_EXPRESSION_CHANGE_ACTION:I = 0xda

.field public static final blacklist VALUE_STRING_CHANGE_ACTION:I = 0xd5

.field public static blacklist map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 305
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 316
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda35;-><init>()V

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda46;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda46;-><init>()V

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda57;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda57;-><init>()V

    const/16 v2, 0xa7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda68;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda68;-><init>()V

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda79;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda79;-><init>()V

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda90;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda90;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda101;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda101;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda112;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda112;-><init>()V

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda123;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda123;-><init>()V

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda11;-><init>()V

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda22;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda27;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda28;-><init>()V

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda29;-><init>()V

    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda30;-><init>()V

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda31;-><init>()V

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda32;-><init>()V

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda33;-><init>()V

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda34;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda36;-><init>()V

    const/16 v2, 0x7d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda37;-><init>()V

    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda38;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda39;-><init>()V

    const/16 v2, 0x83

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda40;-><init>()V

    const/16 v2, 0x81

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda41;-><init>()V

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda42;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda42;-><init>()V

    const/16 v2, 0x7e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda43;-><init>()V

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda44;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda44;-><init>()V

    const/16 v2, 0x7f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda45;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda45;-><init>()V

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda47;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda48;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda48;-><init>()V

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda49;-><init>()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda50;-><init>()V

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda51;-><init>()V

    const/16 v2, 0x85

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda52;-><init>()V

    const/16 v2, 0x86

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda53;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda53;-><init>()V

    const/16 v2, 0x87

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda54;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda54;-><init>()V

    const/16 v2, 0x88

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda55;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda55;-><init>()V

    const/16 v2, 0x89

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda56;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda56;-><init>()V

    const/16 v2, 0x8a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda58;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda58;-><init>()V

    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda59;-><init>()V

    const/16 v2, 0x90

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda60;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda60;-><init>()V

    const/16 v2, 0x8f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda61;-><init>()V

    const/16 v2, 0x91

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda62;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda62;-><init>()V

    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda63;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda63;-><init>()V

    const/16 v2, 0x93

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda64;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda64;-><init>()V

    const/16 v2, 0x94

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda65;-><init>()V

    const/16 v2, 0x95

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda66;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda66;-><init>()V

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda67;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda67;-><init>()V

    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda69;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda69;-><init>()V

    const/16 v2, 0xd7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda70;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda70;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda71;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda71;-><init>()V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda72;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda72;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda73;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda73;-><init>()V

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda74;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda74;-><init>()V

    const/16 v2, 0xe7

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda75;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda75;-><init>()V

    const/16 v2, 0xe8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda76;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda76;-><init>()V

    const/16 v2, 0xeb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda77;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda77;-><init>()V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda78;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda78;-><init>()V

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda80;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda80;-><init>()V

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda81;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda81;-><init>()V

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda82;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda82;-><init>()V

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda83;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda83;-><init>()V

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda84;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda84;-><init>()V

    const/16 v2, 0xdb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda85;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda85;-><init>()V

    const/16 v2, 0xdc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda86;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda86;-><init>()V

    const/16 v2, 0xe1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda87;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda87;-><init>()V

    const/16 v2, 0xd3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda88;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda88;-><init>()V

    const/16 v2, 0xdd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda89;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda89;-><init>()V

    const/16 v2, 0xdf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda91;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda91;-><init>()V

    const/16 v2, 0xe0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda92;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda92;-><init>()V

    const/16 v2, 0xe2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda93;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda93;-><init>()V

    const/16 v2, 0xe4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda94;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda94;-><init>()V

    const/16 v2, 0xe5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda95;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda95;-><init>()V

    const/16 v2, 0xae

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda96;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda96;-><init>()V

    const/16 v2, 0xd6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda97;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda97;-><init>()V

    const/16 v2, 0xec

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda98;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda98;-><init>()V

    const/16 v2, 0xd1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda99;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda99;-><init>()V

    const/16 v2, 0xd8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda100;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda100;-><init>()V

    const/16 v2, 0xd2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda102;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda102;-><init>()V

    const/16 v2, 0xd4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda103;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda103;-><init>()V

    const/16 v2, 0xda

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda104;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda104;-><init>()V

    const/16 v2, 0xd5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda105;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda105;-><init>()V

    const/16 v2, 0xde

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda106;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda106;-><init>()V

    const/16 v2, 0xe3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda107;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda107;-><init>()V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda108;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda108;-><init>()V

    const/16 v2, 0xc9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda109;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda109;-><init>()V

    const/16 v2, 0xca

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda110;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda110;-><init>()V

    const/16 v2, 0xb0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda111;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda111;-><init>()V

    const/16 v2, 0xcc

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda113;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda113;-><init>()V

    const/16 v2, 0xe9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda114;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda114;-><init>()V

    const/16 v2, 0xcb

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda115;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda115;-><init>()V

    const/16 v2, 0xe6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda116;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda116;-><init>()V

    const/16 v2, 0xcd

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda117;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda117;-><init>()V

    const/16 v2, 0xcf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda118;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda118;-><init>()V

    const/16 v2, 0xd0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda119;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda119;-><init>()V

    const/16 v2, 0xea

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda120;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda120;-><init>()V

    const/16 v2, 0xd9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda121;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda121;-><init>()V

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda122;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda122;-><init>()V

    const/16 v2, 0x96

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x98

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda2;-><init>()V

    const/16 v2, 0x9a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda3;-><init>()V

    const/16 v2, 0x9b

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda4;-><init>()V

    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda5;-><init>()V

    const/16 v2, 0x9d

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda6;-><init>()V

    const/16 v2, 0x9e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda7;-><init>()V

    const/16 v2, 0x9f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda8;-><init>()V

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda9;-><init>()V

    const/16 v2, 0xa4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda10;-><init>()V

    const/16 v2, 0xa5

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda12;-><init>()V

    const/16 v2, 0xa1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda13;-><init>()V

    const/16 v2, 0xa3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda14;-><init>()V

    const/16 v2, 0xa6

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda15;-><init>()V

    const/16 v2, 0xa8

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda16;-><init>()V

    const/16 v2, 0xad

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda17;-><init>()V

    const/16 v2, 0xfa

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda18;-><init>()V

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda19;-><init>()V

    const/16 v2, 0xaa

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda20;-><init>()V

    const/16 v2, 0xac

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda21;-><init>()V

    const/16 v2, 0xaf

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda23;-><init>()V

    const/16 v2, 0xb1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda24;-><init>()V

    const/16 v2, 0xb2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda25;-><init>()V

    const/16 v2, 0xb3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/Operations$$ExternalSyntheticLambda26;-><init>()V

    const/16 v2, 0xb4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
