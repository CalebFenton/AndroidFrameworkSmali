.class public Landroid/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source "RangeDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field greylist-max-o ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    .line 30
    return-void
.end method

.method private greylist-max-o rangeAt(I)Landroid/icu/util/Range;
    .registers 3
    .param p1, "index"    # I

    .line 150
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Range;

    goto :goto_12

    .line 151
    :cond_11
    const/4 v0, 0x0

    .line 150
    :goto_12
    return-object v0
.end method

.method private greylist-max-o startIndex(Ljava/util/Date;)I
    .registers 6
    .param p1, "start"    # Ljava/util/Date;

    .line 137
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 139
    .local v0, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 140
    iget-object v2, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Range;

    .line 141
    .local v2, "r":Landroid/icu/util/Range;
    iget-object v3, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {p1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 142
    goto :goto_24

    .line 144
    :cond_20
    move v0, v1

    .line 139
    .end local v2    # "r":Landroid/icu/util/Range;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 146
    .end local v1    # "i":I
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/util/DateRule;)V
    .registers 5
    .param p1, "rule"    # Landroid/icu/util/DateRule;

    .line 44
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    .line 45
    return-void
.end method

.method public greylist-max-o add(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .registers 5
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    .line 53
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    new-instance v1, Landroid/icu/util/Range;

    invoke-direct {v1, p1, p2}, Landroid/icu/util/Range;-><init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public greylist-max-o firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .registers 8
    .param p1, "start"    # Ljava/util/Date;

    .line 64
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    .line 65
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 66
    const/4 v0, 0x0

    .line 68
    :cond_d
    const/4 v1, 0x0

    .line 70
    .local v1, "result":Ljava/util/Date;
    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    .line 71
    .local v2, "r":Landroid/icu/util/Range;
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v3

    .line 73
    .local v3, "e":Landroid/icu/util/Range;
    if-eqz v2, :cond_2f

    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v4, :cond_2f

    .line 75
    if-eqz v3, :cond_29

    .line 76
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    iget-object v5, v3, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-interface {v4, p1, v5}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    goto :goto_2f

    .line 78
    :cond_29
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v4, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 81
    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public greylist-max-o firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 9
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 89
    if-nez p2, :cond_7

    .line 90
    invoke-virtual {p0, p1}, Landroid/icu/util/RangeDateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 94
    :cond_7
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    .line 95
    .local v0, "index":I
    const/4 v1, 0x0

    .line 97
    .local v1, "result":Ljava/util/Date;
    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    .line 99
    .local v2, "next":Landroid/icu/util/Range;
    :goto_10
    if-nez v1, :cond_3d

    if-eqz v2, :cond_3d

    iget-object v3, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v3, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 101
    move-object v3, v2

    .line 102
    .local v3, "r":Landroid/icu/util/Range;
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    .line 104
    iget-object v4, v3, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v4, :cond_3c

    .line 105
    if-eqz v2, :cond_34

    iget-object v4, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v4, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    goto :goto_35

    .line 106
    :cond_34
    move-object v4, p2

    :goto_35
    nop

    .line 107
    .local v4, "e":Ljava/util/Date;
    iget-object v5, v3, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v5, p1, v4}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 109
    .end local v3    # "r":Landroid/icu/util/Range;
    .end local v4    # "e":Ljava/util/Date;
    :cond_3c
    goto :goto_10

    .line 110
    :cond_3d
    return-object v1
.end method

.method public greylist-max-o isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/RangeDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isOn(Ljava/util/Date;)Z
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 118
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v0

    .line 119
    .local v0, "r":Landroid/icu/util/Range;
    if-eqz v0, :cond_18

    iget-object v1, v0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v1, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method
