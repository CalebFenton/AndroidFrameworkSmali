.class public final synthetic Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/ProfilingManager$1;

.field public final synthetic blacklist f$1:Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:Ljava/lang/String;

.field public final synthetic blacklist f$6:Ljava/lang/String;

.field public final synthetic blacklist f$7:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/ProfilingManager$1;Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/ProfilingManager$1;

    iput-object p2, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    iput-boolean p3, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$2:Z

    iput p4, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iput p8, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 9

    .line 0
    iget-object v0, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/ProfilingManager$1;

    iget-object v1, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    iget-boolean v2, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$2:Z

    iget v3, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iget v7, p0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;->f$7:I

    invoke-static/range {v0 .. v7}, Landroid/os/ProfilingManager$1;->$r8$lambda$HQKe_DyiIucS8PsafXMme1ygWwo(Landroid/os/ProfilingManager$1;Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
