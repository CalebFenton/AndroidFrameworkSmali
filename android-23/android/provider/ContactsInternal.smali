.class public Landroid/provider/ContactsInternal;
.super Ljava/lang/Object;
.source "ContactsInternal.java"


# static fields
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
    .line 48
    sget-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    #@a
    .line 49
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string/jumbo v1, "com.android.contacts"

    #@d
    const-string/jumbo v2, "contacts/lookup/*/#"

    #@10
    const/16 v3, 0x3e8

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    #@15
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
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v8

    #@4
    .line 91
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@7
    move-result-object v7

    #@8
    .line 92
    .local v7, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@b
    move-result-wide v4

    #@c
    .line 93
    .local v4, "contactId":J
    const/4 v9, 0x2

    #@d
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Ljava/lang/String;

    #@13
    .line 96
    .local v6, "lookupKey":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v9

    #@17
    if-nez v9, :cond_0

    #@19
    .line 98
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    #@1b
    .line 97
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v9

    #@1f
    if-eqz v9, :cond_0

    #@21
    .line 103
    const-class v9, Landroid/app/admin/DevicePolicyManager;

    #@23
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    #@29
    .line 105
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    #@2b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@2e
    move-result v9

    #@2f
    .line 104
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 107
    .local v2, "actualLookupKey":Ljava/lang/String;
    sget-wide v10, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    #@35
    sub-long v0, v4, v10

    #@37
    .line 109
    .local v0, "actualContactId":J
    invoke-virtual {v3, v2, v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V

    #@3a
    .line 110
    const/4 v9, 0x1

    #@3b
    return v9

    #@3c
    .line 99
    .end local v0    # "actualContactId":J
    .end local v2    # "actualLookupKey":Ljava/lang/String;
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    const/4 v9, 0x0

    #@3d
    return v9
.end method

.method public static startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    .line 58
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    #@6
    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    #@9
    move-result v0

    #@a
    .line 59
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    #@d
    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@10
    move-result-object v2

    #@11
    invoke-static {p0, p1, v2}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@14
    .line 55
    return-void

    #@15
    .line 61
    :pswitch_0
    invoke-static {p0, p1}, Landroid/provider/ContactsInternal;->maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 62
    return-void

    #@1c
    .line 59
    :pswitch_data_0
    .packed-switch 0x3e8
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
    .line 74
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 72
    :goto_0
    return-void

    #@4
    .line 75
    :catch_0
    move-exception v0

    #@5
    .line 76
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x1040257

    #@8
    .line 77
    const/4 v2, 0x0

    #@9
    .line 76
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    #@10
    goto :goto_0
.end method
