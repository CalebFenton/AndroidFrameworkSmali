.class Landroid/icu/util/EasterRule;
.super Ljava/lang/Object;
.source "EasterHoliday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field private blacklist calendar:Landroid/icu/util/GregorianCalendar;

.field private blacklist daysAfterEaster:I


# direct methods
.method public constructor blacklist <init>(IZ)V
    .registers 7
    .param p1, "daysAfterEaster"    # I
    .param p2, "isOrthodox"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    .line 141
    iput p1, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    .line 142
    if-eqz p2, :cond_1d

    .line 143
    iget-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 145
    :cond_1d
    return-void
.end method

.method private blacklist computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;
    .registers 15
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "cal"    # Landroid/icu/util/GregorianCalendar;

    .line 236
    if-nez p2, :cond_4

    iget-object p2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    .line 238
    :cond_4
    monitor-enter p2

    .line 239
    :try_start_5
    invoke-virtual {p2, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 242
    .local v1, "year":I
    rem-int/lit8 v2, v1, 0x13

    .line 243
    .local v2, "g":I
    const/4 v3, 0x0

    .line 244
    .local v3, "i":I
    const/4 v4, 0x0

    .line 246
    .local v4, "j":I
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_54

    .line 249
    div-int/lit8 v5, v1, 0x64

    .line 250
    .local v5, "c":I
    div-int/lit8 v7, v5, 0x4

    sub-int v7, v5, v7

    mul-int/lit8 v8, v5, 0x8

    add-int/lit8 v8, v8, 0xd

    div-int/lit8 v8, v8, 0x19

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x13

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xf

    rem-int/lit8 v7, v7, 0x1e

    .line 251
    .local v7, "h":I
    div-int/lit8 v8, v7, 0x1c

    div-int/lit8 v9, v7, 0x1c

    add-int/lit8 v10, v7, 0x1

    const/16 v11, 0x1d

    div-int/2addr v11, v10

    mul-int/2addr v9, v11

    rsub-int/lit8 v10, v2, 0x15

    div-int/lit8 v10, v10, 0xb

    mul-int/2addr v9, v10

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    sub-int v3, v7, v8

    .line 252
    div-int/lit8 v8, v1, 0x4

    add-int/2addr v8, v1

    add-int/2addr v8, v3

    add-int/2addr v8, v6

    sub-int/2addr v8, v5

    div-int/lit8 v9, v5, 0x4

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x7

    .line 253
    .end local v4    # "j":I
    .end local v5    # "c":I
    .end local v7    # "h":I
    .local v8, "j":I
    goto :goto_62

    .line 257
    .end local v8    # "j":I
    .restart local v4    # "j":I
    :cond_54
    mul-int/lit8 v5, v2, 0x13

    add-int/lit8 v5, v5, 0xf

    rem-int/lit8 v5, v5, 0x1e

    move v3, v5

    .line 258
    div-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    rem-int/lit8 v5, v5, 0x7

    move v8, v5

    .line 260
    .end local v4    # "j":I
    .restart local v8    # "j":I
    :goto_62
    sub-int v4, v3, v8

    .line 261
    .local v4, "l":I
    add-int/lit8 v5, v4, 0x28

    div-int/lit8 v5, v5, 0x2c

    add-int/lit8 v5, v5, 0x3

    .line 262
    .local v5, "m":I
    add-int/lit8 v7, v4, 0x1c

    div-int/lit8 v9, v5, 0x4

    mul-int/lit8 v9, v9, 0x1f

    sub-int/2addr v7, v9

    .line 264
    .local v7, "d":I
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->clear()V

    .line 265
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v0}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 266
    invoke-virtual {p2, v0, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 267
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p2, v6, v0}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 268
    const/4 v0, 0x5

    invoke-virtual {p2, v0, v7}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 269
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 270
    iget v6, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    invoke-virtual {p2, v0, v6}, Landroid/icu/util/GregorianCalendar;->add(II)V

    .line 272
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    monitor-exit p2

    return-object v0

    .line 273
    .end local v1    # "year":I
    .end local v2    # "g":I
    .end local v3    # "i":I
    .end local v4    # "l":I
    .end local v5    # "m":I
    .end local v7    # "d":I
    .end local v8    # "j":I
    :catchall_92
    move-exception v0

    monitor-exit p2
    :try_end_94
    .catchall {:try_start_5 .. :try_end_94} :catchall_92

    throw v0
.end method

.method private blacklist doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 7
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 196
    iget-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v1}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v1

    .line 204
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v1, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 206
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v2, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 207
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/util/GregorianCalendar;->get(I)I

    .line 208
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v2, v3, v3}, Landroid/icu/util/GregorianCalendar;->add(II)V

    .line 213
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, v2, v3}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v2

    move-object v1, v2

    .line 217
    :cond_2c
    if-eqz p2, :cond_37

    invoke-virtual {v1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 219
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_37
    monitor-exit v0

    return-object v1

    .line 222
    .end local v1    # "result":Ljava/util/Date;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method


# virtual methods
.method public blacklist firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .registers 3
    .param p1, "start"    # Ljava/util/Date;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 188
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/EasterRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isOn(Ljava/util/Date;)Z
    .registers 8
    .param p1, "date"    # Ljava/util/Date;

    .line 172
    iget-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 174
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 176
    .local v1, "dayOfYear":I
    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    iget-object v4, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v4}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, v4, v5}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 178
    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    monitor-exit v0

    return v2

    .line 179
    .end local v1    # "dayOfYear":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
