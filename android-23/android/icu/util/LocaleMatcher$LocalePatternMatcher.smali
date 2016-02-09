.class Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalePatternMatcher"
.end annotation


# static fields
.field static pattern:Ljava/util/regex/Pattern;


# instance fields
.field private lang:Ljava/lang/String;

.field private level:Landroid/icu/util/LocaleMatcher$Level;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 321
    const-string/jumbo v0, "([a-z]{1,8}|\\*)(?:[_-]([A-Z][a-z]{3}|\\*))?(?:[_-]([A-Z]{2}|[0-9]{3}|\\*))?"

    #@3
    .line 320
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->pattern:Ljava/util/regex/Pattern;

    #@9
    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "toMatch"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 326
    sget-object v1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->pattern:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v0

    #@a
    .line 327
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Bad pattern: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 330
    :cond_0
    const/4 v1, 0x1

    #@2b
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@31
    .line 331
    const/4 v1, 0x2

    #@32
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@38
    .line 332
    const/4 v1, 0x3

    #@39
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@3f
    .line 333
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_4

    #@43
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    #@45
    :goto_0
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@47
    .line 335
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@49
    const-string/jumbo v2, "*"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_1

    #@52
    .line 336
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@54
    .line 338
    :cond_1
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@56
    if-eqz v1, :cond_2

    #@58
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@5a
    const-string/jumbo v2, "*"

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_2

    #@63
    .line 339
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@65
    .line 341
    :cond_2
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@67
    if-eqz v1, :cond_3

    #@69
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@6b
    const-string/jumbo v2, "*"

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_3

    #@74
    .line 342
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@76
    .line 325
    :cond_3
    return-void

    #@77
    .line 333
    :cond_4
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@79
    if-eqz v1, :cond_5

    #@7b
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@7d
    goto :goto_0

    #@7e
    :cond_5
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@80
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 391
    check-cast v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@3
    .line 392
    .local v0, "other":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@5
    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@7
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 393
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@f
    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@11
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 392
    if-eqz v1, :cond_0

    #@17
    .line 394
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@19
    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@1b
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 392
    if-eqz v1, :cond_0

    #@21
    .line 395
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@23
    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@25
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 392
    :goto_0
    return v1

    #@2a
    :cond_0
    const/4 v1, 0x0

    #@2b
    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "*"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getLevel()Landroid/icu/util/LocaleMatcher$Level;
    .locals 1

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@2
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "*"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "*"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 403
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@3
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    #@6
    move-result v2

    #@7
    .line 404
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@9
    if-nez v0, :cond_0

    #@b
    move v0, v1

    #@c
    .line 403
    :goto_0
    xor-int/2addr v2, v0

    #@d
    .line 405
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@f
    if-nez v0, :cond_1

    #@11
    move v0, v1

    #@12
    .line 403
    :goto_1
    xor-int/2addr v0, v2

    #@13
    .line 406
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@15
    if-nez v2, :cond_2

    #@17
    .line 403
    :goto_2
    xor-int/2addr v0, v1

    #@18
    return v0

    #@19
    .line 404
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@1b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@1e
    move-result v0

    #@1f
    goto :goto_0

    #@20
    .line 405
    :cond_1
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@25
    move-result v0

    #@26
    goto :goto_1

    #@27
    .line 406
    :cond_2
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2c
    move-result v1

    #@2d
    goto :goto_2
.end method

.method matches(Landroid/icu/util/ULocale;)Z
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 347
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    #@7
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_3

    #@11
    .line 350
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    #@17
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 353
    :cond_1
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@23
    if-eqz v0, :cond_2

    #@25
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    #@27
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 356
    :cond_2
    const/4 v0, 0x1

    #@32
    return v0

    #@33
    .line 348
    :cond_3
    return v2

    #@34
    .line 351
    :cond_4
    return v2

    #@35
    .line 354
    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 377
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@6
    sget-object v2, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "-"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 379
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@28
    sget-object v2, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@2a
    if-eq v1, v2, :cond_0

    #@2c
    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "-"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 383
    :cond_0
    return-object v0
.end method
