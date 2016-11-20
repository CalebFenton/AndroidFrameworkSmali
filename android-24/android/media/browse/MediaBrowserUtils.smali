.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, -0x1

    #@3
    .line 26
    if-ne p0, p1, :cond_0

    #@5
    .line 27
    return v0

    #@6
    .line 28
    :cond_0
    if-nez p0, :cond_3

    #@8
    .line 29
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    #@b
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@e
    move-result v2

    #@f
    if-ne v2, v4, :cond_2

    #@11
    .line 30
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    #@14
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@17
    move-result v2

    #@18
    if-ne v2, v4, :cond_1

    #@1a
    .line 29
    :goto_0
    return v0

    #@1b
    :cond_1
    move v0, v1

    #@1c
    .line 30
    goto :goto_0

    #@1d
    :cond_2
    move v0, v1

    #@1e
    .line 29
    goto :goto_0

    #@1f
    .line 31
    :cond_3
    if-nez p1, :cond_5

    #@21
    .line 32
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    #@24
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@27
    move-result v2

    #@28
    if-ne v2, v4, :cond_4

    #@2a
    .line 33
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    #@2d
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@30
    move-result v2

    #@31
    if-ne v2, v4, :cond_4

    #@33
    move v1, v0

    #@34
    .line 32
    :cond_4
    return v1

    #@35
    .line 35
    :cond_5
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    #@38
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@3b
    move-result v2

    #@3c
    .line 36
    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    #@3f
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@42
    move-result v3

    #@43
    .line 35
    if-ne v2, v3, :cond_6

    #@45
    .line 37
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    #@48
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@4b
    move-result v2

    #@4c
    .line 38
    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    #@4f
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@52
    move-result v3

    #@53
    .line 37
    if-ne v2, v3, :cond_6

    #@55
    move v1, v0

    #@56
    .line 35
    :cond_6
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    .line 43
    if-nez p0, :cond_2

    #@4
    const/4 v2, -0x1

    #@5
    .line 44
    .local v2, "page1":I
    :goto_0
    if-nez p1, :cond_3

    #@7
    const/4 v3, -0x1

    #@8
    .line 45
    .local v3, "page2":I
    :goto_1
    if-nez p0, :cond_4

    #@a
    const/4 v4, -0x1

    #@b
    .line 46
    .local v4, "pageSize1":I
    :goto_2
    if-nez p1, :cond_5

    #@d
    const/4 v5, -0x1

    #@e
    .line 49
    .local v5, "pageSize2":I
    :goto_3
    if-eq v2, v9, :cond_0

    #@10
    if-ne v4, v9, :cond_6

    #@12
    .line 50
    :cond_0
    const/4 v6, 0x0

    #@13
    .line 51
    .local v6, "startIndex1":I
    const v0, 0x7fffffff

    #@16
    .line 57
    .local v0, "endIndex1":I
    :goto_4
    if-eq v3, v9, :cond_1

    #@18
    if-ne v5, v9, :cond_7

    #@1a
    .line 58
    :cond_1
    const/4 v7, 0x0

    #@1b
    .line 59
    .local v7, "startIndex2":I
    const v1, 0x7fffffff

    #@1e
    .line 65
    .local v1, "endIndex2":I
    :goto_5
    if-gt v6, v7, :cond_8

    #@20
    if-gt v7, v0, :cond_8

    #@22
    .line 66
    return v10

    #@23
    .line 43
    .end local v0    # "endIndex1":I
    .end local v1    # "endIndex2":I
    .end local v2    # "page1":I
    .end local v3    # "page2":I
    .end local v4    # "pageSize1":I
    .end local v5    # "pageSize2":I
    .end local v6    # "startIndex1":I
    .end local v7    # "startIndex2":I
    :cond_2
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    #@26
    invoke-virtual {p0, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@29
    move-result v2

    #@2a
    .restart local v2    # "page1":I
    goto :goto_0

    #@2b
    .line 44
    :cond_3
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    #@2e
    invoke-virtual {p1, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@31
    move-result v3

    #@32
    .restart local v3    # "page2":I
    goto :goto_1

    #@33
    .line 45
    :cond_4
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    #@36
    invoke-virtual {p0, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@39
    move-result v4

    #@3a
    .restart local v4    # "pageSize1":I
    goto :goto_2

    #@3b
    .line 46
    :cond_5
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    #@3e
    invoke-virtual {p1, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@41
    move-result v5

    #@42
    .restart local v5    # "pageSize2":I
    goto :goto_3

    #@43
    .line 53
    :cond_6
    mul-int v6, v4, v2

    #@45
    .line 54
    .restart local v6    # "startIndex1":I
    add-int v8, v6, v4

    #@47
    add-int/lit8 v0, v8, -0x1

    #@49
    .restart local v0    # "endIndex1":I
    goto :goto_4

    #@4a
    .line 61
    :cond_7
    mul-int v7, v5, v3

    #@4c
    .line 62
    .restart local v7    # "startIndex2":I
    add-int v8, v7, v5

    #@4e
    add-int/lit8 v1, v8, -0x1

    #@50
    .restart local v1    # "endIndex2":I
    goto :goto_5

    #@51
    .line 67
    :cond_8
    if-gt v6, v1, :cond_9

    #@53
    if-gt v1, v0, :cond_9

    #@55
    .line 68
    return v10

    #@56
    .line 70
    :cond_9
    const/4 v8, 0x0

    #@57
    return v8
.end method
