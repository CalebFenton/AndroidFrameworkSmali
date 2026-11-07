.class public final synthetic Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/CrossProfileApps;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/CrossProfileApps;ZLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/CrossProfileApps;

    iput-boolean p2, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/CrossProfileApps;

    iget-boolean v1, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/content/pm/CrossProfileApps;->$r8$lambda$x33EzZXyqwelNop1RMCq-aFnqqw(Landroid/content/pm/CrossProfileApps;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
