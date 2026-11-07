.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/app/ResolverActivity;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->onProfileClick(Landroid/view/View;)V

    return-void
.end method
