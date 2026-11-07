.class public final Landroid/accessibilityservice/AccessibilityShortcutInfo;
.super Ljava/lang/Object;
.source "AccessibilityShortcutInfo.java"


# static fields
.field public static final blacklist META_DATA:Ljava/lang/String; = "android.accessibilityshortcut.target"

.field private static final blacklist TAG_ACCESSIBILITY_SHORTCUT:Ljava/lang/String; = "accessibility-shortcut-target"


# instance fields
.field private final blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mAnimatedImageRes:I

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDescriptionResId:I

.field private final blacklist mHtmlDescriptionRes:I

.field private final blacklist mIntroResId:I

.field private blacklist mSettingsActivityName:Ljava/lang/String;

.field private final blacklist mSummaryResId:I

.field private blacklist mTileServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 121
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    .line 122
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 124
    :try_start_f
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "android.accessibilityshortcut.target"

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_17} :catch_99

    .line 126
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_85

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "type":I
    :goto_1a
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_26

    if-eq v2, v3, :cond_26

    .line 133
    :try_start_20
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v2, v3

    goto :goto_1a

    .line 136
    :cond_26
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "nodeName":Ljava/lang/String;
    const-string v6, "accessibility-shortcut-target"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 142
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 143
    .local v6, "allAttributes":Landroid/util/AttributeSet;
    iget-object v7, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 145
    .local v7, "resources":Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->AccessibilityShortcutTarget:[I

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 149
    .local v8, "asAttributes":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mDescriptionResId:I

    .line 152
    invoke-virtual {v8, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSummaryResId:I

    .line 155
    const/4 v4, 0x3

    invoke-virtual {v8, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    .line 159
    const/4 v4, 0x4

    invoke-virtual {v8, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mHtmlDescriptionRes:I

    .line 163
    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 166
    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mTileServiceName:Ljava/lang/String;

    .line 169
    const/4 v3, 0x6

    invoke-virtual {v8, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mIntroResId:I

    .line 171
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_76
    .catchall {:try_start_20 .. :try_end_76} :catchall_8d

    .line 172
    .end local v2    # "type":I
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "allAttributes":Landroid/util/AttributeSet;
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "asAttributes":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_7b} :catch_99

    .line 175
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_7b
    nop

    .line 176
    return-void

    .line 138
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "type":I
    .restart local v5    # "nodeName":Ljava/lang/String;
    :cond_7d
    :try_start_7d
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Meta-data does not start withaccessibility-shortcut-target tag"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v3

    .line 127
    .end local v2    # "type":I
    .end local v5    # "nodeName":Ljava/lang/String;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_85
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Meta-data accessibility-shortcut-target does not exist"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v2
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_8d

    .line 124
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_8d
    move-exception v2

    if-eqz v1, :cond_98

    :try_start_90
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v3

    :try_start_95
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_98
    :goto_98
    throw v2
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_99} :catch_99

    .line 172
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_99
    move-exception v1

    .line 173
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create context for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .registers 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resId"    # I

    .line 302
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 303
    return-object v0

    .line 305
    :cond_4
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, p3, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 307
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_17

    .line 308
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_17
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 326
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 327
    return v0

    .line 329
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 330
    return v1

    .line 332
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 333
    return v1

    .line 335
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 336
    .local v2, "other":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1f

    .line 337
    iget-object v3, v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2a

    .line 338
    return v1

    .line 340
    :cond_1f
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 341
    return v1

    .line 343
    :cond_2a
    return v0
.end method

.method public blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public blacklist getAnimatedImageRes()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    return v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getSettingsActivityName()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTileServiceName()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mTileServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    :goto_c
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public blacklist loadAnimatedImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 250
    iget v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    if-nez v0, :cond_6

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    invoke-static {p1, v0, v1}, Landroid/accessibilityservice/util/AccessibilityUtils;->loadSafeAnimatedImage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 226
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mDescriptionResId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 267
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mHtmlDescriptionRes:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "htmlDescription":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 270
    invoke-static {v0}, Landroid/accessibilityservice/util/AccessibilityUtils;->getFilteredHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 272
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 216
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mIntroResId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 206
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSummaryResId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "AccessibilityShortcutInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "activityInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
