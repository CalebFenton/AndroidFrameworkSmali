.class public final synthetic Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/BugreportManager$DumpstateListener;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/BugreportManager$DumpstateListener;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iput-boolean p2, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iget-boolean v1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, v1}, Landroid/os/BugreportManager$DumpstateListener;->$r8$lambda$Ou_q5GHxol4VMrSoB665MiupE8w(Landroid/os/BugreportManager$DumpstateListener;Z)V

    return-void
.end method
