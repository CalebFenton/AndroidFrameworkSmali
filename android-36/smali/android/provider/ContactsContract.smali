.class public final Landroid/provider/ContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Profile;,
        Landroid/provider/ContactsContract$MetadataSyncState;,
        Landroid/provider/ContactsContract$MetadataSyncStateColumns;,
        Landroid/provider/ContactsContract$MetadataSync;,
        Landroid/provider/ContactsContract$MetadataSyncColumns;,
        Landroid/provider/ContactsContract$Intents;,
        Landroid/provider/ContactsContract$DisplayPhoto;,
        Landroid/provider/ContactsContract$QuickContact;,
        Landroid/provider/ContactsContract$PinnedPositions;,
        Landroid/provider/ContactsContract$DataUsageFeedback;,
        Landroid/provider/ContactsContract$ProviderStatus;,
        Landroid/provider/ContactsContract$Settings;,
        Landroid/provider/ContactsContract$SettingsColumns;,
        Landroid/provider/ContactsContract$SimAccount;,
        Landroid/provider/ContactsContract$SimContacts;,
        Landroid/provider/ContactsContract$AggregationExceptions;,
        Landroid/provider/ContactsContract$Groups;,
        Landroid/provider/ContactsContract$GroupsColumns;,
        Landroid/provider/ContactsContract$CommonDataKinds;,
        Landroid/provider/ContactsContract$SearchSnippets;,
        Landroid/provider/ContactsContract$Presence;,
        Landroid/provider/ContactsContract$StatusUpdates;,
        Landroid/provider/ContactsContract$PresenceColumns;,
        Landroid/provider/ContactsContract$PhoneLookup;,
        Landroid/provider/ContactsContract$PhoneLookupColumns;,
        Landroid/provider/ContactsContract$RawContactsEntity;,
        Landroid/provider/ContactsContract$Data;,
        Landroid/provider/ContactsContract$DataColumnsWithJoins;,
        Landroid/provider/ContactsContract$DataUsageStatColumns;,
        Landroid/provider/ContactsContract$DataColumns;,
        Landroid/provider/ContactsContract$PhotoFilesColumns;,
        Landroid/provider/ContactsContract$PhotoFiles;,
        Landroid/provider/ContactsContract$StreamItemPhotosColumns;,
        Landroid/provider/ContactsContract$StreamItemPhotos;,
        Landroid/provider/ContactsContract$StreamItemsColumns;,
        Landroid/provider/ContactsContract$StreamItems;,
        Landroid/provider/ContactsContract$StatusColumns;,
        Landroid/provider/ContactsContract$RawContacts;,
        Landroid/provider/ContactsContract$RawContactsColumns;,
        Landroid/provider/ContactsContract$DeletedContacts;,
        Landroid/provider/ContactsContract$DeletedContactsColumns;,
        Landroid/provider/ContactsContract$Contacts;,
        Landroid/provider/ContactsContract$ContactCounts;,
        Landroid/provider/ContactsContract$ContactNameColumns;,
        Landroid/provider/ContactsContract$DisplayNameSources;,
        Landroid/provider/ContactsContract$PhoneticNameStyle;,
        Landroid/provider/ContactsContract$FullNameStyle;,
        Landroid/provider/ContactsContract$ContactStatusColumns;,
        Landroid/provider/ContactsContract$ContactsColumns;,
        Landroid/provider/ContactsContract$ContactOptionsColumns;,
        Landroid/provider/ContactsContract$SyncColumns;,
        Landroid/provider/ContactsContract$BaseSyncColumns;,
        Landroid/provider/ContactsContract$ProfileSyncState;,
        Landroid/provider/ContactsContract$SyncState;,
        Landroid/provider/ContactsContract$SyncStateColumns;,
        Landroid/provider/ContactsContract$Directory;,
        Landroid/provider/ContactsContract$Authorization;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final whitelist AUTHORITY_URI:Landroid/net/Uri;

.field public static final whitelist CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final whitelist DEFERRED_SNIPPETING:Ljava/lang/String; = "deferred_snippeting"

.field public static final whitelist DEFERRED_SNIPPETING_QUERY:Ljava/lang/String; = "deferred_snippeting_query"

.field public static final whitelist DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field public static final greylist-max-r HIDDEN_COLUMN_PREFIX:Ljava/lang/String; = "x_"

.field public static final whitelist LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final whitelist PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field public static final whitelist PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final whitelist REMOVE_DUPLICATE_ENTRIES:Ljava/lang/String; = "remove_duplicate_entries"

.field public static final whitelist STREQUENT_PHONE_ONLY:Ljava/lang/String; = "strequent_phone_only"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract;->nullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isProfileId(J)Z
    .registers 4
    .param p0, "id"    # J

    .line 2392
    const-wide v0, 0x7fffffff80000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist nullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 10864
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_1a

    .line 10865
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_4
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    .line 10866
    if-eqz v0, :cond_d

    :try_start_a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1a

    .line 10865
    :cond_d
    return-object v1

    .line 10864
    :catchall_e
    move-exception v1

    if-eqz v0, :cond_19

    :try_start_11
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    :cond_19
    :goto_19
    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1a

    .line 10866
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catch_1a
    move-exception v0

    .line 10867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
