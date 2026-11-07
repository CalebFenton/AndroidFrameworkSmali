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
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r expand(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/util/PropertyExpander$ExpandException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/security/util/PropertyExpander;->expand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist expand(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encodeURL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/util/PropertyExpander$ExpandException;
        }
    .end annotation

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const/4 v0, 0x0

    const-string v1, "${"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "p":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    return-object p0

    .line 70
    :cond_f
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 71
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 72
    .local v4, "max":I
    const/4 v5, 0x0

    .line 75
    .local v5, "i":I
    :goto_1d
    if-ge v0, v4, :cond_d6

    .line 76
    if-le v0, v5, :cond_29

    .line 78
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    move v5, v0

    .line 81
    :cond_29
    add-int/lit8 v6, v0, 0x2

    .line 84
    .local v6, "pe":I
    if-ge v6, v4, :cond_57

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_57

    .line 85
    const-string v7, "}}"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 86
    if-eq v6, v2, :cond_4e

    add-int/lit8 v7, v6, 0x2

    if-ne v7, v4, :cond_42

    goto :goto_4e

    .line 92
    :cond_42
    add-int/lit8 v6, v6, 0x1

    .line 93
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a9

    .line 88
    :cond_4e
    :goto_4e
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    goto/16 :goto_d6

    .line 96
    :cond_57
    :goto_57
    if-ge v6, v4, :cond_64

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_64

    .line 97
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 99
    :cond_64
    if-ne v6, v4, :cond_6e

    .line 101
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    goto :goto_d6

    .line 104
    :cond_6e
    add-int/lit8 v7, v0, 0x2

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "prop":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 106
    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a9

    .line 108
    :cond_82
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "val":Ljava/lang/String;
    if-eqz v8, :cond_bd

    .line 110
    if-eqz p1, :cond_a6

    .line 114
    :try_start_8a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-gtz v9, :cond_9b

    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9}, Ljava/net/URI;->isAbsolute()Z

    move-result v9

    if-nez v9, :cond_a0

    .line 116
    :cond_9b
    invoke-static {v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_9f
    .catch Ljava/net/URISyntaxException; {:try_start_8a .. :try_end_9f} :catch_a1

    move-object v8, v9

    .line 120
    :cond_a0
    goto :goto_a6

    .line 118
    :catch_a1
    move-exception v9

    .line 119
    .local v9, "use":Ljava/net/URISyntaxException;
    invoke-static {v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .end local v9    # "use":Ljava/net/URISyntaxException;
    :cond_a6
    :goto_a6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .end local v7    # "prop":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :goto_a9
    add-int/lit8 v5, v6, 0x1

    .line 131
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 132
    if-ne v0, v2, :cond_bb

    .line 134
    if-ge v5, v4, :cond_d6

    .line 135
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d6

    .line 140
    .end local v6    # "pe":I
    :cond_bb
    goto/16 :goto_1d

    .line 124
    .restart local v6    # "pe":I
    .restart local v7    # "prop":Ljava/lang/String;
    .restart local v8    # "val":Ljava/lang/String;
    :cond_bd
    new-instance v1, Lsun/security/util/PropertyExpander$ExpandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to expand property "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/util/PropertyExpander$ExpandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v6    # "pe":I
    .end local v7    # "prop":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_d6
    :goto_d6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
