.class Landroid/text/Layout$1;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/Layout$CharacterBoundsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mLastColor:I

.field blacklist mLastLineNum:I

.field final blacklist mLineBackground:Landroid/graphics/RectF;

.field final synthetic blacklist this$0:Landroid/text/Layout;

.field final synthetic blacklist val$bgPaint:Landroid/graphics/Paint;

.field final synthetic blacklist val$black:I

.field final synthetic blacklist val$canvas:Landroid/graphics/Canvas;

.field final synthetic blacklist val$cornerRadius:F

.field final synthetic blacklist val$originalTextColor:I

.field final synthetic blacklist val$padding:F

.field final synthetic blacklist val$white:I


# direct methods
.method constructor blacklist <init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V
    .registers 9
    .param p1, "this$0"    # Landroid/text/Layout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1067
    iput-object p1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    iput p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput-object p3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    iput p4, p0, Landroid/text/Layout$1;->val$padding:F

    iput-object p5, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iput p6, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iput p7, p0, Landroid/text/Layout$1;->val$white:I

    iput p8, p0, Landroid/text/Layout$1;->val$black:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    const/4 p2, -0x1

    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    .line 1069
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    .line 1071
    iget p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput p2, p0, Landroid/text/Layout$1;->mLastColor:I

    return-void
.end method

.method private blacklist determineContrastingBackgroundColor(I)I
    .registers 5
    .param p1, "index"    # I

    .line 1142
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_3f

    .line 1151
    :cond_11
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpanColors;->getColorAt(I)I

    move-result v0

    .line 1152
    .local v0, "textColor":I
    if-nez v0, :cond_1f

    .line 1153
    iget v0, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    .line 1155
    :cond_1f
    iget v1, p0, Landroid/text/Layout$1;->mLastColor:I

    if-eq v0, v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 1156
    .local v1, "hasColorChanged":Z
    :goto_26
    if-eqz v1, :cond_38

    .line 1157
    iput v0, p0, Landroid/text/Layout$1;->mLastColor:I

    .line 1159
    iget-object v2, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v2, v0}, Landroid/text/Layout;->-$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/text/Layout$1;->val$white:I

    goto :goto_37

    :cond_35
    iget v2, p0, Landroid/text/Layout$1;->val$black:I

    :goto_37
    return v2

    .line 1162
    :cond_38
    iget-object v2, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    return v2

    .line 1144
    .end local v0    # "textColor":I
    .end local v1    # "hasColorChanged":Z
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method private blacklist drawRect()V
    .registers 6

    .line 1130
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1131
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v1, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v1, v1

    iget v2, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1132
    iget-object v0, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v2, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget v3, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget-object v4, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1139
    :cond_20
    return-void
.end method

.method private blacklist isStandardNumber(I)Z
    .registers 8
    .param p1, "index"    # I

    .line 1120
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1121
    .local v0, "codePoint":I
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_14

    const/16 v1, 0x39

    if-le v0, v1, :cond_1f

    :cond_14
    const/16 v1, 0x23

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v3

    .line 1123
    .local v1, "isNumberSignOrAsterisk":Z
    :goto_20
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v5}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_41

    iget-object v4, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v4}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    .line 1124
    invoke-static {v4, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const v5, 0xfe0f

    if-ne v4, v5, :cond_41

    move v4, v3

    goto :goto_42

    :cond_41
    move v4, v2

    .line 1126
    .local v4, "isColoredGlyph":Z
    :goto_42
    if-eqz v1, :cond_47

    if-nez v4, :cond_47

    move v2, v3

    :cond_47
    return v2
.end method


# virtual methods
.method public blacklist onCharacterBounds(IIFFFF)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "lineNum"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F

    .line 1079
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1080
    return-void

    .line 1083
    :cond_11
    invoke-direct {p0, p1}, Landroid/text/Layout$1;->determineContrastingBackgroundColor(I)I

    move-result v0

    .line 1084
    .local v0, "newBackground":I
    iget-object v1, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_21

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v3

    .line 1093
    .local v1, "hasBgColorChanged":Z
    :goto_22
    iget-object v4, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v4}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1094
    .local v4, "codePoint":I
    invoke-static {v4}, Ljava/lang/Character;->isEmojiComponent(I)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1095
    invoke-static {v4}, Ljava/lang/Character;->isExtendedPictographic(I)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_3b

    :cond_39
    move v2, v3

    goto :goto_3c

    :cond_3b
    :goto_3b
    nop

    .line 1096
    .local v2, "isEmoji":Z
    :goto_3c
    if-eqz v2, :cond_45

    invoke-direct {p0, p1}, Landroid/text/Layout$1;->isStandardNumber(I)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1097
    return-void

    .line 1100
    :cond_45
    iget v3, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-ne p2, v3, :cond_52

    if-eqz v1, :cond_4c

    goto :goto_52

    .line 1110
    :cond_4c
    iget-object v3, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v3, p3, p4, p5, p6}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_63

    .line 1102
    :cond_52
    :goto_52
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    .line 1103
    iget-object v3, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v3, p3, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1104
    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    .line 1106
    if-eqz v1, :cond_63

    .line 1107
    iget-object v3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1112
    :cond_63
    :goto_63
    return-void
.end method

.method public blacklist onEnd()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    .line 1117
    return-void
.end method
