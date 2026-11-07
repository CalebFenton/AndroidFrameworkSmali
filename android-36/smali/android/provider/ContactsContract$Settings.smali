.class public final Landroid/provider/ContactsContract$Settings;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final whitelist ACTION_SET_DEFAULT_ACCOUNT:Ljava/lang/String; = "android.provider.action.SET_DEFAULT_ACCOUNT"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/setting"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/setting"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist KEY_DEFAULT_ACCOUNT:Ljava/lang/String; = "key_default_account"

.field public static final blacklist QUERY_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "queryDefaultAccount"

.field public static final blacklist SET_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "setDefaultAccount"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9335
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 9336
    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 9335
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 9329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9330
    return-void
.end method

.method public static whitelist getDefaultAccount(Landroid/content/ContentResolver;)Landroid/accounts/Account;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9396
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "queryDefaultAccount"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 9398
    .local v0, "response":Landroid/os/Bundle;
    const-string/jumbo v1, "key_default_account"

    const-class v2, Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    return-object v1
.end method

.method public static whitelist setDefaultAccount(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9427
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_15

    .line 9428
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9429
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9432
    :cond_15
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "setDefaultAccount"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9433
    return-void
.end method
