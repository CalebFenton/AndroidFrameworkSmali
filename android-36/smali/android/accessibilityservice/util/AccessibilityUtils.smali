.class public final Landroid/accessibilityservice/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field private static final blacklist ANCHOR_TAG:Ljava/lang/String; = "a"

.field private static final blacklist IMG_PREFIX:Ljava/lang/String; = "R.drawable."

.field private static final blacklist UNSUPPORTED_TAG_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    const-string v1, "a"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/accessibilityservice/util/AccessibilityUtils;->UNSUPPORTED_TAG_LIST:Ljava/util/List;

    .line 46
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFilteredHtmlText(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;

    .line 59
    const-string v0, "<invalidtag "

    .line 60
    .local v0, "replacementStart":Ljava/lang/String;
    const-string v1, "</invalidtag>"

    .line 62
    .local v1, "replacementEnd":Ljava/lang/String;
    sget-object v2, Landroid/accessibilityservice/util/AccessibilityUtils;->UNSUPPORTED_TAG_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "<invalidtag "

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    .local v3, "tag":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(?i)<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(\\s+|>)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "regexStart":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(?i)</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\\s*>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "regexEnd":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v7, "</invalidtag>"

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "regexStart":Ljava/lang/String;
    .end local v6    # "regexEnd":Ljava/lang/String;
    goto :goto_a

    .line 69
    :cond_65
    const-string v2, "(?i)<img\\s+(?!src\\s*=\\s*\"(?-i)R.drawable.)"

    .line 70
    .local v2, "regexInvalidImgTag":Ljava/lang/String;
    const-string v3, "(?i)<img\\s+(?!src\\s*=\\s*\"(?-i)R.drawable.)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static blacklist getScreenHeightPixels(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 136
    .local v1, "screenHeightDp":I
    int-to-float v2, v1

    .line 137
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 136
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private static blacklist getScreenWidthPixels(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 122
    .local v1, "screenWidthDp":I
    int-to-float v2, v1

    .line 123
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 122
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static blacklist loadSafeAnimatedImage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "resId"    # I

    .line 90
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 91
    return-object v0

    .line 94
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 96
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2, p2, p1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    .local v3, "bannerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_11

    .line 99
    return-object v0

    .line 102
    :cond_11
    nop

    .line 103
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p0}, Landroid/accessibilityservice/util/AccessibilityUtils;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v4, v5, :cond_20

    move v4, v6

    goto :goto_21

    :cond_20
    move v4, v7

    .line 104
    .local v4, "isImageWidthOverScreenLength":Z
    :goto_21
    nop

    .line 105
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {p0}, Landroid/accessibilityservice/util/AccessibilityUtils;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v8

    if-le v5, v8, :cond_2d

    goto :goto_2e

    :cond_2d
    move v6, v7

    .line 107
    .local v6, "isImageHeightOverScreenLength":Z
    :goto_2e
    if-nez v4, :cond_35

    if-eqz v6, :cond_33

    goto :goto_35

    .line 109
    :cond_33
    move-object v0, v3

    goto :goto_36

    .line 108
    :cond_35
    :goto_35
    nop

    .line 107
    :goto_36
    return-object v0
.end method
