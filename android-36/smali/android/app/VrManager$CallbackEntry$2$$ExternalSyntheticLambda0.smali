.class public final synthetic Landroid/app/VrManager$CallbackEntry$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/VrManager$CallbackEntry$2;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/VrManager$CallbackEntry$2;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/VrManager$CallbackEntry$2;

    iput-boolean p2, p0, Landroid/app/VrManager$CallbackEntry$2$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/VrManager$CallbackEntry$2;

    iget-boolean v1, p0, Landroid/app/VrManager$CallbackEntry$2$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/app/VrManager$CallbackEntry$2;->$r8$lambda$iBPlens3BpemM2H2wV7G1WAJh4A(Landroid/app/VrManager$CallbackEntry$2;Z)V

    return-void
.end method
