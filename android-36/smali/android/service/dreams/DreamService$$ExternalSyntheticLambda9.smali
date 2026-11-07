.class public final synthetic Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/dreams/DreamService;

.field public final synthetic blacklist f$1:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;->f$0:Landroid/service/dreams/DreamService;

    iput-object p2, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;->f$1:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;->f$0:Landroid/service/dreams/DreamService;

    iget-object v1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;->f$1:Landroid/os/IRemoteCallback;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->$r8$lambda$4qGFWUbzzz6pe2dPUrAB59USTzo(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    return-void
.end method
