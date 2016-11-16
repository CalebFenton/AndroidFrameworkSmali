.class public Landroid/provider/ContactsInternal;
.super Ljava/lang/Object;
.source "ContactsInternal.java"


# static fields
.field private static final CONTACTS_URI_LOOKUP:I = 0x3e9

.field private static final CONTACTS_URI_LOOKUP_ID:I = 0x3e8

.field private static final sContactsUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 42
    new-instance v1, Landroid/content/UriMatcher;

    #@2
    const/4 v2, -0x1

    #@3
    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    #@6
    sput-object v1, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    #@8
    .line 49
    sget-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    #@a
    .line 50
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string/jumbo v1, "com.android.contacts"

    #@d
    const-string/jumbo v2, "contacts/lookup/*"

    #@10
    const/16 v3, 0x3e9

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@15
    .line 51
    const-string/jumbo v1, "com.android.contacts"

    #@18
    const-string/jumbo v2, "contacts/lookup/*/#"

    #@1b
    const/16 v3, 0x3e8

    #@1d
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@20
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v17

    #@4
    .line 94
    .local v17, "uri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@7
    move-result-object v16

    #@8
    .line 95
    .local v16, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@b
    move-result v9

    #@c
    const/16 v18, 0x4

    #@e
    move/from16 v0, v18

    #@10
    if-ge v9, v0, :cond_0

    #@12
    const/4 v6, 0x1

    #@13
    .line 96
    .local v6, "isContactIdIgnored":Z
    :goto_0
    if-eqz v6, :cond_1

    #@15
    .line 97
    sget-wide v10, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    #@17
    .line 99
    .local v10, "contactId":J
    :goto_1
    const/4 v9, 0x2

    #@18
    move-object/from16 v0, v16

    #@1a
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v15

    #@1e
    check-cast v15, Ljava/lang/String;

    #@20
    .line 100
    .local v15, "lookupKey":Ljava/lang/String;
    const-string/jumbo v9, "directory"

    #@23
    move-object/from16 v0, v17

    #@25
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v14

    #@29
    .line 101
    .local v14, "directoryIdStr":Ljava/lang/String;
    if-nez v14, :cond_2

    #@2b
    .line 102
    const-wide/32 v12, 0x3b9aca00

    #@2e
    .line 106
    .local v12, "directoryId":J
    :goto_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31
    move-result v9

    #@32
    if-nez v9, :cond_3

    #@34
    .line 108
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    #@36
    .line 107
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@39
    move-result v9

    #@3a
    if-eqz v9, :cond_3

    #@3c
    .line 112
    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    #@3f
    move-result v9

    #@40
    if-nez v9, :cond_4

    #@42
    .line 113
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@44
    new-instance v18, Ljava/lang/StringBuilder;

    #@46
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v19, "Invalid enterprise contact id: "

    #@4c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v18

    #@50
    move-object/from16 v0, v18

    #@52
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    move-result-object v18

    #@56
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v18

    #@5a
    move-object/from16 v0, v18

    #@5c
    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v9

    #@60
    .line 95
    .end local v6    # "isContactIdIgnored":Z
    .end local v10    # "contactId":J
    .end local v12    # "directoryId":J
    .end local v14    # "directoryIdStr":Ljava/lang/String;
    .end local v15    # "lookupKey":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    #@61
    goto :goto_0

    #@62
    .line 98
    .restart local v6    # "isContactIdIgnored":Z
    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@65
    move-result-wide v10

    #@66
    .restart local v10    # "contactId":J
    goto :goto_1

    #@67
    .line 103
    .restart local v14    # "directoryIdStr":Ljava/lang/String;
    .restart local v15    # "lookupKey":Ljava/lang/String;
    :cond_2
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@6a
    move-result-wide v12

    #@6b
    .restart local v12    # "directoryId":J
    goto :goto_2

    #@6c
    .line 109
    :cond_3
    const/4 v9, 0x0

    #@6d
    return v9

    #@6e
    .line 115
    :cond_4
    invoke-static {v12, v13}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    #@71
    move-result v9

    #@72
    if-nez v9, :cond_5

    #@74
    .line 116
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@76
    new-instance v18, Ljava/lang/StringBuilder;

    #@78
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v19, "Invalid enterprise directory id: "

    #@7e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v18

    #@82
    move-object/from16 v0, v18

    #@84
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@87
    move-result-object v18

    #@88
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v18

    #@8c
    move-object/from16 v0, v18

    #@8e
    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@91
    throw v9

    #@92
    .line 120
    :cond_5
    const-class v9, Landroid/app/admin/DevicePolicyManager;

    #@94
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@99
    move-result-object v2

    #@9a
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    #@9c
    .line 122
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    #@9e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@a1
    move-result v9

    #@a2
    .line 121
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    .line 124
    .local v3, "actualLookupKey":Ljava/lang/String;
    sget-wide v18, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    #@a8
    sub-long v4, v10, v18

    #@aa
    .line 126
    .local v4, "actualContactId":J
    const-wide/32 v18, 0x3b9aca00

    #@ad
    .line 125
    sub-long v7, v12, v18

    #@af
    .local v7, "actualDirectoryId":J
    move-object/from16 v9, p1

    #@b1
    .line 128
    invoke-virtual/range {v2 .. v9}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    #@b4
    .line 130
    const/4 v9, 0x1

    #@b5
    return v9
.end method

.method public static startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    .line 60
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    #@6
    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@9
    move-result v0

    #@a
    .line 61
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    #@d
    .line 71
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@10
    move-result-object v2

    #@11
    invoke-static {p0, p1, v2}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@14
    .line 57
    return-void

    #@15
    .line 64
    :pswitch_0
    invoke-static {p0, p1}, Landroid/provider/ContactsInternal;->maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 65
    return-void

    #@1c
    .line 61
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 75
    :goto_0
    return-void

    #@4
    .line 78
    :catch_0
    move-exception v0

    #@5
    .line 79
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x1040285

    #@8
    .line 80
    const/4 v2, 0x0

    #@9
    .line 79
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    #@10
    goto :goto_0
.end method
