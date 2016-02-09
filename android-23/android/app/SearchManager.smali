.class public Landroid/app/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchManager$OnDismissListener;,
        Landroid/app/SearchManager$OnCancelListener;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final APP_DATA:Ljava/lang/String; = "app_data"

.field public static final CONTEXT_IS_VOICE:Ljava/lang/String; = "android.search.CONTEXT_IS_VOICE"

.field public static final CURSOR_EXTRA_KEY_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field private static final DBG:Z = false

.field public static final DISABLE_VOICE_SEARCH:Ljava/lang/String; = "android.search.DISABLE_VOICE_SEARCH"

.field public static final EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final EXTRA_NEW_SEARCH:Ljava/lang/String; = "new_search"

.field public static final EXTRA_SELECT_QUERY:Ljava/lang/String; = "select_query"

.field public static final EXTRA_WEB_SEARCH_PENDINGINTENT:Ljava/lang/String; = "web_search_pendingintent"

.field public static final FLAG_QUERY_REFINEMENT:I = 0x1

.field public static final INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final INTENT_GLOBAL_SEARCH_ACTIVITY_CHANGED:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

.field public static final MENU_KEY:C = 's'

.field public static final MENU_KEYCODE:I = 0x2f

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final SEARCH_MODE:Ljava/lang/String; = "search_mode"

.field public static final SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final SUGGEST_COLUMN_AUDIO_CHANNEL_CONFIG:Ljava/lang/String; = "suggest_audio_channel_config"

.field public static final SUGGEST_COLUMN_CONTENT_TYPE:Ljava/lang/String; = "suggest_content_type"

.field public static final SUGGEST_COLUMN_DURATION:Ljava/lang/String; = "suggest_duration"

.field public static final SUGGEST_COLUMN_FLAGS:Ljava/lang/String; = "suggest_flags"

.field public static final SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final SUGGEST_COLUMN_IS_LIVE:Ljava/lang/String; = "suggest_is_live"

.field public static final SUGGEST_COLUMN_LAST_ACCESS_HINT:Ljava/lang/String; = "suggest_last_access_hint"

.field public static final SUGGEST_COLUMN_PRODUCTION_YEAR:Ljava/lang/String; = "suggest_production_year"

.field public static final SUGGEST_COLUMN_PURCHASE_PRICE:Ljava/lang/String; = "suggest_purchase_price"

.field public static final SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final SUGGEST_COLUMN_RATING_SCORE:Ljava/lang/String; = "suggest_rating_score"

.field public static final SUGGEST_COLUMN_RATING_STYLE:Ljava/lang/String; = "suggest_rating_style"

.field public static final SUGGEST_COLUMN_RENTAL_PRICE:Ljava/lang/String; = "suggest_rental_price"

.field public static final SUGGEST_COLUMN_RESULT_CARD_IMAGE:Ljava/lang/String; = "suggest_result_card_image"

.field public static final SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final SUGGEST_COLUMN_TEXT_2_URL:Ljava/lang/String; = "suggest_text_2_url"

.field public static final SUGGEST_COLUMN_VIDEO_HEIGHT:Ljava/lang/String; = "suggest_video_height"

.field public static final SUGGEST_COLUMN_VIDEO_WIDTH:Ljava/lang/String; = "suggest_video_width"

.field public static final SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final SUGGEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final TAG:Ljava/lang/String; = "SearchManager"

.field public static final USER_QUERY:Ljava/lang/String; = "user_query"

.field private static mService:Landroid/app/ISearchManager;


# instance fields
.field mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final mContext:Landroid/content/Context;

.field mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final mHandler:Landroid/os/Handler;

.field private mSearchDialog:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 545
    iput-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    #@6
    .line 546
    iput-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    #@8
    .line 551
    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    #@a
    .line 552
    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    #@c
    .line 554
    const-string/jumbo v0, "search"

    #@f
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    .line 553
    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@19
    .line 550
    return-void
.end method

.method private ensureSearchDialog()V
    .locals 2

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 634
    new-instance v0, Landroid/app/SearchDialog;

    #@6
    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    #@8
    invoke-direct {v0, v1, p0}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;Landroid/app/SearchManager;)V

    #@b
    iput-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@d
    .line 635
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@f
    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@12
    .line 636
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@14
    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@17
    .line 632
    :cond_0
    return-void
.end method


# virtual methods
.method public getAssistIntent(Z)Landroid/content/Intent;
    .locals 8
    .param p1, "inclContext"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 951
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    #@3
    const-string/jumbo v4, "android.intent.action.ASSIST"

    #@6
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 952
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@b
    .line 953
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e
    move-result-object v0

    #@f
    .line 954
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v4, 0x0

    #@10
    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->getAssistContextExtras(I)Landroid/os/Bundle;

    #@13
    move-result-object v1

    #@14
    .line 955
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@16
    .line 956
    invoke-virtual {v2, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 959
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-object v2

    #@1a
    .line 960
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    #@1b
    .line 961
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "SearchManager"

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "getAssistIntent() failed: "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 962
    return-object v7
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 687
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@2
    invoke-interface {v1}, Landroid/app/ISearchManager;->getGlobalSearchActivities()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 688
    :catch_0
    move-exception v0

    #@8
    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "getGlobalSearchActivities() failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 690
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 4

    #@0
    .prologue
    .line 699
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@2
    invoke-interface {v1}, Landroid/app/ISearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 700
    :catch_0
    move-exception v0

    #@8
    .line 701
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "getGlobalSearchActivity() failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 702
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 851
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 852
    :catch_0
    move-exception v0

    #@8
    .line 853
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "getSearchableInfo() failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 854
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 936
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@2
    invoke-interface {v1}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 937
    :catch_0
    move-exception v0

    #@8
    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "getSearchablesInGlobalSearch() failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 939
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 868
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 883
    if-nez p1, :cond_0

    #@4
    .line 884
    return-object v2

    #@5
    .line 887
    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 888
    .local v6, "authority":Ljava/lang/String;
    if-nez v6, :cond_1

    #@b
    .line 889
    return-object v2

    #@c
    .line 892
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    #@e
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@11
    .line 893
    const-string/jumbo v5, "content"

    #@14
    .line 892
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1b
    move-result-object v0

    #@1c
    .line 895
    const-string/jumbo v5, ""

    #@1f
    .line 892
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@22
    move-result-object v0

    #@23
    .line 896
    const-string/jumbo v5, ""

    #@26
    .line 892
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@29
    move-result-object v8

    #@2a
    .line 899
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    .line 900
    .local v7, "contentPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@30
    .line 901
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@33
    .line 905
    :cond_2
    const-string/jumbo v0, "search_suggest_query"

    #@36
    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@39
    .line 908
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 910
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    #@3e
    .line 911
    .local v4, "selArgs":[Ljava/lang/String;
    if-eqz v3, :cond_4

    #@40
    .line 912
    const/4 v0, 0x1

    #@41
    new-array v4, v0, [Ljava/lang/String;

    #@43
    .end local v4    # "selArgs":[Ljava/lang/String;
    aput-object p2, v4, v9

    #@45
    .line 917
    :goto_0
    if-lez p3, :cond_3

    #@47
    .line 918
    const-string/jumbo v0, "limit"

    #@4a
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@51
    .line 921
    :cond_3
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@54
    move-result-object v1

    #@55
    .line 924
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    #@57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5a
    move-result-object v0

    #@5b
    move-object v5, v2

    #@5c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@5f
    move-result-object v0

    #@60
    return-object v0

    #@61
    .line 914
    .end local v1    # "uri":Landroid/net/Uri;
    .restart local v4    # "selArgs":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@64
    goto :goto_0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 4

    #@0
    .prologue
    .line 717
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@2
    invoke-interface {v1}, Landroid/app/ISearchManager;->getWebSearchActivity()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 718
    :catch_0
    move-exception v0

    #@8
    .line 719
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "getWebSearchActivity() failed: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 720
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@8
    invoke-virtual {v0}, Landroid/app/SearchDialog;->isShowing()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public launchAssist(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 975
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 976
    return-void

    #@5
    .line 978
    :cond_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@7
    invoke-interface {v1, p1}, Landroid/app/ISearchManager;->launchAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 973
    :goto_0
    return-void

    #@b
    .line 979
    :catch_0
    move-exception v0

    #@c
    .line 980
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "launchAssist() failed: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method public launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 993
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 994
    return v4

    #@6
    .line 996
    :cond_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    #@8
    invoke-interface {v1, p1, p2, p3}, Landroid/app/ISearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 997
    :catch_0
    move-exception v0

    #@e
    .line 998
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SearchManager"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "launchAssist() failed: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 999
    return v4
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 827
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 828
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    #@6
    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    #@9
    .line 826
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 837
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 838
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    #@6
    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    #@9
    .line 836
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnCancelListener;

    #@0
    .prologue
    .line 819
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    #@2
    .line 818
    return-void
.end method

.method public setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnDismissListener;

    #@0
    .prologue
    .line 810
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    #@2
    .line 809
    return-void
.end method

.method startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    #@3
    move-result-object v2

    #@4
    .line 646
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    #@6
    .line 647
    const-string/jumbo v4, "SearchManager"

    #@9
    const-string/jumbo v5, "No global search activity found."

    #@c
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 648
    return-void

    #@10
    .line 650
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@12
    const-string/jumbo v4, "android.search.action.GLOBAL_SEARCH"

    #@15
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@18
    .line 651
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    #@1a
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1d
    .line 652
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@20
    .line 654
    if-nez p3, :cond_4

    #@22
    .line 655
    new-instance p3, Landroid/os/Bundle;

    #@24
    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@27
    .line 660
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v4, "source"

    #@2a
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_1

    #@30
    .line 661
    const-string/jumbo v4, "source"

    #@33
    iget-object v5, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 663
    :cond_1
    const-string/jumbo v4, "app_data"

    #@3f
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@42
    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v4

    #@46
    if-nez v4, :cond_2

    #@48
    .line 665
    const-string/jumbo v4, "query"

    #@4b
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4e
    .line 667
    :cond_2
    if-eqz p2, :cond_3

    #@50
    .line 668
    const-string/jumbo v4, "select_query"

    #@53
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@56
    .line 670
    :cond_3
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@59
    .line 673
    :try_start_0
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 644
    :goto_1
    return-void

    #@5f
    .line 657
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    #@61
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@64
    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v0, "appSearchData":Landroid/os/Bundle;
    move-object p3, v0

    #@65
    .end local v0    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    goto :goto_0

    #@66
    .line 674
    :catch_0
    move-exception v1

    #@67
    .line 675
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SearchManager"

    #@6a
    new-instance v5, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v6, "Global search activity not found: "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z

    #@0
    .prologue
    .line 603
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    .line 602
    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    #@a
    .line 601
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z
    .param p6, "sourceBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 618
    if-eqz p5, :cond_0

    #@2
    .line 619
    invoke-virtual {p0, p1, p2, p4, p6}, Landroid/app/SearchManager;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    #@5
    .line 620
    return-void

    #@6
    .line 623
    :cond_0
    new-instance v0, Landroid/app/UiModeManager;

    #@8
    invoke-direct {v0}, Landroid/app/UiModeManager;-><init>()V

    #@b
    .line 625
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x4

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 626
    invoke-direct {p0}, Landroid/app/SearchManager;->ensureSearchDialog()V

    #@15
    .line 628
    iget-object v1, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@17
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@1a
    .line 617
    :cond_1
    return-void
.end method

.method public stopSearch()V
    .locals 1

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 761
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@6
    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    #@9
    .line 759
    :cond_0
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Landroid/content/ComponentName;
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 740
    if-eqz p1, :cond_0

    #@3
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 741
    :cond_0
    const-string/jumbo v0, "SearchManager"

    #@c
    const-string/jumbo v1, "triggerSearch called with empty query, ignoring."

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 742
    return-void

    #@13
    :cond_1
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move-object v3, p2

    #@16
    move-object v4, p3

    #@17
    move v5, v2

    #@18
    .line 744
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    #@1b
    .line 745
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    #@1d
    invoke-virtual {v0}, Landroid/app/SearchDialog;->launchQuerySearch()V

    #@20
    .line 739
    return-void
.end method
