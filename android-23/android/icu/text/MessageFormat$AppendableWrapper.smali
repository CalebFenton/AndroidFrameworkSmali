.class final Landroid/icu/text/MessageFormat$AppendableWrapper;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppendableWrapper"
.end annotation


# instance fields
.field private app:Ljava/lang/Appendable;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessageFormat$AttributeAndPosition;",
            ">;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@2
    return v0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 2559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2560
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    #@5
    .line 2561
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@b
    .line 2562
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@e
    .line 2559
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2554
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    #@5
    .line 2555
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@b
    .line 2556
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@e
    .line 2553
    return-void
.end method

.method public static append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I
    .locals 5
    .param p0, "result"    # Ljava/lang/Appendable;
    .param p1, "iterator"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 2593
    :try_start_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@3
    move-result v3

    #@4
    .line 2594
    .local v3, "start":I
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@7
    move-result v2

    #@8
    .line 2595
    .local v2, "limit":I
    sub-int v1, v2, v3

    #@a
    .line 2596
    .local v1, "length":I
    if-ge v3, v2, :cond_0

    #@c
    .line 2597
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    #@f
    move-result v4

    #@10
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@13
    .line 2598
    :goto_0
    add-int/lit8 v3, v3, 0x1

    #@15
    if-ge v3, v2, :cond_0

    #@17
    .line 2599
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    #@1a
    move-result v4

    #@1b
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    goto :goto_0

    #@1f
    .line 2603
    .end local v1    # "length":I
    .end local v2    # "limit":I
    .end local v3    # "start":I
    :catch_0
    move-exception v0

    #@20
    .line 2604
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    #@22
    invoke-direct {v4, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v4

    #@26
    .line 2602
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "length":I
    .restart local v2    # "limit":I
    .restart local v3    # "start":I
    :cond_0
    return v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2571
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    #@2
    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@5
    .line 2572
    iget v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v2

    #@b
    add-int/2addr v1, v2

    #@c
    iput v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 2569
    return-void

    #@f
    .line 2573
    :catch_0
    move-exception v0

    #@10
    .line 2574
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@12
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 2580
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    #@2
    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    #@5
    .line 2581
    iget v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@7
    sub-int v2, p3, p2

    #@9
    add-int/2addr v1, v2

    #@a
    iput v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 2578
    return-void

    #@d
    .line 2582
    :catch_0
    move-exception v0

    #@e
    .line 2583
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@10
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public append(Ljava/text/CharacterIterator;)V
    .locals 2
    .param p1, "iterator"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 2588
    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@2
    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    #@4
    invoke-static {v1, p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@b
    .line 2587
    return-void
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V
    .locals 15
    .param p1, "formatter"    # Ljava/text/Format;
    .param p2, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2609
    iget-object v9, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@2
    if-nez v9, :cond_1

    #@4
    .line 2610
    invoke-virtual/range {p1 .. p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {p0, v9}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@b
    .line 2608
    :cond_0
    return-void

    #@c
    .line 2612
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@f
    move-result-object v2

    #@10
    .line 2613
    .local v2, "formattedArg":Ljava/text/AttributedCharacterIterator;
    iget v6, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    #@12
    .line 2614
    .local v6, "prevLength":I
    invoke-virtual {p0, v2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/text/CharacterIterator;)V

    #@15
    .line 2616
    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->first()C

    #@18
    .line 2617
    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@1b
    move-result v8

    #@1c
    .line 2618
    .local v8, "start":I
    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@1f
    move-result v3

    #@20
    .line 2619
    .local v3, "limit":I
    sub-int v5, v6, v8

    #@22
    .line 2620
    .local v5, "offset":I
    :goto_0
    if-ge v8, v3, :cond_0

    #@24
    .line 2621
    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    #@27
    move-result-object v4

    #@28
    .line 2622
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    #@2b
    move-result v7

    #@2c
    .line 2623
    .local v7, "runLimit":I
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@2f
    move-result v9

    #@30
    if-eqz v9, :cond_2

    #@32
    .line 2624
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@35
    move-result-object v9

    #@36
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v9

    #@3e
    if-eqz v9, :cond_2

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/util/Map$Entry;

    #@46
    .line 2625
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget-object v10, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@48
    .line 2626
    new-instance v11, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    #@4a
    .line 2627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4d
    move-result-object v9

    #@4e
    check-cast v9, Ljava/text/AttributedCharacterIterator$Attribute;

    #@50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@53
    move-result-object v12

    #@54
    .line 2628
    add-int v13, v5, v8

    #@56
    add-int v14, v5, v7

    #@58
    .line 2626
    invoke-direct {v11, v9, v12, v13, v14}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@5b
    .line 2625
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_1

    #@5f
    .line 2631
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    move v8, v7

    #@60
    .line 2632
    invoke-interface {v2, v8}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@63
    goto :goto_0
.end method

.method public formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "formatter"    # Ljava/text/Format;
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "argString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2638
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p3, :cond_0

    #@6
    .line 2639
    invoke-virtual {p0, p3}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@9
    .line 2637
    :goto_0
    return-void

    #@a
    .line 2641
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@d
    goto :goto_0
.end method

.method public useAttributes()V
    .locals 1

    #@0
    .prologue
    .line 2566
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    #@7
    .line 2565
    return-void
.end method
