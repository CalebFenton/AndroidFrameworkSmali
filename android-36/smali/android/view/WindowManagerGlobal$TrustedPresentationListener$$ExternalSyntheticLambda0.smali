.class public final synthetic Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:[I

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;

.field public final synthetic blacklist f$2:[I


# direct methods
.method public synthetic constructor blacklist <init>([ILjava/util/ArrayList;[I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;->f$0:[I

    iput-object p2, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;->f$0:[I

    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;->f$2:[I

    check-cast p1, Ljava/util/function/Consumer;

    check-cast p2, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->lambda$onTrustedPresentationChanged$4([ILjava/util/ArrayList;[ILjava/util/function/Consumer;Landroid/util/Pair;)V

    return-void
.end method
