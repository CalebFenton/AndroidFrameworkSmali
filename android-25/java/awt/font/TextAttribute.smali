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

.field private static final instanceMap:Ljava/util/Map;

.field static final serialVersionUID:J = 0x6b789d8c0de80d46L


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
    .line 264
    new-instance v0, Ljava/util/HashMap;

    #@a
    const/16 v1, 0x1d

    #@c
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@f
    sput-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    #@11
    .line 335
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@13
    const-string/jumbo v1, "family"

    #@16
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@19
    .line 334
    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    #@1b
    .line 358
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1d
    const-string/jumbo v1, "weight"

    #@20
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@23
    .line 357
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    #@25
    .line 365
    const/high16 v0, 0x3f000000    # 0.5f

    #@27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2a
    move-result-object v0

    #@2b
    .line 364
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    #@2d
    .line 372
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@30
    move-result-object v0

    #@31
    .line 371
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    #@33
    .line 380
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@36
    move-result-object v0

    #@37
    .line 379
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    #@39
    .line 387
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3c
    move-result-object v0

    #@3d
    .line 386
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    #@3f
    .line 394
    const/high16 v0, 0x3fa00000    # 1.25f

    #@41
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@44
    move-result-object v0

    #@45
    .line 393
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    #@47
    .line 402
    const/high16 v0, 0x3fc00000    # 1.5f

    #@49
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4c
    move-result-object v0

    #@4d
    .line 401
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    #@4f
    .line 409
    const/high16 v0, 0x3fe00000    # 1.75f

    #@51
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@54
    move-result-object v0

    #@55
    .line 408
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    #@57
    .line 416
    const/high16 v0, 0x40000000    # 2.0f

    #@59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5c
    move-result-object v0

    #@5d
    .line 415
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    #@5f
    .line 423
    const/high16 v0, 0x40100000    # 2.25f

    #@61
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@64
    move-result-object v0

    #@65
    .line 422
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    #@67
    .line 430
    const/high16 v0, 0x40200000    # 2.5f

    #@69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6c
    move-result-object v0

    #@6d
    .line 429
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    #@6f
    .line 437
    const/high16 v0, 0x40300000    # 2.75f

    #@71
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@74
    move-result-object v0

    #@75
    .line 436
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    #@77
    .line 455
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@79
    const-string/jumbo v1, "width"

    #@7c
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@7f
    .line 454
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    #@81
    .line 462
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@84
    move-result-object v0

    #@85
    .line 461
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    #@87
    .line 469
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8a
    move-result-object v0

    #@8b
    .line 468
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    #@8d
    .line 477
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@90
    move-result-object v0

    #@91
    .line 476
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    #@93
    .line 484
    const/high16 v0, 0x3fa00000    # 1.25f

    #@95
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@98
    move-result-object v0

    #@99
    .line 483
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    #@9b
    .line 491
    const/high16 v0, 0x3fc00000    # 1.5f

    #@9d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a0
    move-result-object v0

    #@a1
    .line 490
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    #@a3
    .line 516
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@a5
    const-string/jumbo v1, "posture"

    #@a8
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@ab
    .line 515
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    #@ad
    .line 524
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b0
    move-result-object v0

    #@b1
    .line 523
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    #@b3
    .line 531
    const v0, 0x3e4ccccd    # 0.2f

    #@b6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b9
    move-result-object v0

    #@ba
    .line 530
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    #@bc
    .line 549
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@be
    const-string/jumbo v1, "size"

    #@c1
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@c4
    .line 548
    sput-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    #@c6
    .line 587
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@c8
    const-string/jumbo v1, "transform"

    #@cb
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@ce
    .line 586
    sput-object v0, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    #@d0
    .line 608
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@d2
    const-string/jumbo v1, "superscript"

    #@d5
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@d8
    .line 607
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    #@da
    .line 615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd
    move-result-object v0

    #@de
    .line 614
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    #@e0
    .line 622
    const/4 v0, -0x1

    #@e1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e4
    move-result-object v0

    #@e5
    .line 621
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    #@e7
    .line 688
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@e9
    const-string/jumbo v1, "font"

    #@ec
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@ef
    .line 687
    sput-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    #@f1
    .line 712
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@f3
    const-string/jumbo v1, "char_replacement"

    #@f6
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@f9
    .line 711
    sput-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    #@fb
    .line 732
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@fd
    const-string/jumbo v1, "foreground"

    #@100
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@103
    .line 731
    sput-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    #@105
    .line 751
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@107
    const-string/jumbo v1, "background"

    #@10a
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@10d
    .line 750
    sput-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    #@10f
    .line 764
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@111
    const-string/jumbo v1, "underline"

    #@114
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@117
    .line 763
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    #@119
    .line 772
    const/4 v0, 0x0

    #@11a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11d
    move-result-object v0

    #@11e
    .line 771
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    #@120
    .line 785
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@122
    const-string/jumbo v1, "strikethrough"

    #@125
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@128
    .line 784
    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    #@12a
    .line 793
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@12c
    .line 792
    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    #@12e
    .line 820
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@130
    const-string/jumbo v1, "run_direction"

    #@133
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@136
    .line 819
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    #@138
    .line 827
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@13a
    .line 826
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    #@13c
    .line 834
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@13e
    .line 833
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    #@140
    .line 858
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@142
    const-string/jumbo v1, "bidi_embedding"

    #@145
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@148
    .line 857
    sput-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    #@14a
    .line 882
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@14c
    const-string/jumbo v1, "justification"

    #@14f
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@152
    .line 881
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    #@154
    .line 890
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@157
    move-result-object v0

    #@158
    .line 889
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    #@15a
    .line 897
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15d
    move-result-object v0

    #@15e
    .line 896
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    #@160
    .line 931
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@162
    const-string/jumbo v1, "input method highlight"

    #@165
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@168
    .line 930
    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    #@16a
    .line 954
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@16c
    const-string/jumbo v1, "input method underline"

    #@16f
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@172
    .line 953
    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    #@174
    .line 962
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@177
    move-result-object v0

    #@178
    .line 961
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    #@17a
    .line 970
    const/4 v0, 0x2

    #@17b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17e
    move-result-object v0

    #@17f
    .line 969
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    #@181
    .line 978
    const/4 v0, 0x3

    #@182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@185
    move-result-object v0

    #@186
    .line 977
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    #@188
    .line 986
    const/4 v0, 0x4

    #@189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18c
    move-result-object v0

    #@18d
    .line 985
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    #@18f
    .line 994
    const/4 v0, 0x5

    #@190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@193
    move-result-object v0

    #@194
    .line 993
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    #@196
    .line 1016
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@198
    const-string/jumbo v1, "swap_colors"

    #@19b
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@19e
    .line 1015
    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    #@1a0
    .line 1024
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@1a2
    .line 1023
    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    #@1a4
    .line 1043
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1a6
    const-string/jumbo v1, "numeric_shaping"

    #@1a9
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@1ac
    .line 1042
    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    #@1ae
    .line 1062
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1b0
    const-string/jumbo v1, "kerning"

    #@1b3
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@1b6
    .line 1061
    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    #@1b8
    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bb
    move-result-object v0

    #@1bc
    .line 1069
    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    #@1be
    .line 1085
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1c0
    const-string/jumbo v1, "ligatures"

    #@1c3
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@1c6
    .line 1084
    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    #@1c8
    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1cb
    move-result-object v0

    #@1cc
    .line 1092
    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    #@1ce
    .line 1114
    new-instance v0, Ljava/awt/font/TextAttribute;

    #@1d0
    const-string/jumbo v1, "tracking"

    #@1d3
    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    #@1d6
    .line 1113
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    #@1d8
    .line 1122
    const v0, -0x42dc28f6    # -0.04f

    #@1db
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1de
    move-result-object v0

    #@1df
    .line 1121
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    #@1e1
    .line 1130
    const v0, 0x3d23d70a    # 0.04f

    #@1e4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1e7
    move-result-object v0

    #@1e8
    .line 1129
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    #@1ea
    .line 261
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@3
    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    const-class v1, Ljava/awt/font/TextAttribute;

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 274
    sget-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    const-class v2, Ljava/awt/font/TextAttribute;

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 283
    new-instance v1, Ljava/io/InvalidObjectException;

    #@a
    .line 284
    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    #@d
    .line 283
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 287
    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    #@13
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/awt/font/TextAttribute;

    #@1d
    .line 288
    .local v0, "instance":Ljava/awt/font/TextAttribute;
    if-eqz v0, :cond_1

    #@1f
    .line 289
    return-object v0

    #@20
    .line 291
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    #@22
    const-string/jumbo v2, "unknown attribute name"

    #@25
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method
