.class public abstract Landroid/provider/SearchIndexablesProvider;
.super Landroid/content/ContentProvider;
.source "SearchIndexablesProvider.java"


# static fields
.field private static final MATCH_NON_INDEXABLE_KEYS_CODE:I = 0x3

.field private static final MATCH_RAW_CODE:I = 0x2

.field private static final MATCH_RES_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexablesProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 81
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    #@4
    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    #@6
    const/4 v1, -0x1

    #@7
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    #@c
    .line 84
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    #@e
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    #@10
    const-string/jumbo v2, "settings/indexables_xml_res"

    #@13
    .line 85
    const/4 v3, 0x1

    #@14
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@17
    .line 86
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    #@19
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    #@1b
    const-string/jumbo v2, "settings/indexables_raw"

    #@1e
    .line 87
    const/4 v3, 0x2

    #@1f
    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@22
    .line 88
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    #@24
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    #@26
    const-string/jumbo v2, "settings/non_indexables_key"

    #@29
    .line 89
    const/4 v3, 0x3

    #@2a
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@2d
    .line 92
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@2f
    if-nez v0, :cond_0

    #@31
    .line 93
    new-instance v0, Ljava/lang/SecurityException;

    #@33
    const-string/jumbo v1, "Provider must be exported"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 95
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@3c
    if-nez v0, :cond_1

    #@3e
    .line 96
    new-instance v0, Ljava/lang/SecurityException;

    #@40
    const-string/jumbo v1, "Provider must grantUriPermissions"

    #@43
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 98
    :cond_1
    const-string/jumbo v0, "android.permission.READ_SEARCH_INDEXABLES"

    #@4a
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_2

    #@52
    .line 99
    new-instance v0, Ljava/lang/SecurityException;

    #@54
    const-string/jumbo v1, "Provider must be protected by READ_SEARCH_INDEXABLES"

    #@57
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 102
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@5e
    .line 80
    return-void
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Delete not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unknown URI "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 157
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/indexables_xml_res"

    #@26
    return-object v0

    #@27
    .line 159
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.dir/indexables_raw"

    #@2a
    return-object v0

    #@2b
    .line 161
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.dir/non_indexables_key"

    #@2e
    return-object v0

    #@2f
    .line 155
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Insert not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    #@3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Unknown Uri "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 110
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/provider/SearchIndexablesProvider;->queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 112
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/provider/SearchIndexablesProvider;->queryRawData([Ljava/lang/String;)Landroid/database/Cursor;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 114
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/provider/SearchIndexablesProvider;->queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    .line 108
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Update not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
