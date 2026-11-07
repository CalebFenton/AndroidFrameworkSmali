.class final Landroid/media/TtmlUtils;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field public static final blacklist ATTR_BEGIN:Ljava/lang/String; = "begin"

.field public static final blacklist ATTR_DURATION:Ljava/lang/String; = "dur"

.field public static final blacklist ATTR_END:Ljava/lang/String; = "end"

.field private static final blacklist CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final blacklist INVALID_TIMESTAMP:J = 0x7fffffffffffffffL

.field private static final blacklist OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final blacklist PCDATA:Ljava/lang/String; = "#pcdata"

.field public static final blacklist TAG_BODY:Ljava/lang/String; = "body"

.field public static final blacklist TAG_BR:Ljava/lang/String; = "br"

.field public static final blacklist TAG_DIV:Ljava/lang/String; = "div"

.field public static final blacklist TAG_HEAD:Ljava/lang/String; = "head"

.field public static final blacklist TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final blacklist TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final blacklist TAG_P:Ljava/lang/String; = "p"

.field public static final blacklist TAG_REGION:Ljava/lang/String; = "region"

.field public static final blacklist TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final blacklist TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final blacklist TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final blacklist TAG_SPAN:Ljava/lang/String; = "span"

.field public static final blacklist TAG_STYLE:Ljava/lang/String; = "style"

.field public static final blacklist TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final blacklist TAG_TT:Ljava/lang/String; = "tt"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 110
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static blacklist applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "treatLfAsSpace"    # Z

    .line 196
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "crRemoved":Ljava/lang/String;
    const-string v2, " *\n *"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "spacesNeighboringLfRemoved":Ljava/lang/String;
    const-string v3, " "

    if-eqz p1, :cond_17

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 202
    :cond_17
    move-object v1, v2

    :goto_18
    nop

    .line 204
    .local v1, "lfToSpace":Ljava/lang/String;
    const-string v4, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "spacesCollapsed":Ljava/lang/String;
    return-object v3
.end method

.method public static blacklist extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .registers 13
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 217
    .local v6, "text":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p0    # "root":Landroid/media/TtmlNode;
    .end local p1    # "startUs":J
    .end local p3    # "endUs":J
    .local v1, "root":Landroid/media/TtmlNode;
    .local v2, "startUs":J
    .local v4, "endUs":J
    invoke-static/range {v1 .. v7}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    .line 218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n$"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V
    .registers 18
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;
    .param p6, "inPTag"    # Z

    .line 223
    move-object/from16 v5, p5

    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "#pcdata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p6, :cond_14

    .line 224
    iget-object v0, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 225
    :cond_14
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "\n"

    if-eqz v0, :cond_26

    if-eqz p6, :cond_26

    .line 226
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 227
    :cond_26
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_71

    .line 229
    :cond_31
    invoke-virtual/range {p0 .. p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 230
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 231
    .local v8, "pTag":Z
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 232
    .local v9, "length":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_45
    iget-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_66

    .line 233
    iget-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/TtmlNode;

    if-nez v8, :cond_5c

    if-eqz p6, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v1, 0x0

    goto :goto_5d

    :cond_5c
    :goto_5c
    const/4 v1, 0x1

    :goto_5d
    move v6, v1

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    .line 232
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    .line 235
    .end local v10    # "i":I
    :cond_66
    if-eqz v8, :cond_71

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eq v9, v0, :cond_71

    .line 236
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .end local v8    # "pTag":Z
    .end local v9    # "length":I
    :cond_71
    :goto_71
    return-void
.end method

.method public static blacklist extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .registers 12
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 250
    .local v6, "fragment":Ljava/lang/StringBuilder;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p0    # "root":Landroid/media/TtmlNode;
    .end local p1    # "startUs":J
    .end local p3    # "endUs":J
    .local v1, "root":Landroid/media/TtmlNode;
    .local v2, "startUs":J
    .local v4, "endUs":J
    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    .line 251
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V
    .registers 15
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;

    .line 256
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "#pcdata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 257
    iget-object v0, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    goto/16 :goto_70

    .line 258
    :cond_14
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 259
    const-string v0, "<br/>"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    goto :goto_70

    .line 260
    :cond_27
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 261
    const-string v0, "<"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v0, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v0, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v0, ">"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    iget-object v2, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 266
    iget-object v2, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/TtmlNode;

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .end local p1    # "startUs":J
    .end local p3    # "endUs":J
    .end local p5    # "out":Ljava/lang/StringBuilder;
    .local v4, "startUs":J
    .local v6, "endUs":J
    .local v8, "out":Ljava/lang/StringBuilder;
    invoke-static/range {v3 .. v8}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v4    # "startUs":J
    .end local v6    # "endUs":J
    .end local v8    # "out":Ljava/lang/StringBuilder;
    .restart local p1    # "startUs":J
    .restart local p3    # "endUs":J
    .restart local p5    # "out":Ljava/lang/StringBuilder;
    :cond_5c
    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .line 268
    .end local v1    # "i":I
    .end local p1    # "startUs":J
    .end local p3    # "endUs":J
    .end local p5    # "out":Ljava/lang/StringBuilder;
    .restart local v4    # "startUs":J
    .restart local v6    # "endUs":J
    .restart local v8    # "out":Ljava/lang/StringBuilder;
    const-string p1, "</"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object p1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 260
    .end local v4    # "startUs":J
    .end local v6    # "endUs":J
    .end local v8    # "out":Ljava/lang/StringBuilder;
    .restart local p1    # "startUs":J
    .restart local p3    # "endUs":J
    .restart local p5    # "out":Ljava/lang/StringBuilder;
    :cond_6d
    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    .line 272
    .end local p1    # "startUs":J
    .end local p3    # "endUs":J
    .end local p5    # "out":Ljava/lang/StringBuilder;
    .restart local v4    # "startUs":J
    .restart local v6    # "endUs":J
    .restart local v8    # "out":Ljava/lang/StringBuilder;
    :goto_70
    return-void
.end method

.method public static blacklist parseTimeExpression(Ljava/lang/String;III)J
    .registers 22
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameRate"    # I
    .param p2, "subframeRate"    # I
    .param p3, "tickRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 132
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 133
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_7c

    .line 134
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long/2addr v7, v9

    long-to-double v7, v7

    .line 136
    .local v7, "durationSeconds":D
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "minutes":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 138
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-double v10, v10

    add-double/2addr v7, v10

    .line 140
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "fraction":Ljava/lang/String;
    const-wide/16 v11, 0x0

    if-eqz v10, :cond_44

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    goto :goto_45

    :cond_44
    move-wide v13, v11

    :goto_45
    add-double/2addr v7, v13

    .line 142
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 143
    .local v13, "frames":Ljava/lang/String;
    if-eqz v13, :cond_5a

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    int-to-double v4, v1

    div-double/2addr v14, v4

    goto :goto_60

    :cond_5a
    const-wide v16, 0x408f400000000000L    # 1000.0

    move-wide v14, v11

    :goto_60
    add-double/2addr v7, v14

    .line 144
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "subframes":Ljava/lang/String;
    if-eqz v4, :cond_75

    .line 146
    nop

    .line 145
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    long-to-double v11, v11

    move/from16 v5, p2

    int-to-double v14, v5

    div-double/2addr v11, v14

    int-to-double v14, v1

    div-double/2addr v11, v14

    goto :goto_77

    .line 147
    :cond_75
    move/from16 v5, p2

    :goto_77
    add-double/2addr v7, v11

    .line 148
    mul-double v11, v7, v16

    double-to-long v11, v11

    return-wide v11

    .line 150
    .end local v3    # "hours":Ljava/lang/String;
    .end local v4    # "subframes":Ljava/lang/String;
    .end local v6    # "minutes":Ljava/lang/String;
    .end local v7    # "durationSeconds":D
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v10    # "fraction":Ljava/lang/String;
    .end local v13    # "frames":Ljava/lang/String;
    :cond_7c
    move/from16 v5, p2

    const-wide v16, 0x408f400000000000L    # 1000.0

    sget-object v3, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 152
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "timeValue":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 154
    .local v7, "value":D
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "unit":Ljava/lang/String;
    const-string v6, "h"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 156
    const-wide v9, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v7, v9

    move/from16 v6, p3

    goto :goto_fd

    .line 157
    :cond_ac
    const-string v6, "m"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 158
    const-wide v9, 0x418c9c3800000000L    # 6.0E7

    mul-double/2addr v7, v9

    move/from16 v6, p3

    goto :goto_fd

    .line 159
    :cond_bd
    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide v9, 0x412e848000000000L    # 1000000.0

    if-eqz v6, :cond_ce

    .line 160
    mul-double/2addr v7, v9

    move/from16 v6, p3

    goto :goto_fd

    .line 161
    :cond_ce
    const-string v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 162
    mul-double v7, v7, v16

    move/from16 v6, p3

    goto :goto_fd

    .line 163
    :cond_db
    const-string v6, "f"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 164
    int-to-double v11, v1

    div-double v11, v7, v11

    mul-double v7, v11, v9

    move/from16 v6, p3

    goto :goto_fd

    .line 165
    :cond_eb
    const-string v6, "t"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 166
    move/from16 v6, p3

    int-to-double v11, v6

    div-double v11, v7, v11

    mul-double v7, v11, v9

    goto :goto_fd

    .line 165
    :cond_fb
    move/from16 v6, p3

    .line 168
    :goto_fd
    double-to-long v9, v7

    return-wide v9

    .line 170
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "unit":Ljava/lang/String;
    .end local v7    # "value":D
    :cond_ff
    move/from16 v6, p3

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed time expression : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
