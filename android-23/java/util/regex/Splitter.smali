.class public Ljava/util/regex/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# static fields
.field private static final METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 13
    .param p0, "re"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v5

    #@8
    .line 42
    .local v5, "len":I
    if-nez v5, :cond_0

    #@a
    .line 43
    return-object v12

    #@b
    .line 45
    :cond_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    .line 46
    .local v1, "ch":C
    if-ne v5, v11, :cond_2

    #@11
    const-string/jumbo v8, "\\?*+[](){}^$.|"

    #@14
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v8

    #@18
    if-ne v8, v9, :cond_2

    #@1a
    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_4

    #@20
    .line 64
    new-array v8, v11, [Ljava/lang/String;

    #@22
    const-string/jumbo v9, ""

    #@25
    aput-object v9, v8, v10

    #@27
    return-object v8

    #@28
    .line 48
    :cond_2
    const/4 v8, 0x2

    #@29
    if-ne v5, v8, :cond_3

    #@2b
    const/16 v8, 0x5c

    #@2d
    if-ne v1, v8, :cond_3

    #@2f
    .line 51
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v1

    #@33
    .line 52
    const-string/jumbo v8, "\\?*+[](){}^$.|"

    #@36
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    #@39
    move-result v8

    #@3a
    if-ne v8, v9, :cond_1

    #@3c
    .line 53
    return-object v12

    #@3d
    .line 56
    :cond_3
    return-object v12

    #@3e
    .line 68
    :cond_4
    const/4 v7, 0x0

    #@3f
    .line 69
    .local v7, "separatorCount":I
    const/4 v0, 0x0

    #@40
    .line 71
    .local v0, "begin":I
    :goto_0
    add-int/lit8 v8, v7, 0x1

    #@42
    if-eq v8, p2, :cond_5

    #@44
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@47
    move-result v2

    #@48
    .local v2, "end":I
    if-eq v2, v9, :cond_5

    #@4a
    .line 72
    add-int/lit8 v7, v7, 0x1

    #@4c
    .line 73
    add-int/lit8 v0, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 75
    .end local v2    # "end":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@52
    move-result v4

    #@53
    .line 76
    .local v4, "lastPartEnd":I
    if-nez p2, :cond_7

    #@55
    if-ne v0, v4, :cond_7

    #@57
    .line 78
    if-ne v7, v4, :cond_6

    #@59
    .line 80
    sget-object v8, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@5b
    return-object v8

    #@5c
    .line 84
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@5e
    .line 85
    add-int/lit8 v8, v0, -0x1

    #@60
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v8

    #@64
    if-eq v8, v1, :cond_6

    #@66
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@69
    move-result v8

    #@6a
    sub-int/2addr v8, v0

    #@6b
    sub-int/2addr v7, v8

    #@6c
    .line 88
    move v4, v0

    #@6d
    .line 92
    :cond_7
    add-int/lit8 v8, v7, 0x1

    #@6f
    new-array v6, v8, [Ljava/lang/String;

    #@71
    .line 93
    .local v6, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    #@72
    .line 94
    const/4 v3, 0x0

    #@73
    .local v3, "i":I
    :goto_1
    if-eq v3, v7, :cond_8

    #@75
    .line 95
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@78
    move-result v2

    #@79
    .line 96
    .restart local v2    # "end":I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    aput-object v8, v6, v3

    #@7f
    .line 97
    add-int/lit8 v0, v2, 0x1

    #@81
    .line 94
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_1

    #@84
    .line 100
    .end local v2    # "end":I
    :cond_8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    aput-object v8, v6, v7

    #@8a
    .line 101
    return-object v6
.end method

.method private static finishSplit(Ljava/util/List;Ljava/lang/String;II)[Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p2, v1, :cond_1

    #@6
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 142
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@10
    move-result v1

    #@11
    new-array v1, v1, [Ljava/lang/String;

    #@13
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Ljava/lang/String;

    #@19
    return-object v1

    #@1a
    .line 131
    :cond_1
    if-eqz p3, :cond_2

    #@1c
    .line 132
    const-string/jumbo v1, ""

    #@1f
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 135
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@26
    move-result v1

    #@27
    add-int/lit8 v0, v1, -0x1

    #@29
    .line 136
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    #@2b
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/lang/String;

    #@31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3a
    .line 138
    add-int/lit8 v0, v0, -0x1

    #@3c
    goto :goto_1
.end method

.method public static split(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/lang/String;
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 105
    invoke-static {p1, p2, p3}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 106
    .local v1, "fastResult":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 107
    return-object v1

    #@7
    .line 112
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 113
    const/4 v4, 0x1

    #@e
    new-array v4, v4, [Ljava/lang/String;

    #@10
    const-string/jumbo v5, ""

    #@13
    const/4 v6, 0x0

    #@14
    aput-object v5, v4, v6

    #@16
    return-object v4

    #@17
    .line 117
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 118
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/regex/Matcher;

    #@1e
    invoke-direct {v3, p0, p2}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    #@21
    .line 119
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    #@22
    .line 120
    .local v0, "begin":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v4, v4, 0x1

    #@28
    if-eq v4, p3, :cond_2

    #@2a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 121
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    .line 122
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@3e
    move-result v0

    #@3f
    goto :goto_0

    #@40
    .line 124
    :cond_2
    invoke-static {v2, p2, v0, p3}, Ljava/util/regex/Splitter;->finishSplit(Ljava/util/List;Ljava/lang/String;II)[Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method
