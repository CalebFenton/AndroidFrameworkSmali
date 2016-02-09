.class public abstract Landroid/provider/DocumentsProvider;
.super Landroid/content/ContentProvider;
.source "DocumentsProvider.java"


# static fields
.field private static final MATCH_CHILDREN:I = 0x6

.field private static final MATCH_CHILDREN_TREE:I = 0x8

.field private static final MATCH_DOCUMENT:I = 0x5

.field private static final MATCH_DOCUMENT_TREE:I = 0x7

.field private static final MATCH_RECENT:I = 0x3

.field private static final MATCH_ROOT:I = 0x2

.field private static final MATCH_ROOTS:I = 0x1

.field private static final MATCH_SEARCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DocumentsProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method private enforceTree(Landroid/net/Uri;)V
    .locals 5
    .param p1, "documentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 192
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 193
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 194
    .local v1, "parent":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 195
    .local v0, "child":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 196
    return-void

    #@15
    .line 198
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 199
    new-instance v2, Ljava/lang/SecurityException;

    #@1d
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Document "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, " is not a descendant of "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 199
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 191
    .end local v0    # "child":Ljava/lang/String;
    .end local v1    # "parent":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 566
    const/4 v0, 0x0

    #@1
    .line 567
    .local v0, "modeFlags":I
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 569
    const/4 v0, 0x1

    #@9
    .line 571
    :cond_0
    const/4 v1, 0x2

    #@a
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 573
    or-int/lit8 v0, v0, 0x2

    #@12
    .line 575
    :cond_1
    const/16 v1, 0x41

    #@14
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 578
    or-int/lit8 v0, v0, 0x40

    #@1c
    .line 580
    :cond_2
    return v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 148
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@4
    .line 150
    new-instance v0, Landroid/content/UriMatcher;

    #@6
    const/4 v1, -0x1

    #@7
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@c
    .line 151
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@e
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@10
    const-string/jumbo v2, "root"

    #@13
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@17
    .line 152
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@19
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@1b
    const-string/jumbo v2, "root/*"

    #@1e
    const/4 v3, 0x2

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@22
    .line 153
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@24
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@26
    const-string/jumbo v2, "root/*/recent"

    #@29
    const/4 v3, 0x3

    #@2a
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@2d
    .line 154
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@2f
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@31
    const-string/jumbo v2, "root/*/search"

    #@34
    const/4 v3, 0x4

    #@35
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@38
    .line 155
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@3a
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@3c
    const-string/jumbo v2, "document/*"

    #@3f
    const/4 v3, 0x5

    #@40
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@43
    .line 156
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@45
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@47
    const-string/jumbo v2, "document/*/children"

    #@4a
    const/4 v3, 0x6

    #@4b
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@4e
    .line 157
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@50
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@52
    const-string/jumbo v2, "tree/*/document/*"

    #@55
    const/4 v3, 0x7

    #@56
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@59
    .line 158
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@5b
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@5d
    const-string/jumbo v2, "tree/*/document/*/children"

    #@60
    const/16 v3, 0x8

    #@62
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@65
    .line 161
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@67
    if-nez v0, :cond_0

    #@69
    .line 162
    new-instance v0, Ljava/lang/SecurityException;

    #@6b
    const-string/jumbo v1, "Provider must be exported"

    #@6e
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@71
    throw v0

    #@72
    .line 164
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@74
    if-nez v0, :cond_1

    #@76
    .line 165
    new-instance v0, Ljava/lang/SecurityException;

    #@78
    const-string/jumbo v1, "Provider must grantUriPermissions"

    #@7b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v0

    #@7f
    .line 167
    :cond_1
    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    #@82
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_2

    #@8a
    .line 168
    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    #@8d
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_2

    #@95
    .line 172
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@98
    .line 147
    return-void

    #@99
    .line 169
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    #@9b
    const-string/jumbo v1, "Provider must be protected by MANAGE_DOCUMENTS"

    #@9e
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 624
    const-string/jumbo v12, "android:"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v12

    #@9
    if-nez v12, :cond_0

    #@b
    .line 626
    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@e
    move-result-object v12

    #@f
    return-object v12

    #@10
    .line 629
    :cond_0
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    #@13
    move-result-object v2

    #@14
    .line 630
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v12, "uri"

    #@17
    move-object/from16 v0, p3

    #@19
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Landroid/net/Uri;

    #@1f
    .line 631
    .local v5, "documentUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 632
    .local v1, "authority":Ljava/lang/String;
    invoke-static {v5}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 634
    .local v4, "documentId":Ljava/lang/String;
    iget-object v12, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@29
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v12

    #@2d
    if-nez v12, :cond_1

    #@2f
    .line 635
    new-instance v12, Ljava/lang/SecurityException;

    #@31
    .line 636
    new-instance v13, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v14, "Requested authority "

    #@39
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v13

    #@3d
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v13

    #@41
    const-string/jumbo v14, " doesn\'t match provider "

    #@44
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v13

    #@48
    iget-object v14, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@4a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v13

    #@4e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v13

    #@52
    .line 635
    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@55
    throw v12

    #@56
    .line 638
    :cond_1
    invoke-direct {p0, v5}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@59
    .line 640
    new-instance v11, Landroid/os/Bundle;

    #@5b
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    #@5e
    .line 642
    .local v11, "out":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v12, "android:createDocument"

    #@61
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v12

    #@67
    if-eqz v12, :cond_3

    #@69
    .line 643
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@6c
    move-result-object v12

    #@6d
    const/4 v13, 0x0

    #@6e
    invoke-virtual {p0, v5, v12, v13}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@71
    .line 645
    const-string/jumbo v12, "mime_type"

    #@74
    move-object/from16 v0, p3

    #@76
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    .line 646
    .local v7, "mimeType":Ljava/lang/String;
    const-string/jumbo v12, "_display_name"

    #@7d
    move-object/from16 v0, p3

    #@7f
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    .line 647
    .local v3, "displayName":Ljava/lang/String;
    invoke-virtual {p0, v4, v7, v3}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    .line 652
    .local v9, "newDocumentId":Ljava/lang/String;
    invoke-static {v5, v9}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8a
    move-result-object v10

    #@8b
    .line 654
    .local v10, "newDocumentUri":Landroid/net/Uri;
    const-string/jumbo v12, "uri"

    #@8e
    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@91
    .line 693
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v9    # "newDocumentId":Ljava/lang/String;
    .end local v10    # "newDocumentUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-object v11

    #@92
    .line 656
    :cond_3
    const-string/jumbo v12, "android:renameDocument"

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v12

    #@9b
    if-eqz v12, :cond_5

    #@9d
    .line 657
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@a0
    move-result-object v12

    #@a1
    const/4 v13, 0x0

    #@a2
    invoke-virtual {p0, v5, v12, v13}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@a5
    .line 659
    const-string/jumbo v12, "_display_name"

    #@a8
    move-object/from16 v0, p3

    #@aa
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    .line 660
    .restart local v3    # "displayName":Ljava/lang/String;
    invoke-virtual {p0, v4, v3}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b1
    move-result-object v9

    #@b2
    .line 662
    .restart local v9    # "newDocumentId":Ljava/lang/String;
    if-eqz v9, :cond_2

    #@b4
    .line 663
    invoke-static {v5, v9}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@b7
    move-result-object v10

    #@b8
    .line 668
    .restart local v10    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v10}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@bb
    move-result v12

    #@bc
    if-nez v12, :cond_4

    #@be
    .line 669
    invoke-static {v2, v5}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    #@c1
    move-result v8

    #@c2
    .line 671
    .local v8, "modeFlags":I
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v2, v12, v10, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@c9
    .line 674
    .end local v8    # "modeFlags":I
    :cond_4
    const-string/jumbo v12, "uri"

    #@cc
    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@cf
    .line 677
    invoke-virtual {p0, v4}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d2
    goto :goto_0

    #@d3
    .line 690
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v9    # "newDocumentId":Ljava/lang/String;
    .end local v10    # "newDocumentUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    #@d4
    .line 691
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v12, Ljava/lang/IllegalStateException;

    #@d6
    new-instance v13, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v14, "Failed call "

    #@de
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v13

    #@e2
    move-object/from16 v0, p1

    #@e4
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v13

    #@e8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v13

    #@ec
    invoke-direct {v12, v13, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ef
    throw v12

    #@f0
    .line 680
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :try_start_1
    const-string/jumbo v12, "android:deleteDocument"

    #@f3
    move-object/from16 v0, p1

    #@f5
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v12

    #@f9
    if-eqz v12, :cond_6

    #@fb
    .line 681
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@fe
    move-result-object v12

    #@ff
    const/4 v13, 0x0

    #@100
    invoke-virtual {p0, v5, v12, v13}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@103
    .line 682
    invoke-virtual {p0, v4}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    #@106
    .line 685
    invoke-virtual {p0, v4}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    #@109
    goto :goto_0

    #@10a
    .line 688
    :cond_6
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    #@10c
    new-instance v13, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v14, "Method not supported "

    #@114
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v13

    #@118
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v13

    #@11e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v13

    #@122
    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@125
    throw v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 549
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@6
    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@9
    move-result v3

    #@a
    packed-switch v3, :pswitch_data_0

    #@d
    .line 561
    const/4 v3, 0x0

    #@e
    return-object v3

    #@f
    .line 551
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@12
    .line 553
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v3, v4}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v2

    #@1e
    .line 557
    .local v2, "narrowUri":Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    #@21
    move-result v1

    #@22
    .line 558
    .local v1, "modeFlags":I
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@29
    .line 559
    return-object v2

    #@2a
    .line 549
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Create not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 602
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Delete not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Delete not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@4
    move-result-object v0

    #@5
    .line 407
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 408
    const-string/jumbo v1, "mime_type"

    #@e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@11
    move-result v1

    #@12
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 413
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 408
    return-object v1

    #@1a
    .line 413
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1d
    .line 410
    return-object v2

    #@1e
    .line 412
    :catchall_0
    move-exception v1

    #@1f
    .line 413
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@22
    .line 412
    throw v1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 517
    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@3
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 525
    :pswitch_0
    return-object v3

    #@b
    .line 519
    :pswitch_1
    const-string/jumbo v1, "vnd.android.document/root"

    #@e
    return-object v1

    #@f
    .line 522
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@12
    .line 523
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Landroid/provider/DocumentsProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 527
    :catch_0
    move-exception v0

    #@1c
    .line 528
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "DocumentsProvider"

    #@1f
    const-string/jumbo v2, "Failed during getType"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 529
    return-object v3

    #@26
    .line 517
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Insert not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "documentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 740
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4
    .line 741
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v2, p2, v0}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v1

    #@c
    .line 742
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    #@e
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@10
    const-wide/16 v2, 0x0

    #@12
    const-wide/16 v4, -0x1

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    #@17
    :cond_0
    return-object v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 754
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4
    .line 755
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v2, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v1

    #@c
    .line 756
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    #@e
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@10
    const-wide/16 v2, 0x0

    #@12
    const-wide/16 v4, -0x1

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    #@17
    :cond_0
    return-object v0
.end method

.method public abstract openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Thumbnails not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 715
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 716
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 727
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 728
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 767
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4
    .line 768
    if-eqz p3, :cond_0

    #@6
    const-string/jumbo v1, "android.content.extra.SIZE"

    #@9
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 769
    const-string/jumbo v1, "android.content.extra.SIZE"

    #@12
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/graphics/Point;

    #@18
    .line 770
    .local v0, "sizeHint":Landroid/graphics/Point;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1, v0, v2}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 772
    .end local v0    # "sizeHint":Landroid/graphics/Point;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 785
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 786
    if-eqz p3, :cond_0

    #@5
    const-string/jumbo v1, "android.content.extra.SIZE"

    #@8
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 787
    const-string/jumbo v1, "android.content.extra.SIZE"

    #@11
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/graphics/Point;

    #@17
    .line 788
    .local v0, "sizeHint":Landroid/graphics/Point;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0, v1, v0, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 790
    .end local v0    # "sizeHint":Landroid/graphics/Point;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@5
    move-result v1

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 501
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unsupported Uri "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 503
    :catch_0
    move-exception v0

    #@24
    .line 504
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "DocumentsProvider"

    #@27
    const-string/jumbo v2, "Failed during query"

    #@2a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 505
    const/4 v1, 0x0

    #@2e
    return-object v1

    #@2f
    .line 481
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 483
    :pswitch_2
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {p0, v1, p2}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 486
    :pswitch_3
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 485
    invoke-virtual {p0, v1, v2, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@48
    move-result-object v1

    #@49
    return-object v1

    #@4a
    .line 489
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4d
    .line 490
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {p0, v1, p2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@54
    move-result-object v1

    #@55
    return-object v1

    #@56
    .line 493
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@59
    .line 494
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_0

    #@5f
    .line 496
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 495
    invoke-virtual {p0, v1, p2, p5}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@66
    move-result-object v1

    #@67
    return-object v1

    #@68
    .line 498
    :cond_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {p0, v1, p2, p5}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@6f
    move-result-object v1

    #@70
    return-object v1

    #@71
    .line 479
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public abstract queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Manage not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Recent not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Search not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Rename not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final revokeDocumentPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 703
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 704
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@7
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    #@e
    .line 705
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@10
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    #@17
    .line 702
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 612
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Update not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
