.class public final Landroid/net/wifi/hotspot2/OsuProvider;
.super Ljava/lang/Object;
.source "OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o METHOD_OMA_DM:I = 0x0

.field public static final greylist-max-o METHOD_SOAP_XML_SPP:I = 0x1


# instance fields
.field private final blacklist mFriendlyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mNetworkAccessIdentifier:Ljava/lang/String;

.field private greylist-max-o mOsuSsid:Landroid/net/wifi/WifiSsid;

.field private final greylist-max-o mServerUri:Landroid/net/Uri;

.field private final greylist-max-o mServiceDescription:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 248
    new-instance v0, Landroid/net/wifi/hotspot2/OsuProvider$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/OsuProvider$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiSsid;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "osuSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "serviceDescription"    # Ljava/lang/String;
    .param p4, "serverUri"    # Landroid/net/Uri;
    .param p5, "nai"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p2, "friendlyNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 99
    iput-object p2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    .line 100
    iput-object p3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 102
    iput-object p5, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 103
    if-nez p6, :cond_17

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_1e

    .line 106
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 108
    :goto_1e
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/hotspot2/OsuProvider;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/OsuProvider;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p1, :cond_18

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 119
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    .line 120
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 122
    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 124
    return-void

    .line 127
    :cond_18
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 128
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    .line 129
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 131
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    if-nez v0, :cond_38

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_41

    .line 135
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 137
    :goto_41
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .param p1, "osuSsid"    # Ljava/lang/String;
    .param p3, "serviceDescription"    # Ljava/lang/String;
    .param p4, "serverUri"    # Landroid/net/Uri;
    .param p5, "nai"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p2, "friendlyNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p2    # "friendlyNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p3    # "serviceDescription":Ljava/lang/String;
    .end local p4    # "serverUri":Landroid/net/Uri;
    .end local p5    # "nai":Ljava/lang/String;
    .end local p6    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "friendlyNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "serviceDescription":Ljava/lang/String;
    .local v5, "serverUri":Landroid/net/Uri;
    .local v6, "nai":Ljava/lang/String;
    .local v7, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v1 .. v7}, Landroid/net/wifi/hotspot2/OsuProvider;-><init>(Landroid/net/wifi/WifiSsid;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 217
    return v0

    .line 219
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 220
    return v2

    .line 222
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 223
    .local v1, "that":Landroid/net/wifi/hotspot2/OsuProvider;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    .line 224
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 225
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 226
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 227
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 228
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 223
    :goto_4b
    return v0
.end method

.method public whitelist getFriendlyName()Ljava/lang/String;
    .registers 5

    .line 160
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_49

    .line 161
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 164
    return-object v1

    .line 166
    :cond_20
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    const-string v3, "en"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 167
    if-eqz v1, :cond_2e

    .line 168
    return-object v1

    .line 170
    :cond_2e
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 160
    .end local v0    # "lang":Ljava/lang/String;
    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFriendlyNameList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    return-object v0
.end method

.method public greylist-max-o getMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getNetworkAccessIdentifier()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getOsuSsid()Landroid/net/wifi/WifiSsid;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public whitelist getServerUri()Landroid/net/Uri;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o getServiceDescription()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 233
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setOsuSsid(Landroid/net/wifi/WifiSsid;)V
    .registers 2
    .param p1, "osuSsid"    # Landroid/net/wifi/WifiSsid;

    .line 146
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 147
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsuProvider{mOsuSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFriendlyNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServiceDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkAccessIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMethodList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 207
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "friendlyNameMap"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method
