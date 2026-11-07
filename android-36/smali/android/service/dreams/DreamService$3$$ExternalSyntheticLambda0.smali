.class public final synthetic Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/dreams/DreamService$3;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService$3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService$3;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService$3;

    check-cast p1, Landroid/service/dreams/IDreamOverlayClient;

    invoke-static {v0, p1}, Landroid/service/dreams/DreamService$3;->$r8$lambda$aWnQRS1r6epxQL-DFuLKoOxx_tg(Landroid/service/dreams/DreamService$3;Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method
