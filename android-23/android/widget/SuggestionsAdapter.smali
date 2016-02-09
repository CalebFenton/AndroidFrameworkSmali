.class Landroid/widget/SuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroid/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchView"    # Landroid/widget/SearchView;
    .param p3, "searchable"    # Landroid/app/SearchableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    .line 101
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionRowLayout()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, p1, v1, v2, v4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    #@a
    .line 74
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    #@d
    .line 75
    iput v4, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@f
    .line 83
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    #@11
    .line 84
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    #@13
    .line 85
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    #@15
    .line 86
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    #@17
    .line 87
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    #@19
    .line 88
    iput v3, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    #@1b
    .line 104
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@1d
    const-string/jumbo v2, "search"

    #@20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/app/SearchManager;

    #@26
    iput-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    #@28
    .line 105
    iput-object p2, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    #@2a
    .line 106
    iput-object p3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@2c
    .line 107
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionCommitIconResId()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mCommitIconResId:I

    #@32
    .line 110
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@34
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@36
    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    #@39
    move-result-object v0

    #@3a
    .line 111
    .local v0, "activityContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@3c
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@3e
    invoke-virtual {v1, v2, v0}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@44
    .line 113
    iput-object p4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@46
    .line 128
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    #@49
    move-result-object v1

    #@4a
    new-instance v2, Landroid/widget/SuggestionsAdapter$1;

    #@4c
    invoke-direct {v2, p0}, Landroid/widget/SuggestionsAdapter$1;-><init>(Landroid/widget/SuggestionsAdapter;)V

    #@4f
    invoke-virtual {v1, v2}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    #@52
    .line 100
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resourceUri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 625
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@9
    .line 626
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    #@b
    .line 627
    return-object v2

    #@c
    .line 630
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 377
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 379
    new-instance v6, Landroid/util/TypedValue;

    #@8
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    #@b
    .line 380
    .local v6, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@e
    move-result-object v0

    #@f
    const v3, 0x1160003

    #@12
    const/4 v4, 0x1

    #@13
    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@16
    .line 381
    iget v0, v6, Landroid/util/TypedValue;->resourceId:I

    #@18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    #@1e
    .line 384
    .end local v6    # "colorValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    #@20
    invoke-direct {v7, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@23
    .line 385
    .local v7, "text":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@25
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    #@27
    move v3, v2

    #@28
    move-object v5, v1

    #@29
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@2c
    .line 386
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@2f
    move-result v1

    #@30
    .line 387
    const/16 v3, 0x21

    #@32
    .line 385
    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    #@35
    .line 388
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 689
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v5

    #@7
    .line 692
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    #@9
    :try_start_0
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v0

    #@d
    .line 697
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    #@10
    move-result v3

    #@11
    .line 698
    .local v3, "iconId":I
    if-nez v3, :cond_0

    #@13
    return-object v9

    #@14
    .line 693
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "iconId":I
    :catch_0
    move-exception v2

    #@15
    .line 694
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "SuggestionsAdapter"

    #@18
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 695
    return-object v9

    #@20
    .line 699
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "iconId":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 700
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@26
    invoke-virtual {v5, v4, v3, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v1

    #@2a
    .line 701
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    #@2c
    .line 702
    const-string/jumbo v6, "SuggestionsAdapter"

    #@2f
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "Invalid icon resource "

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    const-string/jumbo v8, " for "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    .line 703
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    .line 702
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 704
    return-object v9

    #@56
    .line 706
    :cond_1
    return-object v1
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 667
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 669
    .local v1, "componentIconKey":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@7
    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 670
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@f
    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@15
    .line 671
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    #@17
    :goto_0
    return-object v4

    #@18
    :cond_0
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v4

    #@22
    goto :goto_0

    #@23
    .line 674
    .end local v0    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v2

    #@27
    .line 676
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    #@29
    const/4 v3, 0x0

    #@2a
    .line 677
    :goto_1
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@2c
    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 678
    return-object v2

    #@30
    .line 676
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@33
    move-result-object v3

    #@34
    .local v3, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 718
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 719
    .local v0, "col":I
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 648
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 649
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@c
    .line 650
    return-object v0

    #@d
    .line 654
    :cond_0
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 592
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 593
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "android.resource"

    #@8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 596
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@10
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    move-result-object v3

    #@18
    .line 598
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v6, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@1a
    iget v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@1c
    iget-object v8, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    move-result-object v6

    #@26
    return-object v6

    #@27
    .line 599
    :catch_0
    move-exception v0

    #@28
    .line 600
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v6, Ljava/io/FileNotFoundException;

    #@2a
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v8, "Resource does not exist: "

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@42
    .line 618
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v4    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@43
    .line 619
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "SuggestionsAdapter"

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "Icon not found: "

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    const-string/jumbo v8, ", "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 620
    return-object v10

    #@6d
    .line 604
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@6f
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@76
    move-result-object v5

    #@77
    .line 605
    .local v5, "stream":Ljava/io/InputStream;
    if-nez v5, :cond_1

    #@79
    .line 606
    new-instance v6, Ljava/io/FileNotFoundException;

    #@7b
    new-instance v7, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v8, "Failed to open "

    #@83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@92
    throw v6
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    #@93
    .line 609
    :cond_1
    const/4 v6, 0x0

    #@94
    :try_start_4
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@97
    move-result-object v6

    #@98
    .line 612
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    #@9b
    .line 609
    :goto_0
    return-object v6

    #@9c
    .line 613
    :catch_2
    move-exception v1

    #@9d
    .line 614
    .local v1, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v7, "SuggestionsAdapter"

    #@a0
    new-instance v8, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v9, "Error closing icon stream for "

    #@a8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    #@b7
    goto :goto_0

    #@b8
    .line 610
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@b9
    .line 612
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    #@bc
    .line 610
    :goto_1
    :try_start_8
    throw v6

    #@bd
    .line 613
    :catch_3
    move-exception v1

    #@be
    .line 614
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string/jumbo v7, "SuggestionsAdapter"

    #@c1
    new-instance v8, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v9, "Error closing icon stream for "

    #@c9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v8

    #@cd
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v8

    #@d1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v8

    #@d5
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    #@d8
    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "drawableId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 549
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_1

    #@9
    .line 550
    :cond_0
    return-object v9

    #@a
    .line 549
    :cond_1
    const-string/jumbo v6, "0"

    #@d
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v6

    #@11
    if-nez v6, :cond_0

    #@13
    .line 554
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v4

    #@17
    .line 556
    .local v4, "resourceId":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "android.resource://"

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    .line 557
    iget-object v7, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@25
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    .line 556
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 557
    const-string/jumbo v7, "/"

    #@30
    .line 556
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 559
    .local v1, "drawableUri":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v0

    #@40
    .line 560
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    #@42
    .line 561
    return-object v0

    #@43
    .line 564
    :cond_2
    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    #@45
    invoke-virtual {v6, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@48
    move-result-object v0

    #@49
    .line 566
    invoke-direct {p0, v1, v0}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 567
    return-object v0

    #@4d
    .line 578
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawableUri":Ljava/lang/String;
    .end local v4    # "resourceId":I
    :catch_0
    move-exception v2

    #@4e
    .line 580
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "SuggestionsAdapter"

    #@51
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "Icon resource not found: "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 581
    return-object v9

    #@69
    .line 568
    .end local v2    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    #@6a
    .line 570
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@6d
    move-result-object v0

    #@6e
    .line 571
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@70
    .line 572
    return-object v0

    #@71
    .line 574
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@74
    move-result-object v5

    #@75
    .line 575
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct {p0, v5}, Landroid/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@78
    move-result-object v0

    #@79
    .line 576
    invoke-direct {p0, p1, v0}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    #@7c
    .line 577
    return-object v0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 403
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    #@3
    const/4 v3, -0x1

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 404
    return-object v4

    #@7
    .line 406
    :cond_0
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    #@9
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 407
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    .line 408
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@13
    .line 409
    return-object v0

    #@14
    .line 411
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v2

    #@18
    return-object v2
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 415
    iget v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 416
    const/4 v1, 0x0

    #@6
    return-object v1

    #@7
    .line 418
    :cond_0
    iget v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    #@9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 419
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 723
    const/4 v1, -0x1

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 724
    return-object v3

    #@5
    .line 727
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 728
    :catch_0
    move-exception v0

    #@b
    .line 729
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SuggestionsAdapter"

    #@e
    .line 730
    const-string/jumbo v2, "unexpected error retrieving valid column from cursor, did the remote process die?"

    #@11
    .line 729
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 732
    return-object v3
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "nullVisibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 429
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4
    .line 431
    if-nez p2, :cond_0

    #@6
    .line 432
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@9
    .line 426
    :goto_0
    return-void

    #@a
    .line 434
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@d
    .line 441
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    .line 442
    const/4 v0, 0x1

    #@11
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@14
    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3
    .line 395
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 396
    const/16 v0, 0x8

    #@b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@e
    .line 391
    :goto_0
    return-void

    #@f
    .line 398
    :cond_0
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@13
    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 634
    if-eqz p2, :cond_0

    #@2
    .line 635
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    #@4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 633
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 234
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    .line 242
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 243
    const-string/jumbo v1, "in_progress"

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    .line 242
    if-eqz v1, :cond_1

    #@11
    .line 245
    return-void

    #@12
    .line 234
    :cond_0
    const/4 v0, 0x0

    #@13
    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0

    #@14
    .line 233
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    #@b
    .line 319
    .local v3, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    const/4 v0, 0x0

    #@c
    .line 320
    .local v0, "flags":I
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    #@e
    const/4 v5, -0x1

    #@f
    if-eq v4, v5, :cond_0

    #@11
    .line 321
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    #@13
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    #@16
    move-result v0

    #@17
    .line 323
    :cond_0
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 324
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    #@1d
    invoke-static {p3, v4}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 325
    .local v1, "text1":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@23
    invoke-direct {p0, v4, v1}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@26
    .line 327
    .end local v1    # "text1":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 329
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    #@2c
    invoke-static {p3, v4}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 330
    .local v2, "text2":Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    #@32
    .line 331
    invoke-direct {p0, p2, v2}, Landroid/widget/SuggestionsAdapter;->formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@35
    move-result-object v2

    #@36
    .line 338
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_8

    #@3c
    .line 339
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@3e
    if-eqz v4, :cond_2

    #@40
    .line 340
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@42
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@45
    .line 341
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@47
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    #@4a
    .line 349
    :cond_2
    :goto_1
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    #@4c
    invoke-direct {p0, v4, v2}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@4f
    .line 352
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    #@51
    if-eqz v4, :cond_4

    #@53
    .line 353
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    #@55
    invoke-direct {p0, p3}, Landroid/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    #@58
    move-result-object v5

    #@59
    const/4 v6, 0x4

    #@5a
    invoke-direct {p0, v4, v5, v6}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    #@5d
    .line 355
    :cond_4
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    #@5f
    if-eqz v4, :cond_5

    #@61
    .line 356
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    #@63
    invoke-direct {p0, p3}, Landroid/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    #@66
    move-result-object v5

    #@67
    invoke-direct {p0, v4, v5, v10}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    #@6a
    .line 358
    :cond_5
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@6c
    if-eq v4, v9, :cond_6

    #@6e
    .line 359
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@70
    if-ne v4, v8, :cond_9

    #@72
    .line 360
    and-int/lit8 v4, v0, 0x1

    #@74
    if-eqz v4, :cond_9

    #@76
    .line 361
    :cond_6
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@78
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    #@7b
    .line 362
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@7d
    iget-object v5, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@7f
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    #@86
    .line 363
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@88
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8b
    .line 316
    :goto_2
    return-void

    #@8c
    .line 333
    .restart local v2    # "text2":Ljava/lang/CharSequence;
    :cond_7
    iget v4, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    #@8e
    invoke-static {p3, v4}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    goto :goto_0

    #@93
    .line 344
    :cond_8
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@95
    if-eqz v4, :cond_2

    #@97
    .line 345
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@99
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@9c
    .line 346
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@9e
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    #@a1
    goto :goto_1

    #@a2
    .line 365
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_9
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    #@a4
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    #@a7
    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 258
    iget-boolean v1, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 259
    const-string/jumbo v1, "SuggestionsAdapter"

    #@7
    const-string/jumbo v2, "Tried to change cursor after adapter was closed."

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 260
    if-eqz p1, :cond_0

    #@f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@12
    .line 261
    :cond_0
    return-void

    #@13
    .line 265
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@16
    .line 267
    if-eqz p1, :cond_2

    #@18
    .line 268
    const-string/jumbo v1, "suggest_text_1"

    #@1b
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    #@21
    .line 269
    const-string/jumbo v1, "suggest_text_2"

    #@24
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@27
    move-result v1

    #@28
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    #@2a
    .line 270
    const-string/jumbo v1, "suggest_text_2_url"

    #@2d
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@30
    move-result v1

    #@31
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    #@33
    .line 271
    const-string/jumbo v1, "suggest_icon_1"

    #@36
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@39
    move-result v1

    #@3a
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    #@3c
    .line 272
    const-string/jumbo v1, "suggest_icon_2"

    #@3f
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@42
    move-result v1

    #@43
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    #@45
    .line 273
    const-string/jumbo v1, "suggest_flags"

    #@48
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@4b
    move-result v1

    #@4c
    iput v1, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 255
    :cond_2
    :goto_0
    return-void

    #@4f
    .line 275
    :catch_0
    move-exception v0

    #@50
    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SuggestionsAdapter"

    #@53
    const-string/jumbo v2, "error changing cursor and caching columns"

    #@56
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@59
    goto :goto_0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@4
    .line 212
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    #@7
    .line 209
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 456
    if-nez p1, :cond_0

    #@3
    .line 457
    return-object v4

    #@4
    .line 460
    :cond_0
    const-string/jumbo v3, "suggest_intent_query"

    #@7
    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 461
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@d
    .line 462
    return-object v1

    #@e
    .line 465
    :cond_1
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@10
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 466
    const-string/jumbo v3, "suggest_intent_data"

    #@19
    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 467
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1f
    .line 468
    return-object v0

    #@20
    .line 472
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@22
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_3

    #@28
    .line 473
    const-string/jumbo v3, "suggest_text_1"

    #@2b
    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 474
    .local v2, "text1":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@31
    .line 475
    return-object v2

    #@32
    .line 479
    .end local v2    # "text1":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 514
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v5

    #@4
    return-object v5

    #@5
    .line 515
    :catch_0
    move-exception v1

    #@6
    .line 516
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SuggestionsAdapter"

    #@9
    const-string/jumbo v6, "Search suggestions cursor threw exception."

    #@c
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 518
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mDropDownContext:Landroid/content/Context;

    #@11
    if-nez v5, :cond_1

    #@13
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@15
    .line 519
    .local v0, "context":Landroid/content/Context;
    :goto_0
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    #@17
    invoke-virtual {p0, v0, v5, p3}, Landroid/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@1a
    move-result-object v3

    #@1b
    .line 520
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    #@1d
    .line 521
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    #@23
    .line 522
    .local v4, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v2, v4, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@25
    .line 523
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2c
    .line 525
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v4    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    :cond_0
    return-object v3

    #@2d
    .line 518
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mDropDownContext:Landroid/content/Context;

    #@2f
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getQueryRefinement()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@2
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 491
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v4

    #@4
    return-object v4

    #@5
    .line 492
    :catch_0
    move-exception v0

    #@6
    .line 493
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "SuggestionsAdapter"

    #@9
    const-string/jumbo v5, "Search suggestions cursor threw exception."

    #@c
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 495
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    #@11
    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    #@13
    invoke-virtual {p0, v4, v5, p3}, Landroid/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@16
    move-result-object v2

    #@17
    .line 496
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    #@19
    .line 497
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    #@1f
    .line 498
    .local v3, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    #@21
    .line 499
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@28
    .line 501
    .end local v1    # "tv":Landroid/widget/TextView;
    .end local v3    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    :cond_0
    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object v1

    #@4
    .line 286
    .local v1, "v":Landroid/view/View;
    new-instance v2, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    #@6
    invoke-direct {v2, v1}, Landroid/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    #@9
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@c
    .line 289
    const v2, 0x10203b6

    #@f
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/widget/ImageView;

    #@15
    .line 290
    .local v0, "iconRefine":Landroid/widget/ImageView;
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mCommitIconResId:I

    #@17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    #@1a
    .line 292
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    #@0
    .prologue
    .line 218
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    #@3
    .line 222
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    #@a
    .line 216
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    #@3
    .line 230
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    #@a
    .line 226
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 371
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 372
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    #@a
    check-cast v0, Ljava/lang/CharSequence;

    #@c
    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    #@f
    .line 369
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 181
    if-nez p1, :cond_1

    #@3
    const-string/jumbo v2, ""

    #@6
    .line 186
    .local v2, "query":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    #@7
    .line 187
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    #@9
    invoke-virtual {v3}, Landroid/widget/SearchView;->getVisibility()I

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 188
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    #@11
    invoke-virtual {v3}, Landroid/widget/SearchView;->getWindowVisibility()I

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 189
    :cond_0
    return-object v6

    #@18
    .line 181
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .restart local v2    # "query":Ljava/lang/String;
    goto :goto_0

    #@1d
    .line 193
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    #@1f
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    #@21
    const/16 v5, 0x32

    #@23
    invoke-virtual {v3, v4, v2, v5}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    #@26
    move-result-object v0

    #@27
    .line 196
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    #@29
    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 198
    return-object v0

    #@2d
    .line 200
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    #@2e
    .line 201
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SuggestionsAdapter"

    #@31
    const-string/jumbo v4, "Search suggestions query threw an exception."

    #@34
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 206
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-object v6
.end method

.method public setQueryRefinement(I)V
    .locals 0
    .param p1, "refineWhat"    # I

    #@0
    .prologue
    .line 153
    iput p1, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    #@2
    .line 152
    return-void
.end method
