.class abstract Landroid/icu/text/ScientificNumberFormatter$Style;
.super Ljava/lang/Object;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Style"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/ScientificNumberFormatter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>()V

    return-void
.end method

.method static greylist-max-o append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .registers 7
    .param p0, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 130
    .local v0, "oldIndex":I
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 131
    move v1, p1

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_17

    .line 132
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 135
    .end local v1    # "i":I
    :cond_17
    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 136
    return-void
.end method


# virtual methods
.method abstract greylist-max-o format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
.end method
