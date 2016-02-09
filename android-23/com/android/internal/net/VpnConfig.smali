.class public Lcom/android/internal/net/VpnConfig;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/VpnConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOGS_PACKAGE:Ljava/lang/String; = "com.android.vpndialogs"

.field public static final LEGACY_VPN:Ljava/lang/String; = "[Legacy VPN]"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"


# instance fields
.field public addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public allowBypass:Z

.field public allowIPv4:Z

.field public allowIPv6:Z

.field public allowedApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blocking:Z

.field public configureIntent:Landroid/app/PendingIntent;

.field public disallowedApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public interfaze:Ljava/lang/String;

.field public legacy:Z

.field public mtu:I

.field public routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public searchDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public session:Ljava/lang/String;

.field public startTime:J

.field public underlyingNetworks:[Landroid/net/Network;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 168
    new-instance v0, Lcom/android/internal/net/VpnConfig$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig$1;-><init>()V

    #@5
    .line 167
    sput-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    #@6
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@d
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@14
    .line 98
    const-wide/16 v0, -0x1

    #@16
    iput-wide v0, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@18
    .line 46
    return-void
.end method

.method public static getIntentForConfirmation()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    .line 55
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    .line 57
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@8
    move-result-object v2

    #@9
    .line 58
    const v3, 0x1040047

    #@c
    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 56
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@13
    move-result-object v0

    #@14
    .line 59
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 60
    return-object v1
.end method

.method public static getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    new-instance v2, Landroid/content/Intent;

    #@3
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@6
    .line 66
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.vpndialogs"

    #@9
    const-string/jumbo v3, "com.android.vpndialogs.ManageDialog"

    #@c
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@f
    .line 67
    const/high16 v0, 0x50800000

    #@11
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@14
    .line 69
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@16
    const/4 v4, 0x0

    #@17
    move-object v0, p0

    #@18
    move v3, v1

    #@19
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public static getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v1

    #@5
    .line 75
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    #@7
    const-string/jumbo v3, "android.net.VpnService"

    #@a
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 76
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 77
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    .line 78
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@19
    move-result v3

    #@1a
    const/4 v4, 0x1

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    .line 81
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@23
    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@26
    move-result-object v3

    #@27
    return-object v3

    #@28
    .line 83
    :cond_0
    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method


# virtual methods
.method public addLegacyAddresses(Ljava/lang/String;)V
    .locals 6
    .param p1, "addressesStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    const-string/jumbo v4, ""

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 129
    return-void

    #@e
    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 132
    .local v2, "addresses":[Ljava/lang/String;
    const/4 v3, 0x0

    #@1a
    array-length v4, v2

    #@1b
    :goto_0
    if-ge v3, v4, :cond_1

    #@1d
    aget-object v1, v2, v3

    #@1f
    .line 134
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Landroid/net/LinkAddress;

    #@21
    invoke-direct {v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    #@24
    .line 135
    .local v0, "addr":Landroid/net/LinkAddress;
    iget-object v5, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@26
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 136
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {p0, v5}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    #@30
    .line 132
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 127
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "address":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public addLegacyRoutes(Ljava/lang/String;)V
    .locals 7
    .param p1, "routesStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    const-string/jumbo v4, ""

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 116
    return-void

    #@e
    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 119
    .local v2, "routes":[Ljava/lang/String;
    const/4 v3, 0x0

    #@1a
    array-length v4, v2

    #@1b
    :goto_0
    if-ge v3, v4, :cond_1

    #@1d
    aget-object v1, v2, v3

    #@1f
    .line 121
    .local v1, "route":Ljava/lang/String;
    new-instance v0, Landroid/net/RouteInfo;

    #@21
    new-instance v5, Landroid/net/IpPrefix;

    #@23
    invoke-direct {v5, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    #@26
    const/4 v6, 0x0

    #@27
    invoke-direct {v0, v5, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V

    #@2a
    .line 122
    .local v0, "info":Landroid/net/RouteInfo;
    iget-object v5, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@2c
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 123
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {p0, v5}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    #@3a
    .line 119
    add-int/lit8 v3, v3, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 114
    .end local v0    # "info":Landroid/net/RouteInfo;
    .end local v1    # "route":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 142
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public updateAllowedFamilies(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 107
    instance-of v0, p1, Ljava/net/Inet4Address;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 108
    iput-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    #@7
    .line 106
    :goto_0
    return-void

    #@8
    .line 110
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    #@a
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 147
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 148
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 149
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 150
    iget v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 151
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b
    .line 152
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@20
    .line 153
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@25
    .line 154
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@2a
    .line 155
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@2f
    .line 156
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@34
    .line 157
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    #@36
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@39
    .line 158
    iget-wide v4, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@3b
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@3e
    .line 159
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    #@40
    if-eqz v0, :cond_0

    #@42
    move v0, v1

    #@43
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 160
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@48
    if-eqz v0, :cond_1

    #@4a
    move v0, v1

    #@4b
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 161
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    #@50
    if-eqz v0, :cond_2

    #@52
    move v0, v1

    #@53
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 162
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    #@58
    if-eqz v0, :cond_3

    #@5a
    move v0, v1

    #@5b
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 163
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    #@60
    if-eqz v0, :cond_4

    #@62
    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 164
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@67
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@6a
    .line 146
    return-void

    #@6b
    :cond_0
    move v0, v2

    #@6c
    .line 159
    goto :goto_0

    #@6d
    :cond_1
    move v0, v2

    #@6e
    .line 160
    goto :goto_1

    #@6f
    :cond_2
    move v0, v2

    #@70
    .line 161
    goto :goto_2

    #@71
    :cond_3
    move v0, v2

    #@72
    .line 162
    goto :goto_3

    #@73
    :cond_4
    move v1, v2

    #@74
    .line 163
    goto :goto_4
.end method
