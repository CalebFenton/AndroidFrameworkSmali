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
.field public static final whitelist ACTION_QUICK_CONTACT:Ljava/lang/String; = "android.provider.action.QUICK_CONTACT"

.field public static final whitelist EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "android.provider.extra.EXCLUDE_MIMES"

.field public static final whitelist EXTRA_MODE:Ljava/lang/String; = "android.provider.extra.MODE"

.field public static final whitelist EXTRA_PRIORITIZED_MIMETYPE:Ljava/lang/String; = "android.provider.extra.PRIORITIZED_MIMETYPE"

.field public static final greylist-max-o EXTRA_TARGET_RECT:Ljava/lang/String; = "android.provider.extra.TARGET_RECT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MODE_DEFAULT:I = 0x3

.field public static final whitelist MODE_LARGE:I = 0x3

.field public static final whitelist MODE_MEDIUM:I = 0x2

.field public static final whitelist MODE_SMALL:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 9686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .line 9777
    move-object v0, p0

    .line 9778
    .local v0, "actualContext":Landroid/content/Context;
    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_11

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_11

    .line 9780
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 9782
    :cond_11
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 9783
    const/4 v1, 0x0

    goto :goto_1a

    :cond_17
    const v1, 0x10008000

    :goto_1a
    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 9788
    .local v1, "intentFlags":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 9791
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9792
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 9793
    const-string v3, "android.provider.extra.MODE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9794
    const-string v3, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 9795
    return-object v2
.end method

.method public static greylist-max-o composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .line 9755
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 9756
    .local v0, "appScale":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 9757
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9759
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9760
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 9761
    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 9762
    aget v3, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 9763
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 9765
    invoke-static {p0, v2, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o rebuildManagedQuickContactsIntent(Ljava/lang/String;JZJLandroid/content/Intent;)Landroid/content/Intent;
    .registers 12
    .param p0, "lookupKey"    # Ljava/lang/String;
    .param p1, "contactId"    # J
    .param p3, "isContactIdIgnored"    # Z
    .param p4, "directoryId"    # J
    .param p6, "originalIntent"    # Landroid/content/Intent;

    .line 9806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9808
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 9809
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 9810
    if-eqz p3, :cond_17

    .line 9811
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1b

    .line 9812
    :cond_17
    invoke-static {p1, p2, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1b
    move-object v1, v2

    .line 9814
    :cond_1c
    if-eqz v1, :cond_36

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_36

    .line 9815
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 9816
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 9815
    const-string v4, "directory"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 9816
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 9818
    :cond_36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9821
    invoke-virtual {p6}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9824
    invoke-virtual {p6}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 9825
    const/4 v2, 0x3

    const-string v3, "android.provider.extra.MODE"

    invoke-virtual {p6, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9826
    nop

    .line 9827
    const-string v2, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {p6, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9826
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 9828
    return-object v0
.end method

.method public static whitelist showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .line 9895
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9897
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9898
    return-void
.end method

.method public static whitelist showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "excludeMimes"    # [Ljava/lang/String;
    .param p4, "prioritizedMimeType"    # Ljava/lang/String;

    .line 9972
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9974
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.provider.extra.PRIORITIZED_MIMETYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9975
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9976
    return-void
.end method

.method public static whitelist showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .line 9860
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9862
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9863
    return-void
.end method

.method public static whitelist showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "excludeMimes"    # [Ljava/lang/String;
    .param p4, "prioritizedMimeType"    # Ljava/lang/String;

    .line 9932
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9934
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.provider.extra.PRIORITIZED_MIMETYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9935
    invoke-static {p0, v0}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9936
    return-void
.end method
