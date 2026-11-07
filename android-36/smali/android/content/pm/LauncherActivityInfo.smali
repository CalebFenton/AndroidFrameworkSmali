.class public Landroid/content/pm/LauncherActivityInfo;
.super Ljava/lang/Object;
.source "LauncherActivityInfo.java"


# static fields
.field private static final blacklist INVISIBLE_CHARACTERS:Landroid/icu/text/UnicodeSet;

.field private static final blacklist PREFIX_CONSECUTIVE_INVISIBLE_CHARACTERS_MAXIMUM:I = 0x3


# instance fields
.field private final blacklist mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

.field private final greylist-max-o mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:White_Space:][:Default_Ignorable_Code_Point:][:gc=Cc:]]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/content/pm/LauncherActivityInfo;->INVISIBLE_CHARACTERS:Landroid/icu/text/UnicodeSet;

    .line 46
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfoInternal;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "internal"    # Landroid/content/pm/LauncherActivityInfoInternal;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    .line 61
    return-void
.end method

.method public static blacklist isVisible(Ljava/lang/CharSequence;)Z
    .registers 11
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 245
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 247
    return v1

    .line 250
    :cond_b
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 251
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 252
    .local v2, "invisibleCharCount":I
    const/4 v3, 0x0

    .line 253
    .local v3, "notSupportedCharCount":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 254
    .local v4, "codePoints":[I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v4

    .local v6, "length":I
    :goto_1c
    const/4 v7, 0x1

    if-ge v5, v6, :cond_46

    .line 255
    new-instance v8, Ljava/lang/String;

    aget v9, v4, v5

    filled-new-array {v9}, [I

    move-result-object v9

    invoke-direct {v8, v9, v1, v7}, Ljava/lang/String;-><init>([III)V

    .line 272
    .local v8, "ch":Ljava/lang/String;
    sget-object v9, Landroid/content/pm/LauncherActivityInfo;->INVISIBLE_CHARACTERS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v9, v8}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 273
    add-int/lit8 v2, v2, 0x1

    .line 276
    if-nez v3, :cond_43

    const/4 v7, 0x3

    if-lt v2, v7, :cond_43

    .line 278
    return v1

    .line 285
    :cond_3a
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_46

    .line 286
    add-int/lit8 v3, v3, 0x1

    .line 287
    nop

    .line 254
    .end local v8    # "ch":Ljava/lang/String;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 293
    .end local v5    # "i":I
    .end local v6    # "length":I
    :cond_46
    add-int v5, v2, v3

    array-length v6, v4

    if-ge v5, v6, :cond_4c

    move v1, v7

    :cond_4c
    return v1
.end method


# virtual methods
.method public whitelist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getApplicationFlags()I
    .registers 2

    .line 157
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    return v0
.end method

.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 175
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public whitelist getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "density"    # I

    .line 210
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfoInternal;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFirstInstallTime()J
    .registers 4

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide v0

    .line 188
    :catch_11
    move-exception v0

    .line 190
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "density"    # I

    .line 132
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 133
    .local v0, "iconRes":I
    const/4 v1, 0x0

    .line 135
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_20

    if-eqz v0, :cond_20

    .line 137
    :try_start_d
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 138
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 137
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, v0, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1d} :catch_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_1d} :catch_1f

    move-object v1, v3

    .line 141
    .end local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_20

    .line 140
    :catch_1f
    move-exception v2

    .line 144
    :cond_20
    :goto_20
    if-nez v1, :cond_2c

    .line 145
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    :cond_2c
    return-object v1
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 4

    .line 93
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->lightweightInvisibleLabelDetection()Z

    move-result v0

    if-nez v0, :cond_11

    .line 95
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 98
    :cond_11
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/content/pm/LauncherActivityInfo;->isVisible(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 101
    return-object v0

    .line 105
    :cond_2a
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/content/pm/LauncherActivityInfo;->isVisible(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 108
    return-object v0

    .line 112
    :cond_43
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLoadingProgress()F
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getIncrementalStatesInfo()Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 199
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist supportsMultiInstance()Z
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mInternal:Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->supportsMultiInstance()Z

    move-result v0

    return v0
.end method
