.class final Landroid/net/http/LegacyHttpDateTime;
.super Ljava/lang/Object;
.source "LegacyHttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 68
    sput-object v0, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 71
    const-string/jumbo v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    #@c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object v0

    #@10
    .line 70
    sput-object v0, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    #@12
    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x30

    #@e
    mul-int/lit8 v0, v0, 0xa

    #@10
    .line 127
    const/4 v1, 0x1

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    add-int/lit8 v1, v1, -0x30

    #@17
    .line 126
    add-int/2addr v0, v1

    #@18
    return v0

    #@19
    .line 129
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    add-int/lit8 v0, v0, -0x30

    #@1f
    return v0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 6
    .param p0, "monthString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    #@a
    move-result v1

    #@b
    .line 149
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    #@12
    move-result v2

    #@13
    .line 148
    add-int/2addr v1, v2

    #@14
    .line 150
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    #@1b
    move-result v2

    #@1c
    .line 148
    add-int/2addr v1, v2

    #@1d
    add-int/lit16 v0, v1, -0x123

    #@1f
    .line 151
    .local v0, "hash":I
    sparse-switch v0, :sswitch_data_0

    #@22
    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@24
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@27
    throw v1

    #@28
    .line 153
    :sswitch_0
    return v3

    #@29
    .line 155
    :sswitch_1
    return v4

    #@2a
    .line 157
    :sswitch_2
    return v5

    #@2b
    .line 159
    :sswitch_3
    const/4 v1, 0x3

    #@2c
    return v1

    #@2d
    .line 161
    :sswitch_4
    const/4 v1, 0x4

    #@2e
    return v1

    #@2f
    .line 163
    :sswitch_5
    const/4 v1, 0x5

    #@30
    return v1

    #@31
    .line 165
    :sswitch_6
    const/4 v1, 0x6

    #@32
    return v1

    #@33
    .line 167
    :sswitch_7
    const/4 v1, 0x7

    #@34
    return v1

    #@35
    .line 169
    :sswitch_8
    const/16 v1, 0x8

    #@37
    return v1

    #@38
    .line 171
    :sswitch_9
    const/16 v1, 0x9

    #@3a
    return v1

    #@3b
    .line 173
    :sswitch_a
    const/16 v1, 0xa

    #@3d
    return v1

    #@3e
    .line 175
    :sswitch_b
    const/16 v1, 0xb

    #@40
    return v1

    #@41
    .line 151
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_1
        0x16 -> :sswitch_0
        0x1a -> :sswitch_7
        0x1d -> :sswitch_2
        0x20 -> :sswitch_3
        0x23 -> :sswitch_9
        0x24 -> :sswitch_4
        0x25 -> :sswitch_8
        0x28 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    .locals 7
    .param p0, "timeString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    const/4 v5, 0x0

    #@1
    .line 209
    const/4 v1, 0x1

    #@2
    .local v1, "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v5

    #@6
    add-int/lit8 v0, v5, -0x30

    #@8
    .line 210
    .local v0, "hour":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v5

    #@c
    const/16 v6, 0x3a

    #@e
    if-eq v5, v6, :cond_0

    #@10
    .line 211
    mul-int/lit8 v5, v0, 0xa

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v6

    #@18
    add-int/lit8 v6, v6, -0x30

    #@1a
    add-int v0, v5, v6

    #@1c
    move v1, v2

    #@1d
    .line 213
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    .line 215
    add-int/lit8 v2, v1, 0x1

    #@21
    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v5

    #@25
    add-int/lit8 v5, v5, -0x30

    #@27
    mul-int/lit8 v5, v5, 0xa

    #@29
    .line 216
    add-int/lit8 v1, v2, 0x1

    #@2b
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v6

    #@2f
    add-int/lit8 v6, v6, -0x30

    #@31
    .line 215
    add-int v3, v5, v6

    #@33
    .line 218
    .local v3, "minute":I
    add-int/lit8 v1, v1, 0x1

    #@35
    .line 220
    add-int/lit8 v2, v1, 0x1

    #@37
    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v5

    #@3b
    add-int/lit8 v5, v5, -0x30

    #@3d
    mul-int/lit8 v5, v5, 0xa

    #@3f
    .line 221
    add-int/lit8 v1, v2, 0x1

    #@41
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v6

    #@45
    add-int/lit8 v6, v6, -0x30

    #@47
    .line 220
    add-int v4, v5, v6

    #@49
    .line 223
    .local v4, "second":I
    new-instance v5, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;

    #@4b
    invoke-direct {v5, v0, v3, v4}, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;-><init>(III)V

    #@4e
    return-object v5
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 7
    .param p0, "yearString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ne v1, v5, :cond_1

    #@a
    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, -0x30

    #@10
    mul-int/lit8 v1, v1, 0xa

    #@12
    .line 184
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v2

    #@16
    add-int/lit8 v2, v2, -0x30

    #@18
    .line 183
    add-int v0, v1, v2

    #@1a
    .line 185
    .local v0, "year":I
    const/16 v1, 0x46

    #@1c
    if-lt v0, v1, :cond_0

    #@1e
    .line 186
    add-int/lit16 v1, v0, 0x76c

    #@20
    return v1

    #@21
    .line 188
    :cond_0
    add-int/lit16 v1, v0, 0x7d0

    #@23
    return v1

    #@24
    .line 190
    .end local v0    # "year":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v1

    #@28
    if-ne v1, v6, :cond_2

    #@2a
    .line 192
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v1

    #@2e
    add-int/lit8 v1, v1, -0x30

    #@30
    mul-int/lit8 v1, v1, 0x64

    #@32
    .line 193
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v2

    #@36
    add-int/lit8 v2, v2, -0x30

    #@38
    mul-int/lit8 v2, v2, 0xa

    #@3a
    .line 192
    add-int/2addr v1, v2

    #@3b
    .line 194
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v2

    #@3f
    add-int/lit8 v2, v2, -0x30

    #@41
    .line 192
    add-int v0, v1, v2

    #@43
    .line 195
    .restart local v0    # "year":I
    add-int/lit16 v1, v0, 0x76c

    #@45
    return v1

    #@46
    .line 196
    .end local v0    # "year":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x4

    #@4b
    if-ne v1, v2, :cond_3

    #@4d
    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v1

    #@51
    add-int/lit8 v1, v1, -0x30

    #@53
    mul-int/lit16 v1, v1, 0x3e8

    #@55
    .line 198
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@58
    move-result v2

    #@59
    add-int/lit8 v2, v2, -0x30

    #@5b
    mul-int/lit8 v2, v2, 0x64

    #@5d
    .line 197
    add-int/2addr v1, v2

    #@5e
    .line 199
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v2

    #@62
    add-int/lit8 v2, v2, -0x30

    #@64
    mul-int/lit8 v2, v2, 0xa

    #@66
    .line 197
    add-int/2addr v1, v2

    #@67
    .line 200
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v2

    #@6b
    add-int/lit8 v2, v2, -0x30

    #@6d
    .line 197
    add-int/2addr v1, v2

    #@6e
    return v1

    #@6f
    .line 202
    :cond_3
    const/16 v1, 0x7b2

    #@71
    return v1
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 12
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x3

    #@2
    const/4 v3, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    .line 88
    const/4 v4, 0x1

    #@5
    .line 89
    .local v4, "date":I
    const/4 v5, 0x0

    #@6
    .line 90
    .local v5, "month":I
    const/16 v6, 0x7b2

    #@8
    .line 93
    .local v6, "year":I
    sget-object v1, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    #@a
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v8

    #@e
    .line 94
    .local v8, "rfcMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 95
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getDate(Ljava/lang/String;)I

    #@1b
    move-result v4

    #@1c
    .line 96
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getMonth(Ljava/lang/String;)I

    #@23
    move-result v5

    #@24
    .line 97
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getYear(Ljava/lang/String;)I

    #@2b
    move-result v6

    #@2c
    .line 98
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getTime(Ljava/lang/String;)Landroid/net/http/LegacyHttpDateTime$TimeOfDay;

    #@33
    move-result-object v9

    #@34
    .line 112
    .local v9, "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    :goto_0
    const/16 v1, 0x7f6

    #@36
    if-lt v6, v1, :cond_0

    #@38
    .line 113
    const/16 v6, 0x7f6

    #@3a
    .line 114
    const/4 v5, 0x0

    #@3b
    .line 115
    const/4 v4, 0x1

    #@3c
    .line 118
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    #@3e
    const-string/jumbo v1, "UTC"

    #@41
    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@44
    .line 119
    .local v0, "time":Landroid/text/format/Time;
    iget v1, v9, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;->second:I

    #@46
    iget v2, v9, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;->minute:I

    #@48
    iget v3, v9, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;->hour:I

    #@4a
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    #@4d
    .line 121
    const/4 v1, 0x0

    #@4e
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    #@51
    move-result-wide v2

    #@52
    return-wide v2

    #@53
    .line 100
    .end local v0    # "time":Landroid/text/format/Time;
    .end local v9    # "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    :cond_1
    sget-object v1, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    #@55
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@58
    move-result-object v7

    #@59
    .line 101
    .local v7, "ansicMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_2

    #@5f
    .line 102
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getMonth(Ljava/lang/String;)I

    #@66
    move-result v5

    #@67
    .line 103
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getDate(Ljava/lang/String;)I

    #@6e
    move-result v4

    #@6f
    .line 104
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getTime(Ljava/lang/String;)Landroid/net/http/LegacyHttpDateTime$TimeOfDay;

    #@76
    move-result-object v9

    #@77
    .line 105
    .restart local v9    # "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v1}, Landroid/net/http/LegacyHttpDateTime;->getYear(Ljava/lang/String;)I

    #@7e
    move-result v6

    #@7f
    goto :goto_0

    #@80
    .line 107
    .end local v9    # "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@82
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@85
    throw v1
.end method
