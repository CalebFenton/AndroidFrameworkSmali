.class public final synthetic Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda1;->f$0:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda1;->f$0:Ljava/lang/RuntimeException;

    invoke-static {v0}, Landroid/location/provider/PopulationDensityProviderBase$Service;->lambda$getCoarsenedS2Cells$1(Ljava/lang/RuntimeException;)V

    return-void
.end method
