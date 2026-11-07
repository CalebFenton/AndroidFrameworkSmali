.class public final Landroid/icu/util/CopticCalendar;
.super Landroid/icu/util/CECalendar;
.source "CopticCalendar.java"


# static fields
.field public static final whitelist test-api AMSHIR:I = 0x5

.field public static final whitelist test-api BABA:I = 0x1

.field public static final whitelist test-api BARAMHAT:I = 0x6

.field public static final whitelist test-api BARAMOUDA:I = 0x7

.field public static final whitelist test-api BASHANS:I = 0x8

.field private static final greylist-max-o BCE:I = 0x0

.field private static final greylist-max-o CE:I = 0x1

.field public static final whitelist test-api EPEP:I = 0xa

.field public static final whitelist test-api HATOR:I = 0x2

.field private static final greylist-max-o JD_EPOCH_OFFSET:I = 0x1bd799

.field public static final whitelist test-api KIAHK:I = 0x3

.field public static final whitelist test-api MESRA:I = 0xb

.field public static final whitelist test-api NASIE:I = 0xc

.field public static final whitelist test-api PAONA:I = 0x9

.field public static final whitelist test-api TOBA:I = 0x4

.field public static final whitelist test-api TOUT:I = 0x0

.field private static final whitelist serialVersionUID:J = 0x51ee93e0021d7b7fL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Landroid/icu/util/CECalendar;-><init>()V

    .line 120
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    .line 185
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

    .line 211
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    .line 212
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 129
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 172
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 161
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 149
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/ULocale;)V

    .line 150
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Date;

    .line 194
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    .line 195
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 139
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Locale;)V

    .line 140
    return-void
.end method

.method public static greylist-max-o copticToJD(JII)I
    .registers 5
    .param p0, "year"    # J
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 316
    const v0, 0x1bd799

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/CopticCalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected greylist-max-o getJDEpochOffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    const v0, 0x1bd799

    return v0
.end method

.method public bridge synthetic whitelist test-api getTemporalMonthCode()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-super {p0}, Landroid/icu/util/CECalendar;->getTemporalMonthCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 219
    const-string v0, "coptic"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 9
    .param p1, "julianDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 268
    .local v0, "fields":[I
    invoke-virtual {p0}, Landroid/icu/util/CopticCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/icu/util/CopticCalendar;->jdToCE(II[I)V

    .line 274
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-gtz v2, :cond_16

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "era":I
    aget v4, v0, v1

    rsub-int/lit8 v4, v4, 0x1

    .local v4, "year":I
    goto :goto_19

    .line 278
    .end local v2    # "era":I
    .end local v4    # "year":I
    :cond_16
    const/4 v2, 0x1

    .line 279
    .restart local v2    # "era":I
    aget v4, v0, v1

    .line 282
    .restart local v4    # "year":I
    :goto_19
    const/16 v5, 0x13

    aget v6, v0, v1

    invoke-virtual {p0, v5, v6}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 283
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 284
    invoke-virtual {p0, v3, v4}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 285
    aget v1, v0, v3

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v1}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 286
    const/16 v1, 0x17

    aget v6, v0, v3

    invoke-virtual {p0, v1, v6}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 287
    const/4 v1, 0x5

    aget v6, v0, v5

    invoke-virtual {p0, v1, v6}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 288
    aget v1, v0, v3

    mul-int/lit8 v1, v1, 0x1e

    aget v3, v0, v5

    add-int/2addr v1, v3

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v1}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 289
    return-void
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CopticCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 244
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    .local v0, "eyear":I
    goto :goto_21

    .line 247
    .end local v0    # "eyear":I
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    .line 248
    .local v0, "era":I
    if-nez v0, :cond_1c

    .line 249
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .local v1, "eyear":I
    goto :goto_21

    .line 251
    .end local v1    # "eyear":I
    :cond_1c
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result v1

    move v0, v1

    .line 254
    .local v0, "eyear":I
    :goto_21
    return v0
.end method

.method protected blacklist isEra0CountingBackward()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api setTemporalMonthCode(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Landroid/icu/util/CECalendar;->setTemporalMonthCode(Ljava/lang/String;)V

    return-void
.end method
