.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/reflect/Method;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;->f$0:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda3;->f$2:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->lambda$invokeViewMethod$10(Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
