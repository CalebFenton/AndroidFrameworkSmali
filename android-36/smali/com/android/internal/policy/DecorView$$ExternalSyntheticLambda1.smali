.class public final synthetic Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/policy/DecorView;

    return-void
.end method


# virtual methods
.method public final whitelist onPreDraw()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->$r8$lambda$Z8KGxEYs87tmUmx9r045xREWzEU(Lcom/android/internal/policy/DecorView;)Z

    move-result v0

    return v0
.end method
