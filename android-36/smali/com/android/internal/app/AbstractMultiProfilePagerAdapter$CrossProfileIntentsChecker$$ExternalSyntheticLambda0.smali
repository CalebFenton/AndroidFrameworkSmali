.class public final synthetic Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/content/pm/IPackageManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;IILandroid/content/pm/IPackageManager;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    iput p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    iget v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/IPackageManager;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;->$r8$lambda$nwR4dSWV4lqNpJFlTACZIYcMvbk(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;IILandroid/content/pm/IPackageManager;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
