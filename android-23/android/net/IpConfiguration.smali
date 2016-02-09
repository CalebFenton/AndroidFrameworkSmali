.class public Landroid/net/IpConfiguration;
.super Ljava/lang/Object;
.source "IpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpConfiguration$IpAssignment;,
        Landroid/net/IpConfiguration$ProxySettings;,
        Landroid/net/IpConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpConfiguration"


# instance fields
.field public httpProxy:Landroid/net/ProxyInfo;

.field public ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field public proxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field public staticIpConfiguration:Landroid/net/StaticIpConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/net/IpConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/net/IpConfiguration$1;-><init>()V

    #@5
    .line 187
    sput-object v0, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    #@6
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@8
    invoke-direct {p0, v0, v1, v2, v2}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    #@b
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    #@6
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/net/IpConfiguration;)V
    .locals 4
    .param p1, "source"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    #@3
    .line 91
    if-eqz p1, :cond_0

    #@5
    .line 92
    iget-object v0, p1, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@7
    iget-object v1, p1, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@9
    .line 93
    iget-object v2, p1, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@b
    iget-object v3, p1, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@d
    .line 92
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/IpConfiguration;->init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    #@10
    .line 89
    :cond_0
    return-void
.end method

.method private init(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    iput-object p1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@3
    .line 71
    iput-object p2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@5
    .line 72
    if-nez p3, :cond_0

    #@7
    move-object v0, v1

    #@8
    :goto_0
    iput-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@a
    .line 74
    if-nez p4, :cond_1

    #@c
    :goto_1
    iput-object v1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@e
    .line 69
    return-void

    #@f
    .line 73
    :cond_0
    new-instance v0, Landroid/net/StaticIpConfiguration;

    #@11
    invoke-direct {v0, p3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    #@14
    goto :goto_0

    #@15
    .line 75
    :cond_1
    new-instance v1, Landroid/net/ProxyInfo;

    #@17
    invoke-direct {v1, p4}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    #@1a
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    if-ne p1, p0, :cond_0

    #@3
    .line 151
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 154
    :cond_0
    instance-of v2, p1, Landroid/net/IpConfiguration;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 155
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 158
    check-cast v0, Landroid/net/IpConfiguration;

    #@d
    .line 159
    .local v0, "other":Landroid/net/IpConfiguration;
    iget-object v2, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@f
    iget-object v3, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 160
    iget-object v2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@15
    iget-object v3, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 161
    iget-object v2, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@1b
    iget-object v3, v0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@1d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 159
    if-eqz v2, :cond_2

    #@23
    .line 162
    iget-object v1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@25
    iget-object v2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@27
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 159
    :cond_2
    return v1
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@2
    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@2
    return-object v0
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@2
    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@6
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_0
    add-int/lit8 v0, v0, 0xd

    #@c
    .line 168
    iget-object v1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@e
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@11
    move-result v1

    #@12
    mul-int/lit8 v1, v1, 0x11

    #@14
    .line 167
    add-int/2addr v0, v1

    #@15
    .line 169
    iget-object v1, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@17
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@1a
    move-result v1

    #@1b
    mul-int/lit8 v1, v1, 0x2f

    #@1d
    .line 167
    add-int/2addr v0, v1

    #@1e
    .line 170
    iget-object v1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@20
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->hashCode()I

    #@23
    move-result v1

    #@24
    mul-int/lit8 v1, v1, 0x53

    #@26
    .line 167
    add-int/2addr v0, v1

    #@27
    return v0

    #@28
    :cond_0
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@2
    .line 125
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 0
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@2
    .line 101
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 0
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@2
    .line 117
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 0
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@2
    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 132
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "IP assignment: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@e
    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 133
    const-string/jumbo v1, "\n"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 134
    iget-object v1, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 135
    const-string/jumbo v1, "Static configuration: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@28
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 136
    const-string/jumbo v1, "\n"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 138
    :cond_0
    const-string/jumbo v1, "Proxy settings: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@3e
    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 139
    const-string/jumbo v1, "\n"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 140
    iget-object v1, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 141
    const-string/jumbo v1, "HTTP proxy: "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget-object v2, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@58
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 142
    const-string/jumbo v1, "\n"

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@2
    invoke-virtual {v0}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 181
    iget-object v0, p0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@b
    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->name()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 182
    iget-object v0, p0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    #@14
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@17
    .line 183
    iget-object v0, p0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@19
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1c
    .line 179
    return-void
.end method
