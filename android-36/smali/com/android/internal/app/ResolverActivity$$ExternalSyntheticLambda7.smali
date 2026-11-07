.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverActivity;

.field public final synthetic blacklist f$1:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1, p1}, Lcom/android/internal/app/ResolverActivity;->$r8$lambda$Sp4LbwuLz-bEoy9_yBTFuomgXKY(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V

    return-void
.end method
