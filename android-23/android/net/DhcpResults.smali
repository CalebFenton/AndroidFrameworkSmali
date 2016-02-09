.class public Landroid/net/DhcpResults;
.super Landroid/net/StaticIpConfiguration;
.source "DhcpResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpResults$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpResults"


# instance fields
.field public leaseDuration:I

.field public serverAddress:Ljava/net/InetAddress;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/net/DhcpResults;->readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/net/DhcpResults$1;

    #@2
    invoke-direct {v0}, Landroid/net/DhcpResults$1;-><init>()V

    #@5
    .line 121
    sput-object v0, Landroid/net/DhcpResults;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Landroid/net/StaticIpConfiguration;-><init>()V

    #@3
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpResults;)V
    .locals 1
    .param p1, "source"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    #@3
    .line 56
    if-eqz p1, :cond_0

    #@5
    .line 58
    iget-object v0, p1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@7
    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@9
    .line 59
    iget-object v0, p1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@d
    .line 60
    iget v0, p1, Landroid/net/DhcpResults;->leaseDuration:I

    #@f
    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@11
    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .locals 0
    .param p1, "source"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    #@3
    .line 48
    return-void
.end method

.method private static readFromParcel(Landroid/net/DhcpResults;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 143
    invoke-static {p0, p1}, Landroid/net/StaticIpConfiguration;->readFromParcel(Landroid/net/StaticIpConfiguration;Landroid/os/Parcel;)V

    #@3
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@9
    .line 145
    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@f
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@15
    .line 142
    return-void
.end method


# virtual methods
.method public addDns(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@8
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 181
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 176
    :catch_0
    move-exception v0

    #@12
    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "DhcpResults"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "addDns failed with addrString "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 178
    const/4 v1, 0x1

    #@2d
    return v1
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 90
    invoke-super {p0}, Landroid/net/StaticIpConfiguration;->clear()V

    #@3
    .line 91
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@6
    .line 92
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@9
    .line 89
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 108
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 110
    :cond_0
    instance-of v3, p1, Landroid/net/DhcpResults;

    #@7
    if-nez v3, :cond_1

    #@9
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 112
    check-cast v0, Landroid/net/DhcpResults;

    #@d
    .line 114
    .local v0, "target":Landroid/net/DhcpResults;
    check-cast p1, Landroid/net/StaticIpConfiguration;

    #@f
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/net/StaticIpConfiguration;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_3

    #@15
    .line 115
    iget-object v3, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@17
    iget-object v4, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@19
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    .line 114
    if-eqz v3, :cond_3

    #@1f
    .line 116
    iget-object v3, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@21
    iget-object v4, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@23
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 114
    if-eqz v3, :cond_3

    #@29
    .line 117
    iget v3, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@2b
    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    #@2d
    if-ne v3, v4, :cond_2

    #@2f
    .line 114
    :goto_0
    return v1

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 117
    goto :goto_0

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 114
    goto :goto_0
.end method

.method public hasMeteredHint()Z
    .locals 2

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "ANDROID_METERED"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 85
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public setDomains(Ljava/lang/String;)V
    .locals 0
    .param p1, "newDomains"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    #@2
    .line 202
    return-void
.end method

.method public setGateway(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 169
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 165
    :catch_0
    move-exception v0

    #@9
    .line 166
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "DhcpResults"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "setGateway failed with addrString "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 167
    const/4 v1, 0x1

    #@24
    return v1
.end method

.method public setIpAddress(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "addrString"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 153
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/net/Inet4Address;

    #@6
    .line 154
    .local v0, "addr":Ljava/net/Inet4Address;
    new-instance v2, Landroid/net/LinkAddress;

    #@8
    invoke-direct {v2, v0, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@b
    iput-object v2, p0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 159
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 155
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :catch_0
    move-exception v1

    #@10
    .line 156
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "DhcpResults"

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "setIpAddress failed with addrString "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, "/"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 157
    const/4 v2, 0x1

    #@36
    return v2
.end method

.method public setLeaseDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 195
    iput p1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@2
    .line 194
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 191
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 187
    :catch_0
    move-exception v0

    #@9
    .line 188
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "DhcpResults"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "setServerAddress failed with addrString "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 189
    const/4 v1, 0x1

    #@24
    return v1
.end method

.method public setVendorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@2
    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-super {p0}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@9
    .line 99
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string/jumbo v1, " DHCP server "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@15
    .line 100
    const-string/jumbo v1, " Vendor info "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 101
    const-string/jumbo v1, " lease "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    move-result-object v1

    #@28
    iget v2, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " seconds"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method

.method public updateFromDhcpRequest(Landroid/net/DhcpResults;)V
    .locals 2
    .param p1, "orig"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 70
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 71
    :cond_0
    iget-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p1, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@9
    iput-object v0, p0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@b
    .line 72
    :cond_1
    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_2

    #@13
    .line 73
    iget-object v0, p0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@15
    iget-object v1, p1, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 69
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 137
    iget v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 138
    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@a
    invoke-static {p1, v0, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    #@d
    .line 139
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 135
    return-void
.end method
