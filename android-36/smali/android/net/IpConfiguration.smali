.class public final Landroid/net/IpConfiguration;
.super Ljava/lang/Object;
.source "IpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpConfiguration$IpAssignment;,
        Landroid/net/IpConfiguration$ProxySettings;,
        Landroid/net/IpConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpConfiguration"


# instance fields
.field public greylist httpProxy:Landroid/net/ProxyInfo;

.field public greylist-max-o ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field public greylist-max-o proxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field public greylist-max-o staticIpConfiguration:Landroid/net/StaticIpConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Landroid/net/IpConfiguration$1;

    invoke-direct {v0}, Landroid/net/IpConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 103
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 112
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/IpConfiguration;)V
    .registers 6
    .param p1, "source"    # Landroid/net/IpConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 117
    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    .line 118
    if-eqz p1, :cond_10

    .line 119
    iget-object v0, p1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v1, p1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v2, p1, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v3, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 122
    :cond_10
    return-void
.end method

.method private greylist-max-o init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .registers 7
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 91
    iput-object p1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 92
    iput-object p2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 93
    const/4 v0, 0x0

    if-nez p3, :cond_9

    .line 94
    move-object v1, v0

    goto :goto_e

    :cond_9
    new-instance v1, Landroid/net/StaticIpConfiguration;

    invoke-direct {v1, p3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_e
    iput-object v1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 95
    if-nez p4, :cond_13

    .line 96
    goto :goto_18

    :cond_13
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p4}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    :goto_18
    iput-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 202
    return v0

    .line 205
    :cond_4
    instance-of v1, p1, Landroid/net/IpConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 206
    return v2

    .line 209
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/IpConfiguration;

    .line 210
    .local v1, "other":Landroid/net/IpConfiguration;
    iget-object v3, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v4, v1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, v1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v4, v1, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 212
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    iget-object v4, v1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 213
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 210
    :goto_2f
    return v0
.end method

.method public whitelist getHttpProxy()Landroid/net/ProxyInfo;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public whitelist getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public whitelist getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public whitelist getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    add-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 219
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 220
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2f

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 221
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x53

    add-int/2addr v0, v1

    .line 218
    return v0
.end method

.method public whitelist setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 2
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 177
    iput-object p1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 178
    return-void
.end method

.method public whitelist setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .registers 2
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 133
    iput-object p1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 134
    return-void
.end method

.method public whitelist setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .registers 2
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 161
    iput-object p1, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 162
    return-void
.end method

.method public whitelist setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .registers 2
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    iput-object p1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 150
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP assignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    if-eqz v2, :cond_49

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Static configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v2, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_8b

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 231
    iget-object v0, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 235
    return-void
.end method
