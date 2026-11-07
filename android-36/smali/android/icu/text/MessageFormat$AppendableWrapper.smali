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
.field private greylist-max-o app:Ljava/lang/Appendable;

.field private greylist-max-o attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/MessageFormat$AttributeAndPosition;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o length:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetattributes(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlength(Landroid/icu/text/MessageFormat$AppendableWrapper;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 2551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2552
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    .line 2553
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2554
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    .line 2555
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2546
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    .line 2547
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2548
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    .line 2549
    return-void
.end method

.method public static greylist-max-o append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I
    .registers 6
    .param p0, "result"    # Ljava/lang/Appendable;
    .param p1, "iterator"    # Ljava/text/CharacterIterator;

    .line 2585
    :try_start_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 2586
    .local v0, "start":I
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    .line 2587
    .local v1, "limit":I
    sub-int v2, v1, v0

    .line 2588
    .local v2, "length":I
    if-ge v0, v1, :cond_1f

    .line 2589
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2590
    :goto_13
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1f

    .line 2591
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_20

    goto :goto_13

    .line 2594
    :cond_1f
    return v2

    .line 2595
    .end local v0    # "start":I
    .end local v1    # "limit":I
    .end local v2    # "length":I
    :catch_20
    move-exception v0

    .line 2596
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o append(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2563
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2564
    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_10

    .line 2567
    nop

    .line 2568
    return-void

    .line 2565
    :catch_10
    move-exception v0

    .line 2566
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o append(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 2572
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 2573
    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    .line 2576
    nop

    .line 2577
    return-void

    .line 2574
    :catch_e
    move-exception v0

    .line 2575
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o append(Ljava/text/CharacterIterator;)V
    .registers 4
    .param p1, "iterator"    # Ljava/text/CharacterIterator;

    .line 2580
    iget v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    iget-object v1, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->app:Ljava/lang/Appendable;

    invoke-static {v1, p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/Appendable;Ljava/text/CharacterIterator;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2581
    return-void
.end method

.method public greylist-max-o formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V
    .registers 19
    .param p1, "formatter"    # Ljava/text/Format;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 2601
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v1, :cond_e

    .line 2602
    invoke-virtual/range {p1 .. p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_66

    .line 2604
    :cond_e
    invoke-virtual/range {p1 .. p2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    .line 2605
    .local v1, "formattedArg":Ljava/text/AttributedCharacterIterator;
    iget v2, v0, Landroid/icu/text/MessageFormat$AppendableWrapper;->length:I

    .line 2606
    .local v2, "prevLength":I
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/text/CharacterIterator;)V

    .line 2608
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 2609
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v3

    .line 2610
    .local v3, "start":I
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v4

    .line 2611
    .local v4, "limit":I
    sub-int v5, v2, v3

    .line 2612
    .local v5, "offset":I
    :goto_24
    if-ge v3, v4, :cond_66

    .line 2613
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v6

    .line 2614
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v7

    .line 2615
    .local v7, "runLimit":I
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    if-eqz v8, :cond_61

    .line 2616
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2617
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    iget-object v10, v0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    new-instance v11, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    .line 2619
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    add-int v14, v5, v3

    add-int v15, v5, v7

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 2617
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2621
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    goto :goto_3c

    .line 2623
    :cond_61
    move v3, v7

    .line 2624
    invoke-interface {v1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 2625
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    .end local v7    # "runLimit":I
    goto :goto_24

    .line 2627
    .end local v1    # "formattedArg":Ljava/text/AttributedCharacterIterator;
    .end local v2    # "prevLength":I
    .end local v3    # "start":I
    .end local v4    # "limit":I
    .end local v5    # "offset":I
    :cond_66
    :goto_66
    return-void
.end method

.method public greylist-max-o formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "formatter"    # Ljava/text/Format;
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "argString"    # Ljava/lang/String;

    .line 2630
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    if-nez v0, :cond_a

    if-eqz p3, :cond_a

    .line 2631
    invoke-virtual {p0, p3}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 2633
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    .line 2635
    :goto_d
    return-void
.end method

.method public greylist-max-o useAttributes()V
    .registers 2

    .line 2558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat$AppendableWrapper;->attributes:Ljava/util/List;

    .line 2559
    return-void
.end method
