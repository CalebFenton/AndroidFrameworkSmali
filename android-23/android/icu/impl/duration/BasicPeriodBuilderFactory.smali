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
.field private static final allBits:S = 0xffs


# instance fields
.field private ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method static synthetic -get0(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 1
    .param p1, "ds"    # Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@5
    .line 28
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@7
    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    #@a
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@c
    .line 26
    return-void
.end method

.method static approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .locals 2
    .param p0, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 32
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    #@2
    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@4
    aget-wide v0, v0, v1

    #@6
    return-wide v0
.end method

.method private getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 256
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 258
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@c
    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method


# virtual methods
.method public getFixedUnitBuilder(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMultiUnitBuilder(I)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1
    .param p1, "periodCount"    # I

    #@0
    .prologue
    .line 302
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getOneOrTwoUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    #@0
    .prologue
    .line 291
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    #@0
    .prologue
    .line 279
    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setAllowMilliseconds(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    .line 241
    return-object p0
.end method

.method public setAllowZero(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    .line 231
    return-object p0
.end method

.method public setAvailableUnitRange(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 5
    .param p1, "minUnit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "maxUnit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 196
    const/4 v1, 0x0

    #@1
    .line 197
    .local v1, "uset":I
    iget-byte v0, p2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@3
    .local v0, "i":I
    :goto_0
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@5
    if-gt v0, v2, :cond_0

    #@7
    .line 198
    const/4 v2, 0x1

    #@8
    shl-int/2addr v2, v0

    #@9
    or-int/2addr v1, v2

    #@a
    .line 197
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 200
    :cond_0
    if-nez v1, :cond_1

    #@f
    .line 201
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "range "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, " to "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, " is empty"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 203
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3d
    invoke-virtual {v2, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@40
    move-result-object v2

    #@41
    iput-object v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@43
    .line 204
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    .line 246
    return-object p0
.end method

.method public setMaxLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1
    .param p1, "maxLimit"    # F

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    .line 221
    return-object p0
.end method

.method public setMinLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1
    .param p1, "minLimit"    # F

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    .line 226
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 251
    return-object p0
.end method

.method public setUnitIsAvailable(Landroid/icu/impl/duration/TimeUnit;Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "available"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 209
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3
    iget-short v0, v1, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    #@5
    .line 210
    .local v0, "uset":I
    if-eqz p2, :cond_0

    #@7
    .line 211
    iget-byte v1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@9
    shl-int v1, v2, v1

    #@b
    or-int/2addr v0, v1

    #@c
    .line 215
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@e
    invoke-virtual {v1, v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@14
    .line 216
    return-object p0

    #@15
    .line 213
    :cond_0
    iget-byte v1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@17
    shl-int v1, v2, v1

    #@19
    not-int v1, v1

    #@1a
    and-int/2addr v0, v1

    #@1b
    goto :goto_0
.end method

.method public setWeeksAloneOnly(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1
    .param p1, "aloneOnly"    # Z

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    .line 236
    return-object p0
.end method
