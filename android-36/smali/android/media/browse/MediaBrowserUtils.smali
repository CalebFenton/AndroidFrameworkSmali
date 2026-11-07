.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyPagingOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 7
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_4
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "page":I
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "pageSize":I
    if-ne v0, v1, :cond_16

    if-ne v2, v1, :cond_16

    .line 94
    return-object p0

    .line 96
    :cond_16
    mul-int v1, v2, v0

    .line 97
    .local v1, "fromIndex":I
    add-int v3, v1, v2

    .line 98
    .local v3, "toIndex":I
    if-ltz v0, :cond_35

    const/4 v4, 0x1

    if-lt v2, v4, :cond_35

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_26

    goto :goto_35

    .line 101
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_30

    .line 102
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 104
    :cond_30
    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 99
    :cond_35
    :goto_35
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4
.end method

.method public static greylist-max-o areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 33
    return v0

    .line 34
    :cond_4
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_1b

    .line 35
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_19

    .line 36
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 35
    :goto_1a
    return v0

    .line 37
    :cond_1b
    if-nez p1, :cond_2c

    .line 38
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2a

    .line 39
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 38
    :goto_2b
    return v0

    .line 41
    :cond_2c
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_41

    .line 43
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    .line 41
    :goto_42
    return v0
.end method

.method public static greylist-max-o hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 52
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_7

    move v2, v1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 53
    .local v2, "page1":I
    :goto_b
    if-nez p1, :cond_f

    move v0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "page2":I
    :goto_13
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_19

    move v4, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 55
    .local v4, "pageSize1":I
    :goto_1d
    if-nez p1, :cond_21

    move v3, v1

    goto :goto_25

    :cond_21
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 58
    .local v3, "pageSize2":I
    :goto_25
    const/4 v5, 0x1

    if-eq v2, v1, :cond_31

    if-ne v4, v1, :cond_2b

    goto :goto_31

    .line 62
    :cond_2b
    mul-int v6, v4, v2

    .line 63
    .local v6, "startIndex1":I
    add-int v7, v6, v4

    sub-int/2addr v7, v5

    .local v7, "endIndex1":I
    goto :goto_35

    .line 59
    .end local v6    # "startIndex1":I
    .end local v7    # "endIndex1":I
    :cond_31
    :goto_31
    const/4 v6, 0x0

    .line 60
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 66
    .restart local v7    # "endIndex1":I
    :goto_35
    if-eq v0, v1, :cond_40

    if-ne v3, v1, :cond_3a

    goto :goto_40

    .line 70
    :cond_3a
    mul-int v1, v3, v0

    .line 71
    .local v1, "startIndex2":I
    add-int v8, v1, v3

    sub-int/2addr v8, v5

    .local v8, "endIndex2":I
    goto :goto_44

    .line 67
    .end local v1    # "startIndex2":I
    .end local v8    # "endIndex2":I
    :cond_40
    :goto_40
    const/4 v1, 0x0

    .line 68
    .restart local v1    # "startIndex2":I
    const v8, 0x7fffffff

    .line 74
    .restart local v8    # "endIndex2":I
    :goto_44
    if-gt v6, v1, :cond_49

    if-gt v1, v7, :cond_49

    .line 75
    return v5

    .line 76
    :cond_49
    if-gt v6, v8, :cond_4e

    if-gt v8, v7, :cond_4e

    .line 77
    return v5

    .line 79
    :cond_4e
    const/4 v5, 0x0

    return v5
.end method
