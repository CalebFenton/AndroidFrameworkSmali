.class public interface abstract Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
.super Ljava/lang/Object;
.source "IMDnsEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;,
        Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "ae4cfe565d66acc7d816aabd0dfab991e64031ab"

.field public static final blacklist SERVICE_DISCOVERY_FAILED:I = 0x25a

.field public static final blacklist SERVICE_FOUND:I = 0x25b

.field public static final blacklist SERVICE_GET_ADDR_FAILED:I = 0x263

.field public static final blacklist SERVICE_GET_ADDR_SUCCESS:I = 0x264

.field public static final blacklist SERVICE_LOST:I = 0x25c

.field public static final blacklist SERVICE_REGISTERED:I = 0x25e

.field public static final blacklist SERVICE_REGISTRATION_FAILED:I = 0x25d

.field public static final blacklist SERVICE_RESOLUTION_FAILED:I = 0x25f

.field public static final blacklist SERVICE_RESOLVED:I = 0x260

.field public static final blacklist VERSION:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 254
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$mdns$aidl$IMDnsEventListener"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGettingServiceAddressStatus(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onServiceDiscoveryStatus(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onServiceRegistrationStatus(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onServiceResolutionStatus(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
