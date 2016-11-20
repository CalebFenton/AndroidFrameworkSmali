.class public final Landroid/net/metrics/DhcpClientEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "DhcpClientEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpClientEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DhcpClientEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ifName:Ljava/lang/String;

.field public final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid/net/metrics/DhcpClientEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/DhcpClientEvent$1;-><init>()V

    #@5
    .line 55
    sput-object v0, Landroid/net/metrics/DhcpClientEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    #@3
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@9
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@f
    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpClientEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@5
    .line 33
    iput-object p2, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@7
    .line 31
    return-void
.end method

.method public static logStateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/net/metrics/DhcpClientEvent;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Landroid/net/metrics/DhcpClientEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    #@8
    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "DhcpClientEvent(%s, %s)"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 43
    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 41
    return-void
.end method
