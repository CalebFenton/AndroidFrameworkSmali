.class Ljava/text/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"


# static fields
.field private static final greylist-max-o COMPUTED:I = 0x1

.field public static final greylist-max-o ISO_DAY_OF_WEEK:I = 0x3e8

.field private static final greylist-max-o MAX_FIELD:I = 0x12

.field private static final greylist-max-o MINIMUM_USER_STAMP:I = 0x2

.field private static final greylist-max-o UNSET:I = 0x0

.field public static final greylist-max-o WEEK_YEAR:I = 0x11


# instance fields
.field private final greylist-max-o field:[I

.field private greylist-max-o maxFieldIndex:I

.field private greylist-max-o nextStamp:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    .line 67
    return-void
.end method

.method static greylist-max-o isValidDayOfWeek(I)Z
    .registers 2
    .param p0, "dayOfWeek"    # I

    .line 172
    if-lez p0, :cond_7

    const/4 v0, 0x7

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static greylist-max-o toCalendarDayOfWeek(I)I
    .registers 2
    .param p0, "isoDayOfWeek"    # I

    .line 164
    invoke-static {p0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 166
    return p0

    .line 168
    :cond_7
    const/4 v0, 0x7

    if-ne p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v0, p0, 0x1

    :goto_e
    return v0
.end method

.method static greylist-max-o toISODayOfWeek(I)I
    .registers 2
    .param p0, "calendarDayOfWeek"    # I

    .line 160
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x7

    goto :goto_7

    :cond_5
    add-int/lit8 v0, p0, -0x1

    :goto_7
    return v0
.end method


# virtual methods
.method greylist-max-o addYear(I)Ljava/text/CalendarBuilder;
    .registers 5
    .param p1, "value"    # I

    .line 83
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x13

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 84
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x23

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 85
    return-object p0
.end method

.method greylist-max-o clear(I)Ljava/text/CalendarBuilder;
    .registers 5
    .param p1, "index"    # I

    .line 96
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 97
    const/4 p1, 0x7

    .line 99
    :cond_5
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 100
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v2, p1, 0x12

    aput v1, v0, v2

    .line 101
    return-object p0
.end method

.method greylist-max-o establish(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 9
    .param p1, "cal"    # Ljava/util/Calendar;

    .line 105
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    iget-object v1, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v0, v1, v0

    iget-object v1, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 107
    .local v0, "weekDate":Z
    :goto_16
    const/16 v1, 0x23

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 109
    invoke-virtual {p0, v2}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 110
    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v3, v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 112
    :cond_2d
    const/4 v0, 0x0

    .line 115
    :cond_2e
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 118
    const/4 v3, 0x2

    .local v3, "stamp":I
    :goto_32
    iget v4, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    if-ge v3, v4, :cond_51

    .line 119
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_37
    iget v5, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-gt v4, v5, :cond_4e

    .line 120
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v5, v5, v4

    if-ne v5, v3, :cond_4b

    .line 121
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v6, v4, 0x12

    aget v5, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 122
    goto :goto_4e

    .line 119
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 118
    .end local v4    # "index":I
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 127
    .end local v3    # "stamp":I
    :cond_51
    if-eqz v0, :cond_a0

    .line 128
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    goto :goto_62

    :cond_61
    move v3, v2

    .line 129
    .local v3, "weekOfYear":I
    :goto_62
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 130
    iget-object v4, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v5, 0x19

    aget v4, v4, v5

    goto :goto_74

    :cond_70
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    .line 131
    .local v4, "dayOfWeek":I
    :goto_74
    invoke-static {v4}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-virtual {p1}, Ljava/util/Calendar;->isLenient()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 132
    const/16 v5, 0x8

    if-lt v4, v5, :cond_8d

    .line 133
    add-int/lit8 v4, v4, -0x1

    .line 134
    div-int/lit8 v5, v4, 0x7

    add-int/2addr v3, v5

    .line 135
    rem-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v2

    .end local v4    # "dayOfWeek":I
    .local v5, "dayOfWeek":I
    goto :goto_95

    .line 137
    .end local v5    # "dayOfWeek":I
    .restart local v4    # "dayOfWeek":I
    :cond_8d
    :goto_8d
    if-gtz v4, :cond_94

    .line 138
    add-int/lit8 v4, v4, 0x7

    .line 139
    add-int/lit8 v3, v3, -0x1

    goto :goto_8d

    .line 137
    :cond_94
    move v5, v4

    .line 142
    .end local v4    # "dayOfWeek":I
    .restart local v5    # "dayOfWeek":I
    :goto_95
    invoke-static {v5}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result v4

    .line 144
    .end local v5    # "dayOfWeek":I
    .restart local v4    # "dayOfWeek":I
    :cond_99
    iget-object v2, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v1, v2, v1

    invoke-virtual {p1, v1, v3, v4}, Ljava/util/Calendar;->setWeekDate(III)V

    .line 146
    .end local v3    # "weekOfYear":I
    .end local v4    # "dayOfWeek":I
    :cond_a0
    return-object p1
.end method

.method greylist-max-o isSet(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 89
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 90
    const/4 p1, 0x7

    .line 92
    :cond_5
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v0, v0, p1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o set(II)Ljava/text/CalendarBuilder;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 70
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 71
    const/4 p1, 0x7

    .line 72
    invoke-static {p2}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result p2

    .line 74
    :cond_9
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    iget v1, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    aput v1, v0, p1

    .line 75
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    .line 76
    iget v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-le p1, v0, :cond_23

    const/16 v0, 0x11

    if-ge p1, v0, :cond_23

    .line 77
    iput p1, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    .line 79
    :cond_23
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 150
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "CalendarBuilder:["

    const-string v2, "]"

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 151
    .local v0, "sj":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    const/16 v2, 0x12

    if-ge v1, v2, :cond_47

    .line 152
    invoke-virtual {p0, v1}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v4, v1, 0x12

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 156
    .end local v1    # "i":I
    :cond_47
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
