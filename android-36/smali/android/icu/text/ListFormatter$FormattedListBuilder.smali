.class Landroid/icu/text/ListFormatter$FormattedListBuilder;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattedListBuilder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist needsFields:Z

.field private blacklist string:Landroid/icu/impl/FormattedStringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 553
    const-class v0, Landroid/icu/text/ListFormatter;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "needsFields"    # Z

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    .line 561
    iput-boolean p2, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->needsFields:Z

    .line 562
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    sget-object v1, Landroid/icu/text/ListFormatter$Field;->LITERAL:Landroid/icu/text/ListFormatter$Field;

    invoke-virtual {v0, v1}, Landroid/icu/impl/FormattedStringBuilder;->setAppendableField(Ljava/lang/Object;)V

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->appendElement(Ljava/lang/Object;I)V

    .line 564
    return-void
.end method

.method private blacklist appendElement(Ljava/lang/Object;I)V
    .registers 6
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "elementString":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->needsFields:Z

    if-eqz v1, :cond_2a

    .line 592
    new-instance v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;-><init>()V

    .line 593
    .local v1, "field":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    sget-object v2, Landroid/icu/text/ListFormatter$SpanField;->LIST_SPAN:Landroid/icu/text/ListFormatter$SpanField;

    iput-object v2, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->spanField:Landroid/icu/text/UFormat$SpanField;

    .line 594
    sget-object v2, Landroid/icu/text/ListFormatter$Field;->ELEMENT:Landroid/icu/text/ListFormatter$Field;

    iput-object v2, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    .line 595
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->value:Ljava/lang/Object;

    .line 596
    const/4 v2, -0x1

    iput v2, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->start:I

    .line 597
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->length:I

    .line 598
    iget-object v2, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v2, v0, v1}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 599
    .end local v1    # "field":Landroid/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
    goto :goto_30

    .line 600
    :cond_2a
    iget-object v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 602
    :goto_30
    return-void
.end method


# virtual methods
.method public blacklist append(Ljava/lang/String;Ljava/lang/Object;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .registers 9
    .param p1, "compiledPattern"    # Ljava/lang/String;
    .param p2, "next"    # Ljava/lang/Object;
    .param p3, "position"    # I

    .line 571
    nop

    .line 572
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/impl/FormattedStringBuilder;->setAppendIndex(I)V

    .line 573
    const-wide/16 v0, 0x0

    .line 575
    .local v0, "state":J
    :goto_9
    iget-object v2, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-static {v0, v1, p1, v2}, Landroid/icu/impl/SimpleFormatterImpl$IterInternal;->step(JLjava/lang/CharSequence;Ljava/lang/Appendable;)J

    move-result-wide v0

    .line 576
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_17

    .line 577
    nop

    .line 586
    return-object p0

    .line 579
    :cond_17
    invoke-static {v0, v1}, Landroid/icu/impl/SimpleFormatterImpl$IterInternal;->getArgIndex(J)I

    move-result v2

    .line 580
    .local v2, "argIndex":I
    if-nez v2, :cond_29

    .line 581
    iget-object v3, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    iget-object v4, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v4}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/FormattedStringBuilder;->setAppendIndex(I)V

    goto :goto_2c

    .line 583
    :cond_29
    invoke-direct {p0, p2, p3}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->appendElement(Ljava/lang/Object;I)V

    .line 585
    .end local v2    # "argIndex":I
    :goto_2c
    goto :goto_9
.end method

.method public blacklist appendTo(Ljava/lang/Appendable;)V
    .registers 3
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 605
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 606
    return-void
.end method

.method public blacklist getOffset(I)I
    .registers 4
    .param p1, "fieldPositionFoundIndex"    # I

    .line 609
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->findSpan(Landroid/icu/impl/FormattedStringBuilder;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 614
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toValue()Landroid/icu/text/ListFormatter$FormattedList;
    .registers 3

    .line 618
    new-instance v0, Landroid/icu/text/ListFormatter$FormattedList;

    iget-object v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->string:Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$FormattedList;-><init>(Landroid/icu/impl/FormattedStringBuilder;)V

    return-object v0
.end method
