.class public final Ljava/awt/font/TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "TextAttribute.java"


# static fields
.field public static final BACKGROUND:Ljava/awt/font/TextAttribute;

.field public static final BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

.field public static final CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

.field public static final FAMILY:Ljava/awt/font/TextAttribute;

.field public static final FONT:Ljava/awt/font/TextAttribute;

.field public static final FOREGROUND:Ljava/awt/font/TextAttribute;

.field public static final INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

.field public static final INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final JUSTIFICATION:Ljava/awt/font/TextAttribute;

.field public static final JUSTIFICATION_FULL:Ljava/lang/Float;

.field public static final JUSTIFICATION_NONE:Ljava/lang/Float;

.field public static final KERNING:Ljava/awt/font/TextAttribute;

.field public static final KERNING_ON:Ljava/lang/Integer;

.field public static final LIGATURES:Ljava/awt/font/TextAttribute;

.field public static final LIGATURES_ON:Ljava/lang/Integer;

.field public static final NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

.field public static final POSTURE:Ljava/awt/font/TextAttribute;

.field public static final POSTURE_OBLIQUE:Ljava/lang/Float;

.field public static final POSTURE_REGULAR:Ljava/lang/Float;

.field public static final RUN_DIRECTION:Ljava/awt/font/TextAttribute;

.field public static final RUN_DIRECTION_LTR:Ljava/lang/Boolean;

.field public static final RUN_DIRECTION_RTL:Ljava/lang/Boolean;

.field public static final SIZE:Ljava/awt/font/TextAttribute;

.field public static final STRIKETHROUGH:Ljava/awt/font/TextAttribute;

.field public static final STRIKETHROUGH_ON:Ljava/lang/Boolean;

.field public static final SUPERSCRIPT:Ljava/awt/font/TextAttribute;

.field public static final SUPERSCRIPT_SUB:Ljava/lang/Integer;

.field public static final SUPERSCRIPT_SUPER:Ljava/lang/Integer;

.field public static final SWAP_COLORS:Ljava/awt/font/TextAttribute;

.field public static final SWAP_COLORS_ON:Ljava/lang/Boolean;

.field public static final TRACKING:Ljava/awt/font/TextAttribute;

.field public static final TRACKING_LOOSE:Ljava/lang/Float;

.field public static final TRACKING_TIGHT:Ljava/lang/Float;

.field public static final TRANSFORM:Ljava/awt/font/TextAttribute;

.field public static final UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

.field public static final UNDERLINE_ON:Ljava/lang/Integer;

.field public static final WEIGHT:Ljava/awt/font/TextAttribute;

.field public static final WEIGHT_BOLD:Ljava/lang/Float;

.field public static final WEIGHT_DEMIBOLD:Ljava/lang/Float;

.field public static final WEIGHT_DEMILIGHT:Ljava/lang/Float;

.field public static final WEIGHT_EXTRABOLD:Ljava/lang/Float;

.field public static final WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

.field public static final WEIGHT_HEAVY:Ljava/lang/Float;

.field public static final WEIGHT_LIGHT:Ljava/lang/Float;

.field public static final WEIGHT_MEDIUM:Ljava/lang/Float;

.field public static final WEIGHT_REGULAR:Ljava/lang/Float;

.field public static final WEIGHT_SEMIBOLD:Ljava/lang/Float;

.field public static final WEIGHT_ULTRABOLD:Ljava/lang/Float;

.field public static final WIDTH:Ljava/awt/font/TextAttribute;

.field public static final WIDTH_CONDENSED:Ljava/lang/Float;

.field public static final WIDTH_EXTENDED:Ljava/lang/Float;

.field public static final WIDTH_REGULAR:Ljava/lang/Float;

.field public static final WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

.field public static final WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

.field private static final serialVersionUID:J = 0x6b789d8c0de80d46L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x3f600000    # 0.875f

    #@2
    const/high16 v5, 0x3f400000    # 0.75f

    #@4
    const/4 v4, 0x0

    #@5
    const/high16 v3, 0x3f800000    # 1.0f

    #@7
    const/4 v2, 0x1

    #@8
    .line 54
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@a
    const-string/jumbo v1, "background"

    #@d
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    #@12
    .line 57
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@14
    const-string/jumbo v1, "bidi_embedding"

    #@17
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@1a
    sput-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    #@1c
    .line 60
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1e
    const-string/jumbo v1, "char_replacement"

    #@21
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@24
    sput-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    #@26
    .line 63
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@28
    const-string/jumbo v1, "family"

    #@2b
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@2e
    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    #@30
    .line 66
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@32
    const-string/jumbo v1, "font"

    #@35
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@38
    sput-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    #@3a
    .line 69
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@3c
    const-string/jumbo v1, "foreground"

    #@3f
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@42
    sput-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    #@44
    .line 72
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@46
    .line 73
    const-string/jumbo v1, "input method highlight"

    #@49
    .line 72
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@4c
    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    #@4e
    .line 76
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@50
    .line 77
    const-string/jumbo v1, "input method underline"

    #@53
    .line 76
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@56
    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    #@58
    .line 80
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@5a
    const-string/jumbo v1, "justification"

    #@5d
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@60
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    #@62
    .line 83
    new-instance v0, Ljava/lang/Float;

    #@64
    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    #@67
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    #@69
    .line 89
    new-instance v0, Ljava/lang/Float;

    #@6b
    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    #@6e
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    #@70
    .line 96
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@72
    const-string/jumbo v1, "kerning"

    #@75
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@78
    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    #@7a
    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v0

    #@7e
    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    #@80
    .line 106
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@82
    const-string/jumbo v1, "ligatures"

    #@85
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@88
    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    #@8a
    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v0

    #@8e
    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    #@90
    .line 112
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@92
    const-string/jumbo v1, "numeric_shaping"

    #@95
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@98
    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    #@9a
    .line 115
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@9c
    const-string/jumbo v1, "posture"

    #@9f
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@a2
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    #@a4
    .line 118
    new-instance v0, Ljava/lang/Float;

    #@a6
    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    #@a9
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    #@ab
    .line 121
    new-instance v0, Ljava/lang/Float;

    #@ad
    const v1, 0x3e4ccccd    # 0.2f

    #@b0
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@b3
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    #@b5
    .line 124
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@b7
    const-string/jumbo v1, "run_direction"

    #@ba
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@bd
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    #@bf
    .line 130
    const/4 v0, 0x0

    #@c0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c3
    move-result-object v0

    #@c4
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    #@c6
    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c9
    move-result-object v0

    #@ca
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    #@cc
    .line 139
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@ce
    const-string/jumbo v1, "size"

    #@d1
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@d4
    sput-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    #@d6
    .line 142
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@d8
    const-string/jumbo v1, "strikethrough"

    #@db
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@de
    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    #@e0
    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e3
    move-result-object v0

    #@e4
    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    #@e6
    .line 148
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@e8
    const-string/jumbo v1, "superscript"

    #@eb
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@ee
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    #@f0
    .line 151
    const/4 v0, -0x1

    #@f1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f4
    move-result-object v0

    #@f5
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    #@f7
    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v0

    #@fb
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    #@fd
    .line 157
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@ff
    const-string/jumbo v1, "swap_colors"

    #@102
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@105
    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    #@107
    .line 163
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10a
    move-result-object v0

    #@10b
    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    #@10d
    .line 170
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@10f
    const-string/jumbo v1, "tracking"

    #@112
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@115
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    #@117
    .line 173
    const v0, 0x3d23d70a    # 0.04f

    #@11a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@11d
    move-result-object v0

    #@11e
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    #@120
    .line 175
    const v0, -0x42dc28f6    # -0.04f

    #@123
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@126
    move-result-object v0

    #@127
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    #@129
    .line 178
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@12b
    const-string/jumbo v1, "transform"

    #@12e
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@131
    sput-object v0, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    #@133
    .line 181
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@135
    const-string/jumbo v1, "underline"

    #@138
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@13b
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    #@13d
    .line 187
    const/4 v0, 0x0

    #@13e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@141
    move-result-object v0

    #@142
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    #@144
    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@147
    move-result-object v0

    #@148
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    #@14a
    .line 199
    const/4 v0, 0x2

    #@14b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14e
    move-result-object v0

    #@14f
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    #@151
    .line 205
    const/4 v0, 0x3

    #@152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@155
    move-result-object v0

    #@156
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    #@158
    .line 211
    const/4 v0, 0x4

    #@159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15c
    move-result-object v0

    #@15d
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    #@15f
    .line 217
    const/4 v0, 0x5

    #@160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@163
    move-result-object v0

    #@164
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    #@166
    .line 220
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@168
    const-string/jumbo v1, "weight"

    #@16b
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@16e
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    #@170
    .line 226
    new-instance v0, Ljava/lang/Float;

    #@172
    const/high16 v1, 0x3f000000    # 0.5f

    #@174
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@177
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    #@179
    .line 231
    new-instance v0, Ljava/lang/Float;

    #@17b
    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    #@17e
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    #@180
    .line 237
    new-instance v0, Ljava/lang/Float;

    #@182
    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    #@185
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    #@187
    .line 242
    new-instance v0, Ljava/lang/Float;

    #@189
    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    #@18c
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    #@18e
    .line 248
    new-instance v0, Ljava/lang/Float;

    #@190
    const/high16 v1, 0x3fa00000    # 1.25f

    #@192
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@195
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    #@197
    .line 252
    new-instance v0, Ljava/lang/Float;

    #@199
    const/high16 v1, 0x3fc00000    # 1.5f

    #@19b
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@19e
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    #@1a0
    .line 256
    new-instance v0, Ljava/lang/Float;

    #@1a2
    const/high16 v1, 0x3fe00000    # 1.75f

    #@1a4
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1a7
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    #@1a9
    .line 259
    new-instance v0, Ljava/lang/Float;

    #@1ab
    const/high16 v1, 0x40000000    # 2.0f

    #@1ad
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1b0
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    #@1b2
    .line 262
    new-instance v0, Ljava/lang/Float;

    #@1b4
    const/high16 v1, 0x40100000    # 2.25f

    #@1b6
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1b9
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    #@1bb
    .line 265
    new-instance v0, Ljava/lang/Float;

    #@1bd
    const/high16 v1, 0x40200000    # 2.5f

    #@1bf
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1c2
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    #@1c4
    .line 271
    new-instance v0, Ljava/lang/Float;

    #@1c6
    const/high16 v1, 0x40300000    # 2.75f

    #@1c8
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1cb
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    #@1cd
    .line 274
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1cf
    const-string/jumbo v1, "width"

    #@1d2
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@1d5
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    #@1d7
    .line 280
    new-instance v0, Ljava/lang/Float;

    #@1d9
    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    #@1dc
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    #@1de
    .line 286
    new-instance v0, Ljava/lang/Float;

    #@1e0
    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    #@1e3
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    #@1e5
    .line 291
    new-instance v0, Ljava/lang/Float;

    #@1e7
    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    #@1ea
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    #@1ec
    .line 296
    new-instance v0, Ljava/lang/Float;

    #@1ee
    const/high16 v1, 0x3fa00000    # 1.25f

    #@1f0
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1f3
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    #@1f5
    .line 301
    new-instance v0, Ljava/lang/Float;

    #@1f7
    const/high16 v1, 0x3fc00000    # 1.5f

    #@1f9
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@1fc
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    #@1fe
    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method
