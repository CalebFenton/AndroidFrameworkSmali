.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TabHost;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TabHost;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;->f$0:Landroid/widget/TabHost;

    return-void
.end method


# virtual methods
.method public final blacklist onSwitchOnWorkSelected()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;->f$0:Landroid/widget/TabHost;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->lambda$setupProfileTabs$11(Landroid/widget/TabHost;)V

    return-void
.end method
