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
.field public static final whitelist ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final whitelist ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final whitelist APP_DATA:Ljava/lang/String; = "app_data"

.field public static final greylist-max-o CONTEXT_IS_VOICE:Ljava/lang/String; = "android.search.CONTEXT_IS_VOICE"

.field public static final whitelist CURSOR_EXTRA_KEY_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist DISABLE_VOICE_SEARCH:Ljava/lang/String; = "android.search.DISABLE_VOICE_SEARCH"

.field public static final whitelist EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final whitelist EXTRA_NEW_SEARCH:Ljava/lang/String; = "new_search"

.field public static final whitelist EXTRA_SELECT_QUERY:Ljava/lang/String; = "select_query"

.field public static final whitelist EXTRA_WEB_SEARCH_PENDINGINTENT:Ljava/lang/String; = "web_search_pendingintent"

.field public static final whitelist FLAG_QUERY_REFINEMENT:I = 0x1

.field public static final whitelist INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final whitelist INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final whitelist INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final whitelist INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final whitelist INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final whitelist INTENT_GLOBAL_SEARCH_ACTIVITY_CHANGED:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

.field public static final whitelist MENU_KEY:C = 's'

.field public static final whitelist MENU_KEYCODE:I = 0x2f

.field public static final whitelist QUERY:Ljava/lang/String; = "query"

.field public static final greylist-max-o SEARCH_MODE:Ljava/lang/String; = "search_mode"

.field public static final whitelist SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final whitelist SUGGEST_COLUMN_AUDIO_CHANNEL_CONFIG:Ljava/lang/String; = "suggest_audio_channel_config"

.field public static final whitelist SUGGEST_COLUMN_CONTENT_TYPE:Ljava/lang/String; = "suggest_content_type"

.field public static final whitelist SUGGEST_COLUMN_DURATION:Ljava/lang/String; = "suggest_duration"

.field public static final whitelist SUGGEST_COLUMN_FLAGS:Ljava/lang/String; = "suggest_flags"

.field public static final whitelist SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final whitelist SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final whitelist SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final whitelist SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final whitelist SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final whitelist SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final whitelist SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final whitelist SUGGEST_COLUMN_IS_LIVE:Ljava/lang/String; = "suggest_is_live"

.field public static final whitelist SUGGEST_COLUMN_LAST_ACCESS_HINT:Ljava/lang/String; = "suggest_last_access_hint"

.field public static final whitelist SUGGEST_COLUMN_PRODUCTION_YEAR:Ljava/lang/String; = "suggest_production_year"

.field public static final whitelist SUGGEST_COLUMN_PURCHASE_PRICE:Ljava/lang/String; = "suggest_purchase_price"

.field public static final whitelist SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final whitelist SUGGEST_COLUMN_RATING_SCORE:Ljava/lang/String; = "suggest_rating_score"

.field public static final whitelist SUGGEST_COLUMN_RATING_STYLE:Ljava/lang/String; = "suggest_rating_style"

.field public static final whitelist SUGGEST_COLUMN_RENTAL_PRICE:Ljava/lang/String; = "suggest_rental_price"

.field public static final whitelist SUGGEST_COLUMN_RESULT_CARD_IMAGE:Ljava/lang/String; = "suggest_result_card_image"

.field public static final whitelist SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final whitelist SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final whitelist SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final whitelist SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final whitelist SUGGEST_COLUMN_TEXT_2_URL:Ljava/lang/String; = "suggest_text_2_url"

.field public static final whitelist SUGGEST_COLUMN_VIDEO_HEIGHT:Ljava/lang/String; = "suggest_video_height"

.field public static final whitelist SUGGEST_COLUMN_VIDEO_WIDTH:Ljava/lang/String; = "suggest_video_width"

.field public static final whitelist SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final whitelist SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final whitelist SUGGEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final whitelist SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final whitelist SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SearchManager"

.field public static final whitelist USER_QUERY:Ljava/lang/String; = "user_query"


# instance fields
.field greylist-max-o mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist mSearchDialog:Landroid/app/SearchDialog;

.field private final greylist-max-o mService:Landroid/app/ISearchManager;


# direct methods
.method constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 551
    iput-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 558
    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    .line 559
    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    .line 560
    nop

    .line 561
    const-string/jumbo v0, "search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 560
    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    .line 562
    return-void
.end method

.method private greylist-max-o ensureSearchDialog()V
    .registers 3

    .line 641
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_17

    .line 642
    new-instance v0, Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;Landroid/app/SearchManager;)V

    iput-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    .line 643
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 644
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 646
    :cond_17
    return-void
.end method


# virtual methods
.method public greylist-max-o getAssistIntent(Z)Landroid/content/Intent;
    .registers 5
    .param p1, "inclContext"    # Z

    .line 964
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 966
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 967
    .local v1, "am":Landroid/app/IActivityTaskManager;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 968
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_17

    .line 969
    invoke-virtual {v0, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 972
    .end local v1    # "am":Landroid/app/IActivityTaskManager;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_17
    return-object v0

    .line 973
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_18
    move-exception v0

    .line 974
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGlobalSearchActivities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 695
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 696
    :catch_7
    move-exception v0

    .line 697
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 3

    .line 706
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 707
    :catch_7
    move-exception v0

    .line 708
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 864
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0, p1}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 865
    :catch_7
    move-exception v0

    .line 866
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 950
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 951
    :catch_7
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;

    .line 881
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 14
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .line 897
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 898
    return-object v0

    .line 901
    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "authority":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 903
    return-object v0

    .line 906
    :cond_b
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 907
    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 908
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 909
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 910
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 913
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "contentPath":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 915
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 919
    :cond_2d
    const-string/jumbo v3, "search_suggest_query"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 922
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v7

    .line 924
    .local v7, "selection":Ljava/lang/String;
    const/4 v3, 0x0

    .line 925
    .local v3, "selArgs":[Ljava/lang/String;
    if-eqz v7, :cond_41

    .line 926
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v8, v3

    goto :goto_45

    .line 928
    :cond_41
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v8, v3

    .line 931
    .end local v3    # "selArgs":[Ljava/lang/String;
    .local v8, "selArgs":[Ljava/lang/String;
    :goto_45
    if-lez p3, :cond_51

    .line 932
    const-string/jumbo v3, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 935
    :cond_51
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 938
    .local v5, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public greylist getWebSearchActivity()Landroid/content/ComponentName;
    .registers 3

    .line 724
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 725
    :catch_7
    move-exception v0

    .line 726
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r isVisible()Z
    .registers 2

    .line 784
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist launchAssist(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 991
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    if-nez v0, :cond_5

    .line 992
    return-void

    .line 994
    :cond_5
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/ISearchManager;->launchAssist(ILandroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 997
    nop

    .line 998
    return-void

    .line 995
    :catch_12
    move-exception v0

    .line 996
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    if-eqz v0, :cond_9

    .line 841
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    .line 843
    :cond_9
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    if-eqz v0, :cond_9

    .line 851
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    .line 853
    :cond_9
    return-void
.end method

.method public whitelist setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/SearchManager$OnCancelListener;

    .line 832
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 833
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/SearchManager$OnDismissListener;

    .line 821
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 822
    return-void
.end method

.method greylist-max-o startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .line 653
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 654
    .local v0, "globalSearchActivity":Landroid/content/ComponentName;
    const-string v1, "SearchManager"

    if-nez v0, :cond_e

    .line 655
    const-string v2, "No global search activity found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void

    .line 658
    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 662
    if-nez p3, :cond_25

    .line 663
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v3, "appSearchData":Landroid/os/Bundle;
    goto :goto_2a

    .line 665
    .end local v3    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :cond_25
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 668
    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .restart local v3    # "appSearchData":Landroid/os/Bundle;
    :goto_2a
    const-string/jumbo p3, "source"

    invoke-virtual {v3, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 669
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_3c
    const-string p3, "app_data"

    invoke-virtual {v2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4d

    .line 673
    const-string/jumbo p3, "query"

    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    :cond_4d
    if-eqz p2, :cond_55

    .line 676
    const-string/jumbo p3, "select_query"

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    :cond_55
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 681
    :try_start_58
    iget-object p3, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_58 .. :try_end_5d} :catch_5e

    .line 684
    goto :goto_75

    .line 682
    :catch_5e
    move-exception p3

    .line 683
    .local p3, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global search activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local p3    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_75
    return-void
.end method

.method public whitelist startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .registers 13
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z

    .line 609
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "initialQuery":Ljava/lang/String;
    .end local p2    # "selectInitialQuery":Z
    .end local p3    # "launchActivity":Landroid/content/ComponentName;
    .end local p4    # "appSearchData":Landroid/os/Bundle;
    .end local p5    # "globalSearch":Z
    .local v1, "initialQuery":Ljava/lang/String;
    .local v2, "selectInitialQuery":Z
    .local v3, "launchActivity":Landroid/content/ComponentName;
    .local v4, "appSearchData":Landroid/os/Bundle;
    .local v5, "globalSearch":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 611
    return-void
.end method

.method public greylist startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V
    .registers 10
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z
    .param p6, "sourceBounds"    # Landroid/graphics/Rect;

    .line 626
    if-eqz p5, :cond_6

    .line 627
    invoke-virtual {p0, p1, p2, p4, p6}, Landroid/app/SearchManager;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 628
    return-void

    .line 631
    :cond_6
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 633
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    .line 634
    invoke-direct {p0}, Landroid/app/SearchManager;->ensureSearchDialog()V

    .line 636
    iget-object v1, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    .line 638
    :cond_1f
    return-void
.end method

.method public whitelist stopSearch()V
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-eqz v0, :cond_9

    .line 769
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    .line 771
    :cond_9
    return-void
.end method

.method public whitelist triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Landroid/content/ComponentName;
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .line 746
    if-eqz p1, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_d

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_20

    .line 750
    :cond_d
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "launchActivity":Landroid/content/ComponentName;
    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v2, "query":Ljava/lang/String;
    .local v4, "launchActivity":Landroid/content/ComponentName;
    .local v5, "appSearchData":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 751
    iget-object p1, v1, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {p1}, Landroid/app/SearchDialog;->launchQuerySearch()V

    .line 752
    return-void

    .line 746
    .end local v2    # "query":Ljava/lang/String;
    .end local v4    # "launchActivity":Landroid/content/ComponentName;
    .end local v5    # "appSearchData":Landroid/os/Bundle;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "launchActivity":Landroid/content/ComponentName;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :cond_1c
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 747
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "launchActivity":Landroid/content/ComponentName;
    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .restart local v2    # "query":Ljava/lang/String;
    .restart local v4    # "launchActivity":Landroid/content/ComponentName;
    .restart local v5    # "appSearchData":Landroid/os/Bundle;
    :goto_20
    const-string p1, "SearchManager"

    const-string/jumbo p2, "triggerSearch called with empty query, ignoring."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method
