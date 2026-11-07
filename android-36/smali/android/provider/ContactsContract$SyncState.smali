.class public final Landroid/provider/ContactsContract$SyncState;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncState"
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "syncstate"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 731
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 732
    const-string/jumbo v1, "syncstate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    .line 731
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist get(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)[B
    .registers 3
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    sget-object v0, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getWithUri(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Landroid/util/Pair;
    .registers 3
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    sget-object v0, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/SyncStateContract$Helpers;->getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newSetOperation(Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;
    .registers 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "data"    # [B

    .line 762
    sget-object v0, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist set(Landroid/content/ContentProviderClient;Landroid/accounts/Account;[B)V
    .registers 4
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    sget-object v0, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 756
    return-void
.end method
