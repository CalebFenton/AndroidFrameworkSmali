.class public Landroid/icu/impl/number/Padder;
.super Ljava/lang/Object;
.source "Padder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/Padder$PadPosition;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist FALLBACK_PADDING_STRING:Ljava/lang/String; = " "

.field public static final blacklist NONE:Landroid/icu/impl/number/Padder;


# instance fields
.field greylist-max-o paddingString:Ljava/lang/String;

.field greylist-max-o position:Landroid/icu/impl/number/Padder$PadPosition;

.field greylist-max-o targetWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 11
    nop

    .line 51
    new-instance v0, Landroid/icu/impl/number/Padder;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V

    sput-object v0, Landroid/icu/impl/number/Padder;->NONE:Landroid/icu/impl/number/Padder;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V
    .registers 5
    .param p1, "paddingString"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "position"    # Landroid/icu/impl/number/Padder$PadPosition;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_8

    const-string v0, " "

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    iput-object v0, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    .line 60
    iput p2, p0, Landroid/icu/impl/number/Padder;->targetWidth:I

    .line 61
    if-nez p3, :cond_12

    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    goto :goto_13

    :cond_12
    move-object v0, p3

    :goto_13
    iput-object v0, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    .line 62
    return-void
.end method

.method private static blacklist addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/FormattedStringBuilder;I)I
    .registers 6
    .param p0, "paddingString"    # Ljava/lang/String;
    .param p1, "requiredPadding"    # I
    .param p2, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "index"    # I

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_a

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p2, p3, p0, v1}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method public static blacklist codePoints(IILandroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/Padder;
    .registers 5
    .param p0, "cp"    # I
    .param p1, "targetWidth"    # I
    .param p2, "position"    # Landroid/icu/impl/number/Padder$PadPosition;

    .line 70
    if-ltz p1, :cond_10

    .line 71
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "paddingString":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/number/Padder;

    invoke-direct {v1, v0, p1, p2}, Landroid/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V

    return-object v1

    .line 74
    .end local v0    # "paddingString":Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Padding width must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Padder;
    .registers 5
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 79
    new-instance v0, Landroid/icu/impl/number/Padder;

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v2

    .line 81
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V

    .line 79
    return-object v0
.end method

.method public static blacklist none()Landroid/icu/impl/number/Padder;
    .registers 1

    .line 65
    sget-object v0, Landroid/icu/impl/number/Padder;->NONE:Landroid/icu/impl/number/Padder;

    return-object v0
.end method


# virtual methods
.method public blacklist isValid()Z
    .registers 2

    .line 85
    iget v0, p0, Landroid/icu/impl/number/Padder;->targetWidth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist padAndApply(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 11
    .param p1, "mod1"    # Landroid/icu/impl/number/Modifier;
    .param p2, "mod2"    # Landroid/icu/impl/number/Modifier;
    .param p3, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p4, "leftIndex"    # I
    .param p5, "rightIndex"    # I

    .line 94
    invoke-interface {p1}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v0

    invoke-interface {p2}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    .local v0, "modLength":I
    iget v1, p0, Landroid/icu/impl/number/Padder;->targetWidth:I

    sub-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/icu/impl/FormattedStringBuilder;->codePointCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 96
    .local v1, "requiredPadding":I
    nop

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "length":I
    if-gtz v1, :cond_22

    .line 102
    invoke-interface {p1, p3, p4, p5}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 103
    add-int v3, p5, v2

    invoke-interface {p2, p3, p4, v3}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 104
    return v2

    .line 107
    :cond_22
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v4, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne v3, v4, :cond_30

    .line 108
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    invoke-static {v3, v1, p3, p4}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3f

    .line 109
    :cond_30
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v4, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne v3, v4, :cond_3f

    .line 110
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    add-int v4, p5, v2

    invoke-static {v3, v1, p3, v4}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 112
    :cond_3f
    :goto_3f
    add-int v3, p5, v2

    invoke-interface {p1, p3, p4, v3}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    add-int v3, p5, v2

    invoke-interface {p2, p3, p4, v3}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v4, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne v3, v4, :cond_5b

    .line 115
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    invoke-static {v3, v1, p3, p4}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6a

    .line 116
    :cond_5b
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v4, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne v3, v4, :cond_6a

    .line 117
    iget-object v3, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    add-int v4, p5, v2

    invoke-static {v3, v1, p3, v4}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 120
    :cond_6a
    :goto_6a
    return v2
.end method
