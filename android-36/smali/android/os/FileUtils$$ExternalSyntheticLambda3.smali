.class public final synthetic Landroid/os/FileUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/FileUtils$ProgressListener;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda3;->f$0:Landroid/os/FileUtils$ProgressListener;

    iput-wide p2, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda3;->f$0:Landroid/os/FileUtils$ProgressListener;

    iget-wide v1, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->lambda$copyInternalUserspace$7(Landroid/os/FileUtils$ProgressListener;J)V

    return-void
.end method
