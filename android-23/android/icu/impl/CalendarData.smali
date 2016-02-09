.class public Landroid/icu/impl/CalendarData;
.super Ljava/lang/Object;
.source "CalendarData.java"


# instance fields
.field private fBundle:Landroid/icu/impl/ICUResourceBundle;

.field private fFallbackType:Ljava/lang/String;

.field private fMainType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 32
    iput-object p1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@6
    .line 33
    if-eqz p2, :cond_0

    #@8
    const-string/jumbo v0, ""

    #@b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    const-string/jumbo v0, "gregorian"

    #@14
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 34
    :cond_0
    const-string/jumbo v0, "gregorian"

    #@1d
    iput-object v0, p0, Landroid/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    #@1f
    .line 35
    iput-object v1, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@21
    .line 31
    :goto_0
    return-void

    #@22
    .line 37
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    #@24
    .line 38
    const-string/jumbo v0, "gregorian"

    #@27
    iput-object v0, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@29
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    invoke-direct {p0, v0, p2}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@c
    .line 27
    return-void
.end method

.method private _getDateTimePattern(I)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    .line 187
    const/4 v1, 0x0

    #@3
    .line 189
    .local v1, "patterns":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 193
    .end local v1    # "patterns":[Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    #@9
    array-length v2, v1

    #@a
    if-ge v2, v3, :cond_1

    #@c
    .line 196
    :cond_0
    const-string/jumbo v2, "{1} {0}"

    #@f
    return-object v2

    #@10
    .line 190
    .restart local v1    # "patterns":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@11
    .local v0, "ignored":Ljava/util/MissingResourceException;
    goto :goto_0

    #@12
    .line 198
    .end local v0    # "ignored":Ljava/util/MissingResourceException;
    .end local v1    # "patterns":[Ljava/lang/String;
    :cond_1
    array-length v2, v1

    #@13
    const/16 v3, 0xd

    #@15
    if-ge v2, v3, :cond_2

    #@17
    .line 200
    const/16 v2, 0x8

    #@19
    aget-object v2, v1, v2

    #@1b
    return-object v2

    #@1c
    .line 203
    :cond_2
    add-int/lit8 v2, p1, 0x9

    #@1e
    aget-object v2, v1, v2

    #@20
    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "calendar/"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 51
    :catch_0
    move-exception v0

    #@29
    .line 52
    .local v0, "m":Ljava/util/MissingResourceException;
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 53
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "calendar/"

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, "/"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@53
    move-result-object v1

    #@54
    return-object v1

    #@55
    .line 55
    :cond_0
    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "calendar/"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "/format/"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 73
    :catch_0
    move-exception v0

    #@34
    .line 74
    .local v0, "m":Ljava/util/MissingResourceException;
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 75
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "calendar/"

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, "/"

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    const-string/jumbo v3, "/format/"

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@69
    move-result-object v1

    #@6a
    return-object v1

    #@6b
    .line 77
    :cond_0
    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contextKey"    # Ljava/lang/String;
    .param p3, "subKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "calendar/"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "/"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "/"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 95
    :catch_0
    move-exception v0

    #@3f
    .line 96
    .local v0, "m":Ljava/util/MissingResourceException;
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@41
    if-eqz v1, :cond_0

    #@43
    .line 97
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "calendar/"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    const-string/jumbo v3, "/"

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    const-string/jumbo v3, "/"

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    const-string/jumbo v3, "/"

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@7f
    move-result-object v1

    #@80
    return-object v1

    #@81
    .line 99
    :cond_0
    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "set"    # Ljava/lang/String;
    .param p3, "contextKey"    # Ljava/lang/String;
    .param p4, "subKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "calendar/"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fMainType:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "/"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "/"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "/"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "/"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    move-result-object v1

    #@48
    return-object v1

    #@49
    .line 118
    :catch_0
    move-exception v0

    #@4a
    .line 119
    .local v0, "m":Ljava/util/MissingResourceException;
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@4c
    if-eqz v1, :cond_0

    #@4e
    .line 120
    iget-object v1, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@50
    new-instance v2, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v3, "calendar/"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    iget-object v3, p0, Landroid/icu/impl/CalendarData;->fFallbackType:Ljava/lang/String;

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    const-string/jumbo v3, "/"

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    const-string/jumbo v3, "/"

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    const-string/jumbo v3, "/"

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    const-string/jumbo v3, "/"

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@95
    move-result-object v1

    #@96
    return-object v1

    #@97
    .line 122
    :cond_0
    throw v0
.end method

.method public getDateTimePattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/CalendarData;->_getDateTimePattern(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDateTimePattern(I)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 183
    and-int/lit8 v0, p1, 0x7

    #@2
    invoke-direct {p0, v0}, Landroid/icu/impl/CalendarData;->_getDateTimePattern(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDateTimePatterns()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 143
    const-string/jumbo v6, "DateTimePatterns"

    #@3
    invoke-virtual {p0, v6}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 144
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 145
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@f
    move-result-object v2

    #@10
    .line 146
    .local v2, "iter":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_0

    #@16
    .line 147
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@19
    move-result-object v4

    #@1a
    .line 148
    .local v4, "patResource":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getType()I

    #@1d
    move-result v5

    #@1e
    .line 149
    .local v5, "resourceType":I
    sparse-switch v5, :sswitch_data_0

    #@21
    goto :goto_0

    #@22
    .line 151
    :sswitch_0
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 154
    :sswitch_1
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 155
    .local v1, "items":[Ljava/lang/String;
    const/4 v6, 0x0

    #@2f
    aget-object v6, v1, v6

    #@31
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_0

    #@35
    .line 160
    .end local v1    # "items":[Ljava/lang/String;
    .end local v4    # "patResource":Landroid/icu/util/UResourceBundle;
    .end local v5    # "resourceType":I
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v6

    #@39
    new-array v6, v6, [Ljava/lang/String;

    #@3b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, [Ljava/lang/String;

    #@41
    return-object v6

    #@42
    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getEras(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "subkey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "eras/"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v1}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@17
    move-result-object v0

    #@18
    .line 140
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public getOverrides()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 207
    const-string/jumbo v6, "DateTimePatterns"

    #@3
    invoke-virtual {p0, v6}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 208
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 209
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@f
    move-result-object v2

    #@10
    .line 210
    .local v2, "iter":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_0

    #@16
    .line 211
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@19
    move-result-object v4

    #@1a
    .line 212
    .local v4, "patResource":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getType()I

    #@1d
    move-result v5

    #@1e
    .line 213
    .local v5, "resourceType":I
    sparse-switch v5, :sswitch_data_0

    #@21
    goto :goto_0

    #@22
    .line 215
    :sswitch_0
    const/4 v6, 0x0

    #@23
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 218
    :sswitch_1
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 219
    .local v1, "items":[Ljava/lang/String;
    const/4 v6, 0x1

    #@2c
    aget-object v6, v1, v6

    #@2e
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 223
    .end local v1    # "items":[Ljava/lang/String;
    .end local v4    # "patResource":Landroid/icu/util/UResourceBundle;
    .end local v5    # "resourceType":I
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v6

    #@36
    new-array v6, v6, [Ljava/lang/String;

    #@38
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    check-cast v6, [Ljava/lang/String;

    #@3e
    return-object v6

    #@3f
    .line 213
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contextKey"    # Ljava/lang/String;
    .param p3, "subKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/icu/impl/CalendarData;->fBundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
