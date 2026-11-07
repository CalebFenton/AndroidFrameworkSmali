.class public abstract Landroid/provider/DocumentsProvider;
.super Landroid/content/ContentProvider;
.source "DocumentsProvider.java"


# static fields
.field private static final greylist-max-o MATCH_CHILDREN:I = 0x6

.field private static final greylist-max-o MATCH_CHILDREN_TREE:I = 0x8

.field private static final greylist-max-o MATCH_DOCUMENT:I = 0x5

.field private static final greylist-max-o MATCH_DOCUMENT_TREE:I = 0x7

.field private static final greylist-max-o MATCH_RECENT:I = 0x3

.field private static final greylist-max-o MATCH_ROOT:I = 0x2

.field private static final greylist-max-o MATCH_ROOTS:I = 0x1

.field private static final greylist-max-o MATCH_SEARCH:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DocumentsProvider"


# instance fields
.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private greylist-max-o callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 24
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1101
    .local v3, "context":Landroid/content/Context;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1104
    .local v4, "out":Landroid/os/Bundle;
    invoke-direct {v0, v2}, Landroid/provider/DocumentsProvider;->enforceTreeForExtraUris(Landroid/os/Bundle;)V

    .line 1106
    const-class v5, Landroid/net/Uri;

    .line 1107
    const-string/jumbo v6, "uri"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1106
    invoke-direct {v0, v5}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 1108
    .local v5, "extraUri":Landroid/net/Uri;
    const-class v7, Landroid/net/Uri;

    .line 1109
    const-string v8, "android.content.extra.TARGET_URI"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1108
    invoke-direct {v0, v7}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 1110
    .local v7, "extraTargetUri":Landroid/net/Uri;
    const-class v8, Landroid/net/Uri;

    .line 1111
    const-string/jumbo v9, "parentUri"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1110
    invoke-direct {v0, v8}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 1113
    .local v8, "extraParentUri":Landroid/net/Uri;
    const-string v9, "android:ejectRoot"

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 1117
    move-object v6, v5

    .line 1118
    .local v6, "rootUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1120
    invoke-static {v6}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 1121
    .local v9, "rootId":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/provider/DocumentsProvider;->ejectRoot(Ljava/lang/String;)V

    .line 1123
    return-object v4

    .line 1126
    .end local v6    # "rootUri":Landroid/net/Uri;
    .end local v9    # "rootId":Ljava/lang/String;
    :cond_56
    move-object v9, v5

    .line 1127
    .local v9, "documentUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/DocumentsProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1128
    .local v10, "authorityWithoutUserId":Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 1130
    .local v11, "documentId":Ljava/lang/String;
    iget-object v12, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f5

    .line 1136
    const-string v12, "android:isChildDocument"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v15, "result"

    if-eqz v12, :cond_a0

    .line 1137
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1139
    move-object v6, v7

    .line 1140
    .local v6, "childUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    .line 1141
    .local v12, "childAuthority":Ljava/lang/String;
    invoke-static {v6}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 1143
    .local v13, "childId":Ljava/lang/String;
    iget-object v14, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    .line 1145
    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_96

    .line 1146
    invoke-virtual {v0, v11, v13}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_96

    const/4 v14, 0x1

    goto :goto_97

    :cond_96
    const/4 v14, 0x0

    .line 1143
    :goto_97
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1148
    .end local v6    # "childUri":Landroid/net/Uri;
    .end local v12    # "childAuthority":Ljava/lang/String;
    .end local v13    # "childId":Ljava/lang/String;
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_2ce

    :cond_a0
    const-string v12, "android:createDocument"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "_display_name"

    if-eqz v12, :cond_cd

    .line 1149
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1151
    const-string/jumbo v12, "mime_type"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1152
    .local v12, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1153
    .local v13, "displayName":Ljava/lang/String;
    invoke-virtual {v0, v11, v12, v13}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1158
    .local v14, "newDocumentId":Ljava/lang/String;
    invoke-static {v9, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1160
    .local v15, "newDocumentUri":Landroid/net/Uri;
    invoke-virtual {v4, v6, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1162
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_2ce

    :cond_cd
    const-string v12, "android:createWebLinkIntent"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f0

    .line 1163
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1165
    const-string/jumbo v6, "options"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1166
    .local v6, "options":Landroid/os/Bundle;
    invoke-virtual {v0, v11, v6}, Landroid/provider/DocumentsProvider;->createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;

    move-result-object v12

    .line 1168
    .local v12, "intentSender":Landroid/content/IntentSender;
    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1170
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v12    # "intentSender":Landroid/content/IntentSender;
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_2ce

    :cond_f0
    const-string v12, "android:renameDocument"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12a

    .line 1171
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1173
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1174
    .local v12, "displayName":Ljava/lang/String;
    invoke-virtual {v0, v11, v12}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1176
    .local v13, "newDocumentId":Ljava/lang/String;
    if-eqz v13, :cond_124

    .line 1177
    invoke-static {v9, v13}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1182
    .local v14, "newDocumentUri":Landroid/net/Uri;
    invoke-static {v14}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_11e

    .line 1183
    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 1185
    .local v15, "modeFlags":I
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14, v15}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1188
    .end local v15    # "modeFlags":I
    :cond_11e
    invoke-virtual {v4, v6, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1191
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    .line 1194
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v13    # "newDocumentId":Ljava/lang/String;
    .end local v14    # "newDocumentUri":Landroid/net/Uri;
    :cond_124
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_2ce

    :cond_12a
    const-string v2, "android:deleteDocument"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 1195
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1196
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_2ce

    .line 1201
    :cond_145
    const-string v2, "android:copyDocument"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 1202
    move-object v2, v7

    .line 1203
    .local v2, "targetUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 1205
    .local v12, "targetId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1206
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0, v2, v13}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1208
    invoke-virtual {v0, v11, v12}, Landroid/provider/DocumentsProvider;->copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1210
    .restart local v13    # "newDocumentId":Ljava/lang/String;
    if-eqz v13, :cond_184

    .line 1211
    invoke-static {v9, v13}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1214
    .restart local v14    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v14}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_17e

    .line 1215
    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 1217
    .restart local v15    # "modeFlags":I
    move-object/from16 v16, v2

    .end local v2    # "targetUri":Landroid/net/Uri;
    .local v16, "targetUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14, v15}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_180

    .line 1214
    .end local v15    # "modeFlags":I
    .end local v16    # "targetUri":Landroid/net/Uri;
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :cond_17e
    move-object/from16 v16, v2

    .line 1220
    .end local v2    # "targetUri":Landroid/net/Uri;
    .restart local v16    # "targetUri":Landroid/net/Uri;
    :goto_180
    invoke-virtual {v4, v6, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_186

    .line 1210
    .end local v14    # "newDocumentUri":Landroid/net/Uri;
    .end local v16    # "targetUri":Landroid/net/Uri;
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :cond_184
    move-object/from16 v16, v2

    .line 1223
    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v12    # "targetId":Ljava/lang/String;
    .end local v13    # "newDocumentId":Ljava/lang/String;
    :goto_186
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    goto/16 :goto_2ce

    :cond_18c
    const-string v2, "android:moveDocument"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 1224
    move-object v2, v8

    .line 1225
    .local v2, "parentSourceUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 1226
    .local v12, "parentSourceId":Ljava/lang/String;
    move-object v13, v7

    .line 1227
    .local v13, "targetUri":Landroid/net/Uri;
    invoke-static {v13}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 1229
    .local v14, "targetId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v9, v15}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1230
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1231
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1233
    invoke-virtual {v0, v11, v12, v14}, Landroid/provider/DocumentsProvider;->moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1235
    .local v15, "newDocumentId":Ljava/lang/String;
    if-eqz v15, :cond_1dd

    .line 1236
    move-object/from16 v16, v2

    .end local v2    # "parentSourceUri":Landroid/net/Uri;
    .local v16, "parentSourceUri":Landroid/net/Uri;
    invoke-static {v9, v15}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1239
    .local v2, "newDocumentUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v17

    if-nez v17, :cond_1d5

    .line 1240
    move-object/from16 v18, v5

    .end local v5    # "extraUri":Landroid/net/Uri;
    .local v18, "extraUri":Landroid/net/Uri;
    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1242
    .local v5, "modeFlags":I
    move-object/from16 v19, v7

    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .local v19, "extraTargetUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1d9

    .line 1239
    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .local v5, "extraUri":Landroid/net/Uri;
    .restart local v7    # "extraTargetUri":Landroid/net/Uri;
    :cond_1d5
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .line 1245
    .end local v5    # "extraUri":Landroid/net/Uri;
    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    .restart local v19    # "extraTargetUri":Landroid/net/Uri;
    :goto_1d9
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1e3

    .line 1235
    .end local v16    # "parentSourceUri":Landroid/net/Uri;
    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .local v2, "parentSourceUri":Landroid/net/Uri;
    .restart local v5    # "extraUri":Landroid/net/Uri;
    .restart local v7    # "extraTargetUri":Landroid/net/Uri;
    :cond_1dd
    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .line 1248
    .end local v2    # "parentSourceUri":Landroid/net/Uri;
    .end local v5    # "extraUri":Landroid/net/Uri;
    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .end local v12    # "parentSourceId":Ljava/lang/String;
    .end local v13    # "targetUri":Landroid/net/Uri;
    .end local v14    # "targetId":Ljava/lang/String;
    .end local v15    # "newDocumentId":Ljava/lang/String;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    .restart local v19    # "extraTargetUri":Landroid/net/Uri;
    :goto_1e3
    goto/16 :goto_2ce

    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .restart local v5    # "extraUri":Landroid/net/Uri;
    .restart local v7    # "extraTargetUri":Landroid/net/Uri;
    :cond_1e5
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .end local v5    # "extraUri":Landroid/net/Uri;
    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    .restart local v19    # "extraTargetUri":Landroid/net/Uri;
    const-string v2, "android:removeDocument"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    .line 1249
    move-object v2, v8

    .line 1250
    .restart local v2    # "parentSourceUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, "parentSourceId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1253
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1254
    invoke-virtual {v0, v11, v5}, Landroid/provider/DocumentsProvider;->removeDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    .end local v2    # "parentSourceUri":Landroid/net/Uri;
    .end local v5    # "parentSourceId":Ljava/lang/String;
    goto/16 :goto_2ce

    :cond_209
    const-string v2, "android:findDocumentPath"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cf

    .line 1259
    invoke-static {v9}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v2

    .line 1261
    .local v2, "isTreeUri":Z
    const/4 v5, 0x0

    if-eqz v2, :cond_220

    .line 1262
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    goto :goto_229

    .line 1264
    :cond_220
    invoke-virtual {v0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :goto_229
    if-eqz v2, :cond_230

    .line 1268
    invoke-static {v9}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_231

    .line 1269
    :cond_230
    move-object v6, v5

    :goto_231
    nop

    .line 1271
    .local v6, "parentDocumentId":Ljava/lang/String;
    invoke-virtual {v0, v6, v11}, Landroid/provider/DocumentsProvider;->findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;

    move-result-object v7

    .line 1274
    .local v7, "path":Landroid/provider/DocumentsContract$Path;
    if-eqz v2, :cond_2ca

    .line 1275
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "DocumentsProvider"

    if-nez v12, :cond_299

    .line 1276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Provider doesn\'t return path from the tree root. Expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " found: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1277
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v14

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1276
    invoke-static {v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    new-instance v5, Ljava/util/LinkedList;

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1280
    .local v5, "docs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_27d
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_292

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_292

    .line 1281
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_27d

    .line 1283
    :cond_292
    new-instance v12, Landroid/provider/DocumentsContract$Path;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v5}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v12

    .line 1286
    .end local v5    # "docs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_299
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2ca

    .line 1287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Provider returns root id :"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1288
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " unexpectedly. Erase root id."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1287
    invoke-static {v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    new-instance v5, Landroid/provider/DocumentsContract$Path;

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    const/4 v14, 0x0

    invoke-direct {v5, v14, v12}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v5

    .line 1293
    :cond_2ca
    invoke-virtual {v4, v15, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1294
    .end local v2    # "isTreeUri":Z
    .end local v6    # "parentDocumentId":Ljava/lang/String;
    .end local v7    # "path":Landroid/provider/DocumentsContract$Path;
    nop

    .line 1300
    :goto_2ce
    return-object v4

    .line 1294
    :cond_2cf
    const-string v2, "android:getDocumentMetadata"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dc

    .line 1295
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 1297
    :cond_2dc
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method not supported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1131
    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .local v5, "extraUri":Landroid/net/Uri;
    .local v7, "extraTargetUri":Landroid/net/Uri;
    :cond_2f5
    move-object/from16 v18, v5

    .end local v5    # "extraUri":Landroid/net/Uri;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested authority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t match provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o enforceTree(Landroid/net/Uri;)V
    .registers 7
    .param p1, "documentUri"    # Landroid/net/Uri;

    .line 229
    if-eqz p1, :cond_41

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 230
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "parent":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "child":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 233
    return-void

    .line 235
    :cond_17
    invoke-virtual {p0, v0, v1}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_41

    .line 236
    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a descendant of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v0    # "parent":Ljava/lang/String;
    .end local v1    # "child":Ljava/lang/String;
    :cond_41
    :goto_41
    return-void
.end method

.method private blacklist enforceTreeForExtraUris(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 222
    const-string/jumbo v0, "uri"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 223
    const-string/jumbo v0, "parentUri"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 224
    const-string v0, "android.content.extra.TARGET_URI"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 225
    return-void
.end method

.method private static greylist-max-o getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1027
    const/4 v0, 0x0

    .line 1028
    .local v0, "modeFlags":I
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_a

    .line 1030
    or-int/lit8 v0, v0, 0x1

    .line 1032
    :cond_a
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_13

    .line 1034
    or-int/lit8 v0, v0, 0x2

    .line 1036
    :cond_13
    const/16 v1, 0x41

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_1d

    .line 1039
    or-int/lit8 v0, v0, 0x40

    .line 1041
    :cond_1d
    return v0
.end method

.method private static greylist-max-o getSortClause(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .param p0, "queryArgs"    # Landroid/os/Bundle;

    .line 947
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 948
    .end local p0    # "queryArgs":Landroid/os/Bundle;
    .local v0, "queryArgs":Landroid/os/Bundle;
    :goto_6
    const-string p0, "android:query-arg-sql-sort-order"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 950
    .local p0, "sortClause":Ljava/lang/String;
    if-nez p0, :cond_1a

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 951
    invoke-static {v0}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 954
    :cond_1a
    return-object p0
.end method

.method private final greylist-max-o openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1450
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1451
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1452
    .local v0, "documentId":Ljava/lang/String;
    if-eqz p3, :cond_1e

    const-string v1, "android.content.extra.SIZE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1453
    const-class v2, Landroid/graphics/Point;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1454
    .local v1, "sizeHint":Landroid/graphics/Point;
    invoke-virtual {p0, v0, v1, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    .line 1456
    .end local v1    # "sizeHint":Landroid/graphics/Point;
    :cond_1e
    const-string v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "r"

    if-eqz v1, :cond_2e

    .line 1458
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 1460
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "baseType":Ljava/lang/String;
    if-eqz v1, :cond_3f

    invoke-static {v1, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1464
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    .line 1467
    :cond_3f
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o registerAuthority(Ljava/lang/String;)V
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 195
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/recent"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/search"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "document/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "document/*/children"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*/children"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method private blacklist validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 243
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 166
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_33

    .line 172
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_2b

    .line 175
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 180
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 181
    return-void

    .line 177
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be protected by MANAGE_DOCUMENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_33
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 186
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    .line 188
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 189
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1085
    const-string v0, "android:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1087
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_d
    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 1092
    :catch_12
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1009
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1010
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 1022
    const/4 v1, 0x0

    return-object v1

    .line 1012
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1014
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1018
    .local v1, "narrowUri":Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 1019
    .local v2, "modeFlags":I
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1020
    return-object v1

    :pswitch_data_2a
    .packed-switch 0x7
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Create not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .registers 5
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createWebLink is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist deleteDocument(Ljava/lang/String;)V
    .registers 4
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist ejectRoot(Ljava/lang/String;)V
    .registers 4
    .param p1, "rootId"    # Ljava/lang/String;

    .line 732
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Eject not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;
    .registers 5
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "childDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "findDocumentPath not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Metadata not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1407
    const/4 v0, 0x0

    .line 1409
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 1410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1411
    const-string/jumbo v2, "mime_type"

    .line 1412
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1413
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "flags"

    .line 1414
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1415
    .local v3, "flags":J
    const-wide/16 v5, 0x200

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3b

    if-eqz v2, :cond_3b

    .line 1416
    invoke-static {v2, p2}, Landroid/content/MimeTypeFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1417
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_37} :catch_45
    .catchall {:try_start_2 .. :try_end_37} :catchall_40

    .line 1423
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1417
    return-object v1

    .line 1423
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "flags":J
    :cond_3b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1424
    nop

    .line 1427
    return-object v1

    .line 1423
    :catchall_40
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1424
    throw v1

    .line 1420
    :catch_45
    move-exception v2

    .line 1421
    .local v2, "e":Ljava/io/FileNotFoundException;
    nop

    .line 1423
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1421
    return-object v1
.end method

.method public whitelist getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 775
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 776
    const-string/jumbo v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1f

    .line 781
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 776
    return-object v0

    .line 778
    :cond_1a
    nop

    .line 781
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 778
    return-object v0

    .line 781
    :catchall_1f
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 782
    throw v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1440
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1441
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 965
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    .line 973
    return-object v0

    .line 970
    :sswitch_b
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 971
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/provider/DocumentsProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 967
    :sswitch_17
    const-string/jumbo v0, "vnd.android.document/root"
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v0

    .line 975
    :catch_1b
    move-exception v1

    .line 976
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "DocumentsProvider"

    const-string v3, "Failed during getType"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x2 -> :sswitch_17
        0x5 -> :sswitch_b
        0x7 -> :sswitch_b
    .end sparse-switch
.end method

.method public final whitelist getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 986
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 990
    const/4 v0, 0x0

    return-object v0

    .line 988
    :pswitch_b
    const-string/jumbo v0, "vnd.android.document/root"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_b
    .end packed-switch
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1052
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "documentId"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "sourceParentDocumentId"    # Ljava/lang/String;
    .param p3, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Move not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1347
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1348
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1349
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_18

    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    move-object v1, v2

    :cond_18
    return-object v1
.end method

.method public final whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1361
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1362
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1363
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_17

    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public abstract whitelist openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Thumbnails not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1322
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1323
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1334
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1335
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1390
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "The requested MIME type is not supported."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 913
    :try_start_0
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_72

    .line 938
    :pswitch_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    goto :goto_50

    .line 927
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 928
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 930
    nop

    .line 931
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 935
    :cond_23
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 923
    :pswitch_2c
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 924
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 920
    :pswitch_38
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 917
    :pswitch_41
    nop

    .line 918
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 915
    :pswitch_4b
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 938
    :goto_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/provider/DocumentsProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_67} :catch_67

    .line 940
    .restart local p0    # "this":Landroid/provider/DocumentsProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_67
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "DocumentsProvider"

    const-string v2, "Failed during query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_9
        :pswitch_41
        :pswitch_38
        :pswitch_2c
        :pswitch_c
        :pswitch_2c
        :pswitch_c
    .end packed-switch
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 879
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 897
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 5
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 618
    nop

    .line 619
    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p0, p1, p2, v0}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public greylist-max-o queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Manage not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Recent not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 507
    const-string/jumbo v0, "rootId can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 510
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v1, "extras":Landroid/os/Bundle;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 512
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.content.extra.HONORED_ARGS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 513
    return-object v0
.end method

.method public abstract whitelist queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Search not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist querySearchDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 5
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 718
    const-string/jumbo v0, "rootId can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string/jumbo v0, "queryArgs can not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-static {p3}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "parentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rename not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist revokeDocumentPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "documentId"    # Ljava/lang/String;

    .line 1310
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1311
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1312
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1313
    return-void
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1073
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
