.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/app/ResolverActivity;

    return-void
.end method


# virtual methods
.method public final whitelist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
