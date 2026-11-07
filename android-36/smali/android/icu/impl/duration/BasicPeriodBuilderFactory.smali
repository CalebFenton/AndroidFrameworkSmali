.class Landroid/icu/impl/duration/BasicPeriodBuilderFactory;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    }
.end annotation


# static fields
.field private static final blacklist allBits:S = 0xffs


# instance fields
.field private blacklist ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private blacklist settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetds(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .registers 3
    .param p1, "ds"    # Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 31
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 32
    return-void
.end method

.method static blacklist approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .registers 3
    .param p0, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 35
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private blacklist getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    if-nez v0, :cond_a

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getFixedUnitBuilder(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 282
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMultiUnitBuilder(I)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3
    .param p1, "periodCount"    # I

    .line 318
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOneOrTwoUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .registers 2

    .line 306
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .registers 2

    .line 293
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAllowMilliseconds(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3
    .param p1, "allow"    # Z

    .line 250
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 251
    return-object p0
.end method

.method public blacklist setAllowZero(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3
    .param p1, "allow"    # Z

    .line 238
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 239
    return-object p0
.end method

.method public blacklist setAvailableUnitRange(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 7
    .param p1, "minUnit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "maxUnit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "uset":I
    iget-byte v1, p2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .local v1, "i":I
    :goto_3
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    if-gt v1, v2, :cond_d

    .line 202
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 204
    .end local v1    # "i":I
    :cond_d
    if-eqz v0, :cond_18

    .line 207
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 208
    return-object p0

    .line 205
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3
    .param p1, "localeName"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 257
    return-object p0
.end method

.method public blacklist setMaxLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3
    .param p1, "maxLimit"    # F

    .line 226
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 227
    return-object p0
.end method

.method public blacklist setMinLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3
    .param p1, "minLimit"    # F

    .line 232
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 233
    return-object p0
.end method

.method public blacklist setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 263
    return-object p0
.end method

.method public blacklist setUnitIsAvailable(Landroid/icu/impl/duration/TimeUnit;Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 6
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "available"    # Z

    .line 214
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-short v0, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    .line 215
    .local v0, "uset":I
    const/4 v1, 0x1

    if-eqz p2, :cond_c

    .line 216
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_11

    .line 218
    :cond_c
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    .line 220
    :goto_11
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 221
    return-object p0
.end method

.method public blacklist setWeeksAloneOnly(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3
    .param p1, "aloneOnly"    # Z

    .line 244
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 245
    return-object p0
.end method
