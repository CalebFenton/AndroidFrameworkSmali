.class public final Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
.super Ljava/lang/Object;
.source "TapAction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/TapAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mId:Ljava/lang/CharSequence;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShouldShowOnLockScreen:Z

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/CharSequence;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mId:Ljava/lang/CharSequence;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mShouldShowOnLockScreen:Z

    .line 205
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 11

    .line 261
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    goto :goto_15

    .line 262
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please assign at least 1 valid tap field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_15
    :goto_15
    new-instance v2, Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mId:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v7, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v8, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mShouldShowOnLockScreen:Z

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/app/smartspace/uitemplatedata/TapAction;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/os/UserHandle;Landroid/os/Bundle;ZLandroid/app/smartspace/uitemplatedata/TapAction-IA;)V

    return-object v2
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 240
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 241
    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 212
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mIntent:Landroid/content/Intent;

    .line 213
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 221
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 222
    return-object p0
.end method

.method public whitelist setShouldShowOnLockscreen(Z)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2
    .param p1, "shouldShowOnLockScreen"    # Z

    .line 250
    iput-boolean p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mShouldShowOnLockScreen:Z

    .line 251
    return-object p0
.end method

.method public whitelist setUserHandle(Landroid/os/UserHandle;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 231
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 232
    return-object p0
.end method
