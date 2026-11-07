.class public Landroid/icu/util/TaiwanCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "TaiwanCalendar.java"


# static fields
.field public static final whitelist test-api BEFORE_MINGUO:I = 0x0

.field private static final greylist-max-o GREGORIAN_EPOCH:I = 0x7b2

.field public static final whitelist test-api MINGUO:I = 0x1

.field private static final greylist-max-o Taiwan_ERA_START:I = 0x777

.field private static final whitelist serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    .line 69
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    .line 146
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 164
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    .line 165
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 78
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 120
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 98
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    .line 99
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Date;

    .line 129
    invoke-direct {p0}, Landroid/icu/util/TaiwanCalendar;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Landroid/icu/util/TaiwanCalendar;->setTime(Ljava/util/Date;)V

    .line 131
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 88
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 236
    const-string v0, "roc"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 5
    .param p1, "julianDay"    # I

    .line 205
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    .line 206
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/icu/util/TaiwanCalendar;->internalGet(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    .line 207
    .local v0, "y":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_16

    .line 208
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/TaiwanCalendar;->internalSet(II)V

    .line 209
    invoke-virtual {p0, v2, v0}, Landroid/icu/util/TaiwanCalendar;->internalSet(II)V

    goto :goto_1e

    .line 211
    :cond_16
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/TaiwanCalendar;->internalSet(II)V

    .line 212
    rsub-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/TaiwanCalendar;->internalSet(II)V

    .line 214
    :goto_1e
    return-void
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 6

    .line 186
    const/16 v0, 0x7b2

    .line 187
    .local v0, "year":I
    const/16 v1, 0x13

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/TaiwanCalendar;->newerField(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_19

    .line 188
    invoke-virtual {p0, v1, v4}, Landroid/icu/util/TaiwanCalendar;->newerField(II)I

    move-result v3

    if-ne v3, v1, :cond_19

    .line 189
    const/16 v2, 0x7b2

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v0

    goto :goto_2d

    .line 191
    :cond_19
    invoke-virtual {p0, v4, v2}, Landroid/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v1

    .line 192
    .local v1, "era":I
    if-ne v1, v2, :cond_26

    .line 193
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v2

    add-int/lit16 v0, v2, 0x777

    goto :goto_2d

    .line 195
    :cond_26
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit16 v0, v2, 0x777

    .line 198
    .end local v1    # "era":I
    :goto_2d
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 222
    if-nez p1, :cond_b

    .line 223
    if-eqz p2, :cond_9

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    goto :goto_9

    .line 226
    :cond_8
    return v0

    .line 224
    :cond_9
    :goto_9
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    return v0
.end method
