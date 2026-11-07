.class public Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrossProfileIntentsChecker"
.end annotation


# instance fields
.field private final blacklist mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public static synthetic blacklist $r8$lambda$nwR4dSWV4lqNpJFlTACZIYcMvbk(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;IILandroid/content/pm/IPackageManager;Landroid/content/Intent;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;->lambda$hasCrossProfileIntents$0(IILandroid/content/pm/IPackageManager;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;->mContentResolver:Landroid/content/ContentResolver;

    .line 349
    return-void
.end method

.method private synthetic blacklist lambda$hasCrossProfileIntents$0(IILandroid/content/pm/IPackageManager;Landroid/content/Intent;)Z
    .registers 6
    .param p1, "source"    # I
    .param p2, "target"    # I
    .param p3, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public blacklist hasCrossProfileIntents(Ljava/util/List;II)Z
    .registers 7
    .param p2, "source"    # I
    .param p3, "target"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;II)Z"
        }
    .end annotation

    .line 357
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 359
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;IILandroid/content/pm/IPackageManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method
