.class public final synthetic Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/content/pm/PackageInstaller;->lambda$checkInstallConstraints$0(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
