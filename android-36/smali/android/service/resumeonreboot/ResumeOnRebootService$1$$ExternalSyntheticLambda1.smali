.class public final synthetic Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/resumeonreboot/ResumeOnRebootService$1;

.field public final synthetic blacklist f$1:[B

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BJLandroid/os/RemoteCallback;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$0:Landroid/service/resumeonreboot/ResumeOnRebootService$1;

    iput-object p2, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$1:[B

    iput-wide p3, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$0:Landroid/service/resumeonreboot/ResumeOnRebootService$1;

    iget-object v1, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$1:[B

    iget-wide v2, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Landroid/service/resumeonreboot/ResumeOnRebootService$1$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/service/resumeonreboot/ResumeOnRebootService$1;->$r8$lambda$7xA6c3fmSGqf__5dXM89QlFI_aA(Landroid/service/resumeonreboot/ResumeOnRebootService$1;[BJLandroid/os/RemoteCallback;)V

    return-void
.end method
