.class final Landroid/media/TtmlUtils;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field public static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field public static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field public static final ATTR_END:Ljava/lang/String; = "end"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final INVALID_TIMESTAMP:J = 0x7fffffffffffffffL

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final PCDATA:Ljava/lang/String; = "#pcdata"

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    #@3
    .line 103
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    #@9
    .line 108
    const-string/jumbo v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    #@c
    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    #@12
    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "treatLfAsSpace"    # Z

    #@0
    .prologue
    .line 193
    const-string/jumbo v4, "\r\n"

    #@3
    const-string/jumbo v5, "\n"

    #@6
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 196
    .local v0, "crRemoved":Ljava/lang/String;
    const-string/jumbo v4, " *\n *"

    #@d
    const-string/jumbo v5, "\n"

    #@10
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 198
    .local v3, "spacesNeighboringLfRemoved":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@16
    const-string/jumbo v4, "\n"

    #@19
    const-string/jumbo v5, " "

    #@1c
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 201
    .local v1, "lfToSpace":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "[ \t\\x0B\u000c\r]+"

    #@23
    const-string/jumbo v5, " "

    #@26
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 202
    .local v2, "spacesCollapsed":Ljava/lang/String;
    return-object v2

    #@2b
    .line 199
    .end local v1    # "lfToSpace":Ljava/lang/String;
    .end local v2    # "spacesCollapsed":Ljava/lang/String;
    :cond_0
    move-object v1, v3

    #@2c
    .restart local v1    # "lfToSpace":Ljava/lang/String;
    goto :goto_0
.end method

.method public static extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .locals 9
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    #@0
    .prologue
    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 214
    .local v6, "text":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    #@6
    move-object v1, p0

    #@7
    move-wide v2, p1

    #@8
    move-wide v4, p3

    #@9
    invoke-static/range {v1 .. v7}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    #@c
    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "\n$"

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method private static extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V
    .locals 13
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;
    .param p6, "inPTag"    # Z

    #@0
    .prologue
    .line 220
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@2
    const-string/jumbo v4, "#pcdata"

    #@5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    if-eqz p6, :cond_1

    #@d
    .line 221
    iget-object v3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    #@f
    move-object/from16 v0, p5

    #@11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 219
    :cond_0
    :goto_0
    return-void

    #@15
    .line 222
    :cond_1
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@17
    const-string/jumbo v4, "br"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    if-eqz p6, :cond_2

    #@22
    .line 223
    const-string/jumbo v3, "\n"

    #@25
    move-object/from16 v0, p5

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_0

    #@2b
    .line 224
    :cond_2
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@2d
    const-string/jumbo v4, "metadata"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_0

    #@36
    .line 226
    invoke-virtual/range {p0 .. p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_0

    #@3c
    .line 227
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@3e
    const-string/jumbo v4, "p"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v11

    #@45
    .line 228
    .local v11, "pTag":Z
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->length()I

    #@48
    move-result v10

    #@49
    .line 229
    .local v10, "length":I
    const/4 v2, 0x0

    #@4a
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@4c
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@4f
    move-result v3

    #@50
    if-ge v2, v3, :cond_4

    #@52
    .line 230
    iget-object v3, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@54
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v3

    #@58
    check-cast v3, Landroid/media/TtmlNode;

    #@5a
    if-nez v11, :cond_3

    #@5c
    move/from16 v9, p6

    #@5e
    :goto_2
    move-wide v4, p1

    #@5f
    move-wide/from16 v6, p3

    #@61
    move-object/from16 v8, p5

    #@63
    invoke-static/range {v3 .. v9}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    #@66
    .line 229
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_1

    #@69
    .line 230
    :cond_3
    const/4 v9, 0x1

    #@6a
    goto :goto_2

    #@6b
    .line 232
    :cond_4
    if-eqz v11, :cond_0

    #@6d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->length()I

    #@70
    move-result v3

    #@71
    if-eq v10, v3, :cond_0

    #@73
    .line 233
    const-string/jumbo v3, "\n"

    #@76
    move-object/from16 v0, p5

    #@78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_0
.end method

.method public static extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .locals 7
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    #@0
    .prologue
    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .local v6, "fragment":Ljava/lang/StringBuilder;
    move-object v1, p0

    #@6
    move-wide v2, p1

    #@7
    move-wide v4, p3

    #@8
    .line 247
    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    #@b
    .line 248
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V
    .locals 7
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 253
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@2
    const-string/jumbo v2, "#pcdata"

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 254
    iget-object v1, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    #@d
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 252
    :cond_0
    :goto_0
    return-void

    #@11
    .line 255
    :cond_1
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "br"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 256
    const-string/jumbo v1, "<br/>"

    #@1f
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    goto :goto_0

    #@23
    .line 257
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 258
    const-string/jumbo v1, "<"

    #@2c
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 259
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@31
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 260
    iget-object v1, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    #@36
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 261
    const-string/jumbo v1, ">"

    #@3c
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 262
    const/4 v0, 0x0

    #@40
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@42
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@45
    move-result v1

    #@46
    if-ge v0, v1, :cond_3

    #@48
    .line 263
    iget-object v1, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@4a
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroid/media/TtmlNode;

    #@50
    move-wide v2, p1

    #@51
    move-wide v4, p3

    #@52
    move-object v6, p5

    #@53
    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    #@56
    .line 262
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_1

    #@59
    .line 265
    :cond_3
    const-string/jumbo v1, "</"

    #@5c
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 266
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    #@61
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 267
    const-string/jumbo v1, ">"

    #@67
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    goto :goto_0
.end method

.method public static parseTimeExpression(Ljava/lang/String;III)J
    .locals 20
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameRate"    # I
    .param p2, "subframeRate"    # I
    .param p3, "tickRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    sget-object v13, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v7

    #@8
    .line 130
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    #@b
    move-result v13

    #@c
    if-eqz v13, :cond_3

    #@e
    .line 131
    const/4 v13, 0x1

    #@f
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    .line 132
    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@16
    move-result-wide v16

    #@17
    const-wide/16 v18, 0xe10

    #@19
    mul-long v16, v16, v18

    #@1b
    move-wide/from16 v0, v16

    #@1d
    long-to-double v2, v0

    #@1e
    .line 133
    .local v2, "durationSeconds":D
    const/4 v13, 0x2

    #@1f
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 134
    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@26
    move-result-wide v16

    #@27
    const-wide/16 v18, 0x3c

    #@29
    mul-long v16, v16, v18

    #@2b
    move-wide/from16 v0, v16

    #@2d
    long-to-double v0, v0

    #@2e
    move-wide/from16 v16, v0

    #@30
    add-double v2, v2, v16

    #@32
    .line 135
    const/4 v13, 0x3

    #@33
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    .line 136
    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3a
    move-result-wide v16

    #@3b
    move-wide/from16 v0, v16

    #@3d
    long-to-double v0, v0

    #@3e
    move-wide/from16 v16, v0

    #@40
    add-double v2, v2, v16

    #@42
    .line 137
    const/4 v13, 0x4

    #@43
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 138
    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@49
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@4c
    move-result-wide v16

    #@4d
    :goto_0
    add-double v2, v2, v16

    #@4f
    .line 139
    const/4 v13, 0x5

    #@50
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    .line 140
    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@56
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@59
    move-result-wide v16

    #@5a
    move-wide/from16 v0, v16

    #@5c
    long-to-double v0, v0

    #@5d
    move-wide/from16 v16, v0

    #@5f
    move/from16 v0, p1

    #@61
    int-to-double v0, v0

    #@62
    move-wide/from16 v18, v0

    #@64
    div-double v16, v16, v18

    #@66
    :goto_1
    add-double v2, v2, v16

    #@68
    .line 141
    const/4 v13, 0x6

    #@69
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    .line 142
    .local v10, "subframes":Ljava/lang/String;
    if-eqz v10, :cond_2

    #@6f
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@72
    move-result-wide v16

    #@73
    move-wide/from16 v0, v16

    #@75
    long-to-double v0, v0

    #@76
    move-wide/from16 v16, v0

    #@78
    .line 143
    move/from16 v0, p2

    #@7a
    int-to-double v0, v0

    #@7b
    move-wide/from16 v18, v0

    #@7d
    .line 142
    div-double v16, v16, v18

    #@7f
    .line 143
    move/from16 v0, p1

    #@81
    int-to-double v0, v0

    #@82
    move-wide/from16 v18, v0

    #@84
    .line 142
    div-double v16, v16, v18

    #@86
    :goto_2
    add-double v2, v2, v16

    #@88
    .line 145
    const-wide v16, 0x408f400000000000L    # 1000.0

    #@8d
    mul-double v16, v16, v2

    #@8f
    move-wide/from16 v0, v16

    #@91
    double-to-long v0, v0

    #@92
    move-wide/from16 v16, v0

    #@94
    return-wide v16

    #@95
    .line 138
    .end local v5    # "frames":Ljava/lang/String;
    .end local v10    # "subframes":Ljava/lang/String;
    :cond_0
    const-wide/16 v16, 0x0

    #@97
    goto :goto_0

    #@98
    .line 140
    .restart local v5    # "frames":Ljava/lang/String;
    :cond_1
    const-wide/16 v16, 0x0

    #@9a
    goto :goto_1

    #@9b
    .line 144
    .restart local v10    # "subframes":Ljava/lang/String;
    :cond_2
    const-wide/16 v16, 0x0

    #@9d
    goto :goto_2

    #@9e
    .line 147
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v10    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v13, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@a5
    move-result-object v7

    #@a6
    .line 148
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    #@a9
    move-result v13

    #@aa
    if-eqz v13, :cond_a

    #@ac
    .line 149
    const/4 v13, 0x1

    #@ad
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@b0
    move-result-object v11

    #@b1
    .line 150
    .local v11, "timeValue":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@b4
    move-result-wide v14

    #@b5
    .line 151
    .local v14, "value":D
    const/4 v13, 0x2

    #@b6
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@b9
    move-result-object v12

    #@ba
    .line 152
    .local v12, "unit":Ljava/lang/String;
    const-string/jumbo v13, "h"

    #@bd
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v13

    #@c1
    if-eqz v13, :cond_5

    #@c3
    .line 153
    const-wide v16, 0x41ead27480000000L    # 3.6E9

    #@c8
    mul-double v14, v14, v16

    #@ca
    .line 165
    :cond_4
    :goto_3
    double-to-long v0, v14

    #@cb
    move-wide/from16 v16, v0

    #@cd
    return-wide v16

    #@ce
    .line 154
    :cond_5
    const-string/jumbo v13, "m"

    #@d1
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v13

    #@d5
    if-eqz v13, :cond_6

    #@d7
    .line 155
    const-wide v16, 0x418c9c3800000000L    # 6.0E7

    #@dc
    mul-double v14, v14, v16

    #@de
    goto :goto_3

    #@df
    .line 156
    :cond_6
    const-string/jumbo v13, "s"

    #@e2
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v13

    #@e6
    if-eqz v13, :cond_7

    #@e8
    .line 157
    const-wide v16, 0x412e848000000000L    # 1000000.0

    #@ed
    mul-double v14, v14, v16

    #@ef
    goto :goto_3

    #@f0
    .line 158
    :cond_7
    const-string/jumbo v13, "ms"

    #@f3
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v13

    #@f7
    if-eqz v13, :cond_8

    #@f9
    .line 159
    const-wide v16, 0x408f400000000000L    # 1000.0

    #@fe
    mul-double v14, v14, v16

    #@100
    goto :goto_3

    #@101
    .line 160
    :cond_8
    const-string/jumbo v13, "f"

    #@104
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v13

    #@108
    if-eqz v13, :cond_9

    #@10a
    .line 161
    move/from16 v0, p1

    #@10c
    int-to-double v0, v0

    #@10d
    move-wide/from16 v16, v0

    #@10f
    div-double v16, v14, v16

    #@111
    const-wide v18, 0x412e848000000000L    # 1000000.0

    #@116
    mul-double v14, v16, v18

    #@118
    goto :goto_3

    #@119
    .line 162
    :cond_9
    const-string/jumbo v13, "t"

    #@11c
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v13

    #@120
    if-eqz v13, :cond_4

    #@122
    .line 163
    move/from16 v0, p3

    #@124
    int-to-double v0, v0

    #@125
    move-wide/from16 v16, v0

    #@127
    div-double v16, v14, v16

    #@129
    const-wide v18, 0x412e848000000000L    # 1000000.0

    #@12e
    mul-double v14, v16, v18

    #@130
    goto :goto_3

    #@131
    .line 167
    .end local v11    # "timeValue":Ljava/lang/String;
    .end local v12    # "unit":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_a
    new-instance v13, Ljava/lang/NumberFormatException;

    #@133
    new-instance v16, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v17, "Malformed time expression : "

    #@13b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v16

    #@13f
    move-object/from16 v0, v16

    #@141
    move-object/from16 v1, p0

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v16

    #@147
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v16

    #@14b
    move-object/from16 v0, v16

    #@14d
    invoke-direct {v13, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@150
    throw v13
.end method
