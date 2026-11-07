.class public final synthetic Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/IBinder;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    iput-boolean p2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    iget-boolean v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/os/IRemoteCallback;

    check-cast p1, Landroid/service/dreams/DreamService;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$attach$1(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;Landroid/service/dreams/DreamService;)V

    return-void
.end method
