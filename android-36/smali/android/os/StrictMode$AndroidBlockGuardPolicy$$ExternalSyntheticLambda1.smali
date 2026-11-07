.class public final synthetic Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

.field public final synthetic blacklist f$1:Landroid/view/IWindowManager;

.field public final synthetic blacklist f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;->f$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    iput-object p2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/view/IWindowManager;

    iput-object p3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;->f$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    iget-object v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->$r8$lambda$8cEr3yopH2m54_yi5FS7GfNsTW0(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    return-void
.end method
