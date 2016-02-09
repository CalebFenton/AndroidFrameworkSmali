.class public Landroid/support/v4/app/ShareCompat;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ShareCompat$ShareCompatImpl;,
        Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;,
        Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;,
        Landroid/support/v4/app/ShareCompat$ShareCompatImplJB;,
        Landroid/support/v4/app/ShareCompat$IntentBuilder;,
        Landroid/support/v4/app/ShareCompat$IntentReader;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_PACKAGE"

.field private static IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;


# direct methods
.method static synthetic -get0()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 153
    new-instance v0, Landroid/support/v4/app/ShareCompat$ShareCompatImplJB;

    #@8
    invoke-direct {v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplJB;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@d
    .line 59
    :goto_0
    return-void

    #@e
    .line 154
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0xe

    #@12
    if-lt v0, v1, :cond_1

    #@14
    .line 155
    new-instance v0, Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;

    #@16
    invoke-direct {v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;-><init>()V

    #@19
    sput-object v0, Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@1b
    goto :goto_0

    #@1c
    .line 157
    :cond_1
    new-instance v0, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;

    #@1e
    invoke-direct {v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;-><init>()V

    #@21
    sput-object v0, Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@23
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILandroid/support/v4/app/ShareCompat$IntentBuilder;)V
    .locals 4
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "menuItemId"    # I
    .param p2, "shareIntent"    # Landroid/support/v4/app/ShareCompat$IntentBuilder;

    #@0
    .prologue
    .line 245
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    #@6
    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Could not find menu item with id "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 248
    const-string/jumbo v3, " in the supplied menu"

    #@1b
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 250
    :cond_0
    invoke-static {v0, p2}, Landroid/support/v4/app/ShareCompat;->configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V

    #@2a
    .line 244
    return-void
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "shareIntent"    # Landroid/support/v4/app/ShareCompat$IntentBuilder;

    #@0
    .prologue
    .line 233
    sget-object v0, Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/ShareCompat$ShareCompatImpl;->configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V

    #@5
    .line 232
    return-void
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "calledActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "result":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    #@d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    .end local v0    # "result":Landroid/content/ComponentName;
    check-cast v0, Landroid/content/ComponentName;

    #@13
    .line 198
    .restart local v0    # "result":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p0, "calledActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    #@d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 178
    :cond_0
    return-object v0
.end method
