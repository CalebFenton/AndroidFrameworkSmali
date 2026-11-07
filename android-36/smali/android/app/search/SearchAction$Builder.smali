.class public final Landroid/app/search/SearchAction$Builder;
.super Ljava/lang/Object;
.source "SearchAction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchAction$Builder;->mId:Ljava/lang/String;

    .line 266
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/search/SearchAction$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 267
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/search/SearchAction;
    .registers 12

    .line 343
    new-instance v0, Landroid/app/search/SearchAction;

    iget-object v1, p0, Landroid/app/search/SearchAction$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/search/SearchAction$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/search/SearchAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Landroid/app/search/SearchAction$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/app/search/SearchAction$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/app/search/SearchAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/app/search/SearchAction$Builder;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Landroid/app/search/SearchAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/app/search/SearchAction$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/app/search/SearchAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/app/search/SearchAction-IA;)V

    return-object v0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 295
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mContentDescription:Ljava/lang/CharSequence;

    .line 296
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 332
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 333
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 275
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 276
    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 322
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mIntent:Landroid/content/Intent;

    .line 323
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 304
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 305
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 285
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 286
    return-object p0
.end method

.method public whitelist setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchAction$Builder;
    .registers 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 313
    iput-object p1, p0, Landroid/app/search/SearchAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 314
    return-object p0
.end method
