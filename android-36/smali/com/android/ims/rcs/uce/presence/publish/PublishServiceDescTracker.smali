.class public Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;
.super Ljava/lang/Object;
.source "PublishServiceDescTracker.java"


# static fields
.field private static final blacklist DEFAULT_SERVICE_DESCRIPTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PublishServiceDescTracker"


# instance fields
.field private final blacklist mRegistrationCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegistrationFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServiceDescriptionFeatureTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mServiceDescriptionPartialMatches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$mFpjTXU3ieOAAl7jH4Q65qYkdgM(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->parseFeatureTags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qeCtrN8qB1ATUXsk_9S3bGhP5kg(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->removeInconsistencies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 57
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHAT_IM:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 58
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHAT_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 60
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_FT:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 62
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_FT_SMS:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 64
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_PRESENCE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 66
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 69
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE_VIDEO:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v3, Landroid/util/ArraySet;

    const-string v4, "video"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_GEOPUSH:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 73
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_GEOPUSH_SMS:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 75
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 77
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER_MMTEL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 79
    const-string v2, "+g.gsma.callcomposer"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_POST_CALL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 81
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SHARED_MAP:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 83
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SHARED_SKETCH:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 85
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    const-string v4, "+g.gsma.rcs.botversion=\"#=1\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SESSION_V1:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    const-string v5, "+g.gsma.rcs.botversion=\"#=1,#=2\""

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SESSION_V2:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SA_SESSION:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SA_SESSION_V1:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_SA_SESSION_V2:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CHATBOT_ROLE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 113
    const-string v2, "+g.gsma.rcs.isbot"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SLM:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    const-string v3, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\""

    const-string v4, "+g.gsma.rcs.cpm.pager-large"

    const-string v5, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg\""

    const-string v6, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_SLM_PAGER_LARGE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    new-instance v2, Landroid/util/ArraySet;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->DEFAULT_SERVICE_DESCRIPTION_MAP:Ljava/util/Map;

    .line 123
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 181
    .local p1, "serviceFeatureTagMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionPartialMatches:Ljava/util/Set;

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationFeatureTags:Ljava/util/Set;

    .line 182
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionFeatureTagMap:Ljava/util/Map;

    .line 183
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionFeatureTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 186
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 187
    .local v2, "c":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionPartialMatches:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V

    .line 188
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 189
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 187
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    .end local v2    # "c":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_24

    .line 191
    :cond_4d
    return-void
.end method

.method public static blacklist fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;
    .registers 11
    .param p0, "carrierConfig"    # [Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 143
    .local v0, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->DEFAULT_SERVICE_DESCRIPTION_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 145
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda4;-><init>()V

    .line 146
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 147
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 145
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_f

    .line 149
    :cond_42
    if-eqz p0, :cond_94

    .line 150
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_47
    if-ge v3, v1, :cond_94

    aget-object v4, p0, v3

    .line 151
    .local v4, "entry":Ljava/lang/String;
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "serviceDesc":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-ge v6, v7, :cond_6e

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromCarrierConfig: error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PublishServiceDescTracker"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto :goto_91

    .line 156
    :cond_6e
    new-instance v6, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    .line 157
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->parseFeatureTags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 156
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "serviceDesc":[Ljava/lang/String;
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 160
    :cond_94
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-direct {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method private static blacklist isSimilar(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z
    .registers 4
    .param p0, "a"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .param p1, "b"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 326
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z
    .registers 3
    .param p0, "c"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .param p1, "s"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 188
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->isSimilar(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$updateImsRegistration$1(Ljava/util/Set;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/util/Set;

    .line 203
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$updateImsRegistration$2(Ljava/util/Map$Entry;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z
    .registers 3
    .param p0, "desc"    # Ljava/util/Map$Entry;
    .param p1, "s"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 230
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-static {p1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->isSimilar(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z

    move-result v0

    return v0
.end method

.method private static blacklist parseFeatureTags(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p0, "featureTags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "featureTagSplit":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_e

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 172
    :cond_e
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 175
    .local v1, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    .line 176
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->removeInconsistencies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v4    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 178
    :cond_24
    return-object v1
.end method

.method private static blacklist removeInconsistencies(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 334
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 335
    return-object p0
.end method


# virtual methods
.method public blacklist copyRegistrationCapabilities()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    monitor-enter v0

    .line 259
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 260
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist copyRegistrationFeatureTags()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    monitor-enter v0

    .line 268
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 269
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 276
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 277
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    const-string v1, "PublishServiceDescTracker"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 280
    const-string v1, "ServiceDescription -> Feature Tag Map:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 283
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionFeatureTagMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 284
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 285
    const-string v3, "->"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 287
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_21

    .line 288
    :cond_41
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 289
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 291
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionPartialMatches:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    .line 292
    const-string v1, "Similar ServiceDescriptions:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 294
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionPartialMatches:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 295
    .local v2, "entry":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 296
    .end local v2    # "entry":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_5d

    .line 297
    :cond_6d
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_76

    .line 299
    :cond_71
    const-string v1, "No Similar ServiceDescriptions:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 301
    :goto_76
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 303
    const-string v1, "Last IMS registration update:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 305
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationFeatureTags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 307
    .end local v2    # "entry":Ljava/lang/String;
    goto :goto_87

    .line 308
    :cond_97
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 309
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 311
    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 313
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 314
    .local v2, "entry":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 315
    .end local v2    # "entry":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_ab

    .line 316
    :cond_bb
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 317
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 319
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 320
    return-void
.end method

.method public blacklist updateImsRegistration(Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "imsRegistration":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda1;-><init>()V

    .line 201
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda2;-><init>()V

    .line 203
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 207
    .local v0, "sanitizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 208
    .local v1, "aliasedServiceDescScore":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    monitor-enter v2

    .line 209
    :try_start_28
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationFeatureTags:Ljava/util/Set;

    .line 210
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 212
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionFeatureTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 213
    .local v4, "desc":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    .line 214
    .local v5, "found":Z
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 215
    .local v7, "tag":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    .line 216
    const/4 v5, 0x0

    .line 217
    goto :goto_65

    .line 219
    .end local v7    # "tag":Ljava/lang/String;
    :cond_64
    goto :goto_50

    .line 220
    :cond_65
    :goto_65
    if-eqz v5, :cond_e7

    .line 228
    iget-object v6, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mServiceDescriptionPartialMatches:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 229
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map$Entry;)V

    .line 230
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 231
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 232
    .local v6, "aliasedDesc":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    if-eqz v6, :cond_c4

    .line 233
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 234
    .local v7, "prevEntrySize":Ljava/lang/Integer;
    if-eqz v7, :cond_c3

    .line 236
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    if-gt v8, v9, :cond_c3

    .line 237
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v7    # "prevEntrySize":Ljava/lang/Integer;
    :cond_c3
    goto :goto_db

    .line 241
    :cond_c4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v6    # "aliasedDesc":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    :goto_db
    goto :goto_e7

    .line 244
    :cond_dc
    iget-object v6, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v4    # "desc":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "found":Z
    :cond_e7
    :goto_e7
    goto/16 :goto_39

    .line 249
    :cond_e9
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->mRegistrationCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    monitor-exit v2

    .line 251
    return-void

    .line 250
    :catchall_f4
    move-exception v3

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_28 .. :try_end_f6} :catchall_f4

    throw v3
.end method
