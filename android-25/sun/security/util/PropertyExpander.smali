.class public Lsun/security/util/PropertyExpander;
.super Ljava/lang/Object;
.source "PropertyExpander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/PropertyExpander$ExpandException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static expand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/util/PropertyExpander$ExpandException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lsun/security/util/PropertyExpander;->expand(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static expand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encodeURL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/util/PropertyExpander$ExpandException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v10, -0x1

    #@3
    .line 62
    if-nez p0, :cond_0

    #@5
    .line 63
    return-object v8

    #@6
    .line 65
    :cond_0
    const-string/jumbo v8, "${"

    #@9
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@c
    move-result v2

    #@d
    .line 68
    .local v2, "p":I
    if-ne v2, v10, :cond_1

    #@f
    return-object p0

    #@10
    .line 70
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    #@12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v8

    #@16
    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    #@19
    .line 71
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1c
    move-result v1

    #@1d
    .line 72
    .local v1, "max":I
    const/4 v0, 0x0

    #@1e
    .line 75
    .local v0, "i":I
    :cond_2
    if-ge v2, v1, :cond_5

    #@20
    .line 76
    if-le v2, v0, :cond_3

    #@22
    .line 78
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 79
    move v0, v2

    #@2a
    .line 81
    :cond_3
    add-int/lit8 v3, v2, 0x2

    #@2c
    .line 84
    .local v3, "pe":I
    if-ge v3, v1, :cond_7

    #@2e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v8

    #@32
    const/16 v9, 0x7b

    #@34
    if-ne v8, v9, :cond_7

    #@36
    .line 85
    const-string/jumbo v8, "}}"

    #@39
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@3c
    move-result v3

    #@3d
    .line 86
    if-eq v3, v10, :cond_4

    #@3f
    add-int/lit8 v8, v3, 0x2

    #@41
    if-ne v8, v1, :cond_6

    #@43
    .line 88
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 141
    .end local v3    # "pe":I
    :cond_5
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    return-object v8

    #@4f
    .line 92
    .restart local v3    # "pe":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@51
    .line 93
    add-int/lit8 v8, v3, 0x1

    #@53
    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5a
    .line 130
    :goto_1
    add-int/lit8 v0, v3, 0x1

    #@5c
    .line 131
    const-string/jumbo v8, "${"

    #@5f
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@62
    move-result v2

    #@63
    .line 132
    if-ne v2, v10, :cond_2

    #@65
    .line 134
    if-ge v0, v1, :cond_5

    #@67
    .line 135
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    goto :goto_0

    #@6f
    .line 96
    :cond_7
    :goto_2
    if-ge v3, v1, :cond_8

    #@71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@74
    move-result v8

    #@75
    const/16 v9, 0x7d

    #@77
    if-eq v8, v9, :cond_8

    #@79
    .line 97
    add-int/lit8 v3, v3, 0x1

    #@7b
    goto :goto_2

    #@7c
    .line 99
    :cond_8
    if-ne v3, v1, :cond_9

    #@7e
    .line 101
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@85
    goto :goto_0

    #@86
    .line 104
    :cond_9
    add-int/lit8 v8, v2, 0x2

    #@88
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    .line 105
    .local v4, "prop":Ljava/lang/String;
    const-string/jumbo v8, "/"

    #@8f
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v8

    #@93
    if-eqz v8, :cond_a

    #@95
    .line 106
    sget-char v8, Ljava/io/File;->separatorChar:C

    #@97
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9a
    goto :goto_1

    #@9b
    .line 108
    :cond_a
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    .line 109
    .local v7, "val":Ljava/lang/String;
    if-eqz v7, :cond_d

    #@a1
    .line 110
    if-eqz p1, :cond_b

    #@a3
    .line 114
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@a6
    move-result v8

    #@a7
    if-gtz v8, :cond_c

    #@a9
    .line 115
    new-instance v8, Ljava/net/URI;

    #@ab
    invoke-direct {v8, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@ae
    invoke-virtual {v8}, Ljava/net/URI;->isAbsolute()Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@b1
    move-result v8

    #@b2
    if-eqz v8, :cond_c

    #@b4
    .line 122
    :cond_b
    :goto_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    goto :goto_1

    #@b8
    .line 116
    :cond_c
    :try_start_1
    invoke-static {v7}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    #@bb
    move-result-object v7

    #@bc
    goto :goto_3

    #@bd
    .line 118
    :catch_0
    move-exception v6

    #@be
    .line 119
    .local v6, "use":Ljava/net/URISyntaxException;
    invoke-static {v7}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    goto :goto_3

    #@c3
    .line 124
    .end local v6    # "use":Ljava/net/URISyntaxException;
    :cond_d
    new-instance v8, Lsun/security/util/PropertyExpander$ExpandException;

    #@c5
    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v10, "unable to expand property "

    #@cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v9

    #@d1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    .line 124
    invoke-direct {v8, v9}, Lsun/security/util/PropertyExpander$ExpandException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v8
.end method
