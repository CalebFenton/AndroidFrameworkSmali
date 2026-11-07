.class public final Landroid/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static blacklist matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "filters"    # [Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 96
    return-object v0

    .line 99
    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "mimeTypeParts":[Ljava/lang/String;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, p1, v4

    .line 101
    .local v5, "filter":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "filterParts":[Ljava/lang/String;
    invoke-static {v2, v6}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 103
    return-object v5

    .line 100
    .end local v5    # "filter":Ljava/lang/String;
    .end local v6    # "filterParts":[Ljava/lang/String;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 107
    :cond_1e
    return-object v0
.end method

.method public static blacklist matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "mimeTypes"    # [Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 118
    return-object v0

    .line 121
    :cond_4
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "filterParts":[Ljava/lang/String;
    array-length v3, p0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, p0, v4

    .line 123
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v6, v2}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 125
    return-object v5

    .line 122
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "mimeTypeParts":[Ljava/lang/String;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 129
    :cond_1e
    return-object v0
.end method

.method public static blacklist matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "mimeTypeParts":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "filterParts":[Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static blacklist matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "mimeTypes"    # [Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 140
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 143
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "filterParts":[Ljava/lang/String;
    array-length v4, p0

    :goto_12
    if-ge v0, v4, :cond_26

    aget-object v5, p0, v0

    .line 146
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "mimeTypeParts":[Ljava/lang/String;
    invoke-static {v6, v3}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 148
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "mimeTypeParts":[Ljava/lang/String;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 152
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "mimeTypeParts"    # [Ljava/lang/String;
    .param p1, "filterParts"    # [Ljava/lang/String;

    .line 50
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 54
    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 58
    array-length v3, p0

    if-eq v3, v1, :cond_1a

    .line 59
    return v0

    .line 61
    :cond_1a
    aget-object v1, p1, v0

    const-string v3, "*"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    aget-object v1, p1, v0

    aget-object v4, p0, v0

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 63
    return v0

    .line 65
    :cond_2f
    aget-object v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    aget-object v1, p1, v2

    aget-object v3, p0, v2

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 67
    return v0

    .line 70
    :cond_42
    return v2

    .line 55
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Type or subtype empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Must be type/subtype."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
