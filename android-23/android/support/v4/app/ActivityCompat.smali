.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;,
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/content/ContextCompat;-><init>()V

    #@3
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 370
    const/4 v0, 0x0

    #@1
    .line 371
    .local v0, "newCallback":Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    if-eqz p0, :cond_0

    #@3
    .line 372
    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    #@5
    .end local v0    # "newCallback":Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    #@8
    .line 374
    :cond_0
    return-object v0
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 177
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatJB;->finishAffinity(Landroid/app/Activity;)V

    #@9
    .line 175
    :goto_0
    return-void

    #@a
    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@d
    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 194
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->finishAfterTransition(Landroid/app/Activity;)V

    #@9
    .line 192
    :goto_0
    return-void

    #@a
    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@d
    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 108
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    #@9
    .line 109
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 111
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 254
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->postponeEnterTransition(Landroid/app/Activity;)V

    #@9
    .line 252
    :cond_0
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v2, 0x17

    #@4
    if-lt v1, v2, :cond_1

    #@6
    .line 316
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    #@9
    .line 314
    :cond_0
    :goto_0
    return-void

    #@a
    .line 317
    :cond_1
    instance-of v1, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 318
    new-instance v0, Landroid/os/Handler;

    #@10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@17
    .line 319
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    #@19
    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1f
    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 232
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    #@d
    .line 230
    :cond_0
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 248
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat21;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    #@d
    .line 246
    :cond_0
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x17

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 363
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 365
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 133
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompatJB;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    #@9
    .line 131
    :goto_0
    return-void

    #@a
    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@d
    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 162
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatJB;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@9
    .line 160
    :goto_0
    return-void

    #@a
    .line 164
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@d
    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 260
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat21;->startPostponedEnterTransition(Landroid/app/Activity;)V

    #@9
    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 206
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    const/16 v4, 0x16

    #@5
    if-lt v3, v4, :cond_0

    #@7
    .line 207
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat22;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@f
    move-result-object v0

    #@10
    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    #@13
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/net/Uri;

    #@19
    .line 211
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_1

    #@1b
    .line 212
    return-object v1

    #@1c
    .line 214
    :cond_1
    const-string/jumbo v3, "android.intent.extra.REFERRER_NAME"

    #@1f
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 215
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@25
    .line 216
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@28
    move-result-object v3

    #@29
    return-object v3

    #@2a
    .line 218
    :cond_2
    return-object v5
.end method
