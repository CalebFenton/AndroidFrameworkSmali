.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8
    move-result-object v1

    #@9
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@b
    .line 58
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@e
    move-result v1

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 59
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 61
    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 17
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 101
    move-wide/from16 v0, p1

    #@2
    long-to-float v4, v0

    #@3
    .line 102
    .local v4, "result":F
    const v10, 0x1040067

    #@6
    .line 103
    .local v10, "suffix":I
    const-wide/16 v2, 0x1

    #@8
    .line 104
    .local v2, "mult":J
    const/high16 v12, 0x44610000    # 900.0f

    #@a
    cmpl-float v12, v4, v12

    #@c
    if-lez v12, :cond_0

    #@e
    .line 105
    const v10, 0x1040068

    #@11
    .line 106
    const-wide/16 v2, 0x400

    #@13
    .line 107
    const/high16 v12, 0x44800000    # 1024.0f

    #@15
    div-float/2addr v4, v12

    #@16
    .line 109
    :cond_0
    const/high16 v12, 0x44610000    # 900.0f

    #@18
    cmpl-float v12, v4, v12

    #@1a
    if-lez v12, :cond_1

    #@1c
    .line 110
    const v10, 0x1040069

    #@1f
    .line 111
    const-wide/32 v2, 0x100000

    #@22
    .line 112
    const/high16 v12, 0x44800000    # 1024.0f

    #@24
    div-float/2addr v4, v12

    #@25
    .line 114
    :cond_1
    const/high16 v12, 0x44610000    # 900.0f

    #@27
    cmpl-float v12, v4, v12

    #@29
    if-lez v12, :cond_2

    #@2b
    .line 115
    const v10, 0x104006a

    #@2e
    .line 116
    const-wide/32 v2, 0x40000000

    #@31
    .line 117
    const/high16 v12, 0x44800000    # 1024.0f

    #@33
    div-float/2addr v4, v12

    #@34
    .line 119
    :cond_2
    const/high16 v12, 0x44610000    # 900.0f

    #@36
    cmpl-float v12, v4, v12

    #@38
    if-lez v12, :cond_3

    #@3a
    .line 120
    const v10, 0x104006b

    #@3d
    .line 121
    const-wide v2, 0x10000000000L

    #@42
    .line 122
    const/high16 v12, 0x44800000    # 1024.0f

    #@44
    div-float/2addr v4, v12

    #@45
    .line 124
    :cond_3
    const/high16 v12, 0x44610000    # 900.0f

    #@47
    cmpl-float v12, v4, v12

    #@49
    if-lez v12, :cond_4

    #@4b
    .line 125
    const v10, 0x104006c

    #@4e
    .line 126
    const-wide/high16 v2, 0x4000000000000L

    #@50
    .line 127
    const/high16 v12, 0x44800000    # 1024.0f

    #@52
    div-float/2addr v4, v12

    #@53
    .line 134
    :cond_4
    const/high16 v12, 0x3f800000    # 1.0f

    #@55
    cmpg-float v12, v4, v12

    #@57
    if-gez v12, :cond_5

    #@59
    .line 135
    const/16 v5, 0x64

    #@5b
    .line 136
    .local v5, "roundFactor":I
    const-string/jumbo v6, "%.2f"

    #@5e
    .line 157
    .local v6, "roundFormat":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x1

    #@5f
    new-array v12, v12, [Ljava/lang/Object;

    #@61
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@64
    move-result-object v13

    #@65
    const/4 v14, 0x0

    #@66
    aput-object v13, v12, v14

    #@68
    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 162
    .local v7, "roundedString":Ljava/lang/String;
    and-int/lit8 v12, p3, 0x2

    #@6e
    if-nez v12, :cond_a

    #@70
    const-wide/16 v8, 0x0

    #@72
    .line 165
    .local v8, "roundedBytes":J
    :goto_1
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@77
    move-result-object v11

    #@78
    .line 167
    .local v11, "units":Ljava/lang/String;
    new-instance v12, Landroid/text/format/Formatter$BytesResult;

    #@7a
    invoke-direct {v12, v7, v11, v8, v9}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    #@7d
    return-object v12

    #@7e
    .line 137
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    .end local v7    # "roundedString":Ljava/lang/String;
    .end local v8    # "roundedBytes":J
    .end local v11    # "units":Ljava/lang/String;
    :cond_5
    const/high16 v12, 0x41200000    # 10.0f

    #@80
    cmpg-float v12, v4, v12

    #@82
    if-gez v12, :cond_7

    #@84
    .line 138
    and-int/lit8 v12, p3, 0x1

    #@86
    if-eqz v12, :cond_6

    #@88
    .line 139
    const/16 v5, 0xa

    #@8a
    .line 140
    .restart local v5    # "roundFactor":I
    const-string/jumbo v6, "%.1f"

    #@8d
    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    #@8e
    .line 142
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_6
    const/16 v5, 0x64

    #@90
    .line 143
    .restart local v5    # "roundFactor":I
    const-string/jumbo v6, "%.2f"

    #@93
    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    #@94
    .line 145
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_7
    const/high16 v12, 0x42c80000    # 100.0f

    #@96
    cmpg-float v12, v4, v12

    #@98
    if-gez v12, :cond_9

    #@9a
    .line 146
    and-int/lit8 v12, p3, 0x1

    #@9c
    if-eqz v12, :cond_8

    #@9e
    .line 147
    const/4 v5, 0x1

    #@9f
    .line 148
    .restart local v5    # "roundFactor":I
    const-string/jumbo v6, "%.0f"

    #@a2
    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    #@a3
    .line 150
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_8
    const/16 v5, 0x64

    #@a5
    .line 151
    .restart local v5    # "roundFactor":I
    const-string/jumbo v6, "%.2f"

    #@a8
    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    #@a9
    .line 154
    .end local v5    # "roundFactor":I
    .end local v6    # "roundFormat":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x1

    #@aa
    .line 155
    .restart local v5    # "roundFactor":I
    const-string/jumbo v6, "%.0f"

    #@ad
    .restart local v6    # "roundFormat":Ljava/lang/String;
    goto :goto_0

    #@ae
    .line 163
    .restart local v7    # "roundedString":Ljava/lang/String;
    :cond_a
    int-to-float v12, v5

    #@af
    mul-float/2addr v12, v4

    #@b0
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    #@b3
    move-result v12

    #@b4
    int-to-long v12, v12

    #@b5
    mul-long/2addr v12, v2

    #@b6
    int-to-long v14, v5

    #@b7
    div-long v8, v12, v14

    #@b9
    .restart local v8    # "roundedBytes":J
    goto :goto_1
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 78
    if-nez p0, :cond_0

    #@3
    .line 79
    const-string/jumbo v1, ""

    #@6
    return-object v1

    #@7
    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, p2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    #@e
    move-result-object v0

    #@f
    .line 82
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const/4 v1, 0x2

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    .line 83
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    #@14
    aput-object v2, v1, v3

    #@16
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    #@18
    const/4 v3, 0x1

    #@19
    aput-object v2, v1, v3

    #@1b
    .line 82
    const v2, 0x104006d

    #@1e
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .param p0, "ipv4Address"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 197
    const-wide/16 v6, 0x3e8

    #@2
    div-long v4, p1, v6

    #@4
    .line 199
    .local v4, "secondsLong":J
    const/4 v0, 0x0

    #@5
    .local v0, "days":I
    const/4 v1, 0x0

    #@6
    .local v1, "hours":I
    const/4 v2, 0x0

    #@7
    .line 200
    .local v2, "minutes":I
    const-wide/32 v6, 0x15180

    #@a
    cmp-long v6, v4, v6

    #@c
    if-ltz v6, :cond_0

    #@e
    .line 201
    const-wide/32 v6, 0x15180

    #@11
    div-long v6, v4, v6

    #@13
    long-to-int v0, v6

    #@14
    .line 202
    const v6, 0x15180

    #@17
    mul-int/2addr v6, v0

    #@18
    int-to-long v6, v6

    #@19
    sub-long/2addr v4, v6

    #@1a
    .line 204
    :cond_0
    const-wide/16 v6, 0xe10

    #@1c
    cmp-long v6, v4, v6

    #@1e
    if-ltz v6, :cond_1

    #@20
    .line 205
    const-wide/16 v6, 0xe10

    #@22
    div-long v6, v4, v6

    #@24
    long-to-int v1, v6

    #@25
    .line 206
    mul-int/lit16 v6, v1, 0xe10

    #@27
    int-to-long v6, v6

    #@28
    sub-long/2addr v4, v6

    #@29
    .line 208
    :cond_1
    const-wide/16 v6, 0x3c

    #@2b
    cmp-long v6, v4, v6

    #@2d
    if-ltz v6, :cond_2

    #@2f
    .line 209
    const-wide/16 v6, 0x3c

    #@31
    div-long v6, v4, v6

    #@33
    long-to-int v2, v6

    #@34
    .line 210
    mul-int/lit8 v6, v2, 0x3c

    #@36
    int-to-long v6, v6

    #@37
    sub-long/2addr v4, v6

    #@38
    .line 212
    :cond_2
    long-to-int v3, v4

    #@39
    .line 214
    .local v3, "seconds":I
    const/4 v6, 0x2

    #@3a
    if-lt v0, v6, :cond_3

    #@3c
    .line 215
    add-int/lit8 v6, v1, 0xc

    #@3e
    div-int/lit8 v6, v6, 0x18

    #@40
    add-int/2addr v0, v6

    #@41
    .line 216
    const/4 v6, 0x1

    #@42
    new-array v6, v6, [Ljava/lang/Object;

    #@44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v7

    #@48
    const/4 v8, 0x0

    #@49
    aput-object v7, v6, v8

    #@4b
    const v7, 0x104006e

    #@4e
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    return-object v6

    #@53
    .line 217
    :cond_3
    if-lez v0, :cond_5

    #@55
    .line 218
    const/4 v6, 0x1

    #@56
    if-ne v1, v6, :cond_4

    #@58
    .line 219
    const/4 v6, 0x2

    #@59
    new-array v6, v6, [Ljava/lang/Object;

    #@5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v7

    #@5f
    const/4 v8, 0x0

    #@60
    aput-object v7, v6, v8

    #@62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v7

    #@66
    const/4 v8, 0x1

    #@67
    aput-object v7, v6, v8

    #@69
    const v7, 0x1040070

    #@6c
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    return-object v6

    #@71
    .line 221
    :cond_4
    const/4 v6, 0x2

    #@72
    new-array v6, v6, [Ljava/lang/Object;

    #@74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v7

    #@78
    const/4 v8, 0x0

    #@79
    aput-object v7, v6, v8

    #@7b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v7

    #@7f
    const/4 v8, 0x1

    #@80
    aput-object v7, v6, v8

    #@82
    const v7, 0x104006f

    #@85
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    return-object v6

    #@8a
    .line 222
    :cond_5
    const/4 v6, 0x2

    #@8b
    if-lt v1, v6, :cond_6

    #@8d
    .line 223
    add-int/lit8 v6, v2, 0x1e

    #@8f
    div-int/lit8 v6, v6, 0x3c

    #@91
    add-int/2addr v1, v6

    #@92
    .line 224
    const/4 v6, 0x1

    #@93
    new-array v6, v6, [Ljava/lang/Object;

    #@95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v7

    #@99
    const/4 v8, 0x0

    #@9a
    aput-object v7, v6, v8

    #@9c
    const v7, 0x1040071

    #@9f
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    return-object v6

    #@a4
    .line 225
    :cond_6
    if-lez v1, :cond_8

    #@a6
    .line 226
    const/4 v6, 0x1

    #@a7
    if-ne v2, v6, :cond_7

    #@a9
    .line 227
    const/4 v6, 0x2

    #@aa
    new-array v6, v6, [Ljava/lang/Object;

    #@ac
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v7

    #@b0
    const/4 v8, 0x0

    #@b1
    aput-object v7, v6, v8

    #@b3
    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v7

    #@b7
    const/4 v8, 0x1

    #@b8
    aput-object v7, v6, v8

    #@ba
    .line 227
    const v7, 0x1040073

    #@bd
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    return-object v6

    #@c2
    .line 230
    :cond_7
    const/4 v6, 0x2

    #@c3
    new-array v6, v6, [Ljava/lang/Object;

    #@c5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8
    move-result-object v7

    #@c9
    const/4 v8, 0x0

    #@ca
    aput-object v7, v6, v8

    #@cc
    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cf
    move-result-object v7

    #@d0
    const/4 v8, 0x1

    #@d1
    aput-object v7, v6, v8

    #@d3
    .line 230
    const v7, 0x1040072

    #@d6
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@d9
    move-result-object v6

    #@da
    return-object v6

    #@db
    .line 232
    :cond_8
    const/4 v6, 0x2

    #@dc
    if-lt v2, v6, :cond_9

    #@de
    .line 233
    add-int/lit8 v6, v3, 0x1e

    #@e0
    div-int/lit8 v6, v6, 0x3c

    #@e2
    add-int/2addr v2, v6

    #@e3
    .line 234
    const/4 v6, 0x1

    #@e4
    new-array v6, v6, [Ljava/lang/Object;

    #@e6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e9
    move-result-object v7

    #@ea
    const/4 v8, 0x0

    #@eb
    aput-object v7, v6, v8

    #@ed
    const v7, 0x1040074

    #@f0
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@f3
    move-result-object v6

    #@f4
    return-object v6

    #@f5
    .line 235
    :cond_9
    if-lez v2, :cond_b

    #@f7
    .line 236
    const/4 v6, 0x1

    #@f8
    if-ne v3, v6, :cond_a

    #@fa
    .line 237
    const/4 v6, 0x2

    #@fb
    new-array v6, v6, [Ljava/lang/Object;

    #@fd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@100
    move-result-object v7

    #@101
    const/4 v8, 0x0

    #@102
    aput-object v7, v6, v8

    #@104
    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@107
    move-result-object v7

    #@108
    const/4 v8, 0x1

    #@109
    aput-object v7, v6, v8

    #@10b
    .line 237
    const v7, 0x1040077

    #@10e
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@111
    move-result-object v6

    #@112
    return-object v6

    #@113
    .line 240
    :cond_a
    const/4 v6, 0x2

    #@114
    new-array v6, v6, [Ljava/lang/Object;

    #@116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@119
    move-result-object v7

    #@11a
    const/4 v8, 0x0

    #@11b
    aput-object v7, v6, v8

    #@11d
    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@120
    move-result-object v7

    #@121
    const/4 v8, 0x1

    #@122
    aput-object v7, v6, v8

    #@124
    .line 240
    const v7, 0x1040076

    #@127
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@12a
    move-result-object v6

    #@12b
    return-object v6

    #@12c
    .line 242
    :cond_b
    const/4 v6, 0x1

    #@12d
    if-ne v3, v6, :cond_c

    #@12f
    .line 243
    const/4 v6, 0x1

    #@130
    new-array v6, v6, [Ljava/lang/Object;

    #@132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@135
    move-result-object v7

    #@136
    const/4 v8, 0x0

    #@137
    aput-object v7, v6, v8

    #@139
    const v7, 0x1040079

    #@13c
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@13f
    move-result-object v6

    #@140
    return-object v6

    #@141
    .line 245
    :cond_c
    const/4 v6, 0x1

    #@142
    new-array v6, v6, [Ljava/lang/Object;

    #@144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@147
    move-result-object v7

    #@148
    const/4 v8, 0x0

    #@149
    aput-object v7, v6, v8

    #@14b
    const v7, 0x1040078

    #@14e
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@151
    move-result-object v6

    #@152
    return-object v6
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    const-wide/32 v6, 0xea60

    #@5
    const/4 v5, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    .line 258
    add-long v2, p1, v6

    #@9
    sub-long/2addr v2, v8

    #@a
    div-long v0, v2, v6

    #@c
    .line 260
    .local v0, "minutesRoundedUp":J
    const-wide/16 v2, 0x0

    #@e
    cmp-long v2, v0, v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 261
    new-array v2, v5, [Ljava/lang/Object;

    #@14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, v4

    #@1a
    const v3, 0x1040074

    #@1d
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 262
    :cond_0
    cmp-long v2, v0, v8

    #@24
    if-nez v2, :cond_1

    #@26
    .line 263
    new-array v2, v5, [Ljava/lang/Object;

    #@28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v3

    #@2c
    aput-object v3, v2, v4

    #@2e
    const v3, 0x1040075

    #@31
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    return-object v2

    #@36
    .line 266
    :cond_1
    mul-long v2, v0, v6

    #@38
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    return-object v2
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 91
    if-nez p0, :cond_0

    #@3
    .line 92
    const-string/jumbo v1, ""

    #@6
    return-object v1

    #@7
    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, p2, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    #@e
    move-result-object v0

    #@f
    .line 95
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const/4 v1, 0x2

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    .line 96
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v1, v3

    #@17
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    #@19
    aput-object v2, v1, v4

    #@1b
    .line 95
    const v2, 0x104006d

    #@1e
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method
