.class public Landroid/content/SyncActivityTooManyDeletes;
.super Landroid/app/Activity;
.source "SyncActivityTooManyDeletes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private greylist-max-o mAccount:Landroid/accounts/Account;

.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mNumDeletes:J

.field private greylist-max-o mProvider:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private greylist-max-o startSyncReallyDelete()V
    .registers 4

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "deletions_override"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method private greylist-max-o startSyncUndoDeletes()V
    .registers 4

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "discard_deletions"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_11

    .line 52
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    .line 53
    return-void

    .line 56
    :cond_11
    const-string/jumbo v1, "numDeletes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    .line 57
    const-string v1, "account"

    const-class v2, Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    .line 58
    const-string v1, "authority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    .line 62
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a2d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 64
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a30

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 65
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040a2c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 68
    .local v1, "options":[Ljava/lang/CharSequence;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    const v5, 0x1020014

    invoke-direct {v2, p0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 73
    .local v2, "adapter":Landroid/widget/ListAdapter;
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 76
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v5, "textView":Landroid/widget/TextView;
    nop

    .line 80
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a2f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 81
    .local v6, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    iget-object v10, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    .line 81
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v7, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v3, v10, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 88
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v7, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0, v7}, Landroid/content/SyncActivityTooManyDeletes;->setContentView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_6

    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncReallyDelete()V

    goto :goto_c

    .line 112
    :cond_6
    const/4 v0, 0x1

    if-ne p3, v0, :cond_c

    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncUndoDeletes()V

    .line 113
    :cond_c
    :goto_c
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    .line 114
    return-void
.end method
