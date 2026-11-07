.class public Landroid/icu/util/BuddhistCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "BuddhistCalendar.java"


# static fields
.field public static final whitelist test-api BE:I = 0x0

.field private static final greylist-max-o BUDDHIST_ERA_START:I = -0x21f

.field private static final greylist-max-o GREGORIAN_EPOCH:I = 0x7b2

.field private static final whitelist serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    .line 65
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    .line 145
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

    .line 167
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    .line 168
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 74
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 75
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 119
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 107
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 94
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    .line 95
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Date;

    .line 128
    invoke-direct {p0}, Landroid/icu/util/BuddhistCalendar;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/icu/util/BuddhistCalendar;->setTime(Ljava/util/Date;)V

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 84
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 230
    const-string v0, "buddhist"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 4
    .param p1, "julianDay"    # I

    .line 208
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    .line 209
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/icu/util/BuddhistCalendar;->internalGet(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    .line 210
    .local v0, "y":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/icu/util/BuddhistCalendar;->internalSet(II)V

    .line 211
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/BuddhistCalendar;->internalSet(II)V

    .line 212
    return-void
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 5
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4

    .line 189
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/BuddhistCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_10

    .line 190
    const/16 v1, 0x7b2

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_18

    .line 192
    .end local v0    # "year":I
    :cond_10
    const/16 v0, 0x9d1

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x21f

    .line 195
    .restart local v0    # "year":I
    :goto_18
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 220
    if-nez p1, :cond_4

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    return v0
.end method

.method protected blacklist isEra0CountingBackward()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    const/4 v0, 0x0

    return v0
.end method
