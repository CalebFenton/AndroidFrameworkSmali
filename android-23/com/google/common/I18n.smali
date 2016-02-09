.class public Landroid_maps_conflict_avoidance/com/google/common/I18n;
.super Ljava/lang/Object;
.source "I18n.java"


# static fields
.field private static STRING_RESOURCE:Ljava/lang/String;

.field private static instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;


# instance fields
.field private embeddedLocalizedStrings:[Ljava/lang/String;

.field private remoteLocalizedStrings:[Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;

.field private systemLocale:Ljava/lang/String;

.field private uiLanguage:Ljava/lang/String;

.field private uiLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-string/jumbo v0, "/strings.dat"

    #@3
    .line 28
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    #@5
    const/4 v0, 0x0

    #@6
    .line 34
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@8
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadLocale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 235
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->embeddedLocalizedStrings:[Ljava/lang/String;

    #@6
    .line 238
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    #@8
    .line 244
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    #@f
    .line 245
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->locale()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    #@16
    .line 246
    return-void
.end method

.method private static calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "downloadLocale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    const-string/jumbo v1, "microedition.locale"

    #@7
    .line 214
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .local v0, "locale":Ljava/lang/String;
    const-string/jumbo v1, "en"

    #@12
    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 221
    :cond_0
    move-object v0, p0

    #@19
    .line 223
    :cond_1
    :goto_0
    return-object v0

    #@1a
    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x2

    #@1f
    if-ne v1, v2, :cond_1

    #@21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_0

    #@27
    goto :goto_0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0x5f

    #@3
    .line 345
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 346
    .local v0, "split":I
    if-ltz v0, :cond_1

    #@9
    .line 349
    :goto_0
    if-ltz v0, :cond_0

    #@b
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    .end local p0    # "locale":Ljava/lang/String;
    :cond_0
    return-object p0

    #@10
    .restart local p0    # "locale":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2d

    #@12
    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method

.method public static init(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/I18n;
    .locals 1
    .param p0, "downloadLocale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@2
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;-><init>(Ljava/lang/String;)V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@7
    .line 62
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@9
    return-object v0
.end method

.method public static locale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    const-string/jumbo v0, "en"

    #@3
    .line 47
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->getAntPropertyOrNull(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static normalizeLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "rawLocale"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x5f

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x0

    #@5
    const-string/jumbo v0, "en"

    #@8
    .line 157
    .local v0, "locale":Ljava/lang/String;
    if-nez p0, :cond_1

    #@a
    .line 170
    :cond_0
    :goto_0
    return-object v0

    #@b
    .line 159
    :cond_1
    const/16 v2, 0x2d

    #@d
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 161
    .local v1, "localeParts":[Ljava/lang/String;
    aget-object v2, v1, v4

    #@17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1a
    move-result v2

    #@1b
    if-ne v2, v5, :cond_3

    #@1d
    .line 163
    :cond_2
    aget-object v2, v1, v4

    #@1f
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 164
    array-length v2, v1

    #@24
    if-lt v2, v5, :cond_0

    #@26
    aget-object v2, v1, v6

    #@28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v2

    #@2c
    if-ne v2, v5, :cond_0

    #@2e
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    const-string/jumbo v3, "_"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    aget-object v3, v1, v6

    #@40
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    goto :goto_0

    #@4d
    .line 161
    :cond_3
    aget-object v2, v1, v4

    #@4f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@52
    move-result v2

    #@53
    const/4 v3, 0x3

    #@54
    if-eq v2, v3, :cond_2

    #@56
    goto :goto_0
.end method


# virtual methods
.method public getUiLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setSystemLocale(Ljava/lang/String;)V
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 318
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    #@7
    .line 319
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    #@9
    const/16 v2, 0x5f

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v0

    #@f
    .line 320
    .local v0, "split":I
    if-ltz v0, :cond_0

    #@11
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    :goto_0
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLanguage:Ljava/lang/String;

    #@19
    .line 321
    return-void

    #@1a
    .line 320
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    #@1c
    goto :goto_0
.end method

.method public setUiLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 333
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    #@4
    :goto_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLocale:Ljava/lang/String;

    #@6
    .line 338
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLocale:Ljava/lang/String;

    #@8
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLanguage:Ljava/lang/String;

    #@e
    .line 339
    return-void

    #@f
    .line 333
    :cond_0
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method
