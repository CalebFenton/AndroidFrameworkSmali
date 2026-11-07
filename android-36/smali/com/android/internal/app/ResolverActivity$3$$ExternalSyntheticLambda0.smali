.class public final synthetic Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserManager;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/UserManager;

    iput-boolean p2, p0, Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/UserManager;

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$3$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$3;->lambda$requestQuietModeEnabled$0(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V

    return-void
.end method
