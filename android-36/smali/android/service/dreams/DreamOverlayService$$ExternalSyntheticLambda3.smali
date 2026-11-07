.class public final synthetic Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/dreams/DreamOverlayService;

.field public final synthetic blacklist f$1:Landroid/service/dreams/DreamOverlayService$OverlayClient;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;->f$0:Landroid/service/dreams/DreamOverlayService;

    iput-object p2, p0, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;->f$1:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;->f$0:Landroid/service/dreams/DreamOverlayService;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;->f$1:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayService;->$r8$lambda$6-su5lZIMqozAHf7Ai6EQl90kXU(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method
