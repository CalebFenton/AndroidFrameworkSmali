.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;,
        Lcom/android/server/IntentResolver$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final localVerificationLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 793
    new-instance v0, Lcom/android/server/IntentResolver$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 804
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    #@a
    .line 810
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    #@11
    .line 817
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    #@18
    .line 826
    new-instance v0, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@1f
    .line 831
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    #@26
    .line 837
    new-instance v0, Landroid/util/ArrayMap;

    #@28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    #@2d
    .line 842
    new-instance v0, Landroid/util/ArrayMap;

    #@2f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    #@34
    .line 46
    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    #@1
    .line 537
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, [Landroid/content/IntentFilter;

    #@7
    .line 538
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-nez v1, :cond_0

    #@9
    .line 539
    const/4 v4, 0x2

    #@a
    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    #@d
    move-result-object v1

    #@e
    .line 540
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 541
    aput-object p3, v1, v5

    #@13
    .line 536
    :goto_0
    return-void

    #@14
    .line 543
    :cond_0
    array-length v0, v1

    #@15
    .line 544
    .local v0, "N":I
    move v2, v0

    #@16
    .line 545
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_1

    #@18
    add-int/lit8 v4, v2, -0x1

    #@1a
    aget-object v4, v1, v4

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 546
    add-int/lit8 v2, v2, -0x1

    #@20
    goto :goto_1

    #@21
    .line 548
    :cond_1
    if-ge v2, v0, :cond_2

    #@23
    .line 549
    aput-object p3, v1, v2

    #@25
    goto :goto_0

    #@26
    .line 551
    :cond_2
    mul-int/lit8 v4, v0, 0x3

    #@28
    div-int/lit8 v4, v4, 0x2

    #@2a
    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    #@2d
    move-result-object v3

    #@2e
    .line 552
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@31
    .line 553
    aput-object p3, v3, v0

    #@33
    .line 554
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_0
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 692
    .local v4, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@7
    move-result-object v7

    #@8
    .line 693
    .local v7, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    #@b
    move-result-object v19

    #@c
    .line 695
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    #@f
    move-result v12

    #@10
    .line 699
    .local v12, "excludingStopped":Z
    if-eqz p3, :cond_2

    #@12
    .line 700
    new-instance v16, Landroid/util/LogPrinter;

    #@14
    const-string/jumbo v5, "IntentResolver"

    #@17
    const/4 v6, 0x2

    #@18
    const/4 v8, 0x3

    #@19
    move-object/from16 v0, v16

    #@1b
    invoke-direct {v0, v6, v5, v8}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    #@1e
    .line 701
    .local v16, "logPrinter":Landroid/util/Printer;
    new-instance v15, Lcom/android/internal/util/FastPrintWriter;

    #@20
    invoke-direct/range {v15 .. v16}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    #@23
    .line 707
    .end local v16    # "logPrinter":Landroid/util/Printer;
    :goto_0
    if-eqz p7, :cond_3

    #@25
    move-object/from16 v0, p7

    #@27
    array-length v10, v0

    #@28
    .line 708
    .local v10, "N":I
    :goto_1
    const/4 v13, 0x0

    #@29
    .line 711
    .local v13, "hasNonDefaults":Z
    const/4 v14, 0x0

    #@2a
    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_d

    #@2c
    aget-object v3, p7, v14

    #@2e
    .local v3, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v3, :cond_d

    #@30
    .line 713
    if-eqz p3, :cond_0

    #@32
    const-string/jumbo v5, "IntentResolver"

    #@35
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v8, "Matching against filter "

    #@3d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 715
    :cond_0
    if-eqz v12, :cond_4

    #@4e
    move-object/from16 v0, p0

    #@50
    move/from16 v1, p9

    #@52
    invoke-virtual {v0, v3, v1}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_4

    #@58
    .line 716
    if-eqz p3, :cond_1

    #@5a
    .line 717
    const-string/jumbo v5, "IntentResolver"

    #@5d
    const-string/jumbo v6, "  Filter\'s target is stopped; skipping"

    #@60
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 711
    :cond_1
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@65
    goto :goto_2

    #@66
    .line 703
    .end local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v10    # "N":I
    .end local v13    # "hasNonDefaults":Z
    .end local v14    # "i":I
    :cond_2
    const/16 v16, 0x0

    #@68
    .line 704
    .local v16, "logPrinter":Landroid/util/Printer;
    const/4 v15, 0x0

    #@69
    .local v15, "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_0

    #@6a
    .line 707
    .end local v15    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v16    # "logPrinter":Landroid/util/Printer;
    :cond_3
    const/4 v10, 0x0

    #@6b
    .restart local v10    # "N":I
    goto :goto_1

    #@6c
    .line 723
    .restart local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v13    # "hasNonDefaults":Z
    .restart local v14    # "i":I
    :cond_4
    if-eqz v19, :cond_5

    #@6e
    move-object/from16 v0, p0

    #@70
    move-object/from16 v1, v19

    #@72
    invoke-virtual {v0, v1, v3}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    #@75
    move-result v5

    #@76
    if-eqz v5, :cond_6

    #@78
    .line 731
    :cond_5
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getAutoVerify()Z

    #@7b
    move-result v5

    #@7c
    if-eqz v5, :cond_7

    #@7e
    .line 732
    if-eqz p3, :cond_7

    #@80
    .line 733
    const-string/jumbo v5, "IntentResolver"

    #@83
    new-instance v6, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v8, "  Filter verified: "

    #@8b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v3}, Lcom/android/server/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    #@94
    move-result v8

    #@95
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 734
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@a3
    move-result v11

    #@a4
    .line 735
    .local v11, "authorities":I
    const/16 v21, 0x0

    #@a6
    .local v21, "z":I
    :goto_4
    move/from16 v0, v21

    #@a8
    if-ge v0, v11, :cond_7

    #@aa
    .line 736
    const-string/jumbo v5, "IntentResolver"

    #@ad
    new-instance v6, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v8, "   "

    #@b5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    move/from16 v0, v21

    #@bb
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    #@be
    move-result-object v8

    #@bf
    invoke-virtual {v8}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v6

    #@cb
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 735
    add-int/lit8 v21, v21, 0x1

    #@d0
    goto :goto_4

    #@d1
    .line 724
    .end local v11    # "authorities":I
    .end local v21    # "z":I
    :cond_6
    if-eqz p3, :cond_1

    #@d3
    .line 725
    const-string/jumbo v5, "IntentResolver"

    #@d6
    new-instance v6, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v8, "  Filter is not from package "

    #@de
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v6

    #@e2
    move-object/from16 v0, v19

    #@e4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v6

    #@e8
    const-string/jumbo v8, "; skipping"

    #@eb
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v6

    #@ef
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v6

    #@f3
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    goto/16 :goto_3

    #@f8
    .line 742
    :cond_7
    move-object/from16 v0, p0

    #@fa
    move-object/from16 v1, p8

    #@fc
    invoke-virtual {v0, v3, v1}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    #@ff
    move-result v5

    #@100
    if-nez v5, :cond_8

    #@102
    .line 743
    if-eqz p3, :cond_1

    #@104
    .line 744
    const-string/jumbo v5, "IntentResolver"

    #@107
    const-string/jumbo v6, "  Filter\'s target already added"

    #@10a
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10d
    goto/16 :goto_3

    #@10f
    .line 749
    :cond_8
    const-string/jumbo v9, "IntentResolver"

    #@112
    move-object/from16 v5, p5

    #@114
    move-object/from16 v6, p6

    #@116
    move-object/from16 v8, p2

    #@118
    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    #@11b
    move-result v17

    #@11c
    .line 750
    .local v17, "match":I
    if-ltz v17, :cond_c

    #@11e
    .line 751
    if-eqz p3, :cond_9

    #@120
    const-string/jumbo v5, "IntentResolver"

    #@123
    new-instance v6, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v8, "  Filter matched!  match=0x"

    #@12b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v6

    #@12f
    .line 752
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@132
    move-result-object v8

    #@133
    .line 751
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v6

    #@137
    .line 752
    const-string/jumbo v8, " hasDefault="

    #@13a
    .line 751
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v6

    #@13e
    .line 753
    const-string/jumbo v8, "android.intent.category.DEFAULT"

    #@141
    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    #@144
    move-result v8

    #@145
    .line 751
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@148
    move-result-object v6

    #@149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v6

    #@14d
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 754
    :cond_9
    if-eqz p4, :cond_a

    #@152
    const-string/jumbo v5, "android.intent.category.DEFAULT"

    #@155
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    #@158
    move-result v5

    #@159
    if-eqz v5, :cond_b

    #@15b
    .line 755
    :cond_a
    move-object/from16 v0, p0

    #@15d
    move/from16 v1, v17

    #@15f
    move/from16 v2, p9

    #@161
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    #@164
    move-result-object v18

    #@165
    .line 756
    .local v18, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v18, :cond_1

    #@167
    .line 757
    move-object/from16 v0, p8

    #@169
    move-object/from16 v1, v18

    #@16b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16e
    .line 758
    if-eqz p3, :cond_1

    #@170
    .line 759
    const-string/jumbo v5, "    "

    #@173
    move-object/from16 v0, p0

    #@175
    invoke-virtual {v0, v15, v5, v3}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    #@178
    .line 760
    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    #@17b
    .line 761
    const-string/jumbo v5, "    "

    #@17e
    move-object/from16 v0, v16

    #@180
    invoke-virtual {v3, v0, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@183
    goto/16 :goto_3

    #@185
    .line 765
    .end local v18    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_b
    const/4 v13, 0x1

    #@186
    goto/16 :goto_3

    #@188
    .line 768
    :cond_c
    if-eqz p3, :cond_1

    #@18a
    .line 770
    packed-switch v17, :pswitch_data_0

    #@18d
    .line 775
    const-string/jumbo v20, "unknown reason"

    #@190
    .line 777
    .local v20, "reason":Ljava/lang/String;
    :goto_5
    const-string/jumbo v5, "IntentResolver"

    #@193
    new-instance v6, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v8, "  Filter did not match: "

    #@19b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v6

    #@19f
    move-object/from16 v0, v20

    #@1a1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v6

    #@1a5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v6

    #@1a9
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1ac
    goto/16 :goto_3

    #@1ae
    .line 771
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v20, "action"

    #@1b1
    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    #@1b2
    .line 772
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v20, "category"

    #@1b5
    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    #@1b6
    .line 773
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v20, "data"

    #@1b9
    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    #@1ba
    .line 774
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v20, "type"

    #@1bd
    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    #@1be
    .line 782
    .end local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v17    # "match":I
    .end local v20    # "reason":Ljava/lang/String;
    :cond_d
    if-eqz v13, :cond_e

    #@1c0
    .line 783
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    #@1c3
    move-result v5

    #@1c4
    if-nez v5, :cond_f

    #@1c6
    .line 784
    const-string/jumbo v5, "IntentResolver"

    #@1c9
    const-string/jumbo v6, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    #@1cc
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cf
    .line 690
    :cond_e
    :goto_6
    return-void

    #@1d0
    .line 785
    :cond_f
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    #@1d3
    move-result v5

    #@1d4
    const/4 v6, 0x1

    #@1d5
    if-le v5, v6, :cond_e

    #@1d7
    .line 786
    const-string/jumbo v5, "IntentResolver"

    #@1da
    const-string/jumbo v6, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    #@1dd
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e0
    goto :goto_6

    #@1e1
    .line 770
    nop

    #@1e2
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v2, 0x0

    #@1
    .line 149
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_0

    #@3
    .line 150
    const/4 v1, 0x0

    #@4
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 151
    aget-object v0, p1, v1

    #@9
    .line 152
    .local v0, "cur":Landroid/content/IntentFilter;, "TF;"
    if-nez v0, :cond_1

    #@b
    .line 163
    .end local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    .end local v1    # "i":I
    :cond_0
    return-object v2

    #@c
    .line 155
    .restart local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    .restart local v1    # "i":I
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_3

    #@12
    .line 156
    if-nez v2, :cond_2

    #@14
    .line 157
    new-instance v2, Ljava/util/ArrayList;

    #@16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 159
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0
.end method

.method private filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 5
    .param p1, "f1"    # Landroid/content/IntentFilter;
    .param p2, "f2"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v4, 0x0

    #@1
    .line 74
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    #@4
    move-result v1

    #@5
    .line 75
    .local v1, "s1":I
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    #@8
    move-result v2

    #@9
    .line 76
    .local v2, "s2":I
    if-eq v1, v2, :cond_0

    #@b
    .line 77
    return v4

    #@c
    .line 79
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 80
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_1

    #@19
    .line 81
    return v4

    #@1a
    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    #@20
    move-result v1

    #@21
    .line 85
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    #@24
    move-result v2

    #@25
    .line 86
    if-eq v1, v2, :cond_3

    #@27
    .line 87
    return v4

    #@28
    .line 89
    :cond_3
    const/4 v0, 0x0

    #@29
    :goto_1
    if-ge v0, v1, :cond_5

    #@2b
    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_4

    #@35
    .line 91
    return v4

    #@36
    .line 89
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_1

    #@39
    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    #@3c
    move-result v1

    #@3d
    .line 95
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    #@40
    move-result v2

    #@41
    .line 96
    if-eq v1, v2, :cond_6

    #@43
    .line 97
    return v4

    #@44
    .line 99
    :cond_6
    const/4 v0, 0x0

    #@45
    :goto_2
    if-ge v0, v1, :cond_8

    #@47
    .line 100
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    #@4e
    move-result v3

    #@4f
    if-nez v3, :cond_7

    #@51
    .line 101
    return v4

    #@52
    .line 99
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_2

    #@55
    .line 104
    :cond_8
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@58
    move-result v1

    #@59
    .line 105
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@5c
    move-result v2

    #@5d
    .line 106
    if-eq v1, v2, :cond_9

    #@5f
    .line 107
    return v4

    #@60
    .line 109
    :cond_9
    const/4 v0, 0x0

    #@61
    :goto_3
    if-ge v0, v1, :cond_b

    #@63
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    #@6a
    move-result v3

    #@6b
    if-nez v3, :cond_a

    #@6d
    .line 111
    return v4

    #@6e
    .line 109
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@70
    goto :goto_3

    #@71
    .line 114
    :cond_b
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@74
    move-result v1

    #@75
    .line 115
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@78
    move-result v2

    #@79
    .line 116
    if-eq v1, v2, :cond_c

    #@7b
    .line 117
    return v4

    #@7c
    .line 119
    :cond_c
    const/4 v0, 0x0

    #@7d
    :goto_4
    if-ge v0, v1, :cond_e

    #@7f
    .line 120
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    #@86
    move-result v3

    #@87
    if-nez v3, :cond_d

    #@89
    .line 121
    return v4

    #@8a
    .line 119
    :cond_d
    add-int/lit8 v0, v0, 0x1

    #@8c
    goto :goto_4

    #@8d
    .line 124
    :cond_e
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    #@90
    move-result v1

    #@91
    .line 125
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    #@94
    move-result v2

    #@95
    .line 126
    if-eq v1, v2, :cond_f

    #@97
    .line 127
    return v4

    #@98
    .line 129
    :cond_f
    const/4 v0, 0x0

    #@99
    :goto_5
    if-ge v0, v1, :cond_11

    #@9b
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    #@a2
    move-result v3

    #@a3
    if-nez v3, :cond_10

    #@a5
    .line 131
    return v4

    #@a6
    .line 129
    :cond_10
    add-int/lit8 v0, v0, 0x1

    #@a8
    goto :goto_5

    #@a9
    .line 134
    :cond_11
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    #@ac
    move-result v1

    #@ad
    .line 135
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    #@b0
    move-result v2

    #@b1
    .line 136
    if-eq v1, v2, :cond_12

    #@b3
    .line 137
    return v4

    #@b4
    .line 139
    :cond_12
    const/4 v0, 0x0

    #@b5
    :goto_6
    if-ge v0, v1, :cond_14

    #@b7
    .line 140
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    #@be
    move-result v3

    #@bf
    if-nez v3, :cond_13

    #@c1
    .line 141
    return v4

    #@c2
    .line 139
    :cond_13
    add-int/lit8 v0, v0, 0x1

    #@c4
    goto :goto_6

    #@c5
    .line 144
    :cond_14
    const/4 v3, 0x1

    #@c6
    return v3
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 681
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    .line 682
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@7
    .line 683
    return-object v1

    #@8
    .line 685
    :cond_0
    new-instance v2, Landroid/util/FastImmutableArraySet;

    #@a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@d
    move-result v1

    #@e
    new-array v1, v1, [Ljava/lang/String;

    #@10
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Ljava/lang/String;

    #@16
    invoke-direct {v2, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    #@19
    return-object v2
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 622
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_0

    #@2
    .line 623
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 626
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 627
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 628
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    .line 629
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    #@13
    .line 631
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    #@16
    goto :goto_0

    #@17
    .line 633
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v7, 0x0

    #@1
    .line 560
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .line 561
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@7
    .line 562
    return v7

    #@8
    .line 565
    :cond_0
    const/4 v3, 0x0

    #@9
    .line 566
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_3

    #@f
    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    .line 568
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    #@17
    .line 570
    move-object v0, v2

    #@18
    .line 571
    .local v0, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    #@1a
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    #@1d
    move-result v4

    #@1e
    .line 572
    .local v4, "slashpos":I
    if-lez v4, :cond_1

    #@20
    .line 573
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 578
    :goto_1
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    #@2a
    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    #@2d
    .line 580
    if-lez v4, :cond_2

    #@2f
    .line 581
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    #@31
    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    #@34
    goto :goto_0

    #@35
    .line 575
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, "/*"

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    goto :goto_1

    #@4a
    .line 583
    :cond_2
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@4c
    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    #@4f
    goto :goto_0

    #@50
    .line 587
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "slashpos":I
    :cond_3
    return v3
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 654
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, [Landroid/content/IntentFilter;

    #@8
    .line 655
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v1, :cond_4

    #@a
    .line 656
    array-length v5, v1

    #@b
    add-int/lit8 v0, v5, -0x1

    #@d
    .line 657
    .local v0, "LAST":I
    :goto_0
    if-ltz v0, :cond_0

    #@f
    aget-object v5, v1, v0

    #@11
    if-nez v5, :cond_0

    #@13
    .line 658
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 660
    :cond_0
    move v2, v0

    #@17
    .local v2, "idx":I
    :goto_1
    if-ltz v2, :cond_3

    #@19
    .line 661
    aget-object v5, v1, v2

    #@1b
    if-ne v5, p3, :cond_2

    #@1d
    .line 662
    sub-int v4, v0, v2

    #@1f
    .line 663
    .local v4, "remain":I
    if-lez v4, :cond_1

    #@21
    .line 664
    add-int/lit8 v5, v2, 0x1

    #@23
    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 666
    :cond_1
    aput-object v7, v1, v0

    #@28
    .line 667
    add-int/lit8 v0, v0, -0x1

    #@2a
    .line 660
    .end local v4    # "remain":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 670
    :cond_3
    if-gez v0, :cond_5

    #@2f
    .line 671
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 653
    .end local v0    # "LAST":I
    .end local v2    # "idx":I
    :cond_4
    :goto_2
    return-void

    #@33
    .line 672
    .restart local v0    # "LAST":I
    .restart local v2    # "idx":I
    :cond_5
    array-length v5, v1

    #@34
    div-int/lit8 v5, v5, 0x2

    #@36
    if-ge v0, v5, :cond_4

    #@38
    .line 673
    add-int/lit8 v5, v0, 0x2

    #@3a
    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    #@3d
    move-result-object v3

    #@3e
    .line 674
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v5, v0, 0x1

    #@40
    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@43
    .line 675
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    goto :goto_2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 638
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_0

    #@2
    .line 639
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 642
    :cond_0
    const/4 v1, 0x0

    #@5
    .line 643
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 644
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    .line 645
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    #@13
    .line 647
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    #@16
    goto :goto_0

    #@17
    .line 649
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v7, 0x0

    #@1
    .line 591
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .line 592
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@7
    .line 593
    return v7

    #@8
    .line 596
    :cond_0
    const/4 v3, 0x0

    #@9
    .line 597
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_3

    #@f
    .line 598
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    .line 599
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    #@17
    .line 601
    move-object v0, v2

    #@18
    .line 602
    .local v0, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    #@1a
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    #@1d
    move-result v4

    #@1e
    .line 603
    .local v4, "slashpos":I
    if-lez v4, :cond_1

    #@20
    .line 604
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 609
    :goto_1
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    #@2a
    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    #@2d
    .line 611
    if-lez v4, :cond_2

    #@2f
    .line 612
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    #@31
    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    goto :goto_0

    #@35
    .line 606
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, "/*"

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    goto :goto_1

    #@4a
    .line 614
    :cond_2
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@4c
    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    #@4f
    goto :goto_0

    #@50
    .line 617
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "slashpos":I
    :cond_3
    return v3
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5
    .line 60
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .line 61
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    #@b
    const-string/jumbo v4, "      Scheme: "

    #@e
    .line 60
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 62
    .local v0, "numS":I
    const-string/jumbo v2, "      Type: "

    #@15
    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    .line 63
    .local v1, "numT":I
    if-nez v0, :cond_0

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 64
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .line 65
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    #@23
    const-string/jumbo v4, "      Action: "

    #@26
    .line 64
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    #@29
    .line 67
    :cond_0
    if-eqz v1, :cond_1

    #@2b
    .line 68
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .line 69
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    #@31
    const-string/jumbo v4, "      TypedAction: "

    #@34
    .line 68
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    #@37
    .line 52
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 477
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    #@0
    .prologue
    .line 284
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "  "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 285
    .local v4, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v1, "\n"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    .line 286
    .local v9, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, "\n"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 287
    .local v2, "curPrefix":Ljava/lang/String;
    const-string/jumbo v3, "Full MIME Types:"

    #@43
    .line 288
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    #@45
    move-object v0, p0

    #@46
    move-object v1, p1

    #@47
    move-object v6, p4

    #@48
    move v7, p5

    #@49
    move/from16 v8, p6

    #@4b
    .line 287
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_0

    #@51
    .line 289
    move-object v2, v9

    #@52
    .line 291
    :cond_0
    const-string/jumbo v3, "Base MIME Types:"

    #@55
    .line 292
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    #@57
    move-object v0, p0

    #@58
    move-object v1, p1

    #@59
    move-object v6, p4

    #@5a
    move v7, p5

    #@5b
    move/from16 v8, p6

    #@5d
    .line 291
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_1

    #@63
    .line 293
    move-object v2, v9

    #@64
    .line 295
    :cond_1
    const-string/jumbo v3, "Wild MIME Types:"

    #@67
    .line 296
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@69
    move-object v0, p0

    #@6a
    move-object v1, p1

    #@6b
    move-object v6, p4

    #@6c
    move v7, p5

    #@6d
    move/from16 v8, p6

    #@6f
    .line 295
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_2

    #@75
    .line 297
    move-object v2, v9

    #@76
    .line 299
    :cond_2
    const-string/jumbo v3, "Schemes:"

    #@79
    .line 300
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    #@7b
    move-object v0, p0

    #@7c
    move-object v1, p1

    #@7d
    move-object v6, p4

    #@7e
    move v7, p5

    #@7f
    move/from16 v8, p6

    #@81
    .line 299
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_3

    #@87
    .line 301
    move-object v2, v9

    #@88
    .line 303
    :cond_3
    const-string/jumbo v3, "Non-Data Actions:"

    #@8b
    .line 304
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    #@8d
    move-object v0, p0

    #@8e
    move-object v1, p1

    #@8f
    move-object v6, p4

    #@90
    move v7, p5

    #@91
    move/from16 v8, p6

    #@93
    .line 303
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_4

    #@99
    .line 305
    move-object v2, v9

    #@9a
    .line 307
    :cond_4
    const-string/jumbo v3, "MIME Typed Actions:"

    #@9d
    .line 308
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    #@9f
    move-object v0, p0

    #@a0
    move-object v1, p1

    #@a1
    move-object v6, p4

    #@a2
    move v7, p5

    #@a3
    move/from16 v8, p6

    #@a5
    .line 307
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    #@a8
    move-result v0

    #@a9
    if-eqz v0, :cond_5

    #@ab
    .line 309
    move-object v2, v9

    #@ac
    .line 311
    :cond_5
    if-ne v2, v9, :cond_6

    #@ae
    const/4 v0, 0x1

    #@af
    :goto_0
    return v0

    #@b0
    :cond_6
    const/4 v0, 0x0

    #@b1
    goto :goto_0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 525
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6
    .line 524
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    #@0
    .prologue
    .line 533
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@6
    const-string/jumbo v0, ": "

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    #@f
    .line 532
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 19
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .param p8, "collapseDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 219
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    #@2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    move-object/from16 v0, v17

    #@7
    move-object/from16 v1, p4

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v17

    #@d
    const-string/jumbo v18, "  "

    #@10
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v17

    #@14
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 220
    .local v6, "eprefix":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    move-object/from16 v0, v17

    #@1f
    move-object/from16 v1, p4

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v17

    #@25
    const-string/jumbo v18, "    "

    #@28
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v17

    #@2c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v9

    #@30
    .line 221
    .local v9, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    #@32
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    #@35
    .line 222
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v15, 0x0

    #@36
    .line 223
    .local v15, "printedSomething":Z
    const/16 v16, 0x0

    #@38
    .line 224
    .local v16, "printer":Landroid/util/Printer;
    const/4 v13, 0x0

    #@39
    .end local v16    # "printer":Landroid/util/Printer;
    .end local p3    # "title":Ljava/lang/String;
    .local v13, "mapi":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    #@3c
    move-result v17

    #@3d
    move/from16 v0, v17

    #@3f
    if-ge v13, v0, :cond_d

    #@41
    .line 225
    move-object/from16 v0, p5

    #@43
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    check-cast v5, [Landroid/content/IntentFilter;

    #@49
    .line 226
    .local v5, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v4, v5

    #@4a
    .line 227
    .local v4, "N":I
    const/4 v14, 0x0

    #@4b
    .line 229
    .local v14, "printedHeader":Z
    if-eqz p8, :cond_6

    #@4d
    .line 230
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    #@50
    .line 231
    const/4 v10, 0x0

    #@51
    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_3

    #@53
    aget-object v7, v5, v10

    #@55
    .local v7, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_3

    #@57
    .line 232
    if-eqz p6, :cond_0

    #@59
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, p6

    #@5d
    invoke-virtual {v0, v1, v7}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    #@60
    move-result v17

    #@61
    if-eqz v17, :cond_1

    #@63
    .line 235
    :cond_0
    move-object/from16 v0, p0

    #@65
    invoke-virtual {v0, v7}, Lcom/android/server/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    #@68
    move-result-object v12

    #@69
    .line 236
    .local v12, "label":Ljava/lang/Object;
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@6c
    move-result v11

    #@6d
    .line 237
    .local v11, "index":I
    if-gez v11, :cond_2

    #@6f
    .line 238
    new-instance v17, Landroid/util/MutableInt;

    #@71
    const/16 v18, 0x1

    #@73
    invoke-direct/range {v17 .. v18}, Landroid/util/MutableInt;-><init>(I)V

    #@76
    move-object/from16 v0, v17

    #@78
    invoke-virtual {v8, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    .line 231
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/Object;
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 240
    .restart local v11    # "index":I
    .restart local v12    # "label":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@81
    move-result-object v17

    #@82
    check-cast v17, Landroid/util/MutableInt;

    #@84
    move-object/from16 v0, v17

    #@86
    iget v0, v0, Landroid/util/MutableInt;->value:I

    #@88
    move/from16 v18, v0

    #@8a
    add-int/lit8 v18, v18, 0x1

    #@8c
    move/from16 v0, v18

    #@8e
    move-object/from16 v1, v17

    #@90
    iput v0, v1, Landroid/util/MutableInt;->value:I

    #@92
    goto :goto_2

    #@93
    .line 243
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/Object;
    :cond_3
    const/4 v10, 0x0

    #@94
    :goto_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@97
    move-result v17

    #@98
    move/from16 v0, v17

    #@9a
    if-ge v10, v0, :cond_c

    #@9c
    .line 244
    if-eqz p3, :cond_4

    #@9e
    .line 245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a1
    move-object/from16 v0, p1

    #@a3
    move-object/from16 v1, p3

    #@a5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 246
    const/16 p3, 0x0

    #@aa
    .line 248
    :cond_4
    if-nez v14, :cond_5

    #@ac
    .line 249
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b1
    move-object/from16 v0, p5

    #@b3
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b6
    move-result-object v17

    #@b7
    check-cast v17, Ljava/lang/String;

    #@b9
    move-object/from16 v0, p1

    #@bb
    move-object/from16 v1, v17

    #@bd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c0
    const-string/jumbo v17, ":"

    #@c3
    move-object/from16 v0, p1

    #@c5
    move-object/from16 v1, v17

    #@c7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 250
    const/4 v14, 0x1

    #@cb
    .line 252
    :cond_5
    const/4 v15, 0x1

    #@cc
    .line 253
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@cf
    move-result-object v18

    #@d0
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d3
    move-result-object v17

    #@d4
    check-cast v17, Landroid/util/MutableInt;

    #@d6
    move-object/from16 v0, v17

    #@d8
    iget v0, v0, Landroid/util/MutableInt;->value:I

    #@da
    move/from16 v17, v0

    #@dc
    move-object/from16 v0, p0

    #@de
    move-object/from16 v1, p1

    #@e0
    move-object/from16 v2, v18

    #@e2
    move/from16 v3, v17

    #@e4
    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    #@e7
    .line 243
    add-int/lit8 v10, v10, 0x1

    #@e9
    goto :goto_3

    #@ea
    .line 256
    .end local v10    # "i":I
    :cond_6
    const/4 v10, 0x0

    #@eb
    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v4, :cond_c

    #@ed
    aget-object v7, v5, v10

    #@ef
    .restart local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_c

    #@f1
    .line 257
    if-eqz p6, :cond_7

    #@f3
    move-object/from16 v0, p0

    #@f5
    move-object/from16 v1, p6

    #@f7
    invoke-virtual {v0, v1, v7}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    #@fa
    move-result v17

    #@fb
    if-eqz v17, :cond_b

    #@fd
    .line 260
    :cond_7
    if-eqz p3, :cond_8

    #@ff
    .line 261
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    move-object/from16 v0, p1

    #@104
    move-object/from16 v1, p3

    #@106
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@109
    .line 262
    const/16 p3, 0x0

    #@10b
    .line 264
    :cond_8
    if-nez v14, :cond_9

    #@10d
    .line 265
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@112
    move-object/from16 v0, p5

    #@114
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@117
    move-result-object v17

    #@118
    check-cast v17, Ljava/lang/String;

    #@11a
    move-object/from16 v0, p1

    #@11c
    move-object/from16 v1, v17

    #@11e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    const-string/jumbo v17, ":"

    #@124
    move-object/from16 v0, p1

    #@126
    move-object/from16 v1, v17

    #@128
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12b
    .line 266
    const/4 v14, 0x1

    #@12c
    .line 268
    :cond_9
    const/4 v15, 0x1

    #@12d
    .line 269
    move-object/from16 v0, p0

    #@12f
    move-object/from16 v1, p1

    #@131
    invoke-virtual {v0, v1, v9, v7}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    #@134
    .line 270
    if-eqz p7, :cond_b

    #@136
    .line 271
    if-nez v16, :cond_a

    #@138
    .line 272
    new-instance v16, Landroid/util/PrintWriterPrinter;

    #@13a
    move-object/from16 v0, v16

    #@13c
    move-object/from16 v1, p1

    #@13e
    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@141
    .line 274
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    #@143
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    move-object/from16 v0, v17

    #@148
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v17

    #@14c
    const-string/jumbo v18, "  "

    #@14f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v17

    #@153
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v17

    #@157
    move-object/from16 v0, v16

    #@159
    move-object/from16 v1, v17

    #@15b
    invoke-virtual {v7, v0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@15e
    .line 256
    :cond_b
    add-int/lit8 v10, v10, 0x1

    #@160
    goto :goto_4

    #@161
    .line 224
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_c
    add-int/lit8 v13, v13, 0x1

    #@163
    goto/16 :goto_0

    #@165
    .line 279
    .end local v4    # "N":I
    .end local v5    # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v10    # "i":I
    .end local v14    # "printedHeader":Z
    :cond_d
    return v15
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 343
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    #@2
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    #@4
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    #@b
    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 529
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const-string/jumbo v0, "IntentFilter"

    #@3
    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 167
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@5
    move-result v3

    #@6
    if-ne v3, v5, :cond_0

    #@8
    .line 169
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, [Landroid/content/IntentFilter;

    #@14
    invoke-direct {p0, v3, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    #@22
    move-result v3

    #@23
    if-ne v3, v5, :cond_1

    #@25
    .line 172
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, [Landroid/content/IntentFilter;

    #@31
    invoke-direct {p0, v3, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    #@34
    move-result-object v3

    #@35
    return-object v3

    #@36
    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_2

    #@3c
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_2

    #@42
    .line 174
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    #@45
    move-result v3

    #@46
    if-ne v3, v5, :cond_2

    #@48
    .line 176
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    #@4a
    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v3

    #@52
    check-cast v3, [Landroid/content/IntentFilter;

    #@54
    invoke-direct {p0, v3, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    #@57
    move-result-object v3

    #@58
    return-object v3

    #@59
    .line 178
    :cond_2
    const/4 v2, 0x0

    #@5a
    .line 179
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    #@5c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5f
    move-result-object v1

    #@60
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    .local v1, "cur$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_5

    #@66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Landroid/content/IntentFilter;

    #@6c
    .line 180
    .local v0, "cur":Landroid/content/IntentFilter;, "TF;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_3

    #@72
    .line 181
    if-nez v2, :cond_4

    #@74
    .line 182
    new-instance v2, Ljava/util/ArrayList;

    #@76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@79
    .line 184
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    goto :goto_0

    #@7d
    .line 187
    .end local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_5
    return-object v2
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 486
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 502
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 516
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 40
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 373
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    .line 375
    .local v8, "scheme":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    #@6
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 378
    .local v10, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    #@c
    move-result v2

    #@d
    and-int/lit8 v2, v2, 0x8

    #@f
    if-eqz v2, :cond_b

    #@11
    const/4 v5, 0x1

    #@12
    .line 380
    .local v5, "debug":Z
    :goto_0
    if-eqz v5, :cond_0

    #@14
    .line 381
    const-string/jumbo v2, "IntentResolver"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "Resolving type="

    #@1f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    move-object/from16 v0, p2

    #@25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v6, " scheme="

    #@2c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 382
    const-string/jumbo v6, " defaultOnly="

    #@37
    .line 381
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    move/from16 v0, p3

    #@3d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 382
    const-string/jumbo v6, " userId="

    #@44
    .line 381
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    move/from16 v0, p4

    #@4a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    .line 382
    const-string/jumbo v6, " of "

    #@51
    .line 381
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 380
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 384
    :cond_0
    const/4 v9, 0x0

    #@63
    .line 385
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v18, 0x0

    #@65
    .line 386
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v26, 0x0

    #@67
    .line 387
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v34, 0x0

    #@69
    .line 391
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz p2, :cond_4

    #@6b
    .line 392
    const/16 v2, 0x2f

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@72
    move-result v39

    #@73
    .line 393
    .local v39, "slashpos":I
    if-lez v39, :cond_4

    #@75
    .line 394
    const/4 v2, 0x0

    #@76
    move-object/from16 v0, p2

    #@78
    move/from16 v1, v39

    #@7a
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7d
    move-result-object v37

    #@7e
    .line 395
    .local v37, "baseType":Ljava/lang/String;
    const-string/jumbo v2, "*"

    #@81
    move-object/from16 v0, v37

    #@83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    if-nez v2, :cond_e

    #@89
    .line 396
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@8c
    move-result v2

    #@8d
    add-int/lit8 v3, v39, 0x2

    #@8f
    if-ne v2, v3, :cond_1

    #@91
    .line 397
    add-int/lit8 v2, v39, 0x1

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@98
    move-result v2

    #@99
    const/16 v3, 0x2a

    #@9b
    if-eq v2, v3, :cond_c

    #@9d
    .line 400
    :cond_1
    move-object/from16 v0, p0

    #@9f
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    move-result-object v9

    #@a7
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    #@a9
    .line 401
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_2

    #@ab
    const-string/jumbo v2, "IntentResolver"

    #@ae
    new-instance v3, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v6, "First type cut: "

    #@b6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v3

    #@c6
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 402
    :cond_2
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@cd
    move-object/from16 v0, v37

    #@cf
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    move-result-object v18

    #@d3
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    #@d5
    .line 403
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_3

    #@d7
    const-string/jumbo v2, "IntentResolver"

    #@da
    new-instance v3, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v6, "Second type cut: "

    #@e2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v3

    #@e6
    .line 404
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@e9
    move-result-object v6

    #@ea
    .line 403
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v3

    #@f2
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    .line 415
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    #@f7
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@f9
    const-string/jumbo v3, "*"

    #@fc
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ff
    move-result-object v26

    #@100
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v26, [Landroid/content/IntentFilter;

    #@102
    .line 416
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_4

    #@104
    const-string/jumbo v2, "IntentResolver"

    #@107
    new-instance v3, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v6, "Third type cut: "

    #@10f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@116
    move-result-object v6

    #@117
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v3

    #@11b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@122
    .line 430
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    #@124
    .line 431
    move-object/from16 v0, p0

    #@126
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    #@128
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    move-result-object v34

    #@12c
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v34, [Landroid/content/IntentFilter;

    #@12e
    .line 432
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_5

    #@130
    const-string/jumbo v2, "IntentResolver"

    #@133
    new-instance v3, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v6, "Scheme list: "

    #@13b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v3

    #@13f
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@142
    move-result-object v6

    #@143
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v3

    #@147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v3

    #@14b
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14e
    .line 438
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_5
    if-nez p2, :cond_6

    #@150
    if-nez v8, :cond_6

    #@152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@155
    move-result-object v2

    #@156
    if-eqz v2, :cond_6

    #@158
    .line 439
    move-object/from16 v0, p0

    #@15a
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    #@15c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@15f
    move-result-object v3

    #@160
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@163
    move-result-object v9

    #@164
    check-cast v9, [Landroid/content/IntentFilter;

    #@166
    .line 440
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_6

    #@168
    const-string/jumbo v2, "IntentResolver"

    #@16b
    new-instance v3, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v6, "Action list: "

    #@173
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v3

    #@177
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@17a
    move-result-object v6

    #@17b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v3

    #@17f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v3

    #@183
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@186
    .line 443
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    #@189
    move-result-object v4

    #@18a
    .line 444
    .local v4, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    #@18c
    move-object/from16 v2, p0

    #@18e
    move-object/from16 v3, p1

    #@190
    move/from16 v6, p3

    #@192
    move-object/from16 v7, p2

    #@194
    move/from16 v11, p4

    #@196
    .line 445
    invoke-direct/range {v2 .. v11}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    #@199
    .line 448
    :cond_7
    if-eqz v18, :cond_8

    #@19b
    move-object/from16 v11, p0

    #@19d
    move-object/from16 v12, p1

    #@19f
    move-object v13, v4

    #@1a0
    move v14, v5

    #@1a1
    move/from16 v15, p3

    #@1a3
    move-object/from16 v16, p2

    #@1a5
    move-object/from16 v17, v8

    #@1a7
    move-object/from16 v19, v10

    #@1a9
    move/from16 v20, p4

    #@1ab
    .line 449
    invoke-direct/range {v11 .. v20}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    #@1ae
    .line 452
    :cond_8
    if-eqz v26, :cond_9

    #@1b0
    move-object/from16 v19, p0

    #@1b2
    move-object/from16 v20, p1

    #@1b4
    move-object/from16 v21, v4

    #@1b6
    move/from16 v22, v5

    #@1b8
    move/from16 v23, p3

    #@1ba
    move-object/from16 v24, p2

    #@1bc
    move-object/from16 v25, v8

    #@1be
    move-object/from16 v27, v10

    #@1c0
    move/from16 v28, p4

    #@1c2
    .line 453
    invoke-direct/range {v19 .. v28}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    #@1c5
    .line 456
    :cond_9
    if-eqz v34, :cond_a

    #@1c7
    move-object/from16 v27, p0

    #@1c9
    move-object/from16 v28, p1

    #@1cb
    move-object/from16 v29, v4

    #@1cd
    move/from16 v30, v5

    #@1cf
    move/from16 v31, p3

    #@1d1
    move-object/from16 v32, p2

    #@1d3
    move-object/from16 v33, v8

    #@1d5
    move-object/from16 v35, v10

    #@1d7
    move/from16 v36, p4

    #@1d9
    .line 457
    invoke-direct/range {v27 .. v36}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    #@1dc
    .line 460
    :cond_a
    move-object/from16 v0, p0

    #@1de
    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    #@1e1
    .line 462
    if-eqz v5, :cond_f

    #@1e3
    .line 463
    const-string/jumbo v2, "IntentResolver"

    #@1e6
    const-string/jumbo v3, "Final result list:"

    #@1e9
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1ec
    .line 464
    const/16 v38, 0x0

    #@1ee
    .local v38, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1f1
    move-result v2

    #@1f2
    move/from16 v0, v38

    #@1f4
    if-ge v0, v2, :cond_f

    #@1f6
    .line 465
    const-string/jumbo v2, "IntentResolver"

    #@1f9
    new-instance v3, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v6, "  "

    #@201
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v3

    #@205
    move/from16 v0, v38

    #@207
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20a
    move-result-object v6

    #@20b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v3

    #@20f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v3

    #@213
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@216
    .line 464
    add-int/lit8 v38, v38, 0x1

    #@218
    goto :goto_3

    #@219
    .line 378
    .end local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5    # "debug":Z
    .end local v38    # "i":I
    :cond_b
    const/4 v5, 0x0

    #@21a
    .restart local v5    # "debug":Z
    goto/16 :goto_0

    #@21c
    .line 407
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v37    # "baseType":Ljava/lang/String;
    .restart local v39    # "slashpos":I
    :cond_c
    move-object/from16 v0, p0

    #@21e
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    #@220
    move-object/from16 v0, v37

    #@222
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@225
    move-result-object v9

    #@226
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    #@228
    .line 408
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_d

    #@22a
    const-string/jumbo v2, "IntentResolver"

    #@22d
    new-instance v3, Ljava/lang/StringBuilder;

    #@22f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@232
    const-string/jumbo v6, "First type cut: "

    #@235
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v3

    #@239
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@23c
    move-result-object v6

    #@23d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v3

    #@241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v3

    #@245
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@248
    .line 409
    :cond_d
    move-object/from16 v0, p0

    #@24a
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    #@24c
    move-object/from16 v0, v37

    #@24e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@251
    move-result-object v18

    #@252
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    #@254
    .line 410
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_3

    #@256
    const-string/jumbo v2, "IntentResolver"

    #@259
    new-instance v3, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v6, "Second type cut: "

    #@261
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v3

    #@265
    .line 411
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@268
    move-result-object v6

    #@269
    .line 410
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v3

    #@26d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@270
    move-result-object v3

    #@271
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@274
    goto/16 :goto_1

    #@276
    .line 417
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@279
    move-result-object v2

    #@27a
    if-eqz v2, :cond_4

    #@27c
    .line 421
    move-object/from16 v0, p0

    #@27e
    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    #@280
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@283
    move-result-object v3

    #@284
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@287
    move-result-object v9

    #@288
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    #@28a
    .line 422
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_4

    #@28c
    const-string/jumbo v2, "IntentResolver"

    #@28f
    new-instance v3, Ljava/lang/StringBuilder;

    #@291
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@294
    const-string/jumbo v6, "Typed Action list: "

    #@297
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v3

    #@29b
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@29e
    move-result-object v6

    #@29f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v3

    #@2a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a6
    move-result-object v3

    #@2a7
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2aa
    goto/16 :goto_2

    #@2ac
    .line 468
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    .restart local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    :cond_f
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 355
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 358
    .local v9, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@8
    move-result v1

    #@9
    and-int/lit8 v1, v1, 0x8

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v4, 0x1

    #@e
    .line 360
    .local v4, "debug":Z
    :goto_0
    invoke-static {p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    #@11
    move-result-object v3

    #@12
    .line 361
    .local v3, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 362
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v11

    #@1a
    .line 363
    .local v11, "N":I
    const/4 v12, 0x0

    #@1b
    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_1

    #@1d
    .line 365
    move-object/from16 v0, p4

    #@1f
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, [Landroid/content/IntentFilter;

    #@25
    move-object v1, p0

    #@26
    move-object v2, p1

    #@27
    move/from16 v5, p3

    #@29
    move-object v6, p2

    #@2a
    move/from16 v10, p5

    #@2c
    .line 364
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    #@2f
    .line 363
    add-int/lit8 v12, v12, 0x1

    #@31
    goto :goto_1

    #@32
    .line 358
    .end local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v4    # "debug":Z
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "i":I
    :cond_0
    const/4 v4, 0x0

    #@33
    .restart local v4    # "debug":Z
    goto :goto_0

    #@34
    .line 367
    .restart local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v7    # "scheme":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "i":I
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    #@37
    .line 368
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 192
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    #@3
    .line 193
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@8
    .line 191
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .line 204
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    #@6
    const-string/jumbo v4, "      Scheme: "

    #@9
    .line 203
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    .line 205
    .local v0, "numS":I
    const-string/jumbo v2, "      Type: "

    #@10
    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    .line 206
    .local v1, "numT":I
    if-nez v0, :cond_0

    #@16
    if-nez v1, :cond_0

    #@18
    .line 207
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .line 208
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    #@1e
    const-string/jumbo v4, "      Action: "

    #@21
    .line 207
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    #@24
    .line 210
    :cond_0
    if-eqz v1, :cond_1

    #@26
    .line 211
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    .line 212
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    #@2c
    const-string/jumbo v4, "      TypedAction: "

    #@2f
    .line 211
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    #@32
    .line 196
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 521
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    #@2
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@5
    .line 520
    return-void
.end method
