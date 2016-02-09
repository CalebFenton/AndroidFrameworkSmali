.class public final Landroid/icu/util/CopticCalendar;
.super Landroid/icu/util/CECalendar;
.source "CopticCalendar.java"


# static fields
.field public static final AMSHIR:I = 0x5

.field public static final BABA:I = 0x1

.field public static final BARAMHAT:I = 0x6

.field public static final BARAMOUDA:I = 0x7

.field public static final BASHANS:I = 0x8

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field public static final EPEP:I = 0xa

.field public static final HATOR:I = 0x2

.field private static final JD_EPOCH_OFFSET:I = 0x1bd799

.field public static final KIAHK:I = 0x3

.field public static final MESRA:I = 0xb

.field public static final NASIE:I = 0xc

.field public static final PAONA:I = 0x9

.field public static final TOBA:I = 0x4

.field public static final TOUT:I = 0x0

.field private static final serialVersionUID:J = 0x51ee93e0021d7b7fL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Landroid/icu/util/CECalendar;-><init>()V

    #@3
    .line 132
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    #@3
    .line 203
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
    .line 233
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    #@3
    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;)V

    #@3
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/ULocale;)V

    #@3
    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    #@3
    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Locale;)V

    #@3
    .line 154
    return-void
.end method

.method public static copticToJD(JII)I
    .locals 2
    .param p0, "year"    # J
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 321
    const v0, 0x1bd799

    #@3
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/CopticCalendar;->ceToJD(JIII)I

    #@6
    move-result v0

    #@7
    return v0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 304
    const v0, 0x1bd799

    #@3
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 241
    const-string/jumbo v0, "coptic"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8
    .param p1, "julianDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 274
    const/4 v3, 0x3

    #@4
    new-array v1, v3, [I

    #@6
    .line 275
    .local v1, "fields":[I
    invoke-virtual {p0}, Landroid/icu/util/CopticCalendar;->getJDEpochOffset()I

    #@9
    move-result v3

    #@a
    invoke-static {p1, v3, v1}, Landroid/icu/util/CopticCalendar;->jdToCE(II[I)V

    #@d
    .line 281
    aget v3, v1, v5

    #@f
    if-gtz v3, :cond_0

    #@11
    .line 282
    const/4 v0, 0x0

    #@12
    .line 283
    .local v0, "era":I
    aget v3, v1, v5

    #@14
    rsub-int/lit8 v2, v3, 0x1

    #@16
    .line 289
    .local v2, "year":I
    :goto_0
    aget v3, v1, v5

    #@18
    const/16 v4, 0x13

    #@1a
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    #@1d
    .line 290
    invoke-virtual {p0, v5, v0}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    #@20
    .line 291
    invoke-virtual {p0, v6, v2}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    #@23
    .line 292
    aget v3, v1, v6

    #@25
    invoke-virtual {p0, v7, v3}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    #@28
    .line 293
    aget v3, v1, v7

    #@2a
    const/4 v4, 0x5

    #@2b
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    #@2e
    .line 294
    aget v3, v1, v6

    #@30
    mul-int/lit8 v3, v3, 0x1e

    #@32
    aget v4, v1, v7

    #@34
    add-int/2addr v3, v4

    #@35
    const/4 v4, 0x6

    #@36
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    #@39
    .line 272
    return-void

    #@3a
    .line 285
    .end local v0    # "era":I
    .end local v2    # "year":I
    :cond_0
    const/4 v0, 0x1

    #@3b
    .line 286
    .restart local v0    # "era":I
    aget v2, v1, v5

    #@3d
    .restart local v2    # "year":I
    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x13

    #@3
    const/4 v3, 0x1

    #@4
    .line 252
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/CopticCalendar;->newerField(II)I

    #@7
    move-result v2

    #@8
    if-ne v2, v4, :cond_0

    #@a
    .line 253
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    #@d
    move-result v1

    #@e
    .line 263
    .local v1, "eyear":I
    :goto_0
    return v1

    #@f
    .line 256
    .end local v1    # "eyear":I
    :cond_0
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    #@12
    move-result v0

    #@13
    .line 257
    .local v0, "era":I
    if-nez v0, :cond_1

    #@15
    .line 258
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    #@18
    move-result v2

    #@19
    rsub-int/lit8 v1, v2, 0x1

    #@1b
    .restart local v1    # "eyear":I
    goto :goto_0

    #@1c
    .line 260
    .end local v1    # "eyear":I
    :cond_1
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    #@1f
    move-result v1

    #@20
    .restart local v1    # "eyear":I
    goto :goto_0
.end method
