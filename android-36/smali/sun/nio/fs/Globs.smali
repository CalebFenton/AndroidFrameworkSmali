.class public Lsun/nio/fs/Globs;
.super Ljava/lang/Object;
.source "Globs.java"


# static fields
.field private static blacklist EOL:C = '\u0000'

.field private static final blacklist globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final blacklist regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-char v0, Lsun/nio/fs/Globs;->EOL:C

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isGlobMeta(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 41
    const-string v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist isRegexMeta(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 37
    const-string v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist next(Ljava/lang/String;I)C
    .registers 3
    .param p0, "glob"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 49
    :cond_b
    sget-char v0, Lsun/nio/fs/Globs;->EOL:C

    return v0
.end method

.method private static blacklist toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p0, "globPattern"    # Ljava/lang/String;
    .param p1, "isDos"    # Z

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "inGroup":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "regex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 62
    .local v2, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_17c

    .line 63
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    .local v2, "c":C
    const/16 v4, 0x5c

    sparse-switch v2, :sswitch_data_194

    .line 196
    invoke-static {v2}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v5

    if-eqz v5, :cond_176

    .line 197
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_176

    .line 159
    :sswitch_25
    if-eqz v0, :cond_30

    .line 160
    const-string v4, "))"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/4 v0, 0x0

    move v2, v3

    goto/16 :goto_17a

    .line 163
    :cond_30
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    goto/16 :goto_179

    .line 151
    :sswitch_37
    if-nez v0, :cond_42

    .line 155
    const-string v4, "(?:(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v0, 0x1

    .line 157
    move v2, v3

    goto/16 :goto_17a

    .line 152
    :cond_42
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "Cannot nest groups"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 67
    :sswitch_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_6d

    .line 71
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 72
    .local v3, "next":C
    invoke-static {v3}, Lsun/nio/fs/Globs;->isGlobMeta(C)Z

    move-result v6

    if-nez v6, :cond_64

    invoke-static {v3}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 73
    :cond_64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    move v2, v5

    goto/16 :goto_17a

    .line 68
    .end local v5    # "i":I
    .local v3, "i":I
    :cond_6d
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "No character to escape"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 86
    :sswitch_77
    if-eqz p1, :cond_7f

    .line 87
    const-string v5, "[[^\\\\]&&["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 89
    :cond_7f
    const-string v5, "[[^/]&&["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_84
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v5

    const/16 v6, 0x5e

    const/16 v7, 0x2d

    if-ne v5, v6, :cond_96

    .line 93
    const-string v5, "\\^"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    .line 97
    :cond_96
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v5

    const/16 v8, 0x21

    if-ne v5, v8, :cond_a3

    .line 98
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 102
    :cond_a3
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v7, :cond_ae

    .line 103
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 107
    :cond_ae
    :goto_ae
    const/4 v5, 0x0

    .line 108
    .local v5, "hasRangeStart":Z
    const/4 v6, 0x0

    .line 109
    .local v6, "last":C
    :goto_b0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x5d

    if-ge v3, v8, :cond_11c

    .line 110
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 111
    if-ne v2, v9, :cond_c2

    .line 112
    move v3, v8

    goto :goto_11c

    .line 114
    :cond_c2
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_112

    if-eqz p1, :cond_ca

    if-eq v2, v4, :cond_112

    .line 119
    :cond_ca
    if-eq v2, v4, :cond_da

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_da

    const/16 v3, 0x26

    if-ne v2, v3, :cond_dd

    .line 120
    invoke-static {p0, v8}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v10

    if-ne v10, v3, :cond_dd

    .line 122
    :cond_da
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    if-ne v2, v7, :cond_10e

    .line 127
    const-string v3, "Invalid range"

    if-eqz v5, :cond_106

    .line 131
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    invoke-static {p0, v8}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    move v2, v8

    sget-char v11, Lsun/nio/fs/Globs;->EOL:C

    if-eq v8, v11, :cond_104

    if-ne v2, v9, :cond_f4

    .line 132
    goto :goto_104

    .line 134
    :cond_f4
    if-lt v2, v6, :cond_fc

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v5, 0x0

    move v3, v10

    goto :goto_b0

    .line 135
    :cond_fc
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v10, -0x3

    invoke-direct {v4, v3, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 145
    :cond_104
    :goto_104
    move v3, v10

    goto :goto_11c

    .line 128
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_106
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v8, -0x1

    invoke-direct {v4, v3, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 141
    :cond_10e
    const/4 v5, 0x1

    .line 142
    move v6, v2

    move v3, v8

    goto :goto_b0

    .line 115
    :cond_112
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v8, -0x1

    const-string v7, "Explicit \'name separator\' in class"

    invoke-direct {v3, v7, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 145
    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_11c
    :goto_11c
    if-ne v2, v9, :cond_125

    .line 148
    const-string v4, "]]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move v2, v3

    goto :goto_17a

    .line 146
    :cond_125
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v3, -0x1

    const-string v8, "Missing \']"

    invoke-direct {v4, v8, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 188
    .end local v5    # "hasRangeStart":Z
    .end local v6    # "last":C
    :sswitch_12f
    if-eqz p1, :cond_137

    .line 189
    const-string v4, "[^\\\\]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    .line 191
    :cond_137
    const-string v4, "[^/]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    goto :goto_179

    .line 78
    :sswitch_13d
    if-eqz p1, :cond_145

    .line 79
    const-string v4, "\\\\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    .line 81
    :cond_145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    goto :goto_179

    .line 167
    :sswitch_149
    if-eqz v0, :cond_151

    .line 168
    const-string v4, ")|(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    .line 170
    :cond_151
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_179

    .line 174
    :sswitch_157
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_168

    .line 176
    const-string v4, ".*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_17a

    .line 180
    :cond_168
    if-eqz p1, :cond_170

    .line 181
    const-string v4, "[^\\\\]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    .line 183
    :cond_170
    const-string v4, "[^/]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_179

    .line 199
    :cond_176
    :goto_176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .end local v2    # "c":C
    :goto_179
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_17a
    goto/16 :goto_9

    .line 203
    :cond_17c
    if-nez v0, :cond_189

    .line 207
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 204
    :cond_189
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v2, -0x1

    const-string v5, "Missing \'}"

    invoke-direct {v3, v5, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    nop

    :sswitch_data_194
    .sparse-switch
        0x2a -> :sswitch_157
        0x2c -> :sswitch_149
        0x2f -> :sswitch_13d
        0x3f -> :sswitch_12f
        0x5b -> :sswitch_77
        0x5c -> :sswitch_4c
        0x7b -> :sswitch_37
        0x7d -> :sswitch_25
    .end sparse-switch
.end method

.method static blacklist toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "globPattern"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "globPattern"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
