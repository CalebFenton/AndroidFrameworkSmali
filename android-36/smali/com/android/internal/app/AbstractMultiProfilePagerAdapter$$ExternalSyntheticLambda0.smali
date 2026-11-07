.class public final synthetic Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field public final synthetic blacklist f$1:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

.field public final synthetic blacklist f$2:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    iput-object p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    iput-object p3, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/ResolverListAdapter;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;

    iget-object v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->$r8$lambda$VlEe-l4IBckwOaGlgN3bJ3hrC_Y(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V

    return-void
.end method
