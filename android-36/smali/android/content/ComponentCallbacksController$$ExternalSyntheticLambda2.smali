.class public final synthetic Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/Configuration;

    check-cast p1, Landroid/content/ComponentCallbacks;

    invoke-static {v0, p1}, Landroid/content/ComponentCallbacksController;->lambda$dispatchConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V

    return-void
.end method
