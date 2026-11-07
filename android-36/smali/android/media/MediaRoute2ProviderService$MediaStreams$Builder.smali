.class public final Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService$MediaStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private blacklist mAudioRecord:Landroid/media/AudioRecord;

.field private blacklist mSessionInfo:Landroid/media/RoutingSessionInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioPolicy(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)Landroid/media/audiopolicy/AudioPolicy;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)Landroid/media/AudioRecord;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)Landroid/media/RoutingSessionInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingSessionInfo;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1146
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/MediaRoute2ProviderService$MediaStreams;
    .registers 3

    .line 1158
    new-instance v0, Landroid/media/MediaRoute2ProviderService$MediaStreams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;-><init>(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V

    return-object v0
.end method

.method public blacklist setAudioStream(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/AudioRecord;)Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;
    .registers 4
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p2, "audioRecord"    # Landroid/media/AudioRecord;

    .line 1151
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicy;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1152
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 1153
    return-object p0
.end method
