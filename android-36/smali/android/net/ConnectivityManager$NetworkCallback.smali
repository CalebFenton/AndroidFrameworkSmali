.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$NetworkCallback$Flag;,
        Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
    }
.end annotation


# static fields
.field public static final blacklist DECLARED_METHODS_ALL:I = -0x1

.field public static final blacklist DECLARED_METHODS_NONE:I = 0x0

.field public static final whitelist FLAG_INCLUDE_LOCATION_INFO:I = 0x1

.field public static final blacklist FLAG_NONE:I = 0x0

.field private static final blacklist METHOD_ONAVAILABLE_1ARG:I = 0x4

.field private static final blacklist METHOD_ONAVAILABLE_4ARGS:I = 0x3

.field private static final blacklist METHOD_ONAVAILABLE_5ARGS:I = 0x2

.field private static final blacklist METHOD_ONBLOCKEDSTATUSCHANGED_BOOL:I = 0xd

.field private static final blacklist METHOD_ONBLOCKEDSTATUSCHANGED_INT:I = 0xe

.field private static final blacklist METHOD_ONCAPABILITIESCHANGED:I = 0x8

.field private static final blacklist METHOD_ONLINKPROPERTIESCHANGED:I = 0x9

.field private static final blacklist METHOD_ONLOCALNETWORKINFOCHANGED:I = 0xa

.field private static final blacklist METHOD_ONLOSING:I = 0x5

.field private static final blacklist METHOD_ONLOST:I = 0x6

.field private static final blacklist METHOD_ONNETWORKRESUMED:I = 0xc

.field private static final blacklist METHOD_ONNETWORKSUSPENDED:I = 0xb

.field private static final blacklist METHOD_ONPRECHECK:I = 0x1

.field private static final blacklist METHOD_ONRESERVED:I = 0xf

.field private static final blacklist METHOD_ONUNAVAILABLE:I = 0x7

.field private static final blacklist VALID_FLAGS:I = 0x1


# instance fields
.field private final blacklist mConstructorWasCalled:Z

.field private final blacklist mFlags:I

.field private greylist-max-o networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConstructorWasCalled(Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->mConstructorWasCalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/net/ConnectivityManager$NetworkCallback;)I
    .registers 1

    iget p0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .registers 1

    iget-object p0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputnetworkRequest(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)V
    .registers 2

    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 4124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    .line 4125
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 4127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4128
    and-int/lit8 v0, p1, 0x1

    if-ne v0, p1, :cond_d

    .line 4131
    iput p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->mFlags:I

    .line 4132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->mConstructorWasCalled:Z

    .line 4133
    return-void

    .line 4129
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x0
        methodId = 0x4
    .end annotation

    .line 4254
    return-void
.end method

.method public final blacklist onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/LocalNetworkInfo;I)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "localInfo"    # Landroid/net/LocalNetworkInfo;
    .param p5, "blocked"    # I
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x2
        mayCall = {
            0x3,
            0xa,
            0xe
        }
        methodId = 0x2
    .end annotation

    .line 4182
    if-eqz p5, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V

    .line 4183
    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p4}, Landroid/net/ConnectivityManager$NetworkCallback;->onLocalNetworkInfoChanged(Landroid/net/Network;Landroid/net/LocalNetworkInfo;)V

    .line 4184
    :cond_d
    invoke-virtual {p0, p1, p5}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;I)V

    .line 4185
    return-void
.end method

.method public blacklist onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "blocked"    # Z
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x0
        mayCall = {
            0x4,
            0xb,
            0x8,
            0x9
        }
        methodId = 0x3
    .end annotation

    .line 4212
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 4213
    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4215
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    .line 4217
    :cond_e
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 4218
    invoke-virtual {p0, p1, p3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 4220
    return-void
.end method

.method public blacklist onBlockedStatusChanged(Landroid/net/Network;I)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "blocked"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0xb
        mayCall = {
            0xd
        }
        methodId = 0xe
    .end annotation

    .line 4450
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    .line 4451
    return-void
.end method

.method public whitelist onBlockedStatusChanged(Landroid/net/Network;Z)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "blocked"    # Z
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x0
        methodId = 0xd
    .end annotation

    .line 4426
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x6
        methodId = 0x8
    .end annotation

    .line 4337
    return-void
.end method

.method public whitelist onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x7
        methodId = 0x9
    .end annotation

    .line 4356
    return-void
.end method

.method public blacklist onLocalNetworkInfoChanged(Landroid/net/Network;Landroid/net/LocalNetworkInfo;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "localNetworkInfo"    # Landroid/net/LocalNetworkInfo;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0xc
        methodId = 0xa
    .end annotation

    .line 4372
    return-void
.end method

.method public whitelist onLosing(Landroid/net/Network;I)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x3
        methodId = 0x5
    .end annotation

    .line 4275
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x4
        methodId = 0x6
    .end annotation

    .line 4298
    return-void
.end method

.method public greylist-max-o onNetworkResumed(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0xa
        methodId = 0xc
    .end annotation

    .line 4410
    return-void
.end method

.method public greylist-max-o onNetworkSuspended(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x9
        methodId = 0xb
    .end annotation

    .line 4394
    return-void
.end method

.method public greylist-max-o onPreCheck(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x1
        methodId = 0x1
    .end annotation

    .line 4151
    return-void
.end method

.method public whitelist onReserved(Landroid/net/NetworkCapabilities;)V
    .registers 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0xd
        methodId = 0xf
    .end annotation

    .line 4473
    return-void
.end method

.method public whitelist onUnavailable()V
    .registers 1
    .annotation runtime Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        calledByCallbackId = 0x5
        methodId = 0x7
    .end annotation

    .line 4316
    return-void
.end method
