.class public final Landroid/icu/text/UTF16$StringComparator;
.super Ljava/lang/Object;
.source "UTF16.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_POINT_COMPARE_SURROGATE_OFFSET_:I = 0x2800

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1


# instance fields
.field private m_codePointCompare_:I

.field private m_foldCase_:I

.field private m_ignoreCase_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2353
    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    #@4
    .line 2352
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 2
    .param p1, "codepointcompare"    # Z
    .param p2, "ignorecase"    # Z
    .param p3, "foldcaseoption"    # I

    #@0
    .prologue
    .line 2370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2371
    invoke-virtual {p0, p1}, Landroid/icu/text/UTF16$StringComparator;->setCodePointCompare(Z)V

    #@6
    .line 2372
    iput-boolean p2, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    #@8
    .line 2373
    if-ltz p3, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    if-le p3, v0, :cond_1

    #@d
    .line 2374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Invalid fold case option"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 2376
    :cond_1
    iput p3, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    #@18
    .line 2370
    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2542
    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    #@2
    iget v1, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    #@4
    or-int/2addr v0, v1

    #@5
    .line 2543
    const/high16 v1, 0x10000

    #@7
    .line 2542
    or-int/2addr v0, v1

    #@8
    invoke-static {p1, p2, v0}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    const v11, 0xdbff

    #@3
    const v10, 0xd800

    #@6
    .line 2559
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    .line 2560
    .local v4, "length1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    .line 2561
    .local v5, "length2":I
    move v6, v4

    #@f
    .line 2562
    .local v6, "minlength":I
    const/4 v7, 0x0

    #@10
    .line 2563
    .local v7, "result":I
    if-ge v4, v5, :cond_2

    #@12
    .line 2564
    const/4 v7, -0x1

    #@13
    .line 2570
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #@14
    .line 2571
    .local v0, "c1":C
    const/4 v1, 0x0

    #@15
    .line 2572
    .local v1, "c2":C
    const/4 v3, 0x0

    #@16
    .line 2573
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .local v3, "index":I
    :goto_1
    if-ge v3, v6, :cond_1

    #@18
    .line 2574
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 2575
    .local v0, "c1":C
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 2577
    .local v1, "c2":C
    if-eq v0, v1, :cond_3

    #@22
    .line 2582
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_1
    if-ne v3, v6, :cond_4

    #@24
    .line 2583
    return v7

    #@25
    .line 2565
    .end local v3    # "index":I
    :cond_2
    if-le v4, v5, :cond_0

    #@27
    .line 2566
    const/4 v7, 0x1

    #@28
    .line 2567
    move v6, v5

    #@29
    goto :goto_0

    #@2a
    .line 2573
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v3    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 2586
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_4
    iget v8, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    #@2f
    const v9, 0x8000

    #@32
    if-ne v8, v9, :cond_9

    #@34
    const/4 v2, 0x1

    #@35
    .line 2588
    .local v2, "codepointcompare":Z
    :goto_2
    if-lt v0, v10, :cond_8

    #@37
    if-lt v1, v10, :cond_8

    #@39
    if-eqz v2, :cond_8

    #@3b
    .line 2592
    if-gt v0, v11, :cond_5

    #@3d
    add-int/lit8 v8, v3, 0x1

    #@3f
    if-eq v8, v4, :cond_5

    #@41
    add-int/lit8 v8, v3, 0x1

    #@43
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v8

    #@47
    invoke-static {v8}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@4a
    move-result v8

    #@4b
    if-nez v8, :cond_6

    #@4d
    .line 2593
    :cond_5
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_a

    #@53
    if-eqz v3, :cond_a

    #@55
    add-int/lit8 v8, v3, -0x1

    #@57
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v8

    #@5b
    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@5e
    move-result v8

    #@5f
    .line 2592
    if-eqz v8, :cond_a

    #@61
    .line 2601
    :cond_6
    :goto_3
    if-gt v1, v11, :cond_7

    #@63
    add-int/lit8 v8, v3, 0x1

    #@65
    if-eq v8, v5, :cond_7

    #@67
    add-int/lit8 v8, v3, 0x1

    #@69
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v8

    #@6d
    invoke-static {v8}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@70
    move-result v8

    #@71
    if-nez v8, :cond_8

    #@73
    .line 2602
    :cond_7
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@76
    move-result v8

    #@77
    if-eqz v8, :cond_b

    #@79
    if-eqz v3, :cond_b

    #@7b
    add-int/lit8 v8, v3, -0x1

    #@7d
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    #@80
    move-result v8

    #@81
    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@84
    move-result v8

    #@85
    .line 2601
    if-eqz v8, :cond_b

    #@87
    .line 2611
    :cond_8
    :goto_4
    sub-int v8, v0, v1

    #@89
    return v8

    #@8a
    .line 2586
    .end local v2    # "codepointcompare":Z
    :cond_9
    const/4 v2, 0x0

    #@8b
    .restart local v2    # "codepointcompare":Z
    goto :goto_2

    #@8c
    .line 2598
    :cond_a
    add-int/lit16 v8, v0, -0x2800

    #@8e
    int-to-char v0, v8

    #@8f
    .restart local v0    # "c1":C
    goto :goto_3

    #@90
    .line 2606
    .end local v0    # "c1":C
    :cond_b
    add-int/lit16 v8, v1, -0x2800

    #@92
    int-to-char v1, v8

    #@93
    .restart local v1    # "c2":C
    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2489
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2490
    if-ne p1, p2, :cond_0

    #@2
    .line 2491
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 2493
    :cond_0
    if-nez p1, :cond_1

    #@6
    .line 2494
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 2496
    :cond_1
    if-nez p2, :cond_2

    #@a
    .line 2497
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 2500
    :cond_2
    iget-boolean v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    #@e
    if-eqz v0, :cond_3

    #@10
    .line 2501
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 2503
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public getCodePointCompare()Z
    .locals 2

    #@0
    .prologue
    .line 2452
    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    #@2
    const v1, 0x8000

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getIgnoreCase()Z
    .locals 1

    #@0
    .prologue
    .line 2462
    iget-boolean v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    #@2
    return v0
.end method

.method public getIgnoreCaseOption()I
    .locals 1

    #@0
    .prologue
    .line 2474
    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    #@2
    return v0
.end method

.method public setCodePointCompare(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 2416
    if-eqz p1, :cond_0

    #@2
    .line 2417
    const v0, 0x8000

    #@5
    iput v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    #@7
    .line 2415
    :goto_0
    return-void

    #@8
    .line 2419
    :cond_0
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    #@b
    goto :goto_0
.end method

.method public setIgnoreCase(ZI)V
    .locals 2
    .param p1, "ignorecase"    # Z
    .param p2, "foldcaseoption"    # I

    #@0
    .prologue
    .line 2436
    iput-boolean p1, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    #@2
    .line 2437
    if-ltz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    if-le p2, v0, :cond_1

    #@7
    .line 2438
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Invalid fold case option"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 2440
    :cond_1
    iput p2, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    #@12
    .line 2435
    return-void
.end method
