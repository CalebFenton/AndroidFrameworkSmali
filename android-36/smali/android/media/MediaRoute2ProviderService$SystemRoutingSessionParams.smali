.class public final Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemRoutingSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->-$$Nest$fgetmPackageName(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;->mPackageName:Ljava/lang/String;

    .line 1175
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;->mExtras:Landroid/os/Bundle;

    .line 1176
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;-><init>(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1195
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 1188
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
