.class public final Ljava/awt/font/TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "TextAttribute.java"


# static fields
.field public static final whitelist test-api BACKGROUND:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api FAMILY:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api FONT:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api FOREGROUND:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api JUSTIFICATION:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api JUSTIFICATION_FULL:Ljava/lang/Float;

.field public static final whitelist test-api JUSTIFICATION_NONE:Ljava/lang/Float;

.field public static final whitelist test-api KERNING:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api KERNING_ON:Ljava/lang/Integer;

.field public static final whitelist test-api LIGATURES:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api LIGATURES_ON:Ljava/lang/Integer;

.field public static final whitelist test-api NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api POSTURE:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api POSTURE_OBLIQUE:Ljava/lang/Float;

.field public static final whitelist test-api POSTURE_REGULAR:Ljava/lang/Float;

.field public static final whitelist test-api RUN_DIRECTION:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api RUN_DIRECTION_LTR:Ljava/lang/Boolean;

.field public static final whitelist test-api RUN_DIRECTION_RTL:Ljava/lang/Boolean;

.field public static final whitelist test-api SIZE:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api STRIKETHROUGH:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api STRIKETHROUGH_ON:Ljava/lang/Boolean;

.field public static final whitelist test-api SUPERSCRIPT:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api SUPERSCRIPT_SUB:Ljava/lang/Integer;

.field public static final whitelist test-api SUPERSCRIPT_SUPER:Ljava/lang/Integer;

.field public static final whitelist test-api SWAP_COLORS:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api SWAP_COLORS_ON:Ljava/lang/Boolean;

.field public static final whitelist test-api TRACKING:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api TRACKING_LOOSE:Ljava/lang/Float;

.field public static final whitelist test-api TRACKING_TIGHT:Ljava/lang/Float;

.field public static final whitelist test-api TRANSFORM:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

.field public static final whitelist test-api UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

.field public static final whitelist test-api UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

.field public static final whitelist test-api UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

.field public static final whitelist test-api UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

.field public static final whitelist test-api UNDERLINE_ON:Ljava/lang/Integer;

.field public static final whitelist test-api WEIGHT:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api WEIGHT_BOLD:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_DEMIBOLD:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_DEMILIGHT:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_EXTRABOLD:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_HEAVY:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_LIGHT:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_MEDIUM:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_REGULAR:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_SEMIBOLD:Ljava/lang/Float;

.field public static final whitelist test-api WEIGHT_ULTRABOLD:Ljava/lang/Float;

.field public static final whitelist test-api WIDTH:Ljava/awt/font/TextAttribute;

.field public static final whitelist test-api WIDTH_CONDENSED:Ljava/lang/Float;

.field public static final whitelist test-api WIDTH_EXTENDED:Ljava/lang/Float;

.field public static final whitelist test-api WIDTH_REGULAR:Ljava/lang/Float;

.field public static final whitelist test-api WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

.field public static final whitelist test-api WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

.field private static final greylist-max-o instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/font/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field static final whitelist serialVersionUID:J = 0x6b789d8c0de80d46L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 100
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "family"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    .line 187
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "weight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    .line 194
    nop

    .line 195
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    .line 201
    nop

    .line 202
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    .line 209
    nop

    .line 210
    const/high16 v1, 0x3f600000    # 0.875f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    .line 216
    nop

    .line 217
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sput-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    .line 223
    nop

    .line 224
    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    .line 231
    nop

    .line 232
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sput-object v4, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    .line 238
    nop

    .line 239
    const/high16 v5, 0x3fe00000    # 1.75f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sput-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    .line 245
    nop

    .line 246
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sput-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    .line 252
    nop

    .line 253
    const/high16 v5, 0x40100000    # 2.25f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sput-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    .line 259
    nop

    .line 260
    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sput-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    .line 266
    nop

    .line 267
    const/high16 v5, 0x40300000    # 2.75f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sput-object v5, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    .line 284
    new-instance v5, Ljava/awt/font/TextAttribute;

    const-string v6, "width"

    invoke-direct {v5, v6}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v5, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    .line 291
    nop

    .line 292
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    .line 298
    nop

    .line 299
    sput-object v1, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    .line 306
    nop

    .line 307
    sput-object v2, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    .line 313
    nop

    .line 314
    sput-object v3, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    .line 320
    nop

    .line 321
    sput-object v4, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    .line 344
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "posture"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    .line 352
    nop

    .line 353
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    .line 359
    nop

    .line 360
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    .line 377
    new-instance v1, Ljava/awt/font/TextAttribute;

    const-string v3, "size"

    invoke-direct {v1, v3}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    .line 400
    new-instance v1, Ljava/awt/font/TextAttribute;

    const-string v3, "transform"

    invoke-direct {v1, v3}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    .line 421
    new-instance v1, Ljava/awt/font/TextAttribute;

    const-string v3, "superscript"

    invoke-direct {v1, v3}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    .line 428
    nop

    .line 429
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    .line 435
    nop

    .line 436
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    .line 491
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "font"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    .line 515
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "char_replacement"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    .line 536
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "foreground"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    .line 556
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "background"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    .line 569
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "underline"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 577
    nop

    .line 578
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    .line 590
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "strikethrough"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    .line 598
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v3, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    .line 625
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "run_direction"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    .line 632
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    .line 639
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    .line 663
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "bidi_embedding"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    .line 687
    new-instance v3, Ljava/awt/font/TextAttribute;

    const-string v4, "justification"

    invoke-direct {v3, v4}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    .line 695
    nop

    .line 696
    sput-object v2, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    .line 702
    nop

    .line 703
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    .line 719
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v2, "input method highlight"

    invoke-direct {v0, v2}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    .line 742
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v2, "input method underline"

    invoke-direct {v0, v2}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 750
    nop

    .line 751
    sput-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    .line 758
    nop

    .line 759
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    .line 766
    nop

    .line 767
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    .line 774
    nop

    .line 775
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    .line 782
    nop

    .line 783
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    .line 804
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v2, "swap_colors"

    invoke-direct {v0, v2}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    .line 812
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    .line 831
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v2, "numeric_shaping"

    invoke-direct {v0, v2}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    .line 850
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v2, "kerning"

    invoke-direct {v0, v2}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    .line 858
    nop

    .line 859
    sput-object v1, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    .line 873
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v2, "ligatures"

    invoke-direct {v0, v2}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    .line 881
    nop

    .line 882
    sput-object v1, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    .line 902
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "tracking"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    .line 910
    nop

    .line 911
    const v0, -0x42dc28f6    # -0.04f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    .line 918
    nop

    .line 919
    const v0, 0x3d23d70a    # 0.04f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    .line 918
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_10

    .line 110
    sget-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_10
    return-void
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_1f

    .line 123
    sget-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/awt/font/TextAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/font/TextAttribute;

    .line 124
    .local v0, "instance":Ljava/awt/font/TextAttribute;
    if-eqz v0, :cond_17

    .line 125
    return-object v0

    .line 127
    :cond_17
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0    # "instance":Ljava/awt/font/TextAttribute;
    :cond_1f
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
