.class public final synthetic Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/BugreportManager$DumpstateListener;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iput p2, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iget v1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/os/BugreportManager$DumpstateListener;->$r8$lambda$O77GmYGqky7qv_V90Z4LcGi5Xzg(Landroid/os/BugreportManager$DumpstateListener;I)V

    return-void
.end method
