.class Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o addedDefaultDayPeriod:Z

.field private greylist-max-o baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

.field private greylist-max-o original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

.field private greylist-max-o type:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetoriginal(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 2744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2746
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    .line 2747
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2748
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-direct {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;-><init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2749
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I
    .registers 4
    .param p1, "that"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2922
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-object v1, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->compareTo(Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;)I

    move-result v0

    .line 2923
    .local v0, "result":I
    if-lez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_11

    :cond_c
    if-gez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2744
    check-cast p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->compareTo(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 2928
    if-eq p0, p1, :cond_18

    if-eqz p1, :cond_16

    instance-of v0, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-object v1, p1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2929
    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 2928
    :goto_19
    return v0
.end method

.method greylist-max-o extractFrom(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)V
    .registers 6
    .param p1, "source"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "fieldMask"    # I

    .line 2889
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 2890
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1b

    .line 2891
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 2892
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v1, v2, v0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->copyFieldFrom(Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;I)V

    goto :goto_25

    .line 2894
    :cond_1b
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 2895
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v1, v0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->clearField(I)V

    .line 2889
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2898
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method public greylist-max-o fieldIsNumeric(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 2755
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v0, v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o getBasePattern()Ljava/lang/String;
    .registers 3

    .line 2780
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I
    .registers 9
    .param p1, "other"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .param p2, "includeMask"    # I
    .param p3, "distanceInfo"    # Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    .line 2901
    const/4 v0, 0x0

    .line 2902
    .local v0, "result":I
    invoke-virtual {p3}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->clear()V

    .line 2903
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/16 v2, 0x10

    if-ge v1, v2, :cond_36

    .line 2904
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_14

    :cond_10
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v2, v2, v1

    .line 2905
    .local v2, "myType":I
    :goto_14
    iget-object v3, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v3, v3, v1

    .line 2906
    .local v3, "otherType":I
    if-ne v2, v3, :cond_1b

    goto :goto_33

    .line 2907
    :cond_1b
    if-nez v2, :cond_24

    .line 2908
    const/high16 v4, 0x10000

    add-int/2addr v0, v4

    .line 2909
    invoke-virtual {p3, v1}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->addExtra(I)V

    goto :goto_33

    .line 2910
    :cond_24
    if-nez v3, :cond_2c

    .line 2911
    add-int/lit16 v0, v0, 0x1000

    .line 2912
    invoke-virtual {p3, v1}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->addMissing(I)V

    goto :goto_33

    .line 2914
    :cond_2c
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2903
    .end local v2    # "myType":I
    .end local v3    # "otherType":I
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2917
    .end local v1    # "i":I
    :cond_36
    return v0
.end method

.method greylist-max-o getFieldMask()I
    .registers 4

    .line 2880
    const/4 v0, 0x0

    .line 2881
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 2882
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v2, v2, v1

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 2881
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2884
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2934
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->hashCode()I

    move-result v0

    return v0
.end method

.method greylist-max-o set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .registers 20
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "fp"    # Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .param p3, "allowDuplicateFields"    # Z

    .line 2785
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2786
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->clear()V

    .line 2787
    iget-object v2, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->clear()V

    .line 2788
    iput-boolean v3, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    .line 2790
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2791
    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v5, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2792
    .local v5, "obj":Ljava/lang/Object;
    instance-of v9, v5, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-nez v9, :cond_35

    .line 2793
    goto :goto_23

    .line 2795
    :cond_35
    move-object v9, v5

    check-cast v9, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    .line 2796
    .local v9, "item":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    invoke-virtual {v9}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2798
    .local v10, "value":Ljava/lang/String;
    invoke-static {v9}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->-$$Nest$mgetCanonicalIndex(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I

    move-result v11

    .line 2803
    .local v11, "canonicalIndex":I
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v12

    aget-object v12, v12, v11

    .line 2804
    .local v12, "row":[I
    aget v8, v12, v8

    .line 2805
    .local v8, "field":I
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v13, v8}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v13

    if-nez v13, :cond_9c

    .line 2806
    iget-object v6, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v6, v8}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v6

    .line 2807
    .local v6, "ch1":C
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2808
    .local v7, "ch2":C
    if-nez p3, :cond_23

    const/16 v13, 0x79

    const/16 v14, 0x55

    const/16 v15, 0x72

    if-ne v6, v15, :cond_68

    if-eq v7, v14, :cond_23

    if-eq v7, v13, :cond_23

    :cond_68
    if-eq v6, v14, :cond_6c

    if-ne v6, v13, :cond_6f

    :cond_6c
    if-ne v7, v15, :cond_6f

    .line 2811
    goto :goto_23

    .line 2813
    :cond_6f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Conflicting fields:\t"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\t in "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2816
    .end local v6    # "ch1":C
    .end local v7    # "ch2":C
    :cond_9c
    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v13, v8, v10}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ILjava/lang/String;)V

    .line 2817
    aget v13, v12, v3

    int-to-char v13, v13

    .line 2818
    .local v13, "repeatChar":C
    aget v7, v12, v7

    .line 2819
    .local v7, "repeatCount":I
    const-string v14, "GEzvQ"

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_af

    const/4 v7, 0x1

    .line 2820
    :cond_af
    iget-object v14, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v14, v8, v13, v7}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2821
    aget v6, v12, v6

    .line 2822
    .local v6, "subField":I
    if-lez v6, :cond_bd

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v6, v14

    .line 2823
    :cond_bd
    iget-object v14, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aput v6, v14, v8

    .line 2824
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "subField":I
    .end local v7    # "repeatCount":I
    .end local v8    # "field":I
    .end local v9    # "item":Landroid/icu/text/DateTimePatternGenerator$VariableField;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "canonicalIndex":I
    .end local v12    # "row":[I
    .end local v13    # "repeatChar":C
    goto/16 :goto_23

    .line 2834
    :cond_c3
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v4

    if-nez v4, :cond_117

    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v4

    if-nez v4, :cond_117

    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 2836
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e2
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_117

    .line 2837
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v9

    aget-object v9, v9, v4

    .line 2838
    .local v9, "row":[I
    aget v10, v9, v8

    if-ne v10, v5, :cond_114

    .line 2840
    iget-object v10, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget v11, v9, v3

    int-to-char v11, v11

    aget v12, v9, v7

    invoke-virtual {v10, v5, v11, v12}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2841
    iget-object v10, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget v11, v9, v3

    int-to-char v11, v11

    aget v12, v9, v7

    invoke-virtual {v10, v5, v11, v12}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2844
    aget v10, v9, v6

    .line 2845
    .local v10, "subField":I
    iget-object v11, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    if-lez v10, :cond_110

    add-int/lit8 v12, v10, 0x1

    goto :goto_111

    :cond_110
    move v12, v10

    :goto_111
    aput v12, v11, v5

    .line 2846
    goto :goto_117

    .line 2836
    .end local v9    # "row":[I
    .end local v10    # "subField":I
    :cond_114
    add-int/lit8 v4, v4, 0x1

    goto :goto_e2

    .line 2852
    .end local v4    # "i":I
    :cond_117
    :goto_117
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v4

    if-nez v4, :cond_18a

    .line 2853
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v4

    const/16 v9, 0x68

    const/16 v10, 0xa

    if-eq v4, v9, :cond_14f

    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v4

    const/16 v5, 0x4b

    if-ne v4, v5, :cond_138

    goto :goto_14f

    .line 2869
    :cond_138
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v4, v10}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v4

    if-nez v4, :cond_18a

    .line 2871
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v4, v10}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->clearField(I)V

    .line 2872
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v4, v10}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->clearField(I)V

    .line 2873
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aput v3, v4, v10

    goto :goto_18a

    .line 2855
    :cond_14f
    :goto_14f
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v4, v10}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 2857
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_158
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_189

    .line 2858
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgettypes()[[I

    move-result-object v5

    aget-object v5, v5, v4

    .line 2859
    .local v5, "row":[I
    aget v9, v5, v8

    if-ne v9, v10, :cond_186

    .line 2861
    iget-object v9, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget v11, v5, v3

    int-to-char v11, v11

    aget v12, v5, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2862
    iget-object v9, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget v3, v5, v3

    int-to-char v3, v3

    aget v7, v5, v7

    invoke-virtual {v9, v10, v3, v7}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2863
    iget-object v3, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v6, v5, v6

    aput v6, v3, v10

    .line 2864
    iput-boolean v8, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    .line 2865
    goto :goto_189

    .line 2857
    .end local v5    # "row":[I
    :cond_186
    add-int/lit8 v4, v4, 0x1

    goto :goto_158

    .end local v4    # "i":I
    :cond_189
    :goto_189
    nop

    .line 2876
    :cond_18a
    :goto_18a
    return-object v0
.end method

.method public greylist-max-o toCanonicalString()Ljava/lang/String;
    .registers 3

    .line 2773
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->toCanonicalString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2763
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
