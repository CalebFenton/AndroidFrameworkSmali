.class public final synthetic Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/media/MediaRoute2ProviderService;

    check-cast p2, Landroid/media/IMediaRoute2ProviderServiceCallback;

    invoke-virtual {p1, p2}, Landroid/media/MediaRoute2ProviderService;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    return-void
.end method
