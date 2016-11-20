.class Ljava/text/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"


# static fields
.field private static final COMPUTED:I = 0x1

.field public static final ISO_DAY_OF_WEEK:I = 0x3e8

.field private static final MAX_FIELD:I = 0x12

.field private static final MINIMUM_USER_STAMP:I = 0x2

.field private static final UNSET:I = 0x0

.field public static final WEEK_YEAR:I = 0x11


# instance fields
.field private final field:[I

.field private maxFieldIndex:I

.field private nextStamp:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/16 v0, 0x24

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@9
    .line 64
    const/4 v0, 0x2

    #@a
    iput v0, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    #@c
    .line 65
    const/4 v0, -0x1

    #@d
    iput v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    #@f
    .line 62
    return-void
.end method

.method static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "dayOfWeek"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 177
    if-lez p0, :cond_0

    #@3
    const/4 v1, 0x7

    #@4
    if-gt p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method static toCalendarDayOfWeek(I)I
    .locals 1
    .param p0, "isoDayOfWeek"    # I

    #@0
    .prologue
    .line 169
    invoke-static {p0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 171
    return p0

    #@7
    .line 173
    :cond_0
    const/4 v0, 0x7

    #@8
    if-ne p0, v0, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_1
    add-int/lit8 v0, p0, 0x1

    #@e
    goto :goto_0
.end method

.method static toISODayOfWeek(I)I
    .locals 1
    .param p0, "calendarDayOfWeek"    # I

    #@0
    .prologue
    .line 165
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x7

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    add-int/lit8 v0, p0, -0x1

    #@7
    goto :goto_0
.end method


# virtual methods
.method addYear(I)Ljava/text/CalendarBuilder;
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@2
    const/16 v1, 0x13

    #@4
    aget v2, v0, v1

    #@6
    add-int/2addr v2, p1

    #@7
    aput v2, v0, v1

    #@9
    .line 83
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@b
    const/16 v1, 0x23

    #@d
    aget v2, v0, v1

    #@f
    add-int/2addr v2, p1

    #@10
    aput v2, v0, v1

    #@12
    .line 84
    return-object p0
.end method

.method clear(I)Ljava/text/CalendarBuilder;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    const/16 v0, 0x3e8

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 96
    const/4 p1, 0x7

    #@6
    .line 98
    :cond_0
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@8
    aput v2, v0, p1

    #@a
    .line 99
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@c
    add-int/lit8 v1, p1, 0x12

    #@e
    aput v2, v0, v1

    #@10
    .line 100
    return-object p0
.end method

.method establish(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 9
    .param p1, "cal"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/16 v8, 0x23

    #@2
    const/16 v7, 0x11

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    .line 104
    invoke-virtual {p0, v7}, Ljava/text/CalendarBuilder;->isSet(I)Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 105
    iget-object v6, p0, Ljava/text/CalendarBuilder;->field:[I

    #@e
    aget v6, v6, v7

    #@10
    iget-object v7, p0, Ljava/text/CalendarBuilder;->field:[I

    #@12
    aget v7, v7, v5

    #@14
    if-le v6, v7, :cond_0

    #@16
    move v3, v5

    #@17
    .line 106
    .local v3, "weekDate":Z
    :cond_0
    if-eqz v3, :cond_1

    #@19
    invoke-virtual {p1}, Ljava/util/Calendar;->isWeekDateSupported()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_3

    #@1f
    .line 114
    .end local v3    # "weekDate":Z
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    #@22
    .line 117
    const/4 v2, 0x2

    #@23
    .local v2, "stamp":I
    :goto_1
    iget v5, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    #@25
    if-ge v2, v5, :cond_6

    #@27
    .line 118
    const/4 v1, 0x0

    #@28
    .local v1, "index":I
    :goto_2
    iget v5, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    #@2a
    if-gt v1, v5, :cond_2

    #@2c
    .line 119
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    #@2e
    aget v5, v5, v1

    #@30
    if-ne v5, v2, :cond_5

    #@32
    .line 120
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    #@34
    add-int/lit8 v6, v1, 0x12

    #@36
    aget v5, v5, v6

    #@38
    invoke-virtual {p1, v1, v5}, Ljava/util/Calendar;->set(II)V

    #@3b
    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 108
    .end local v1    # "index":I
    .end local v2    # "stamp":I
    .restart local v3    # "weekDate":Z
    :cond_3
    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_4

    #@44
    .line 109
    iget-object v6, p0, Ljava/text/CalendarBuilder;->field:[I

    #@46
    aget v6, v6, v8

    #@48
    invoke-virtual {p0, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    #@4b
    .line 111
    :cond_4
    const/4 v3, 0x0

    #@4c
    .local v3, "weekDate":Z
    goto :goto_0

    #@4d
    .line 118
    .end local v3    # "weekDate":Z
    .restart local v1    # "index":I
    .restart local v2    # "stamp":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 126
    .end local v1    # "index":I
    :cond_6
    if-eqz v3, :cond_9

    #@52
    .line 127
    const/4 v5, 0x3

    #@53
    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_a

    #@59
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    #@5b
    const/16 v6, 0x15

    #@5d
    aget v4, v5, v6

    #@5f
    .line 128
    .local v4, "weekOfYear":I
    :goto_3
    const/4 v5, 0x7

    #@60
    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_b

    #@66
    .line 129
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    #@68
    const/16 v6, 0x19

    #@6a
    aget v0, v5, v6

    #@6c
    .line 130
    .local v0, "dayOfWeek":I
    :goto_4
    invoke-static {v0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    #@6f
    move-result v5

    #@70
    if-nez v5, :cond_8

    #@72
    invoke-virtual {p1}, Ljava/util/Calendar;->isLenient()Z

    #@75
    move-result v5

    #@76
    if-eqz v5, :cond_8

    #@78
    .line 131
    const/16 v5, 0x8

    #@7a
    if-lt v0, v5, :cond_c

    #@7c
    .line 132
    add-int/lit8 v0, v0, -0x1

    #@7e
    .line 133
    div-int/lit8 v5, v0, 0x7

    #@80
    add-int/2addr v4, v5

    #@81
    .line 134
    rem-int/lit8 v5, v0, 0x7

    #@83
    add-int/lit8 v0, v5, 0x1

    #@85
    .line 141
    :cond_7
    invoke-static {v0}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    #@88
    move-result v0

    #@89
    .line 143
    :cond_8
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    #@8b
    aget v5, v5, v8

    #@8d
    invoke-virtual {p1, v5, v4, v0}, Ljava/util/Calendar;->setWeekDate(III)V

    #@90
    .line 145
    .end local v0    # "dayOfWeek":I
    .end local v4    # "weekOfYear":I
    :cond_9
    return-object p1

    #@91
    .line 127
    :cond_a
    const/4 v4, 0x1

    #@92
    .restart local v4    # "weekOfYear":I
    goto :goto_3

    #@93
    .line 129
    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@96
    move-result v0

    #@97
    goto :goto_4

    #@98
    .line 136
    .restart local v0    # "dayOfWeek":I
    :cond_c
    :goto_5
    if-gtz v0, :cond_7

    #@9a
    .line 137
    add-int/lit8 v0, v0, 0x7

    #@9c
    .line 138
    add-int/lit8 v4, v4, -0x1

    #@9e
    goto :goto_5
.end method

.method isSet(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    const/16 v1, 0x3e8

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 89
    const/4 p1, 0x7

    #@6
    .line 91
    :cond_0
    iget-object v1, p0, Ljava/text/CalendarBuilder;->field:[I

    #@8
    aget v1, v1, p1

    #@a
    if-lez v1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    :cond_1
    return v0
.end method

.method set(II)Ljava/text/CalendarBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 69
    const/16 v0, 0x3e8

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 70
    const/4 p1, 0x7

    #@5
    .line 71
    invoke-static {p2}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    #@8
    move-result p2

    #@9
    .line 73
    :cond_0
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@b
    iget v1, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    #@d
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    #@11
    aput v1, v0, p1

    #@13
    .line 74
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    #@15
    add-int/lit8 v1, p1, 0x12

    #@17
    aput p2, v0, v1

    #@19
    .line 75
    iget v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    #@1b
    if-le p1, v0, :cond_1

    #@1d
    const/16 v0, 0x11

    #@1f
    if-ge p1, v0, :cond_1

    #@21
    .line 76
    iput p1, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    #@23
    .line 78
    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x2c

    #@2
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 150
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "CalendarBuilder:["

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 151
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    #@10
    array-length v3, v3

    #@11
    if-ge v0, v3, :cond_1

    #@13
    .line 152
    invoke-virtual {p0, v0}, Ljava/text/CalendarBuilder;->isSet(I)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const/16 v4, 0x3d

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Ljava/text/CalendarBuilder;->field:[I

    #@25
    add-int/lit8 v5, v0, 0x12

    #@27
    aget v4, v4, v5

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 156
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@36
    move-result v3

    #@37
    add-int/lit8 v1, v3, -0x1

    #@39
    .line 157
    .local v1, "lastIndex":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@3c
    move-result v3

    #@3d
    if-ne v3, v6, :cond_2

    #@3f
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@42
    .line 160
    :cond_2
    const/16 v3, 0x5d

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    return-object v3
.end method
