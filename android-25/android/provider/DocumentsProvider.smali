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
    .line 132
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method private callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v8

    #@4
    .line 726
    .local v8, "context":Landroid/content/Context;
    const-string/jumbo v21, "uri"

    #@7
    move-object/from16 v0, p3

    #@9
    move-object/from16 v1, v21

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@e
    move-result-object v11

    #@f
    check-cast v11, Landroid/net/Uri;

    #@11
    .line 727
    .local v11, "documentUri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 728
    .local v4, "authority":Ljava/lang/String;
    invoke-static {v11}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    .line 730
    .local v10, "documentId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@1d
    move-object/from16 v21, v0

    #@1f
    move-object/from16 v0, v21

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v21

    #@25
    if-nez v21, :cond_0

    #@27
    .line 731
    new-instance v21, Ljava/lang/SecurityException;

    #@29
    .line 732
    new-instance v22, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v23, "Requested authority "

    #@31
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v22

    #@35
    move-object/from16 v0, v22

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v22

    #@3b
    const-string/jumbo v23, " doesn\'t match provider "

    #@3e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v22

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@46
    move-object/from16 v23, v0

    #@48
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v22

    #@4c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v22

    #@50
    .line 731
    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@53
    throw v21

    #@54
    .line 735
    :cond_0
    new-instance v16, Landroid/os/Bundle;

    #@56
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    #@59
    .line 738
    .local v16, "out":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@5b
    invoke-direct {v0, v11}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@5e
    .line 740
    const-string/jumbo v21, "android:isChildDocument"

    #@61
    move-object/from16 v0, v21

    #@63
    move-object/from16 v1, p1

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v21

    #@69
    if-eqz v21, :cond_3

    #@6b
    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@6e
    move-result-object v21

    #@6f
    const/16 v22, 0x0

    #@71
    move-object/from16 v0, p0

    #@73
    move-object/from16 v1, v21

    #@75
    move-object/from16 v2, v22

    #@77
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@7a
    .line 743
    const-string/jumbo v21, "android.content.extra.TARGET_URI"

    #@7d
    move-object/from16 v0, p3

    #@7f
    move-object/from16 v1, v21

    #@81
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@84
    move-result-object v7

    #@85
    check-cast v7, Landroid/net/Uri;

    #@87
    .line 744
    .local v7, "childUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    .line 745
    .local v5, "childAuthority":Ljava/lang/String;
    invoke-static {v7}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    .line 748
    .local v6, "childId":Ljava/lang/String;
    const-string/jumbo v22, "result"

    #@92
    .line 749
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@96
    move-object/from16 v21, v0

    #@98
    move-object/from16 v0, v21

    #@9a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v21

    #@9e
    if-eqz v21, :cond_2

    #@a0
    .line 750
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v10, v6}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    #@a5
    move-result v21

    #@a6
    .line 747
    :goto_0
    move-object/from16 v0, v16

    #@a8
    move-object/from16 v1, v22

    #@aa
    move/from16 v2, v21

    #@ac
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@af
    .line 859
    .end local v5    # "childAuthority":Ljava/lang/String;
    .end local v6    # "childId":Ljava/lang/String;
    .end local v7    # "childUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v16

    #@b0
    .line 749
    .restart local v5    # "childAuthority":Ljava/lang/String;
    .restart local v6    # "childId":Ljava/lang/String;
    .restart local v7    # "childUri":Landroid/net/Uri;
    :cond_2
    const/16 v21, 0x0

    #@b2
    goto :goto_0

    #@b3
    .line 752
    .end local v5    # "childAuthority":Ljava/lang/String;
    .end local v6    # "childId":Ljava/lang/String;
    .end local v7    # "childUri":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v21, "android:createDocument"

    #@b6
    move-object/from16 v0, v21

    #@b8
    move-object/from16 v1, p1

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v21

    #@be
    if-eqz v21, :cond_4

    #@c0
    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@c3
    move-result-object v21

    #@c4
    const/16 v22, 0x0

    #@c6
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v21

    #@ca
    move-object/from16 v2, v22

    #@cc
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@cf
    .line 755
    const-string/jumbo v21, "mime_type"

    #@d2
    move-object/from16 v0, p3

    #@d4
    move-object/from16 v1, v21

    #@d6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d9
    move-result-object v12

    #@da
    .line 756
    .local v12, "mimeType":Ljava/lang/String;
    const-string/jumbo v21, "_display_name"

    #@dd
    move-object/from16 v0, p3

    #@df
    move-object/from16 v1, v21

    #@e1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e4
    move-result-object v9

    #@e5
    .line 757
    .local v9, "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v10, v12, v9}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v14

    #@eb
    .line 762
    .local v14, "newDocumentId":Ljava/lang/String;
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@ee
    move-result-object v15

    #@ef
    .line 764
    .local v15, "newDocumentUri":Landroid/net/Uri;
    const-string/jumbo v21, "uri"

    #@f2
    move-object/from16 v0, v16

    #@f4
    move-object/from16 v1, v21

    #@f6
    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f9
    goto :goto_1

    #@fa
    .line 766
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v21, "android:renameDocument"

    #@fd
    move-object/from16 v0, v21

    #@ff
    move-object/from16 v1, p1

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v21

    #@105
    if-eqz v21, :cond_6

    #@107
    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@10a
    move-result-object v21

    #@10b
    const/16 v22, 0x0

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v21

    #@111
    move-object/from16 v2, v22

    #@113
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@116
    .line 769
    const-string/jumbo v21, "_display_name"

    #@119
    move-object/from16 v0, p3

    #@11b
    move-object/from16 v1, v21

    #@11d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v9

    #@121
    .line 770
    .restart local v9    # "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@123
    invoke-virtual {v0, v10, v9}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@126
    move-result-object v14

    #@127
    .line 772
    .restart local v14    # "newDocumentId":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@129
    .line 773
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@12c
    move-result-object v15

    #@12d
    .line 778
    .restart local v15    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v15}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@130
    move-result v21

    #@131
    if-nez v21, :cond_5

    #@133
    .line 779
    invoke-static {v8, v11}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    #@136
    move-result v13

    #@137
    .line 781
    .local v13, "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@13a
    move-result-object v21

    #@13b
    move-object/from16 v0, v21

    #@13d
    invoke-virtual {v8, v0, v15, v13}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@140
    .line 784
    .end local v13    # "modeFlags":I
    :cond_5
    const-string/jumbo v21, "uri"

    #@143
    move-object/from16 v0, v16

    #@145
    move-object/from16 v1, v21

    #@147
    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14a
    .line 787
    move-object/from16 v0, p0

    #@14c
    invoke-virtual {v0, v10}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    #@14f
    goto/16 :goto_1

    #@151
    .line 790
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v21, "android:deleteDocument"

    #@154
    move-object/from16 v0, v21

    #@156
    move-object/from16 v1, p1

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v21

    #@15c
    if-eqz v21, :cond_7

    #@15e
    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@161
    move-result-object v21

    #@162
    const/16 v22, 0x0

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, v21

    #@168
    move-object/from16 v2, v22

    #@16a
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@16d
    .line 792
    move-object/from16 v0, p0

    #@16f
    invoke-virtual {v0, v10}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    #@172
    .line 795
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v10}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    #@177
    goto/16 :goto_1

    #@179
    .line 797
    :cond_7
    const-string/jumbo v21, "android:copyDocument"

    #@17c
    move-object/from16 v0, v21

    #@17e
    move-object/from16 v1, p1

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@183
    move-result v21

    #@184
    if-eqz v21, :cond_9

    #@186
    .line 798
    const-string/jumbo v21, "android.content.extra.TARGET_URI"

    #@189
    move-object/from16 v0, p3

    #@18b
    move-object/from16 v1, v21

    #@18d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@190
    move-result-object v20

    #@191
    check-cast v20, Landroid/net/Uri;

    #@193
    .line 799
    .local v20, "targetUri":Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@196
    move-result-object v19

    #@197
    .line 801
    .local v19, "targetId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@19a
    move-result-object v21

    #@19b
    const/16 v22, 0x0

    #@19d
    move-object/from16 v0, p0

    #@19f
    move-object/from16 v1, v21

    #@1a1
    move-object/from16 v2, v22

    #@1a3
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@1a6
    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@1a9
    move-result-object v21

    #@1aa
    const/16 v22, 0x0

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    move-object/from16 v1, v20

    #@1b0
    move-object/from16 v2, v21

    #@1b2
    move-object/from16 v3, v22

    #@1b4
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@1b7
    .line 804
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v19

    #@1bb
    invoke-virtual {v0, v10, v1}, Landroid/provider/DocumentsProvider;->copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1be
    move-result-object v14

    #@1bf
    .line 806
    .restart local v14    # "newDocumentId":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@1c1
    .line 807
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1c4
    move-result-object v15

    #@1c5
    .line 810
    .restart local v15    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v15}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@1c8
    move-result v21

    #@1c9
    if-nez v21, :cond_8

    #@1cb
    .line 811
    invoke-static {v8, v11}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    #@1ce
    move-result v13

    #@1cf
    .line 813
    .restart local v13    # "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@1d2
    move-result-object v21

    #@1d3
    move-object/from16 v0, v21

    #@1d5
    invoke-virtual {v8, v0, v15, v13}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@1d8
    .line 816
    .end local v13    # "modeFlags":I
    :cond_8
    const-string/jumbo v21, "uri"

    #@1db
    move-object/from16 v0, v16

    #@1dd
    move-object/from16 v1, v21

    #@1df
    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1e2
    goto/16 :goto_1

    #@1e4
    .line 819
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    .end local v19    # "targetId":Ljava/lang/String;
    .end local v20    # "targetUri":Landroid/net/Uri;
    :cond_9
    const-string/jumbo v21, "android:moveDocument"

    #@1e7
    move-object/from16 v0, v21

    #@1e9
    move-object/from16 v1, p1

    #@1eb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ee
    move-result v21

    #@1ef
    if-eqz v21, :cond_b

    #@1f1
    .line 820
    const-string/jumbo v21, "parentUri"

    #@1f4
    move-object/from16 v0, p3

    #@1f6
    move-object/from16 v1, v21

    #@1f8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1fb
    move-result-object v18

    #@1fc
    check-cast v18, Landroid/net/Uri;

    #@1fe
    .line 821
    .local v18, "parentSourceUri":Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@201
    move-result-object v17

    #@202
    .line 822
    .local v17, "parentSourceId":Ljava/lang/String;
    const-string/jumbo v21, "android.content.extra.TARGET_URI"

    #@205
    move-object/from16 v0, p3

    #@207
    move-object/from16 v1, v21

    #@209
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20c
    move-result-object v20

    #@20d
    check-cast v20, Landroid/net/Uri;

    #@20f
    .line 823
    .restart local v20    # "targetUri":Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@212
    move-result-object v19

    #@213
    .line 825
    .restart local v19    # "targetId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@216
    move-result-object v21

    #@217
    const/16 v22, 0x0

    #@219
    move-object/from16 v0, p0

    #@21b
    move-object/from16 v1, v21

    #@21d
    move-object/from16 v2, v22

    #@21f
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@222
    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@225
    move-result-object v21

    #@226
    const/16 v22, 0x0

    #@228
    move-object/from16 v0, p0

    #@22a
    move-object/from16 v1, v18

    #@22c
    move-object/from16 v2, v21

    #@22e
    move-object/from16 v3, v22

    #@230
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@233
    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@236
    move-result-object v21

    #@237
    const/16 v22, 0x0

    #@239
    move-object/from16 v0, p0

    #@23b
    move-object/from16 v1, v20

    #@23d
    move-object/from16 v2, v21

    #@23f
    move-object/from16 v3, v22

    #@241
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@244
    .line 829
    move-object/from16 v0, p0

    #@246
    move-object/from16 v1, v17

    #@248
    move-object/from16 v2, v19

    #@24a
    invoke-virtual {v0, v10, v1, v2}, Landroid/provider/DocumentsProvider;->moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24d
    move-result-object v14

    #@24e
    .line 831
    .restart local v14    # "newDocumentId":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@250
    .line 832
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@253
    move-result-object v15

    #@254
    .line 835
    .restart local v15    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v15}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@257
    move-result v21

    #@258
    if-nez v21, :cond_a

    #@25a
    .line 836
    invoke-static {v8, v11}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    #@25d
    move-result v13

    #@25e
    .line 838
    .restart local v13    # "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@261
    move-result-object v21

    #@262
    move-object/from16 v0, v21

    #@264
    invoke-virtual {v8, v0, v15, v13}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@267
    .line 841
    .end local v13    # "modeFlags":I
    :cond_a
    const-string/jumbo v21, "uri"

    #@26a
    move-object/from16 v0, v16

    #@26c
    move-object/from16 v1, v21

    #@26e
    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@271
    goto/16 :goto_1

    #@273
    .line 844
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    .end local v17    # "parentSourceId":Ljava/lang/String;
    .end local v18    # "parentSourceUri":Landroid/net/Uri;
    .end local v19    # "targetId":Ljava/lang/String;
    .end local v20    # "targetUri":Landroid/net/Uri;
    :cond_b
    const-string/jumbo v21, "android:removeDocument"

    #@276
    move-object/from16 v0, v21

    #@278
    move-object/from16 v1, p1

    #@27a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27d
    move-result v21

    #@27e
    if-eqz v21, :cond_c

    #@280
    .line 845
    const-string/jumbo v21, "parentUri"

    #@283
    move-object/from16 v0, p3

    #@285
    move-object/from16 v1, v21

    #@287
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@28a
    move-result-object v18

    #@28b
    check-cast v18, Landroid/net/Uri;

    #@28d
    .line 846
    .restart local v18    # "parentSourceUri":Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@290
    move-result-object v17

    #@291
    .line 848
    .restart local v17    # "parentSourceId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@294
    move-result-object v21

    #@295
    const/16 v22, 0x0

    #@297
    move-object/from16 v0, p0

    #@299
    move-object/from16 v1, v18

    #@29b
    move-object/from16 v2, v21

    #@29d
    move-object/from16 v3, v22

    #@29f
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@2a2
    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@2a5
    move-result-object v21

    #@2a6
    const/16 v22, 0x0

    #@2a8
    move-object/from16 v0, p0

    #@2aa
    move-object/from16 v1, v21

    #@2ac
    move-object/from16 v2, v22

    #@2ae
    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    #@2b1
    .line 850
    move-object/from16 v0, p0

    #@2b3
    move-object/from16 v1, v17

    #@2b5
    invoke-virtual {v0, v10, v1}, Landroid/provider/DocumentsProvider;->removeDocument(Ljava/lang/String;Ljava/lang/String;)V

    #@2b8
    goto/16 :goto_1

    #@2ba
    .line 856
    .end local v17    # "parentSourceId":Ljava/lang/String;
    .end local v18    # "parentSourceUri":Landroid/net/Uri;
    :cond_c
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    #@2bc
    new-instance v22, Ljava/lang/StringBuilder;

    #@2be
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2c1
    const-string/jumbo v23, "Method not supported "

    #@2c4
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v22

    #@2c8
    move-object/from16 v0, v22

    #@2ca
    move-object/from16 v1, p1

    #@2cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v22

    #@2d0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d3
    move-result-object v22

    #@2d4
    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2d7
    throw v21
.end method

.method private enforceTree(Landroid/net/Uri;)V
    .locals 5
    .param p1, "documentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 197
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 198
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 199
    .local v1, "parent":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 200
    .local v0, "child":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 201
    return-void

    #@15
    .line 203
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 204
    new-instance v2, Ljava/lang/SecurityException;

    #@1d
    .line 205
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
    .line 204
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 196
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
    .line 652
    const/4 v0, 0x0

    #@1
    .line 653
    .local v0, "modeFlags":I
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 655
    const/4 v0, 0x1

    #@9
    .line 657
    :cond_0
    const/4 v1, 0x2

    #@a
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 659
    or-int/lit8 v0, v0, 0x2

    #@12
    .line 661
    :cond_1
    const/16 v1, 0x41

    #@14
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 664
    or-int/lit8 v0, v0, 0x40

    #@1c
    .line 666
    :cond_2
    return v0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "filter"    # Ljava/lang/String;
    .param p1, "test"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1031
    if-nez p1, :cond_0

    #@4
    .line 1032
    return v1

    #@5
    .line 1033
    :cond_0
    if-eqz p0, :cond_1

    #@7
    const-string/jumbo v0, "*/*"

    #@a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 1034
    :cond_1
    return v2

    #@11
    .line 1035
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 1036
    return v2

    #@18
    .line 1037
    :cond_3
    const-string/jumbo v0, "/*"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 1038
    const/16 v0, 0x2f

    #@23
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v0

    #@27
    invoke-virtual {p0, v1, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 1040
    :cond_4
    return v1
.end method

.method private final openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
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
    .line 1007
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 1008
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1009
    .local v1, "documentId":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@9
    const-string/jumbo v3, "android.content.extra.SIZE"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 1010
    const-string/jumbo v3, "android.content.extra.SIZE"

    #@15
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/graphics/Point;

    #@1b
    .line 1011
    .local v2, "sizeHint":Landroid/graphics/Point;
    invoke-virtual {p0, v1, v2, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@1e
    move-result-object v3

    #@1f
    return-object v3

    #@20
    .line 1013
    .end local v2    # "sizeHint":Landroid/graphics/Point;
    :cond_0
    const-string/jumbo v3, "*/*"

    #@23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1015
    const-string/jumbo v3, "r"

    #@2c
    invoke-virtual {p0, p1, v3}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@2f
    move-result-object v3

    #@30
    return-object v3

    #@31
    .line 1017
    :cond_1
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 1018
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@37
    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 1021
    const-string/jumbo v3, "r"

    #@40
    invoke-virtual {p0, p1, v3}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@43
    move-result-object v3

    #@44
    return-object v3

    #@45
    .line 1024
    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@48
    move-result-object v3

    #@49
    return-object v3
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 153
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@4
    .line 155
    new-instance v0, Landroid/content/UriMatcher;

    #@6
    const/4 v1, -0x1

    #@7
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@c
    .line 156
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
    .line 157
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
    .line 158
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
    .line 159
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
    .line 160
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
    .line 161
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
    .line 162
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
    .line 163
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
    .line 166
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    #@67
    if-nez v0, :cond_0

    #@69
    .line 167
    new-instance v0, Ljava/lang/SecurityException;

    #@6b
    const-string/jumbo v1, "Provider must be exported"

    #@6e
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@71
    throw v0

    #@72
    .line 169
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    #@74
    if-nez v0, :cond_1

    #@76
    .line 170
    new-instance v0, Ljava/lang/SecurityException;

    #@78
    const-string/jumbo v1, "Provider must grantUriPermissions"

    #@7b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v0

    #@7f
    .line 172
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
    .line 173
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
    .line 177
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@98
    .line 152
    return-void

    #@99
    .line 174
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
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 710
    const-string/jumbo v1, "android:"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 712
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 716
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 717
    :catch_0
    move-exception v0

    #@14
    .line 718
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Failed call "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v1
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 635
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@6
    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@9
    move-result v3

    #@a
    packed-switch v3, :pswitch_data_0

    #@d
    .line 647
    const/4 v3, 0x0

    #@e
    return-object v3

    #@f
    .line 637
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@12
    .line 639
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
    .line 643
    .local v2, "narrowUri":Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    #@21
    move-result v1

    #@22
    .line 644
    .local v1, "modeFlags":I
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@29
    .line 645
    return-object v2

    #@2a
    .line 635
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Copy not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 227
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
    .line 688
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
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Delete not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 964
    const/4 v0, 0x0

    #@2
    .line 966
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@6
    move-result-object v0

    #@7
    .line 967
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 969
    const-string/jumbo v5, "mime_type"

    #@10
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@13
    move-result v5

    #@14
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 971
    .local v4, "mimeType":Ljava/lang/String;
    const-string/jumbo v5, "flags"

    #@1b
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1e
    move-result v5

    #@1f
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    #@22
    move-result-wide v2

    #@23
    .line 972
    .local v2, "flags":J
    const-wide/16 v6, 0x200

    #@25
    and-long/2addr v6, v2

    #@26
    const-wide/16 v8, 0x0

    #@28
    cmp-long v5, v6, v8

    #@2a
    if-nez v5, :cond_0

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 973
    invoke-static {p2, v4}, Landroid/provider/DocumentsProvider;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    .line 972
    if-eqz v5, :cond_0

    #@34
    .line 974
    const/4 v5, 0x1

    #@35
    new-array v5, v5, [Ljava/lang/String;

    #@37
    const/4 v6, 0x0

    #@38
    aput-object v4, v5, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 980
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 974
    return-object v5

    #@3e
    .line 980
    .end local v2    # "flags":J
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@41
    .line 984
    return-object v10

    #@42
    .line 977
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    #@43
    .line 980
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@46
    .line 978
    return-object v10

    #@47
    .line 979
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    #@48
    .line 980
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 979
    throw v5
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
    .line 468
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@4
    move-result-object v0

    #@5
    .line 470
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 471
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
    .line 476
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 471
    return-object v1

    #@1a
    .line 476
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1d
    .line 473
    return-object v2

    #@1e
    .line 475
    :catchall_0
    move-exception v1

    #@1f
    .line 476
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@22
    .line 475
    throw v1
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 997
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 998
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 603
    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@3
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 611
    :pswitch_0
    return-object v3

    #@b
    .line 605
    :pswitch_1
    const-string/jumbo v1, "vnd.android.document/root"

    #@e
    return-object v1

    #@f
    .line 608
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@12
    .line 609
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
    .line 613
    :catch_0
    move-exception v0

    #@1c
    .line 614
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "DocumentsProvider"

    #@1f
    const-string/jumbo v2, "Failed during getType"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 615
    return-object v3

    #@26
    .line 603
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
    .line 677
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
    .line 192
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "sourceParentDocumentId"    # Ljava/lang/String;
    .param p3, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Move not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 906
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4
    .line 907
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v2, p2, v0}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v1

    #@c
    .line 908
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
    .line 920
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4
    .line 921
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v2, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v1

    #@c
    .line 922
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
    .line 526
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
    .line 881
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 882
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
    .line 893
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@3
    .line 894
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
    .locals 1
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
    .line 935
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
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
    .line 949
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
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
    .line 549
    new-instance v0, Ljava/io/FileNotFoundException;

    #@2
    const-string/jumbo v1, "The requested MIME type is not supported."

    #@5
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    #@2
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@5
    move-result v1

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 587
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
    .line 589
    :catch_0
    move-exception v0

    #@24
    .line 590
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "DocumentsProvider"

    #@27
    const-string/jumbo v2, "Failed during query"

    #@2a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 591
    const/4 v1, 0x0

    #@2e
    return-object v1

    #@2f
    .line 567
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 569
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
    .line 572
    :pswitch_3
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 571
    invoke-virtual {p0, v1, v2, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@48
    move-result-object v1

    #@49
    return-object v1

    #@4a
    .line 575
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@4d
    .line 576
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
    .line 579
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    #@59
    .line 580
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_0

    #@5f
    .line 582
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 581
    invoke-virtual {p0, v1, p2, p5}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@66
    move-result-object v1

    #@67
    return-object v1

    #@68
    .line 584
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
    .line 565
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
    .line 418
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
    .line 359
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
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Search not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "parentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Remove not supported"

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
    .line 247
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
    .line 869
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 870
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@7
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    #@e
    .line 871
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    #@10
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    #@17
    .line 868
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
    .line 698
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Update not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
