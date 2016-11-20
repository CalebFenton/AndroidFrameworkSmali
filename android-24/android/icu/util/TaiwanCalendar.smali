.class public Landroid/icu/util/TaiwanCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "TaiwanCalendar.java"


# static fields
.field public static final BEFORE_MINGUO:I = 0x0

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field public static final MINGUO:I = 0x1

.field private static final Taiwan_ERA_START:I = 0x777

.field private static final serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@3
    .line 65
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    #@3
    .line 142
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 162
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    #@3
    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    #@3
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    #@3
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/icu/util/TaiwanCalendar;-><init>()V

    #@3
    .line 128
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@6
    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    #@3
    .line 85
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 234
    const-string/jumbo v0, "roc"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4
    .param p1, "julianDay"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 203
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    #@5
    .line 204
    const/16 v1, 0x13

    #@7
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@a
    move-result v1

    #@b
    add-int/lit16 v0, v1, -0x777

    #@d
    .line 205
    .local v0, "y":I
    if-lez v0, :cond_0

    #@f
    .line 206
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@12
    .line 207
    invoke-virtual {p0, v3, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@15
    .line 202
    :goto_0
    return-void

    #@16
    .line 209
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@19
    .line 210
    rsub-int/lit8 v1, v0, 0x1

    #@1b
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@1e
    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x13

    #@3
    const/4 v3, 0x1

    #@4
    .line 184
    const/16 v1, 0x7b2

    #@6
    .line 185
    .local v1, "year":I
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->newerField(II)I

    #@9
    move-result v2

    #@a
    if-ne v2, v4, :cond_0

    #@c
    .line 186
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->newerField(II)I

    #@f
    move-result v2

    #@10
    if-ne v2, v4, :cond_0

    #@12
    .line 187
    const/16 v2, 0x7b2

    #@14
    invoke-virtual {p0, v4, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@17
    move-result v1

    #@18
    .line 196
    :goto_0
    return v1

    #@19
    .line 189
    :cond_0
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@1c
    move-result v0

    #@1d
    .line 190
    .local v0, "era":I
    if-ne v0, v3, :cond_1

    #@1f
    .line 191
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@22
    move-result v2

    #@23
    add-int/lit16 v1, v2, 0x777

    #@25
    goto :goto_0

    #@26
    .line 193
    :cond_1
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@29
    move-result v2

    #@2a
    rsub-int/lit8 v2, v2, 0x1

    #@2c
    add-int/lit16 v1, v2, 0x777

    #@2e
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 2
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 220
    if-nez p1, :cond_2

    #@4
    .line 221
    if-eqz p2, :cond_0

    #@6
    if-ne p2, v1, :cond_1

    #@8
    .line 222
    :cond_0
    return v0

    #@9
    .line 224
    :cond_1
    return v1

    #@a
    .line 227
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    #@d
    move-result v0

    #@e
    return v0
.end method
