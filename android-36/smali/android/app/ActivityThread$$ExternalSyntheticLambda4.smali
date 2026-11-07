.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ContextImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ContextImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;->f$0:Landroid/app/ContextImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;->f$0:Landroid/app/ContextImpl;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->lambda$onSystemUiContextCleanup$1(Landroid/app/ContextImpl;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
