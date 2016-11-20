.class public final Landroid/provider/ContactsContract$QuickContact;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "android.provider.action.QUICK_CONTACT"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "android.provider.extra.EXCLUDE_MIMES"

.field public static final EXTRA_MODE:Ljava/lang/String; = "android.provider.extra.MODE"

.field public static final EXTRA_PRIORITIZED_MIMETYPE:Ljava/lang/String; = "android.provider.extra.PRIORITIZED_MIMETYPE"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "android.provider.extra.TARGET_RECT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 8434
    move-object v0, p0

    #@1
    .line 8435
    .local v0, "actualContext":Landroid/content/Context;
    :goto_0
    instance-of v3, v0, Landroid/content/ContextWrapper;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 8436
    instance-of v3, v0, Landroid/app/Activity;

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 8439
    :cond_0
    instance-of v3, v0, Landroid/app/Activity;

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 8440
    const/4 v3, 0x0

    #@e
    .line 8442
    :goto_1
    const/high16 v4, 0x20000000

    #@10
    .line 8439
    or-int v2, v3, v4

    #@12
    .line 8445
    .local v2, "intentFlags":I
    new-instance v3, Landroid/content/Intent;

    #@14
    const-string/jumbo v4, "android.provider.action.QUICK_CONTACT"

    #@17
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1d
    move-result-object v1

    #@1e
    .line 8448
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@21
    .line 8449
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@24
    .line 8450
    const-string/jumbo v3, "android.provider.extra.MODE"

    #@27
    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 8451
    const-string/jumbo v3, "android.provider.extra.EXCLUDE_MIMES"

    #@2d
    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 8452
    return-object v1

    #@31
    .line 8437
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentFlags":I
    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    #@33
    .end local v0    # "actualContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@36
    move-result-object v0

    #@37
    .restart local v0    # "actualContext":Landroid/content/Context;
    goto :goto_0

    #@38
    .line 8440
    :cond_2
    const v3, 0x10008000

    #@3b
    goto :goto_1
.end method

.method public static composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/high16 v5, 0x3f000000    # 0.5f

    #@4
    .line 8413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@b
    move-result-object v3

    #@c
    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@e
    .line 8414
    .local v0, "appScale":F
    const/4 v3, 0x2

    #@f
    new-array v1, v3, [I

    #@11
    .line 8415
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@14
    .line 8417
    new-instance v2, Landroid/graphics/Rect;

    #@16
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@19
    .line 8418
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    #@1b
    int-to-float v3, v3

    #@1c
    mul-float/2addr v3, v0

    #@1d
    add-float/2addr v3, v5

    #@1e
    float-to-int v3, v3

    #@1f
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@21
    .line 8419
    aget v3, v1, v6

    #@23
    int-to-float v3, v3

    #@24
    mul-float/2addr v3, v0

    #@25
    add-float/2addr v3, v5

    #@26
    float-to-int v3, v3

    #@27
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@29
    .line 8420
    aget v3, v1, v4

    #@2b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@2e
    move-result v4

    #@2f
    add-int/2addr v3, v4

    #@30
    int-to-float v3, v3

    #@31
    mul-float/2addr v3, v0

    #@32
    add-float/2addr v3, v5

    #@33
    float-to-int v3, v3

    #@34
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@36
    .line 8421
    aget v3, v1, v6

    #@38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@3b
    move-result v4

    #@3c
    add-int/2addr v3, v4

    #@3d
    int-to-float v3, v3

    #@3e
    mul-float/2addr v3, v0

    #@3f
    add-float/2addr v3, v5

    #@40
    float-to-int v3, v3

    #@41
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@43
    .line 8423
    invoke-static {p0, v2, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    #@46
    move-result-object v3

    #@47
    return-object v3
.end method

.method public static rebuildManagedQuickContactsIntent(Ljava/lang/String;JZJLandroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p0, "lookupKey"    # Ljava/lang/String;
    .param p1, "contactId"    # J
    .param p3, "isContactIdIgnored"    # Z
    .param p4, "directoryId"    # J
    .param p6, "originalIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 8463
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.provider.action.QUICK_CONTACT"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 8465
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    #@9
    .line 8466
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 8467
    if-eqz p3, :cond_2

    #@11
    .line 8468
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@13
    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    .line 8471
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@19
    const-wide/16 v2, 0x0

    #@1b
    cmp-long v2, p4, v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 8472
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@22
    move-result-object v2

    #@23
    .line 8473
    const-string/jumbo v3, "directory"

    #@26
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 8472
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@31
    move-result-object v1

    #@32
    .line 8475
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@35
    .line 8478
    invoke-virtual {p6}, Landroid/content/Intent;->getFlags()I

    #@38
    move-result v2

    #@39
    const/high16 v3, 0x10000000

    #@3b
    or-int/2addr v2, v3

    #@3c
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@3f
    .line 8481
    invoke-virtual {p6}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@46
    .line 8482
    const-string/jumbo v2, "android.provider.extra.MODE"

    #@49
    const-string/jumbo v3, "android.provider.extra.MODE"

    #@4c
    const/4 v4, 0x3

    #@4d
    invoke-virtual {p6, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@50
    move-result v3

    #@51
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@54
    .line 8483
    const-string/jumbo v2, "android.provider.extra.EXCLUDE_MIMES"

    #@57
    .line 8484
    const-string/jumbo v3, "android.provider.extra.EXCLUDE_MIMES"

    #@5a
    invoke-virtual {p6, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 8483
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@61
    .line 8485
    return-object v0

    #@62
    .line 8469
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {p1, p2, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    #@65
    move-result-object v1

    #@66
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 8552
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 8554
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    #@7
    .line 8551
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "excludeMimes"    # [Ljava/lang/String;
    .param p4, "prioritizedMimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8629
    const/4 v1, 0x3

    #@1
    invoke-static {p0, p1, p2, v1, p3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    .line 8631
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.extra.PRIORITIZED_MIMETYPE"

    #@8
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@b
    .line 8632
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    #@e
    .line 8625
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 8517
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 8519
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    #@7
    .line 8515
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "excludeMimes"    # [Ljava/lang/String;
    .param p4, "prioritizedMimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8589
    const/4 v1, 0x3

    #@1
    invoke-static {p0, p1, p2, v1, p3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    .line 8591
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.provider.extra.PRIORITIZED_MIMETYPE"

    #@8
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@b
    .line 8592
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    #@e
    .line 8585
    return-void
.end method
