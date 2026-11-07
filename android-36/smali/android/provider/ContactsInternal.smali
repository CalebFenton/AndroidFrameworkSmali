.class public Landroid/provider/ContactsInternal;
.super Ljava/lang/Object;
.source "ContactsInternal.java"


# static fields
.field private static final greylist-max-o CONTACTS_URI_LOOKUP:I = 0x3e9

.field private static final greylist-max-o CONTACTS_URI_LOOKUP_ID:I = 0x3e8

.field private static final greylist-max-o sContactsUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    .line 50
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "contacts/lookup/*"

    const/16 v2, 0x3e9

    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    const-string v1, "contacts/lookup/*/#"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .end local v0    # "matcher":Landroid/content/UriMatcher;
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static greylist-max-o maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 95
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/4 v5, 0x0

    if-ge v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    move v2, v5

    :goto_13
    move v10, v2

    .line 97
    .local v10, "isContactIdIgnored":Z
    if-eqz v10, :cond_19

    .line 98
    sget-wide v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    goto :goto_1d

    .line 99
    :cond_19
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    :goto_1d
    nop

    .line 100
    .local v2, "contactId":J
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    .line 101
    .local v14, "lookupKey":Ljava/lang/String;
    const-string v6, "directory"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "directoryIdStr":Ljava/lang/String;
    const-wide/32 v6, 0x3b9aca00

    if-nez v15, :cond_33

    .line 103
    move-wide v8, v6

    goto :goto_37

    .line 104
    :cond_33
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :goto_37
    nop

    .line 107
    .local v8, "directoryId":J
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b5

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    .line 108
    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4a

    move v6, v5

    move-wide v4, v8

    goto/16 :goto_b7

    .line 113
    :cond_4a
    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 116
    invoke-static {v8, v9}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 121
    const-class v5, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v11, p0

    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 122
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v12, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    .line 123
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .line 122
    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "actualLookupKey":Ljava/lang/String;
    sget-wide v16, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long v16, v2, v16

    .line 126
    .local v16, "actualContactId":J
    sub-long v6, v8, v6

    .line 129
    .local v6, "actualDirectoryId":J
    move-wide/from16 v18, v6

    move-object v7, v12

    move-wide/from16 v11, v18

    move-object/from16 v13, p1

    move-object v6, v5

    move-wide v4, v8

    move-wide/from16 v8, v16

    const/16 v16, 0x1

    .end local v5    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "actualLookupKey":Ljava/lang/String;
    .end local v16    # "actualContactId":J
    .local v4, "directoryId":J
    .local v6, "dpm":Landroid/app/admin/DevicePolicyManager;
    .local v7, "actualLookupKey":Ljava/lang/String;
    .local v8, "actualContactId":J
    .local v11, "actualDirectoryId":J
    invoke-virtual/range {v6 .. v13}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 131
    return v16

    .line 117
    .end local v4    # "directoryId":J
    .end local v6    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v7    # "actualLookupKey":Ljava/lang/String;
    .end local v11    # "actualDirectoryId":J
    .local v8, "directoryId":J
    :cond_81
    move-wide v4, v8

    .end local v8    # "directoryId":J
    .restart local v4    # "directoryId":J
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid enterprise directory id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    .end local v4    # "directoryId":J
    .restart local v8    # "directoryId":J
    :cond_9b
    move-wide v4, v8

    .end local v8    # "directoryId":J
    .restart local v4    # "directoryId":J
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid enterprise contact id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 107
    .end local v4    # "directoryId":J
    .restart local v8    # "directoryId":J
    :cond_b5
    move v6, v5

    move-wide v4, v8

    .line 110
    .end local v8    # "directoryId":J
    .restart local v4    # "directoryId":J
    :goto_b7
    return v6
.end method

.method public static greylist startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 62
    .local v1, "match":I
    packed-switch v1, :pswitch_data_1e

    goto :goto_15

    .line 65
    :pswitch_e
    invoke-static {p0, p1}, Landroid/provider/ContactsInternal;->maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 66
    return-void

    .line 72
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 73
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x3e8
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static greylist-max-o startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 78
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 82
    goto :goto_10

    .line 79
    :catch_4
    move-exception v0

    .line 80
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x10408f3

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_10
    return-void
.end method
