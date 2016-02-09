.class Landroid/icu/util/EasterRule;
.super Ljava/lang/Object;
.source "EasterHoliday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static gregorian:Landroid/icu/util/GregorianCalendar;

.field private static orthodox:Landroid/icu/util/GregorianCalendar;


# instance fields
.field private calendar:Landroid/icu/util/GregorianCalendar;

.field private daysAfterEaster:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 285
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@2
    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@5
    sput-object v0, Landroid/icu/util/EasterRule;->gregorian:Landroid/icu/util/GregorianCalendar;

    #@7
    .line 286
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@9
    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@c
    sput-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    #@e
    .line 151
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "daysAfterEaster"    # I
    .param p2, "isOrthodox"    # Z

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 289
    sget-object v0, Landroid/icu/util/EasterRule;->gregorian:Landroid/icu/util/GregorianCalendar;

    #@5
    iput-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@7
    .line 153
    iput p1, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    #@9
    .line 154
    if-eqz p2, :cond_0

    #@b
    .line 155
    sget-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    #@d
    new-instance v1, Ljava/util/Date;

    #@f
    const-wide v2, 0x7fffffffffffffffL

    #@14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@17
    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    #@1a
    .line 156
    sget-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    #@1c
    iput-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@1e
    .line 152
    :cond_0
    return-void
.end method

.method private computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;
    .locals 13
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "cal"    # Landroid/icu/util/GregorianCalendar;

    #@0
    .prologue
    .line 245
    if-nez p2, :cond_0

    #@2
    iget-object p2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@4
    .line 247
    :cond_0
    monitor-enter p2

    #@5
    .line 248
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@8
    .line 250
    const/4 v9, 0x1

    #@9
    invoke-virtual {p2, v9}, Landroid/icu/util/GregorianCalendar;->get(I)I

    #@c
    move-result v8

    #@d
    .line 251
    .local v8, "year":I
    rem-int/lit8 v2, v8, 0x13

    #@f
    .line 252
    .local v2, "g":I
    const/4 v4, 0x0

    #@10
    .line 253
    .local v4, "i":I
    const/4 v5, 0x0

    #@11
    .line 255
    .local v5, "j":I
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@14
    move-result-object v9

    #@15
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v9, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@1c
    move-result v9

    #@1d
    if-eqz v9, :cond_1

    #@1f
    .line 258
    div-int/lit8 v0, v8, 0x64

    #@21
    .line 259
    .local v0, "c":I
    div-int/lit8 v9, v0, 0x4

    #@23
    sub-int v9, v0, v9

    #@25
    mul-int/lit8 v10, v0, 0x8

    #@27
    add-int/lit8 v10, v10, 0xd

    #@29
    div-int/lit8 v10, v10, 0x19

    #@2b
    sub-int/2addr v9, v10

    #@2c
    mul-int/lit8 v10, v2, 0x13

    #@2e
    add-int/2addr v9, v10

    #@2f
    add-int/lit8 v9, v9, 0xf

    #@31
    rem-int/lit8 v3, v9, 0x1e

    #@33
    .line 260
    .local v3, "h":I
    div-int/lit8 v9, v3, 0x1c

    #@35
    div-int/lit8 v10, v3, 0x1c

    #@37
    add-int/lit8 v11, v3, 0x1

    #@39
    const/16 v12, 0x1d

    #@3b
    div-int v11, v12, v11

    #@3d
    mul-int/2addr v10, v11

    #@3e
    rsub-int/lit8 v11, v2, 0x15

    #@40
    div-int/lit8 v11, v11, 0xb

    #@42
    mul-int/2addr v10, v11

    #@43
    rsub-int/lit8 v10, v10, 0x1

    #@45
    mul-int/2addr v9, v10

    #@46
    sub-int v4, v3, v9

    #@48
    .line 261
    div-int/lit8 v9, v8, 0x4

    #@4a
    add-int/2addr v9, v8

    #@4b
    add-int/2addr v9, v4

    #@4c
    add-int/lit8 v9, v9, 0x2

    #@4e
    sub-int/2addr v9, v0

    #@4f
    div-int/lit8 v10, v0, 0x4

    #@51
    add-int/2addr v9, v10

    #@52
    rem-int/lit8 v5, v9, 0x7

    #@54
    .line 269
    .end local v0    # "c":I
    .end local v3    # "h":I
    :goto_0
    sub-int v6, v4, v5

    #@56
    .line 270
    .local v6, "l":I
    add-int/lit8 v9, v6, 0x28

    #@58
    div-int/lit8 v9, v9, 0x2c

    #@5a
    add-int/lit8 v7, v9, 0x3

    #@5c
    .line 271
    .local v7, "m":I
    add-int/lit8 v9, v6, 0x1c

    #@5e
    div-int/lit8 v10, v7, 0x4

    #@60
    mul-int/lit8 v10, v10, 0x1f

    #@62
    sub-int v1, v9, v10

    #@64
    .line 273
    .local v1, "d":I
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->clear()V

    #@67
    .line 274
    const/4 v9, 0x0

    #@68
    const/4 v10, 0x1

    #@69
    invoke-virtual {p2, v9, v10}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@6c
    .line 275
    const/4 v9, 0x1

    #@6d
    invoke-virtual {p2, v9, v8}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@70
    .line 276
    add-int/lit8 v9, v7, -0x1

    #@72
    const/4 v10, 0x2

    #@73
    invoke-virtual {p2, v10, v9}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@76
    .line 277
    const/4 v9, 0x5

    #@77
    invoke-virtual {p2, v9, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@7a
    .line 278
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@7d
    .line 279
    iget v9, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    #@7f
    const/4 v10, 0x5

    #@80
    invoke-virtual {p2, v10, v9}, Landroid/icu/util/GregorianCalendar;->add(II)V

    #@83
    .line 281
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    move-result-object v9

    #@87
    monitor-exit p2

    #@88
    return-object v9

    #@89
    .line 266
    .end local v1    # "d":I
    .end local v6    # "l":I
    .end local v7    # "m":I
    :cond_1
    mul-int/lit8 v9, v2, 0x13

    #@8b
    add-int/lit8 v9, v9, 0xf

    #@8d
    :try_start_1
    rem-int/lit8 v4, v9, 0x1e

    #@8f
    .line 267
    div-int/lit8 v9, v8, 0x4

    #@91
    add-int/2addr v9, v8

    #@92
    add-int/2addr v9, v4

    #@93
    rem-int/lit8 v5, v9, 0x7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@95
    goto :goto_0

    #@96
    .line 247
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "year":I
    :catchall_0
    move-exception v9

    #@97
    monitor-exit p2

    #@98
    throw v9
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 205
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@3
    monitor-enter v2

    #@4
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@6
    invoke-direct {p0, p1, v1}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    .line 213
    .local v0, "result":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 215
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@12
    invoke-virtual {v1, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@15
    .line 216
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@17
    const/4 v3, 0x1

    #@18
    invoke-virtual {v1, v3}, Landroid/icu/util/GregorianCalendar;->get(I)I

    #@1b
    .line 217
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@1d
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v1, v3, v4}, Landroid/icu/util/GregorianCalendar;->add(II)V

    #@22
    .line 222
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@24
    invoke-virtual {v1}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@27
    move-result-object v1

    #@28
    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@2a
    invoke-direct {p0, v1, v3}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    #@2d
    move-result-object v0

    #@2e
    .line 226
    :cond_0
    if-eqz p2, :cond_1

    #@30
    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    :cond_1
    monitor-exit v2

    #@37
    .line 230
    return-object v0

    #@38
    :cond_2
    monitor-exit v2

    #@39
    .line 228
    return-object v5

    #@3a
    .line 205
    .end local v0    # "result":Ljava/util/Date;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "start"    # Ljava/util/Date;

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/EasterRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 182
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@2
    monitor-enter v2

    #@3
    .line 183
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@5
    invoke-virtual {v1, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@8
    .line 184
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@a
    const/4 v3, 0x6

    #@b
    invoke-virtual {v1, v3}, Landroid/icu/util/GregorianCalendar;->get(I)I

    #@e
    move-result v0

    #@f
    .line 186
    .local v0, "dayOfYear":I
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@11
    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@13
    invoke-virtual {v3}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@19
    invoke-direct {p0, v3, v4}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1, v3}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@20
    .line 188
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    #@22
    const/4 v3, 0x6

    #@23
    invoke-virtual {v1, v3}, Landroid/icu/util/GregorianCalendar;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v1

    #@27
    if-ne v1, v0, :cond_0

    #@29
    const/4 v1, 0x1

    #@2a
    :goto_0
    monitor-exit v2

    #@2b
    return v1

    #@2c
    :cond_0
    const/4 v1, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 182
    .end local v0    # "dayOfYear":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method
