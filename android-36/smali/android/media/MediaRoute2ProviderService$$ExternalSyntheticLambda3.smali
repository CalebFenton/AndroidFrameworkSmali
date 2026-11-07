.class public final synthetic Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRoute2ProviderService;

.field public final synthetic blacklist f$1:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;->f$0:Landroid/media/MediaRoute2ProviderService;

    iput-object p2, p0, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;->f$1:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;->f$0:Landroid/media/MediaRoute2ProviderService;

    iget-object v1, p0, Landroid/media/MediaRoute2ProviderService$$ExternalSyntheticLambda3;->f$1:Landroid/media/RoutingSessionInfo;

    invoke-static {v0, v1}, Landroid/media/MediaRoute2ProviderService;->$r8$lambda$Ln8ToHZmL2yO9OXM6r_nlFcC1LU(Landroid/media/MediaRoute2ProviderService;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
