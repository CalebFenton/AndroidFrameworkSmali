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
.field private static final blacklist DBG:Z = false

.field private static final blacklist DELETE_KEY_POST_DELAY:J = 0x1f4L

.field static final blacklist INVALID_INDEX:I = -0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final blacklist QUERY_LIMIT:I = 0x32

.field static final blacklist REFINE_ALL:I = 0x2

.field static final blacklist REFINE_BY_ENTRY:I = 0x1

.field static final blacklist REFINE_NONE:I


# instance fields
.field private blacklist mClosed:Z

.field private final blacklist mCommitIconResId:I

.field private blacklist mFlagsCol:I

.field private blacklist mIconName1Col:I

.field private blacklist mIconName2Col:I

.field private final blacklist mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProviderContext:Landroid/content/Context;

.field private blacklist mQueryRefinement:I

.field private final blacklist mSearchManager:Landroid/app/SearchManager;

.field private final blacklist mSearchView:Landroid/widget/SearchView;

.field private final blacklist mSearchable:Landroid/app/SearchableInfo;

.field private blacklist mText1Col:I

.field private blacklist mText2Col:I

.field private blacklist mText2UrlCol:I

.field private blacklist mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchView"    # Landroid/widget/SearchView;
    .param p3, "searchable"    # Landroid/app/SearchableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    .line 75
    iput v2, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    .line 84
    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    .line 85
    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 86
    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 87
    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 88
    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 104
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 105
    iput-object p2, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 106
    iput-object p3, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 107
    invoke-virtual {p2}, Landroid/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 110
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, "activityContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 113
    iput-object p4, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 128
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    new-instance v2, Landroid/widget/SuggestionsAdapter$1;

    invoke-direct {v2, p0}, Landroid/widget/SuggestionsAdapter$1;-><init>(Landroid/widget/SuggestionsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 140
    return-void
.end method

.method private blacklist checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "resourceUri"    # Ljava/lang/String;

    .line 625
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 626
    .local v0, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_c

    .line 627
    const/4 v1, 0x0

    return-object v1

    .line 630
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1c

    .line 379
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 380
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120107

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 381
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 384
    .end local v0    # "colorValue":Landroid/util/TypedValue;
    :cond_1c
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 385
    .local v0, "text":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Landroid/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 386
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 385
    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 388
    return-object v0
.end method

.method private blacklist getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 689
    const-string v0, "SuggestionsAdapter"

    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 692
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_49

    .line 696
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    nop

    .line 697
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    .line 698
    .local v4, "iconId":I
    if-nez v4, :cond_17

    return-object v3

    .line 699
    :cond_17
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v4, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 701
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_48

    .line 702
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid icon resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 703
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 702
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-object v3

    .line 706
    :cond_48
    return-object v6

    .line 693
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "iconId":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_49
    move-exception v2

    .line 694
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-object v3
.end method

.method private blacklist getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 667
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "componentIconKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 670
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 671
    .local v1, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_18

    goto :goto_22

    :cond_18
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_22
    return-object v2

    .line 674
    .end local v1    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_23
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 676
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 677
    .local v2, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2e
    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-object v1
.end method

.method public static blacklist getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .line 718
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 719
    .local v0, "col":I
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 648
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 649
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 650
    return-object v0

    .line 654
    :cond_d
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 592
    const-string v0, "Error closing icon stream for "

    const-string v1, "SuggestionsAdapter"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "scheme":Ljava/lang/String;
    const-string v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 595
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 596
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1b} :catch_a3

    .line 598
    .local v0, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1b
    iget-object v4, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v5, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v6, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_29} :catch_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_29} :catch_a3

    return-object v1

    .line 599
    :catch_2a
    move-exception v4

    .line 600
    .local v4, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_2b
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/widget/SuggestionsAdapter;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v5

    .line 604
    .end local v0    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v4    # "ex":Landroid/content/res/Resources$NotFoundException;
    .restart local p0    # "this":Landroid/widget/SuggestionsAdapter;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_44
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_4e} :catch_a3

    .line 605
    .local v4, "stream":Ljava/io/InputStream;
    if-eqz v4, :cond_8a

    .line 609
    :try_start_50
    invoke-static {v4, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_6e

    .line 612
    :try_start_54
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_a3

    .line 615
    goto :goto_6d

    .line 613
    :catch_58
    move-exception v6

    .line 614
    .local v6, "ex":Ljava/io/IOException;
    :try_start_59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_6d} :catch_a3

    .line 609
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_6d
    return-object v5

    .line 611
    :catchall_6e
    move-exception v5

    .line 612
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_72} :catch_a3

    .line 615
    goto :goto_88

    .line 613
    :catch_73
    move-exception v6

    .line 614
    .restart local v6    # "ex":Ljava/io/IOException;
    :try_start_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_88
    nop

    .end local p0    # "this":Landroid/widget/SuggestionsAdapter;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v5

    .line 606
    .restart local p0    # "this":Landroid/widget/SuggestionsAdapter;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_8a
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/widget/SuggestionsAdapter;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_a3} :catch_a3

    .line 618
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/widget/SuggestionsAdapter;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_a3
    move-exception v0

    .line 619
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-object v2
.end method

.method private blacklist getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "drawableId"    # Ljava/lang/String;

    .line 549
    const/4 v0, 0x0

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_78

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_78

    .line 554
    :cond_12
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 556
    .local v1, "resourceId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 557
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "drawableUri":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 560
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_40

    .line 561
    return-object v3

    .line 564
    :cond_40
    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 566
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v2, v4}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_49} :catch_64
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_49} :catch_4a

    .line 567
    return-object v4

    .line 578
    .end local v1    # "resourceId":I
    .end local v2    # "drawableUri":Ljava/lang/String;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_4a
    move-exception v1

    .line 580
    .local v1, "nfe":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuggestionsAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v0

    .line 568
    .end local v1    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_64
    move-exception v0

    .line 570
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 571
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6c

    .line 572
    return-object v1

    .line 574
    :cond_6c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 575
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Landroid/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 576
    invoke-direct {p0, p1, v1}, Landroid/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 577
    return-object v1

    .line 550
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_78
    :goto_78
    return-object v0
.end method

.method private blacklist getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 403
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 404
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_7
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 408
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_14

    .line 409
    return-object v1

    .line 411
    :cond_14
    invoke-direct {p0, p1}, Landroid/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 415
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_7
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "col"    # I

    .line 723
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 724
    return-object v1

    .line 727
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 728
    :catch_a
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string/jumbo v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    return-object v1
.end method

.method private blacklist setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "nullVisibility"    # I

    .line 429
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    if-nez p2, :cond_9

    .line 432
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 434
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    invoke-virtual {p2, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 442
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 444
    :goto_14
    return-void
.end method

.method private blacklist setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 396
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 398
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :goto_13
    return-void
.end method

.method private blacklist storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 634
    if-eqz p2, :cond_b

    .line 635
    iget-object v0, p0, Landroid/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_b
    return-void
.end method

.method private blacklist updateSpinnerState(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 234
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 242
    .local v0, "extras":Landroid/os/Bundle;
    :goto_8
    if-eqz v0, :cond_13

    .line 243
    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 245
    return-void

    .line 249
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 319
    .local v0, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    const/4 v1, 0x0

    .line 320
    .local v1, "flags":I
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 321
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 323
    :cond_12
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v2, :cond_21

    .line 324
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v2}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "text1":Ljava/lang/String;
    iget-object v3, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 327
    .end local v2    # "text1":Ljava/lang/String;
    :cond_21
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_63

    .line 329
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v2}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "text2":Ljava/lang/CharSequence;
    if-eqz v2, :cond_35

    .line 331
    invoke-direct {p0, p2, v2}, Landroid/widget/SuggestionsAdapter;->formatUrl(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3b

    .line 333
    :cond_35
    iget v6, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v6}, Landroid/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 338
    :goto_3b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 339
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v6, :cond_5e

    .line 340
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 341
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_5e

    .line 344
    :cond_50
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v6, :cond_5e

    .line 345
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 346
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 349
    :cond_5e
    :goto_5e
    iget-object v6, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v6, v2}, Landroid/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 352
    .end local v2    # "text2":Ljava/lang/CharSequence;
    :cond_63
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v2, :cond_71

    .line 353
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {p0, v2, v6, v7}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 355
    :cond_71
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v2, :cond_80

    .line 356
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v2, v7, v6}, Landroid/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 358
    :cond_80
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq v2, v4, :cond_93

    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-ne v2, v5, :cond_8d

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_8d

    goto :goto_93

    .line 365
    :cond_8d
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a8

    .line 361
    :cond_93
    :goto_93
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v3, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 363
    iget-object v2, v0, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    :goto_a8
    return-void
.end method

.method public whitelist changeCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;

    .line 258
    iget-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    const-string v1, "SuggestionsAdapter"

    if-eqz v0, :cond_11

    .line 259
    const-string v0, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_10
    return-void

    .line 265
    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 267
    if-eqz p1, :cond_4c

    .line 268
    const-string/jumbo v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mText1Col:I

    .line 269
    const-string/jumbo v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mText2Col:I

    .line 270
    const-string/jumbo v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 271
    const-string/jumbo v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 272
    const-string/jumbo v0, "suggest_icon_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 273
    const-string/jumbo v0, "suggest_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_4d

    .line 277
    :cond_4c
    goto :goto_53

    .line 275
    :catch_4d
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method public blacklist close()V
    .registers 2

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SuggestionsAdapter;->mClosed:Z

    .line 213
    return-void
.end method

.method public whitelist convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 456
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 457
    return-object v0

    .line 460
    :cond_4
    const-string/jumbo v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 462
    return-object v1

    .line 465
    :cond_e
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 466
    const-string/jumbo v2, "suggest_intent_data"

    invoke-static {p1, v2}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_20

    .line 468
    return-object v2

    .line 472
    .end local v2    # "data":Ljava/lang/String;
    :cond_20
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 473
    const-string/jumbo v2, "suggest_text_1"

    invoke-static {p1, v2}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "text1":Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 475
    return-object v2

    .line 479
    .end local v2    # "text1":Ljava/lang/String;
    :cond_32
    return-object v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 514
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 515
    :catch_5
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Search suggestions cursor threw exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mDropDownContext:Landroid/content/Context;

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    goto :goto_16

    :cond_14
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mDropDownContext:Landroid/content/Context;

    .line 519
    .local v1, "context":Landroid/content/Context;
    :goto_16
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 520
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2d

    .line 521
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 522
    .local v3, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v4, v3, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 523
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    .end local v3    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2d
    return-object v2
.end method

.method public blacklist getQueryRefinement()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 491
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 492
    :catch_5
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Search suggestions cursor threw exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 496
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_26

    .line 497
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    .line 498
    .local v2, "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v3, v2, Landroid/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 499
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .end local v2    # "views":Landroid/widget/SuggestionsAdapter$ChildViewCache;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_26
    return-object v1
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Landroid/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    const v1, 0x10202e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 290
    .local v1, "iconRefine":Landroid/widget/ImageView;
    iget v2, p0, Landroid/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    return-object v0
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 2

    .line 218
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 222
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 223
    return-void
.end method

.method public whitelist notifyDataSetInvalidated()V
    .registers 2

    .line 228
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 230
    invoke-virtual {p0}, Landroid/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 231
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 372
    iget-object v1, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 374
    :cond_10
    return-void
.end method

.method public whitelist runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 181
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "query":Ljava/lang/String;
    :goto_9
    const/4 v1, 0x0

    .line 187
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_37

    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 188
    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_37

    .line 193
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    iget-object v4, p0, Landroid/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v5, 0x32

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 196
    if-eqz v1, :cond_2d

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2c} :catch_2e

    .line 198
    return-object v1

    .line 202
    :cond_2d
    goto :goto_36

    .line 200
    :catch_2e
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions query threw an exception."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_36
    return-object v3

    .line 189
    :cond_37
    :goto_37
    return-object v3
.end method

.method public blacklist setQueryRefinement(I)V
    .registers 2
    .param p1, "refineWhat"    # I

    .line 153
    iput p1, p0, Landroid/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 154
    return-void
.end method
