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
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CODE_POINT_COMPARE_SURROGATE_OFFSET_:I = 0x2800

.field public static final greylist-max-o FOLD_CASE_DEFAULT:I = 0x0

.field public static final greylist-max-o FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1


# instance fields
.field private greylist-max-o m_codePointCompare_:I

.field private greylist-max-o m_foldCase_:I

.field private greylist-max-o m_ignoreCase_:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2273
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    .line 2274
    return-void
.end method

.method public constructor greylist-max-o <init>(ZZI)V
    .registers 6
    .param p1, "codepointcompare"    # Z
    .param p2, "ignorecase"    # Z
    .param p3, "foldcaseoption"    # I

    .line 2289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2290
    invoke-virtual {p0, p1}, Landroid/icu/text/UTF16$StringComparator;->setCodePointCompare(Z)V

    .line 2291
    iput-boolean p2, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    .line 2292
    if-ltz p3, :cond_10

    const/4 v0, 0x1

    if-gt p3, v0, :cond_10

    .line 2295
    iput p3, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    .line 2296
    return-void

    .line 2293
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid fold case option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 2453
    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    iget v1, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 2470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2471
    .local v0, "length1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2472
    .local v1, "length2":I
    move v2, v0

    .line 2473
    .local v2, "minlength":I
    const/4 v3, 0x0

    .line 2474
    .local v3, "result":I
    if-ge v0, v1, :cond_e

    .line 2475
    const/4 v3, -0x1

    goto :goto_12

    .line 2476
    :cond_e
    if-le v0, v1, :cond_12

    .line 2477
    const/4 v3, 0x1

    .line 2478
    move v2, v1

    .line 2481
    :cond_12
    :goto_12
    const/4 v4, 0x0

    .line 2482
    .local v4, "c1":C
    const/4 v5, 0x0

    .line 2483
    .local v5, "c2":C
    const/4 v6, 0x0

    .line 2484
    .local v6, "index":I
    :goto_15
    if-ge v6, v2, :cond_25

    .line 2485
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2486
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2488
    if-eq v4, v5, :cond_22

    .line 2489
    goto :goto_25

    .line 2484
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 2493
    :cond_25
    :goto_25
    if-ne v6, v2, :cond_28

    .line 2494
    return v3

    .line 2497
    :cond_28
    iget v7, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    const v8, 0x8000

    if-ne v7, v8, :cond_31

    const/4 v7, 0x1

    goto :goto_32

    :cond_31
    const/4 v7, 0x0

    .line 2499
    .local v7, "codepointcompare":Z
    :goto_32
    const v8, 0xd800

    if-lt v4, v8, :cond_92

    if-lt v5, v8, :cond_92

    if-eqz v7, :cond_92

    .line 2503
    const v8, 0xdbff

    if-gt v4, v8, :cond_50

    add-int/lit8 v9, v6, 0x1

    if-eq v9, v0, :cond_50

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v9

    if-nez v9, :cond_68

    .line 2504
    :cond_50
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_65

    if-eqz v6, :cond_65

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_65

    goto :goto_68

    .line 2509
    :cond_65
    add-int/lit16 v9, v4, -0x2800

    int-to-char v4, v9

    .line 2512
    :cond_68
    :goto_68
    if-gt v5, v8, :cond_7a

    add-int/lit8 v8, v6, 0x1

    if-eq v8, v1, :cond_7a

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v8

    if-nez v8, :cond_92

    .line 2513
    :cond_7a
    invoke-static {v5}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_8f

    if-eqz v6, :cond_8f

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_8f

    goto :goto_92

    .line 2517
    :cond_8f
    add-int/lit16 v8, v5, -0x2800

    int-to-char v5, v8

    .line 2522
    :cond_92
    :goto_92
    sub-int v8, v4, v5

    return v8
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2266
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 2401
    invoke-static {p1, p2}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2402
    const/4 v0, 0x0

    return v0

    .line 2404
    :cond_8
    if-nez p1, :cond_c

    .line 2405
    const/4 v0, -0x1

    return v0

    .line 2407
    :cond_c
    if-nez p2, :cond_10

    .line 2408
    const/4 v0, 0x1

    return v0

    .line 2411
    :cond_10
    iget-boolean v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-eqz v0, :cond_19

    .line 2412
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2414
    :cond_19
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getCodePointCompare()Z
    .registers 3

    .line 2365
    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    const v1, 0x8000

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o getIgnoreCase()Z
    .registers 2

    .line 2374
    iget-boolean v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    return v0
.end method

.method public greylist-max-o getIgnoreCaseOption()I
    .registers 2

    .line 2385
    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return v0
.end method

.method public greylist-max-o setCodePointCompare(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 2331
    if-eqz p1, :cond_8

    .line 2332
    const v0, 0x8000

    iput v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    goto :goto_b

    .line 2334
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    .line 2336
    :goto_b
    return-void
.end method

.method public greylist-max-o setIgnoreCase(ZI)V
    .registers 5
    .param p1, "ignorecase"    # Z
    .param p2, "foldcaseoption"    # I

    .line 2350
    iput-boolean p1, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    .line 2351
    if-ltz p2, :cond_a

    const/4 v0, 0x1

    if-gt p2, v0, :cond_a

    .line 2354
    iput p2, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    .line 2355
    return-void

    .line 2352
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid fold case option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
