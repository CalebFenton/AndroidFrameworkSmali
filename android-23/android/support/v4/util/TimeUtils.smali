.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@7
    .line 36
    const/16 v0, 0x18

    #@9
    new-array v0, v0, [C

    #@b
    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@d
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static accumField(IIZI)I
    .locals 4
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v1, 0x0

    #@3
    .line 39
    const/16 v0, 0x63

    #@5
    if-gt p0, v0, :cond_0

    #@7
    if-eqz p2, :cond_1

    #@9
    if-lt p3, v3, :cond_1

    #@b
    .line 40
    :cond_0
    add-int/lit8 v0, p1, 0x3

    #@d
    return v0

    #@e
    .line 42
    :cond_1
    const/16 v0, 0x9

    #@10
    if-gt p0, v0, :cond_2

    #@12
    if-eqz p2, :cond_3

    #@14
    if-lt p3, v2, :cond_3

    #@16
    .line 43
    :cond_2
    add-int/lit8 v0, p1, 0x2

    #@18
    return v0

    #@19
    .line 45
    :cond_3
    if-nez p2, :cond_4

    #@1b
    if-lez p0, :cond_5

    #@1d
    .line 46
    :cond_4
    add-int/lit8 v0, p1, 0x1

    #@1f
    return v0

    #@20
    .line 48
    :cond_5
    return v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 169
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 170
    const-string/jumbo v0, "--"

    #@9
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 171
    return-void

    #@d
    .line 173
    :cond_0
    sub-long v0, p0, p2

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@13
    .line 168
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@4
    .line 163
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    #@0
    .prologue
    .line 156
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 157
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    #@6
    move-result v0

    #@7
    .line 158
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    #@9
    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@b
    const/4 v4, 0x0

    #@c
    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    #@f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 155
    return-void

    #@14
    .line 156
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 148
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 149
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    #@7
    move-result v0

    #@8
    .line 150
    .local v0, "len":I
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 147
    return-void

    #@10
    .line 148
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 20
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    #@0
    .prologue
    .line 76
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@2
    array-length v4, v4

    #@3
    move/from16 v0, p2

    #@5
    if-ge v4, v0, :cond_0

    #@7
    .line 77
    move/from16 v0, p2

    #@9
    new-array v4, v0, [C

    #@b
    sput-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@d
    .line 80
    :cond_0
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    #@f
    .line 82
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    #@11
    cmp-long v4, p0, v6

    #@13
    if-nez v4, :cond_2

    #@15
    .line 83
    const/4 v5, 0x0

    #@16
    .line 84
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    #@18
    .line 85
    :goto_0
    if-lez p2, :cond_1

    #@1a
    .line 86
    const/16 v4, 0x20

    #@1c
    aput-char v4, v2, v5

    #@1e
    goto :goto_0

    #@1f
    .line 88
    :cond_1
    const/16 v4, 0x30

    #@21
    aput-char v4, v2, v5

    #@23
    .line 89
    const/4 v4, 0x1

    #@24
    return v4

    #@25
    .line 93
    .end local v5    # "pos":I
    :cond_2
    const-wide/16 v6, 0x0

    #@27
    cmp-long v4, p0, v6

    #@29
    if-lez v4, :cond_6

    #@2b
    .line 94
    const/16 v16, 0x2b

    #@2d
    .line 100
    .local v16, "prefix":C
    :goto_1
    const-wide/16 v6, 0x3e8

    #@2f
    rem-long v6, p0, v6

    #@31
    long-to-int v13, v6

    #@32
    .line 101
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    #@34
    div-long v6, p0, v6

    #@36
    long-to-double v6, v6

    #@37
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@3a
    move-result-wide v6

    #@3b
    double-to-int v0, v6

    #@3c
    move/from16 v17, v0

    #@3e
    .line 102
    .local v17, "seconds":I
    const/4 v3, 0x0

    #@3f
    .local v3, "days":I
    const/4 v12, 0x0

    #@40
    .local v12, "hours":I
    const/4 v14, 0x0

    #@41
    .line 104
    .local v14, "minutes":I
    const v4, 0x15180

    #@44
    move/from16 v0, v17

    #@46
    if-le v0, v4, :cond_3

    #@48
    .line 105
    const v4, 0x15180

    #@4b
    div-int v3, v17, v4

    #@4d
    .line 106
    const v4, 0x15180

    #@50
    mul-int/2addr v4, v3

    #@51
    sub-int v17, v17, v4

    #@53
    .line 108
    :cond_3
    const/16 v4, 0xe10

    #@55
    move/from16 v0, v17

    #@57
    if-le v0, v4, :cond_4

    #@59
    .line 109
    move/from16 v0, v17

    #@5b
    div-int/lit16 v12, v0, 0xe10

    #@5d
    .line 110
    mul-int/lit16 v4, v12, 0xe10

    #@5f
    sub-int v17, v17, v4

    #@61
    .line 112
    :cond_4
    const/16 v4, 0x3c

    #@63
    move/from16 v0, v17

    #@65
    if-le v0, v4, :cond_5

    #@67
    .line 113
    div-int/lit8 v14, v17, 0x3c

    #@69
    .line 114
    mul-int/lit8 v4, v14, 0x3c

    #@6b
    sub-int v17, v17, v4

    #@6d
    .line 117
    :cond_5
    const/4 v5, 0x0

    #@6e
    .line 119
    .restart local v5    # "pos":I
    if-eqz p2, :cond_b

    #@70
    .line 120
    const/4 v4, 0x1

    #@71
    const/4 v6, 0x0

    #@72
    const/4 v7, 0x0

    #@73
    invoke-static {v3, v4, v6, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@76
    move-result v15

    #@77
    .line 121
    .local v15, "myLen":I
    if-lez v15, :cond_7

    #@79
    const/4 v4, 0x1

    #@7a
    :goto_2
    const/4 v6, 0x1

    #@7b
    const/4 v7, 0x2

    #@7c
    invoke-static {v12, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@7f
    move-result v4

    #@80
    add-int/2addr v15, v4

    #@81
    .line 122
    if-lez v15, :cond_8

    #@83
    const/4 v4, 0x1

    #@84
    :goto_3
    const/4 v6, 0x1

    #@85
    const/4 v7, 0x2

    #@86
    invoke-static {v14, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@89
    move-result v4

    #@8a
    add-int/2addr v15, v4

    #@8b
    .line 123
    if-lez v15, :cond_9

    #@8d
    const/4 v4, 0x1

    #@8e
    :goto_4
    const/4 v6, 0x1

    #@8f
    const/4 v7, 0x2

    #@90
    move/from16 v0, v17

    #@92
    invoke-static {v0, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@95
    move-result v4

    #@96
    add-int/2addr v15, v4

    #@97
    .line 124
    if-lez v15, :cond_a

    #@99
    const/4 v4, 0x3

    #@9a
    :goto_5
    const/4 v6, 0x2

    #@9b
    const/4 v7, 0x1

    #@9c
    invoke-static {v13, v6, v7, v4}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    #@9f
    move-result v4

    #@a0
    add-int/lit8 v4, v4, 0x1

    #@a2
    add-int/2addr v15, v4

    #@a3
    .line 125
    :goto_6
    move/from16 v0, p2

    #@a5
    if-ge v15, v0, :cond_b

    #@a7
    .line 126
    const/16 v4, 0x20

    #@a9
    aput-char v4, v2, v5

    #@ab
    .line 127
    add-int/lit8 v5, v5, 0x1

    #@ad
    .line 128
    add-int/lit8 v15, v15, 0x1

    #@af
    goto :goto_6

    #@b0
    .line 96
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v16    # "prefix":C
    .end local v17    # "seconds":I
    :cond_6
    const/16 v16, 0x2d

    #@b2
    .line 97
    .restart local v16    # "prefix":C
    move-wide/from16 v0, p0

    #@b4
    neg-long v0, v0

    #@b5
    move-wide/from16 p0, v0

    #@b7
    goto/16 :goto_1

    #@b9
    .line 121
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v17    # "seconds":I
    :cond_7
    const/4 v4, 0x0

    #@ba
    goto :goto_2

    #@bb
    .line 122
    :cond_8
    const/4 v4, 0x0

    #@bc
    goto :goto_3

    #@bd
    .line 123
    :cond_9
    const/4 v4, 0x0

    #@be
    goto :goto_4

    #@bf
    .line 124
    :cond_a
    const/4 v4, 0x0

    #@c0
    goto :goto_5

    #@c1
    .line 132
    .end local v15    # "myLen":I
    :cond_b
    aput-char v16, v2, v5

    #@c3
    .line 133
    add-int/lit8 v5, v5, 0x1

    #@c5
    .line 135
    move/from16 v18, v5

    #@c7
    .line 136
    .local v18, "start":I
    if-eqz p2, :cond_c

    #@c9
    const/16 v19, 0x1

    #@cb
    .line 137
    .local v19, "zeropad":Z
    :goto_7
    const/16 v4, 0x64

    #@cd
    const/4 v6, 0x0

    #@ce
    const/4 v7, 0x0

    #@cf
    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@d2
    move-result v5

    #@d3
    .line 138
    move/from16 v0, v18

    #@d5
    if-eq v5, v0, :cond_d

    #@d7
    const/4 v10, 0x1

    #@d8
    :goto_8
    if-eqz v19, :cond_e

    #@da
    const/4 v11, 0x2

    #@db
    :goto_9
    const/16 v8, 0x68

    #@dd
    move-object v6, v2

    #@de
    move v7, v12

    #@df
    move v9, v5

    #@e0
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@e3
    move-result v5

    #@e4
    .line 139
    move/from16 v0, v18

    #@e6
    if-eq v5, v0, :cond_f

    #@e8
    const/4 v10, 0x1

    #@e9
    :goto_a
    if-eqz v19, :cond_10

    #@eb
    const/4 v11, 0x2

    #@ec
    :goto_b
    const/16 v8, 0x6d

    #@ee
    move-object v6, v2

    #@ef
    move v7, v14

    #@f0
    move v9, v5

    #@f1
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@f4
    move-result v5

    #@f5
    .line 140
    move/from16 v0, v18

    #@f7
    if-eq v5, v0, :cond_11

    #@f9
    const/4 v10, 0x1

    #@fa
    :goto_c
    if-eqz v19, :cond_12

    #@fc
    const/4 v11, 0x2

    #@fd
    :goto_d
    const/16 v8, 0x73

    #@ff
    move-object v6, v2

    #@100
    move/from16 v7, v17

    #@102
    move v9, v5

    #@103
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@106
    move-result v5

    #@107
    .line 141
    if-eqz v19, :cond_13

    #@109
    move/from16 v0, v18

    #@10b
    if-eq v5, v0, :cond_13

    #@10d
    const/4 v11, 0x3

    #@10e
    :goto_e
    const/16 v8, 0x6d

    #@110
    const/4 v10, 0x1

    #@111
    move-object v6, v2

    #@112
    move v7, v13

    #@113
    move v9, v5

    #@114
    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    #@117
    move-result v5

    #@118
    .line 142
    const/16 v4, 0x73

    #@11a
    aput-char v4, v2, v5

    #@11c
    .line 143
    add-int/lit8 v4, v5, 0x1

    #@11e
    return v4

    #@11f
    .line 136
    .end local v19    # "zeropad":Z
    :cond_c
    const/16 v19, 0x0

    #@121
    .restart local v19    # "zeropad":Z
    goto :goto_7

    #@122
    .line 138
    :cond_d
    const/4 v10, 0x0

    #@123
    goto :goto_8

    #@124
    :cond_e
    const/4 v11, 0x0

    #@125
    goto :goto_9

    #@126
    .line 139
    :cond_f
    const/4 v10, 0x0

    #@127
    goto :goto_a

    #@128
    :cond_10
    const/4 v11, 0x0

    #@129
    goto :goto_b

    #@12a
    .line 140
    :cond_11
    const/4 v10, 0x0

    #@12b
    goto :goto_c

    #@12c
    :cond_12
    const/4 v11, 0x0

    #@12d
    goto :goto_d

    #@12e
    .line 141
    :cond_13
    const/4 v11, 0x0

    #@12f
    goto :goto_e
.end method

.method private static printField([CICIZI)I
    .locals 3
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    #@0
    .prologue
    .line 53
    if-nez p4, :cond_0

    #@2
    if-lez p1, :cond_4

    #@4
    .line 54
    :cond_0
    move v1, p3

    #@5
    .line 55
    .local v1, "startPos":I
    if-eqz p4, :cond_5

    #@7
    const/4 v2, 0x3

    #@8
    if-lt p5, v2, :cond_5

    #@a
    .line 56
    :goto_0
    div-int/lit8 v0, p1, 0x64

    #@c
    .line 57
    .local v0, "dig":I
    add-int/lit8 v2, v0, 0x30

    #@e
    int-to-char v2, v2

    #@f
    aput-char v2, p0, p3

    #@11
    .line 58
    add-int/lit8 p3, p3, 0x1

    #@13
    .line 59
    mul-int/lit8 v2, v0, 0x64

    #@15
    sub-int/2addr p1, v2

    #@16
    .line 61
    .end local v0    # "dig":I
    :cond_1
    if-eqz p4, :cond_6

    #@18
    const/4 v2, 0x2

    #@19
    if-lt p5, v2, :cond_6

    #@1b
    .line 62
    :cond_2
    :goto_1
    div-int/lit8 v0, p1, 0xa

    #@1d
    .line 63
    .restart local v0    # "dig":I
    add-int/lit8 v2, v0, 0x30

    #@1f
    int-to-char v2, v2

    #@20
    aput-char v2, p0, p3

    #@22
    .line 64
    add-int/lit8 p3, p3, 0x1

    #@24
    .line 65
    mul-int/lit8 v2, v0, 0xa

    #@26
    sub-int/2addr p1, v2

    #@27
    .line 67
    .end local v0    # "dig":I
    :cond_3
    add-int/lit8 v2, p1, 0x30

    #@29
    int-to-char v2, v2

    #@2a
    aput-char v2, p0, p3

    #@2c
    .line 68
    add-int/lit8 p3, p3, 0x1

    #@2e
    .line 69
    aput-char p2, p0, p3

    #@30
    .line 70
    add-int/lit8 p3, p3, 0x1

    #@32
    .line 72
    .end local v1    # "startPos":I
    :cond_4
    return p3

    #@33
    .line 55
    .restart local v1    # "startPos":I
    :cond_5
    const/16 v2, 0x63

    #@35
    if-le p1, v2, :cond_1

    #@37
    goto :goto_0

    #@38
    .line 61
    :cond_6
    const/16 v2, 0x9

    #@3a
    if-gt p1, v2, :cond_2

    #@3c
    if-eq v1, p3, :cond_3

    #@3e
    goto :goto_1
.end method
