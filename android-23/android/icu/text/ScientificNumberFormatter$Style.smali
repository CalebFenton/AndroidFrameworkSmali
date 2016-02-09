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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ScientificNumberFormatter$Style;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>()V

    #@3
    return-void
.end method

.method static append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 142
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@3
    move-result v1

    #@4
    .line 143
    .local v1, "oldIndex":I
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@7
    .line 144
    move v0, p1

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@a
    .line 145
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    #@d
    move-result v2

    #@e
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 146
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    #@14
    .line 144
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 148
    :cond_0
    invoke-interface {p0, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@1a
    .line 141
    return-void
.end method


# virtual methods
.method abstract format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
.end method
