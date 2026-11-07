.class public Lcom/android/internal/app/NfcResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "NfcResolverActivity.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/app/NfcResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/nfc/Flags;->enableNfcMainline()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_12

    move-object v3, p1

    goto :goto_43

    .line 44
    :cond_12
    const-string v1, "android.intent.extra.INTENT"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    .line 45
    .local v4, "target":Landroid/content/Intent;
    const-class v1, Landroid/content/pm/ResolveInfo;

    .line 46
    const-string v2, "android.nfc.extra.RESOLVE_INFOS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v7

    .line 48
    .local v7, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/app/NfcResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 48
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 52
    .local v5, "title":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    .local v3, "savedInstanceState":Landroid/os/Bundle;
    invoke-super/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 59
    return-void

    .line 38
    .end local v3    # "savedInstanceState":Landroid/os/Bundle;
    .end local v4    # "target":Landroid/content/Intent;
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v7    # "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_42
    move-object v3, p1

    .line 39
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    .restart local v3    # "savedInstanceState":Landroid/os/Bundle;
    :goto_43
    invoke-virtual {p0, v3}, Lcom/android/internal/app/NfcResolverActivity;->super_onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/app/NfcResolverActivity;->finish()V

    .line 41
    return-void
.end method
