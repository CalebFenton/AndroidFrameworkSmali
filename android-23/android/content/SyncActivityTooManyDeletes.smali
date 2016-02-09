.class public Landroid/content/SyncActivityTooManyDeletes;
.super Landroid/app/Activity;
.source "SyncActivityTooManyDeletes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mNumDeletes:J

.field private mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method

.method private startSyncReallyDelete()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 117
    new-instance v0, Landroid/os/Bundle;

    #@3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 118
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "deletions_override"

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 119
    const-string/jumbo v1, "force"

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@12
    .line 120
    const-string/jumbo v1, "expedited"

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@18
    .line 121
    const-string/jumbo v1, "upload"

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1e
    .line 122
    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    #@20
    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    #@22
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@25
    .line 116
    return-void
.end method

.method private startSyncUndoDeletes()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 126
    new-instance v0, Landroid/os/Bundle;

    #@3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 127
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "discard_deletions"

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c
    .line 128
    const-string/jumbo v1, "force"

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@12
    .line 129
    const-string/jumbo v1, "expedited"

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@18
    .line 130
    const-string/jumbo v1, "upload"

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1e
    .line 131
    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    #@20
    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    #@22
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@25
    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 50
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getIntent()Landroid/content/Intent;

    #@6
    move-result-object v8

    #@7
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@a
    move-result-object v1

    #@b
    .line 51
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    #@d
    .line 52
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    #@10
    .line 53
    return-void

    #@11
    .line 56
    :cond_0
    const-string/jumbo v8, "numDeletes"

    #@14
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@17
    move-result-wide v8

    #@18
    iput-wide v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    #@1a
    .line 57
    const-string/jumbo v8, "account"

    #@1d
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v8

    #@21
    check-cast v8, Landroid/accounts/Account;

    #@23
    iput-object v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    #@25
    .line 58
    const-string/jumbo v8, "authority"

    #@28
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    iput-object v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    #@2e
    .line 59
    const-string/jumbo v8, "provider"

    #@31
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    iput-object v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    #@37
    .line 62
    const/4 v8, 0x3

    #@38
    new-array v5, v8, [Ljava/lang/CharSequence;

    #@3a
    .line 63
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    #@3d
    move-result-object v8

    #@3e
    const v9, 0x1040454

    #@41
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@44
    move-result-object v8

    #@45
    const/4 v9, 0x0

    #@46
    aput-object v8, v5, v9

    #@48
    .line 64
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    #@4b
    move-result-object v8

    #@4c
    const v9, 0x1040455

    #@4f
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@52
    move-result-object v8

    #@53
    const/4 v9, 0x1

    #@54
    aput-object v8, v5, v9

    #@56
    .line 65
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    #@59
    move-result-object v8

    #@5a
    const v9, 0x1040456

    #@5d
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@60
    move-result-object v8

    #@61
    const/4 v9, 0x2

    #@62
    aput-object v8, v5, v9

    #@64
    .line 68
    .local v5, "options":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/widget/ArrayAdapter;

    #@66
    .line 69
    const v8, 0x1090003

    #@69
    .line 70
    const v9, 0x1020014

    #@6c
    .line 68
    invoke-direct {v0, p0, v8, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    #@6f
    .line 73
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v2, Landroid/widget/ListView;

    #@71
    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@74
    .line 74
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@77
    .line 75
    const/4 v8, 0x1

    #@78
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@7b
    .line 76
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@7e
    .line 78
    new-instance v6, Landroid/widget/TextView;

    #@80
    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@83
    .line 80
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    #@86
    move-result-object v8

    #@87
    const v9, 0x1040453

    #@8a
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@8d
    move-result-object v7

    #@8e
    .line 81
    .local v7, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    const/4 v9, 0x3

    #@93
    new-array v9, v9, [Ljava/lang/Object;

    #@95
    .line 82
    iget-wide v10, p0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    #@97
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9a
    move-result-object v10

    #@9b
    const/4 v11, 0x0

    #@9c
    aput-object v10, v9, v11

    #@9e
    iget-object v10, p0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    #@a0
    const/4 v11, 0x1

    #@a1
    aput-object v10, v9, v11

    #@a3
    iget-object v10, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    #@a5
    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@a7
    const/4 v11, 0x2

    #@a8
    aput-object v10, v9, v11

    #@aa
    .line 81
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@b1
    .line 84
    new-instance v3, Landroid/widget/LinearLayout;

    #@b3
    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@b6
    .line 85
    .local v3, "ll":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    #@b7
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@ba
    .line 86
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    #@bc
    .line 87
    const/4 v8, 0x0

    #@bd
    const/4 v9, -0x1

    #@be
    const/4 v10, -0x2

    #@bf
    .line 86
    invoke-direct {v4, v9, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@c2
    .line 88
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@c5
    .line 89
    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@c8
    .line 106
    invoke-virtual {p0, v3}, Landroid/content/SyncActivityTooManyDeletes;->setContentView(Landroid/view/View;)V

    #@cb
    .line 47
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    #@2
    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncReallyDelete()V

    #@5
    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    #@8
    .line 109
    return-void

    #@9
    .line 112
    :cond_1
    const/4 v0, 0x1

    #@a
    if-ne p3, v0, :cond_0

    #@c
    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncUndoDeletes()V

    #@f
    goto :goto_0
.end method
