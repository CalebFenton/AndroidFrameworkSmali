.class public final Landroid/media/MediaRoute2ProviderService$MediaStreams;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaStreams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private final blacklist mAudioRecord:Landroid/media/AudioRecord;

.field private blacklist mSessionInfo:Landroid/media/RoutingSessionInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioPolicy(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/audiopolicy/AudioPolicy;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/AudioRecord;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;)Landroid/media/RoutingSessionInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->-$$Nest$fgetmSessionInfo(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1115
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->-$$Nest$fgetmAudioPolicy(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1116
    invoke-static {p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;->-$$Nest$fgetmAudioRecord(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mAudioRecord:Landroid/media/AudioRecord;

    .line 1117
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaRoute2ProviderService$MediaStreams;-><init>(Landroid/media/MediaRoute2ProviderService$MediaStreams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAudioRecord()Landroid/media/AudioRecord;
    .registers 2

    .line 1125
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaStreams;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method
