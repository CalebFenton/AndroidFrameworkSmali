.class public Landroid/text/SpanColors;
.super Ljava/lang/Object;
.source "SpanColors.java"


# static fields
.field public static final blacklist NO_COLOR_FOUND:I


# instance fields
.field private final blacklist mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 38
    return-void
.end method

.method private blacklist calculateFinalColor(Landroid/text/TextPaint;)I
    .registers 3
    .param p1, "workPaint"    # Landroid/text/TextPaint;

    .line 88
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getColorAt(I)I
    .registers 6
    .param p1, "index"    # I

    .line 69
    const/4 v0, 0x0

    .line 72
    .local v0, "finalColor":I
    iget-object v1, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 73
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_7
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_33

    .line 74
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_30

    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_30

    .line 76
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v1

    .line 77
    .local v2, "span":Landroid/text/style/CharacterStyle;
    iget-object v3, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 79
    iget-object v3, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v3}, Landroid/text/SpanColors;->calculateFinalColor(Landroid/text/TextPaint;)I

    move-result v0

    .line 73
    .end local v2    # "span":Landroid/text/style/CharacterStyle;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 82
    .end local v1    # "k":I
    :cond_33
    return v0
.end method

.method public blacklist init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V
    .registers 6
    .param p1, "workPaint"    # Landroid/text/TextPaint;
    .param p2, "spanned"    # Landroid/text/Spanned;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 51
    iput-object p1, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    .line 52
    iget-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v0, p2, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 53
    return-void
.end method

.method public blacklist recycle()V
    .registers 2

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    .line 60
    iget-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v0}, Landroid/text/SpanSet;->recycle()V

    .line 61
    return-void
.end method
