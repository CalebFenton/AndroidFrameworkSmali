.class public abstract Landroid/provider/SearchIndexablesProvider;
.super Landroid/content/ContentProvider;
.source "SearchIndexablesProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist MATCH_DYNAMIC_RAW_CODE:I = 0x6

.field private static final greylist-max-o MATCH_NON_INDEXABLE_KEYS_CODE:I = 0x3

.field private static final greylist-max-o MATCH_RAW_CODE:I = 0x2

.field private static final greylist-max-o MATCH_RES_CODE:I = 0x1

.field private static final greylist-max-o MATCH_SITE_MAP_PAIRS_CODE:I = 0x4

.field private static final blacklist MATCH_SLICE_URI_PAIRS_CODE:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IndexablesProvider"


# instance fields
.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 87
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 90
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/indexables_xml_res"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/indexables_raw"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/non_indexables_key"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/site_map_pairs"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/slice_uri_pairs"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "settings/dynamic_indexables_raw"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_74

    .line 107
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_6c

    .line 110
    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 114
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 115
    return-void

    .line 111
    :cond_64
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be protected by READ_SEARCH_INDEXABLES"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_6c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_74
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 216
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 225
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_22
    const-string/jumbo v0, "vnd.android.cursor.dir/non_indexables_key"

    return-object v0

    .line 221
    :pswitch_26
    const-string/jumbo v0, "vnd.android.cursor.dir/indexables_raw"

    return-object v0

    .line 218
    :pswitch_2a
    const-string/jumbo v0, "vnd.android.cursor.dir/indexables_xml_res"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_9
        :pswitch_9
        :pswitch_26
    .end packed-switch
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 135
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    goto :goto_2b

    .line 133
    :pswitch_d
    invoke-virtual {p0, v0}, Landroid/provider/SearchIndexablesProvider;->queryDynamicRawData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_12
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->querySliceUriPairs()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_17
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->querySiteMapPairs()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 127
    :pswitch_1c
    invoke-virtual {p0, v0}, Landroid/provider/SearchIndexablesProvider;->queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 125
    :pswitch_21
    invoke-virtual {p0, v0}, Landroid/provider/SearchIndexablesProvider;->queryRawData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_26
    invoke-virtual {p0, v0}, Landroid/provider/SearchIndexablesProvider;->queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 135
    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/provider/SearchIndexablesProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    throw v1
    :try_end_42
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_42} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_42

    .line 139
    .restart local p0    # "this":Landroid/provider/SearchIndexablesProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    .restart local p5    # "sortOrder":Ljava/lang/String;
    :catch_42
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IndexablesProvider"

    const-string v3, "Provider querying exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return-object v0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    throw v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist queryDynamicRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .param p1, "projection"    # [Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract whitelist queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public greylist-max-o querySiteMapPairs()Landroid/database/Cursor;
    .registers 2

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist querySliceUriPairs()Landroid/database/Cursor;
    .registers 2

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
