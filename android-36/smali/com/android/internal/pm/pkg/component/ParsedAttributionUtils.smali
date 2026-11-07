.class public Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;
.super Ljava/lang/Object;
.source "ParsedAttributionUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isCombinationValid(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;)Z"
        }
    .end annotation

    .line 118
    .local p0, "attributions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedAttribution;>;"
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 119
    return v0

    .line 122
    :cond_4
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 123
    .local v1, "attributionTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 125
    .local v2, "inheritFromAttributionTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 126
    .local v3, "numAttributions":I
    const/16 v4, 0x190

    const/4 v5, 0x0

    if-le v3, v4, :cond_1c

    .line 127
    return v5

    .line 130
    :cond_1c
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_1d
    if-ge v4, v3, :cond_33

    .line 131
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 132
    .local v6, "wasAdded":Z
    if-nez v6, :cond_30

    .line 134
    return v5

    .line 130
    .end local v6    # "wasAdded":Z
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 138
    .end local v4    # "attributionNum":I
    :cond_33
    const/4 v4, 0x0

    .restart local v4    # "attributionNum":I
    :goto_34
    if-ge v4, v3, :cond_61

    .line 139
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 141
    .local v6, "feature":Lcom/android/internal/pm/pkg/component/ParsedAttribution;
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v7

    .line 142
    .local v7, "inheritFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 143
    .local v8, "numInheritFrom":I
    const/4 v9, 0x0

    .local v9, "inheritFromNum":I
    :goto_45
    if-ge v9, v8, :cond_5e

    .line 144
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 146
    .local v10, "inheritFrom":Ljava/lang/String;
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 148
    return v5

    .line 151
    :cond_54
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 152
    .local v11, "wasAdded":Z
    if-nez v11, :cond_5b

    .line 154
    return v5

    .line 143
    .end local v10    # "inheritFrom":Ljava/lang/String;
    .end local v11    # "wasAdded":Z
    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 138
    .end local v6    # "feature":Lcom/android/internal/pm/pkg/component/ParsedAttribution;
    .end local v7    # "inheritFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "numInheritFrom":I
    .end local v9    # "inheritFromNum":I
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 159
    .end local v4    # "attributionNum":I
    :cond_61
    return v0
.end method

.method public static blacklist parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "inheritFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestAttribution:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "sa":Landroid/content/res/TypedArray;
    if-nez v1, :cond_10

    .line 51
    const-string v2, "<attribution> could not be parsed"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 55
    :cond_10
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "attributionTag":Ljava/lang/String;
    if-nez v4, :cond_22

    .line 58
    const-string v2, "<attribution> does not specify android:tag"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_c6

    .line 70
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-object v2

    .line 60
    :cond_22
    :try_start_22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_34

    .line 61
    const-string v2, "android:tag is too long. Max length is 50"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_c6

    .line 70
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-object v2

    .line 65
    :cond_34
    :try_start_34
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 66
    .local v5, "label":I
    if-nez v5, :cond_44

    .line 67
    const-string v2, "<attribution> does not specify android:label"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_c6

    .line 70
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-object v2

    .line 70
    :cond_44
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    nop

    .line 74
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 75
    .local v6, "innerDepth":I
    :cond_4c
    :goto_4c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v2, :cond_af

    const/4 v7, 0x3

    if-ne v8, v7, :cond_5c

    .line 76
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_af

    .line 77
    :cond_5c
    if-eq v8, v7, :cond_4c

    const/4 v7, 0x4

    if-ne v8, v7, :cond_62

    .line 78
    goto :goto_4c

    .line 81
    :cond_62
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "tagName":Ljava/lang/String;
    const-string v9, "inherit-from"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 83
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestAttributionInheritFrom:[I

    invoke-virtual {p0, p1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 85
    if-nez v1, :cond_7d

    .line 86
    const-string v2, "<inherit-from> could not be parsed"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 90
    :cond_7d
    :try_start_7d
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "inheritFromId":Ljava/lang/String;
    if-nez v0, :cond_89

    .line 94
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v10

    .line 96
    :cond_89
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catchall {:try_start_7d .. :try_end_8c} :catchall_92

    .line 98
    nop

    .end local v9    # "inheritFromId":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    nop

    .line 103
    .end local v7    # "tagName":Ljava/lang/String;
    goto :goto_4c

    .line 98
    .restart local v7    # "tagName":Ljava/lang/String;
    :catchall_92
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    throw v2

    .line 101
    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad element under <attribution>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 105
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_af
    if-nez v0, :cond_b6

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_bc

    .line 108
    :cond_b6
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 111
    :goto_bc
    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;

    invoke-direct {v2, v4, v5, v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 70
    .end local v4    # "attributionTag":Ljava/lang/String;
    .end local v5    # "label":I
    .end local v6    # "innerDepth":I
    .end local v8    # "type":I
    :catchall_c6
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    throw v2
.end method
