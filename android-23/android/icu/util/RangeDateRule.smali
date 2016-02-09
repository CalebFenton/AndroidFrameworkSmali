.class public Landroid/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source "RangeDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@b
    .line 27
    return-void
.end method

.method private rangeAt(I)Landroid/icu/util/Range;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/icu/util/Range;

    #@10
    :goto_0
    return-object v0

    #@11
    .line 151
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method private startIndex(Ljava/util/Date;)I
    .locals 4
    .param p1, "start"    # Ljava/util/Date;

    #@0
    .prologue
    .line 137
    iget-object v3, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    .line 139
    .local v1, "lastIndex":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@c
    move-result v3

    #@d
    if-ge v0, v3, :cond_0

    #@f
    .line 140
    iget-object v3, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@11
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/icu/util/Range;

    #@17
    .line 141
    .local v2, "r":Landroid/icu/util/Range;
    iget-object v3, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    #@19
    invoke-virtual {p1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 146
    .end local v2    # "r":Landroid/icu/util/Range;
    :cond_0
    return v1

    #@20
    .line 144
    .restart local v2    # "r":Landroid/icu/util/Range;
    :cond_1
    move v1, v0

    #@21
    .line 139
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/icu/util/DateRule;)V
    .locals 4
    .param p1, "rule"    # Landroid/icu/util/DateRule;

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/util/Date;

    #@2
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@7
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    #@a
    .line 42
    return-void
.end method

.method public add(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .locals 2
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@2
    new-instance v1, Landroid/icu/util/Range;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/icu/util/Range;-><init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 50
    return-void
.end method

.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "start"    # Ljava/util/Date;

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    #@3
    move-result v1

    #@4
    .line 65
    .local v1, "index":I
    iget-object v4, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    #@6
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@9
    move-result v4

    #@a
    if-ne v1, v4, :cond_0

    #@c
    .line 66
    const/4 v1, 0x0

    #@d
    .line 68
    :cond_0
    const/4 v3, 0x0

    #@e
    .line 70
    .local v3, "result":Ljava/util/Date;
    invoke-direct {p0, v1}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    #@11
    move-result-object v2

    #@12
    .line 71
    .local v2, "r":Landroid/icu/util/Range;
    add-int/lit8 v4, v1, 0x1

    #@14
    invoke-direct {p0, v4}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    #@17
    move-result-object v0

    #@18
    .line 73
    .local v0, "e":Landroid/icu/util/Range;
    if-eqz v2, :cond_1

    #@1a
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 75
    if-eqz v0, :cond_2

    #@20
    .line 76
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@22
    iget-object v5, v0, Landroid/icu/util/Range;->start:Ljava/util/Date;

    #@24
    invoke-interface {v4, p1, v5}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@27
    move-result-object v3

    #@28
    .line 81
    .end local v3    # "result":Ljava/util/Date;
    :cond_1
    :goto_0
    return-object v3

    #@29
    .line 78
    .restart local v3    # "result":Ljava/util/Date;
    :cond_2
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@2b
    invoke-interface {v4, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    #@2e
    move-result-object v3

    #@2f
    .local v3, "result":Ljava/util/Date;
    goto :goto_0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 89
    if-nez p2, :cond_0

    #@2
    .line 90
    invoke-virtual {p0, p1}, Landroid/icu/util/RangeDateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v5

    #@6
    return-object v5

    #@7
    .line 94
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    #@a
    move-result v1

    #@b
    .line 95
    .local v1, "index":I
    const/4 v4, 0x0

    #@c
    .line 97
    .local v4, "result":Ljava/util/Date;
    invoke-direct {p0, v1}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    #@f
    move-result-object v2

    #@10
    .line 99
    .end local v4    # "result":Ljava/util/Date;
    .local v2, "next":Landroid/icu/util/Range;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    #@12
    if-eqz v2, :cond_2

    #@14
    iget-object v5, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    #@16
    invoke-virtual {v5, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_3

    #@1c
    .line 110
    :cond_2
    return-object v4

    #@1d
    .line 101
    :cond_3
    move-object v3, v2

    #@1e
    .line 102
    .local v3, "r":Landroid/icu/util/Range;
    add-int/lit8 v5, v1, 0x1

    #@20
    invoke-direct {p0, v5}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    #@23
    move-result-object v2

    #@24
    .line 104
    iget-object v5, v3, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 105
    if-eqz v2, :cond_4

    #@2a
    iget-object v5, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    #@2c
    invoke-virtual {v5, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_5

    #@32
    .line 106
    :cond_4
    move-object v0, p2

    #@33
    .line 107
    .local v0, "e":Ljava/util/Date;
    :goto_1
    iget-object v5, v3, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@35
    invoke-interface {v5, p1, v0}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@38
    move-result-object v4

    #@39
    .local v4, "result":Ljava/util/Date;
    goto :goto_0

    #@3a
    .line 105
    .end local v0    # "e":Ljava/util/Date;
    .end local v4    # "result":Ljava/util/Date;
    :cond_5
    iget-object v0, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    #@3c
    .restart local v0    # "e":Ljava/util/Date;
    goto :goto_1
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/RangeDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    #@7
    move-result-object v0

    #@8
    .line 119
    .local v0, "r":Landroid/icu/util/Range;
    if-eqz v0, :cond_0

    #@a
    iget-object v1, v0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v1, v0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@10
    invoke-interface {v1, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    #@13
    move-result v1

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method
