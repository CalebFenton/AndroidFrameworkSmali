.class final Landroid/hardware/input/PhysicalKeyLayout;
.super Ljava/lang/Object;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;,
        Landroid/hardware/input/PhysicalKeyLayout$EnterKey;,
        Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

.field private static final blacklist SCANCODE_0:I = 0xb

.field private static final blacklist SCANCODE_1:I = 0x2

.field private static final blacklist SCANCODE_2:I = 0x3

.field private static final blacklist SCANCODE_3:I = 0x4

.field private static final blacklist SCANCODE_4:I = 0x5

.field private static final blacklist SCANCODE_5:I = 0x6

.field private static final blacklist SCANCODE_6:I = 0x7

.field private static final blacklist SCANCODE_7:I = 0x8

.field private static final blacklist SCANCODE_8:I = 0x9

.field private static final blacklist SCANCODE_9:I = 0xa

.field private static final blacklist SCANCODE_A:I = 0x1e

.field private static final blacklist SCANCODE_APOSTROPHE:I = 0x28

.field private static final blacklist SCANCODE_B:I = 0x30

.field private static final blacklist SCANCODE_BACKSLASH1:I = 0x2b

.field private static final blacklist SCANCODE_BACKSLASH2:I = 0x56

.field private static final blacklist SCANCODE_C:I = 0x2e

.field private static final blacklist SCANCODE_COMMA:I = 0x33

.field private static final blacklist SCANCODE_D:I = 0x20

.field private static final blacklist SCANCODE_E:I = 0x12

.field private static final blacklist SCANCODE_EQUALS:I = 0xd

.field private static final blacklist SCANCODE_F:I = 0x21

.field private static final blacklist SCANCODE_G:I = 0x22

.field private static final blacklist SCANCODE_GRAVE:I = 0x29

.field private static final blacklist SCANCODE_H:I = 0x23

.field private static final blacklist SCANCODE_I:I = 0x17

.field private static final blacklist SCANCODE_J:I = 0x24

.field private static final blacklist SCANCODE_K:I = 0x25

.field private static final blacklist SCANCODE_L:I = 0x26

.field private static final blacklist SCANCODE_LEFT_BRACKET:I = 0x1a

.field private static final blacklist SCANCODE_M:I = 0x32

.field private static final blacklist SCANCODE_MINUS:I = 0xc

.field private static final blacklist SCANCODE_N:I = 0x31

.field private static final blacklist SCANCODE_O:I = 0x18

.field private static final blacklist SCANCODE_P:I = 0x19

.field private static final blacklist SCANCODE_PERIOD:I = 0x34

.field private static final blacklist SCANCODE_Q:I = 0x10

.field private static final blacklist SCANCODE_R:I = 0x13

.field private static final blacklist SCANCODE_RIGHT_BRACKET:I = 0x1b

.field private static final blacklist SCANCODE_S:I = 0x1f

.field private static final blacklist SCANCODE_SEMICOLON:I = 0x27

.field private static final blacklist SCANCODE_SLASH:I = 0x35

.field private static final blacklist SCANCODE_T:I = 0x14

.field private static final blacklist SCANCODE_U:I = 0x16

.field private static final blacklist SCANCODE_V:I = 0x2f

.field private static final blacklist SCANCODE_W:I = 0x11

.field private static final blacklist SCANCODE_X:I = 0x2d

.field private static final blacklist SCANCODE_Y:I = 0x15

.field private static final blacklist SCANCODE_YEN:I = 0x7c

.field private static final blacklist SCANCODE_Z:I = 0x2c

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboardLayoutPreview"


# instance fields
.field private blacklist mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

.field private blacklist mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/input/PhysicalKeyLayout;->getKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 15

    .line 84
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    .line 87
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v5, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v6, 0xc

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v8, 0xe

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    const/16 v3, 0x33

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/16 v6, 0x30

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    const/16 v7, 0x35

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    const/16 v8, 0x31

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    const/16 v9, 0x25

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x18

    const/16 v10, 0x2b

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    const/16 v11, 0x2c

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    const/16 v12, 0x47

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1b

    const/16 v12, 0x48

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1d

    const/16 v12, 0x1e

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v2, 0x1f

    const/16 v13, 0x2f

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v14, 0x20

    invoke-virtual {v0, v14, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v14, 0x22

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x22

    const/16 v14, 0x23

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x23

    const/16 v14, 0x24

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x24

    const/16 v14, 0x26

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x27

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x26

    const/16 v9, 0x28

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x27

    const/16 v9, 0x4a

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x28

    const/16 v9, 0x4b

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x29

    const/16 v9, 0x44

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x49

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x36

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v4, 0x34

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x37

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x34

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    const/16 v1, 0x7c

    const/16 v2, 0xd8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V
    .registers 4
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 139
    iput-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/PhysicalKeyLayout;->initLayoutKeys(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V

    .line 143
    return-void
.end method

.method private blacklist createAnsiLayout(Landroid/view/KeyCharacterMap;)V
    .registers 22
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;

    .line 172
    move-object/from16 v0, p1

    const/4 v1, 0x5

    new-array v2, v1, [[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v3, 0xe

    new-array v4, v3, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 174
    const/16 v5, 0x29

    invoke-static {v0, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    .line 175
    const/4 v7, 0x3

    invoke-static {v0, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v9, 0x4

    invoke-static {v0, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v0, v1}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v9

    .line 176
    const/4 v10, 0x6

    invoke-static {v0, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v1

    const/4 v11, 0x7

    invoke-static {v0, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v10

    const/16 v12, 0x8

    invoke-static {v0, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v11

    .line 177
    const/16 v13, 0x9

    invoke-static {v0, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v12

    const/16 v14, 0xa

    invoke-static {v0, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v4, v13

    const/16 v15, 0xb

    invoke-static {v0, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v16

    aput-object v16, v4, v14

    .line 178
    move/from16 v16, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v17

    aput-object v17, v4, v15

    move/from16 v17, v5

    const/16 v5, 0xd

    invoke-static {v0, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v18

    aput-object v18, v4, v1

    .line 179
    move/from16 v18, v6

    const/16 v6, 0x43

    move/from16 v19, v7

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v18

    new-array v3, v3, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 182
    const/16 v4, 0x3d

    invoke-static {v4, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v18

    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v8

    .line 183
    const/16 v4, 0x11

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v17

    const/16 v4, 0x12

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v19

    const/16 v4, 0x13

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v9

    .line 184
    const/16 v4, 0x14

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v16

    const/16 v4, 0x15

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v10

    const/16 v4, 0x16

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v11

    .line 185
    const/16 v4, 0x17

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v12

    const/16 v4, 0x18

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v13

    const/16 v4, 0x19

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v14

    .line 186
    const/16 v4, 0x1a

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v15

    const/16 v4, 0x1b

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v1

    .line 187
    const/16 v4, 0x2b

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v3, v2, v8

    new-array v3, v5, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 190
    const/16 v4, 0x73

    const/high16 v5, 0x3fe00000    # 1.75f

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v18

    .line 191
    const/16 v4, 0x1e

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x1f

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v17

    const/16 v4, 0x20

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v19

    .line 192
    const/16 v4, 0x21

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x22

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v16

    const/16 v4, 0x23

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v10

    .line 193
    const/16 v4, 0x24

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v11

    const/16 v4, 0x25

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v12

    const/16 v4, 0x26

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v13

    .line 194
    const/16 v4, 0x27

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v14

    const/16 v4, 0x28

    invoke-static {v0, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v15

    .line 195
    const/16 v4, 0x42

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v3, v2, v17

    new-array v1, v1, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 198
    const/16 v3, 0x3b

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v18

    .line 199
    const/16 v3, 0x2c

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v8

    const/16 v3, 0x2d

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v17

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v19

    .line 200
    const/16 v3, 0x2f

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v9

    const/16 v3, 0x30

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v16

    const/16 v3, 0x31

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v10

    .line 201
    const/16 v3, 0x32

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v11

    const/16 v3, 0x33

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v12

    .line 202
    const/16 v3, 0x34

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v13

    const/16 v3, 0x35

    invoke-static {v0, v3}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v14

    .line 203
    const/16 v3, 0x3c

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v15

    aput-object v1, v2, v19

    new-array v1, v13, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 206
    const/16 v3, 0x71

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v18

    .line 207
    const/16 v3, 0x77

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v8

    .line 208
    const/16 v3, 0x75

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v17

    .line 209
    const/16 v3, 0x39

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v19

    .line 210
    const/16 v3, 0x3e

    const/high16 v5, 0x40d00000    # 6.5f

    invoke-static {v3, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v9

    .line 211
    const/16 v3, 0x3a

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v16

    .line 212
    const/16 v3, 0x76

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v10

    .line 213
    const/16 v3, 0x52

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v11

    .line 214
    const/16 v3, 0x72

    invoke-static {v3, v4}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v3

    aput-object v3, v1, v12

    aput-object v1, v2, v9

    move-object/from16 v1, p0

    iput-object v2, v1, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 217
    return-void
.end method

.method private blacklist createIsoLayout(Landroid/view/KeyCharacterMap;)V
    .registers 27
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    new-array v3, v2, [[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0xe

    new-array v5, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 222
    const/16 v6, 0x29

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 223
    const/4 v8, 0x3

    invoke-static {v1, v8}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v10, 0x4

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v5, v8

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v5, v10

    .line 224
    const/4 v11, 0x6

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v5, v2

    const/4 v12, 0x7

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v5, v11

    const/16 v13, 0x8

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v5, v12

    .line 225
    const/16 v14, 0x9

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v5, v13

    const/16 v15, 0xa

    invoke-static {v1, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v16

    aput-object v16, v5, v14

    move/from16 v16, v2

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v17

    aput-object v17, v5, v15

    .line 226
    move/from16 v17, v2

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v18

    aput-object v18, v5, v17

    move/from16 v18, v2

    const/16 v2, 0xd

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v19

    aput-object v19, v5, v18

    .line 227
    move/from16 v19, v6

    const/16 v6, 0x43

    move/from16 v20, v7

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v5, v3, v20

    new-array v5, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 230
    const/16 v6, 0x3d

    move/from16 v21, v8

    const v8, 0x3f933333    # 1.15f

    invoke-static {v6, v8}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v22

    aput-object v22, v5, v20

    move/from16 v22, v10

    const/16 v10, 0x10

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v9

    .line 231
    const/16 v10, 0x11

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v19

    const/16 v10, 0x12

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v21

    const/16 v10, 0x13

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v22

    .line 232
    const/16 v10, 0x14

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v16

    const/16 v10, 0x15

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v11

    const/16 v10, 0x16

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v12

    .line 233
    const/16 v10, 0x17

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v13

    const/16 v10, 0x18

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v14

    const/16 v10, 0x19

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v15

    .line 234
    const/16 v10, 0x1a

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v17

    const/16 v10, 0x1b

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v5, v18

    .line 235
    const/16 v10, 0x42

    move/from16 v23, v11

    const v11, 0x3faccccd    # 1.35f

    invoke-static {v10, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v24

    aput-object v24, v5, v2

    aput-object v5, v3, v9

    new-array v4, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 238
    invoke-static {v6, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v20

    const/16 v5, 0x1e

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v9

    .line 239
    const/16 v5, 0x1f

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v19

    const/16 v5, 0x20

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v21

    const/16 v5, 0x21

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v22

    .line 240
    const/16 v5, 0x22

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v16

    const/16 v5, 0x23

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v23

    const/16 v5, 0x24

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v12

    .line 241
    const/16 v5, 0x25

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v13

    const/16 v5, 0x26

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v14

    .line 242
    const/16 v5, 0x27

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v15

    const/16 v5, 0x28

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v17

    .line 243
    const/16 v5, 0x2b

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v18

    .line 244
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v10, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v4, v3, v19

    new-array v4, v2, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 247
    const/16 v6, 0x3b

    invoke-static {v6, v8}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v20

    .line 248
    const/16 v6, 0x56

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v9

    const/16 v6, 0x2c

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v19

    .line 249
    const/16 v6, 0x2d

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v21

    const/16 v6, 0x2e

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v22

    const/16 v6, 0x2f

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v16

    .line 250
    const/16 v6, 0x30

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v23

    const/16 v6, 0x31

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v12

    const/16 v6, 0x32

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v13

    .line 251
    const/16 v6, 0x33

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v14

    const/16 v6, 0x34

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v15

    .line 252
    const/16 v6, 0x35

    invoke-static {v1, v6}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v17

    .line 253
    const/16 v6, 0x3c

    const v7, 0x40166666    # 2.35f

    invoke-static {v6, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v18

    aput-object v4, v3, v21

    new-array v4, v14, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 256
    const/16 v6, 0x71

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v20

    .line 257
    const/16 v6, 0x77

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v9

    .line 258
    const/16 v6, 0x75

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v19

    .line 259
    const/16 v6, 0x39

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v21

    .line 260
    const/16 v6, 0x3e

    const/high16 v7, 0x40d00000    # 6.5f

    invoke-static {v6, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v22

    .line 261
    const/16 v6, 0x3a

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v16

    .line 262
    const/16 v6, 0x76

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v23

    .line 263
    const/16 v6, 0x52

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v12

    .line 264
    const/16 v6, 0x72

    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v6

    aput-object v6, v4, v13

    aput-object v4, v3, v22

    iput-object v3, v0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 267
    new-instance v3, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    invoke-direct {v3, v9, v2, v11, v5}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;-><init>(IIFF)V

    iput-object v3, v0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    .line 268
    return-void
.end method

.method private blacklist createJisLayout(Landroid/view/KeyCharacterMap;)V
    .registers 26
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x5

    new-array v3, v2, [[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/16 v4, 0xf

    new-array v4, v4, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 273
    const/16 v5, 0x29

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    .line 274
    const/4 v7, 0x3

    invoke-static {v1, v7}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v9, 0x4

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v1, v2}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v10

    aput-object v10, v4, v9

    .line 275
    const/4 v10, 0x6

    invoke-static {v1, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v2

    const/4 v11, 0x7

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v12

    aput-object v12, v4, v10

    const/16 v12, 0x8

    invoke-static {v1, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v13

    aput-object v13, v4, v11

    .line 276
    const/16 v13, 0x9

    invoke-static {v1, v13}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v14

    aput-object v14, v4, v12

    const/16 v14, 0xa

    invoke-static {v1, v14}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v15

    aput-object v15, v4, v13

    const/16 v15, 0xb

    invoke-static {v1, v15}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v16

    aput-object v16, v4, v14

    .line 277
    move/from16 v16, v2

    const/16 v2, 0xc

    move/from16 v17, v5

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v18

    aput-object v18, v4, v15

    move/from16 v18, v7

    const/16 v7, 0xd

    invoke-static {v1, v7, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v19

    aput-object v19, v4, v2

    .line 278
    move/from16 v19, v9

    const/16 v9, 0x7c

    invoke-static {v1, v9, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0x43

    const v9, 0x3f8ccccd    # 1.1f

    invoke-static {v5, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    const/16 v9, 0xe

    aput-object v5, v4, v9

    aput-object v4, v3, v6

    new-array v4, v9, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 281
    const/16 v5, 0x3d

    move/from16 v20, v10

    const v10, 0x3f933333    # 1.15f

    invoke-static {v5, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v21

    aput-object v21, v4, v6

    move/from16 v21, v11

    const/16 v11, 0x10

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v8

    .line 282
    const/16 v11, 0x11

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v17

    const/16 v11, 0x12

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v18

    const/16 v11, 0x13

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v19

    .line 283
    const/16 v11, 0x14

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v16

    const/16 v11, 0x15

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v20

    const/16 v11, 0x16

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v21

    .line 284
    const/16 v11, 0x17

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v12

    const/16 v11, 0x18

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v13

    const/16 v11, 0x19

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v14

    .line 285
    const/16 v11, 0x1a

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v15

    const/16 v11, 0x1b

    invoke-static {v1, v11}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v11

    aput-object v11, v4, v2

    .line 286
    const/16 v11, 0x42

    move/from16 v22, v12

    const v12, 0x3faccccd    # 1.35f

    invoke-static {v11, v12}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v23

    aput-object v23, v4, v7

    aput-object v4, v3, v8

    new-array v4, v9, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 289
    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-static {v5, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x1e

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v8

    .line 290
    const/16 v5, 0x1f

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v17

    const/16 v5, 0x20

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v18

    const/16 v5, 0x21

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v19

    .line 291
    const/16 v5, 0x22

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v16

    const/16 v5, 0x23

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v20

    const/16 v5, 0x24

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v21

    .line 292
    const/16 v5, 0x25

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v22

    const/16 v5, 0x26

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v13

    .line 293
    const/16 v5, 0x27

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v14

    const/16 v5, 0x28

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v15

    .line 294
    const/16 v5, 0x56

    invoke-static {v1, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v5

    aput-object v5, v4, v2

    .line 295
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v11, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v7

    aput-object v4, v3, v17

    new-array v4, v7, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 298
    const/16 v9, 0x3b

    invoke-static {v9, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v6

    .line 299
    const/16 v9, 0x2c

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v8

    const/16 v9, 0x2d

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v17

    const/16 v9, 0x2e

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v18

    .line 300
    const/16 v9, 0x2f

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v19

    const/16 v9, 0x30

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v16

    const/16 v9, 0x31

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v20

    .line 301
    const/16 v9, 0x32

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v21

    const/16 v9, 0x33

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v22

    .line 302
    const/16 v9, 0x34

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v13

    const/16 v9, 0x35

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v14

    .line 303
    const/16 v9, 0x2b

    invoke-static {v1, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v15

    .line 304
    const/16 v9, 0x3c

    const v10, 0x40166666    # 2.35f

    invoke-static {v9, v10}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v9

    aput-object v9, v4, v2

    aput-object v4, v3, v18

    new-array v2, v2, [Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 307
    const/16 v4, 0x71

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v6

    .line 308
    const/16 v4, 0x77

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v8

    .line 309
    const/16 v4, 0x75

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v17

    .line 310
    const/16 v4, 0x39

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v18

    .line 311
    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v19

    .line 312
    const/16 v4, 0x3e

    const/high16 v9, 0x40600000    # 3.5f

    invoke-static {v4, v9}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v16

    .line 313
    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v20

    .line 314
    invoke-static {v6, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v21

    .line 315
    const/16 v4, 0x3a

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v22

    .line 316
    const/16 v4, 0x76

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v13

    .line 317
    const/16 v4, 0x52

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v14

    .line 318
    const/16 v4, 0x72

    invoke-static {v4, v5}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v4

    aput-object v4, v2, v15

    aput-object v2, v3, v19

    iput-object v3, v0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 321
    new-instance v2, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    invoke-direct {v2, v8, v7, v12, v5}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;-><init>(IIFF)V

    iput-object v2, v0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    .line 322
    return-void
.end method

.method private static blacklist getKey(IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .registers 4
    .param p0, "keyCode"    # I
    .param p1, "keyWeight"    # F

    .line 349
    new-instance v0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, p1, v1}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;-><init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V

    return-object v0
.end method

.method private static blacklist getKey(Landroid/view/KeyCharacterMap;I)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .registers 3
    .param p0, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p1, "scanCode"    # I

    .line 331
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Landroid/hardware/input/PhysicalKeyLayout;->getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getKey(Landroid/view/KeyCharacterMap;IF)Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .registers 6
    .param p0, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p1, "scanCode"    # I
    .param p2, "keyWeight"    # F

    .line 325
    sget-object v0, Landroid/hardware/input/PhysicalKeyLayout;->DEFAULT_KEYCODE_FOR_SCANCODE:Landroid/util/SparseIntArray;

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 325
    invoke-virtual {p0, p1, v0}, Landroid/view/KeyCharacterMap;->getMappedKeyOrDefault(II)I

    move-result v0

    .line 327
    .local v0, "keyCode":I
    new-instance v1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    new-instance v2, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    invoke-direct {v2, p0, v0}, Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;-><init>(Landroid/view/KeyCharacterMap;I)V

    invoke-direct {v1, v0, p1, p2, v2}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;-><init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V

    return-object v1
.end method

.method private static blacklist getKeyText(Landroid/view/KeyCharacterMap;II)Ljava/lang/String;
    .registers 6
    .param p0, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p1, "keyCode"    # I
    .param p2, "modifierState"    # I

    .line 335
    invoke-static {p1}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 336
    return-object v1

    .line 338
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    .line 339
    .local v0, "utf8Char":I
    if-nez v0, :cond_14

    .line 340
    return-object v1

    .line 342
    :cond_14
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 343
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    :cond_23
    const-string v1, "\u25a1"

    return-object v1
.end method

.method private blacklist initLayoutKeys(Landroid/view/KeyCharacterMap;Landroid/hardware/input/KeyboardLayout;)V
    .registers 4
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 146
    if-nez p2, :cond_6

    .line 147
    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createIsoLayout(Landroid/view/KeyCharacterMap;)V

    .line 148
    return-void

    .line 150
    :cond_6
    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayout;->isAnsiLayout()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 151
    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createAnsiLayout(Landroid/view/KeyCharacterMap;)V

    goto :goto_1d

    .line 152
    :cond_10
    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayout;->isJisLayout()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 153
    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createJisLayout(Landroid/view/KeyCharacterMap;)V

    goto :goto_1d

    .line 155
    :cond_1a
    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout;->createIsoLayout(Landroid/view/KeyCharacterMap;)V

    .line 157
    :goto_1d
    return-void
.end method

.method public static blacklist isKeyPositionUnsure(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z
    .registers 2
    .param p0, "key"    # Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 385
    invoke-static {p0}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->-$$Nest$fgetscanCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 391
    const/4 v0, 0x0

    return v0

    .line 389
    :sswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x29 -> :sswitch_9
        0x2b -> :sswitch_9
        0x56 -> :sswitch_9
    .end sparse-switch
.end method

.method private static blacklist isSpecialKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 358
    sparse-switch p0, :sswitch_data_8

    .line 377
    const/4 v0, 0x0

    return v0

    .line 375
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x52 -> :sswitch_5
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x73 -> :sswitch_5
        0x75 -> :sswitch_5
        0x76 -> :sswitch_5
        0x77 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist isSpecialKey(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z
    .registers 2
    .param p0, "key"    # Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    .line 381
    invoke-static {p0}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->-$$Nest$fgetkeyCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getEnterKey()Landroid/hardware/input/PhysicalKeyLayout$EnterKey;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mEnterKey:Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    return-object v0
.end method

.method public blacklist getKeys()[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout;->mKeys:[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    return-object v0
.end method
