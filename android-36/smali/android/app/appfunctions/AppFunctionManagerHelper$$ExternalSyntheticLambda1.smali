.class public final synthetic Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-static {v0, p1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->lambda$isAppFunctionEnabled$0(Landroid/os/OutcomeReceiver;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method
