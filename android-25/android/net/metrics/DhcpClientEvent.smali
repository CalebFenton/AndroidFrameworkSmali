.class public final Landroid/net/metrics/DhcpClientEvent;
.super Ljava/lang/Object;
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

.field public static final INITIAL_BOUND:Ljava/lang/String; = "InitialBoundState"

.field public static final RENEWING_BOUND:Ljava/lang/String; = "RenewingBoundState"


# instance fields
.field public final durationMs:I

.field public final ifName:Ljava/lang/String;

.field public final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Landroid/net/metrics/DhcpClientEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/DhcpClientEvent$1;-><init>()V

    #@5
    .line 70
    sput-object v0, Landroid/net/metrics/DhcpClientEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@9
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@f
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    #@15
    .line 47
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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@5
    .line 43
    iput-object p2, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@7
    .line 44
    iput p3, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    #@9
    .line 41
    return-void
.end method

.method public static logStateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "DhcpClientEvent(%s, %s, %dms)"

    #@3
    const/4 v1, 0x3

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
    iget v2, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x2

    #@17
    aput-object v2, v1, v3

    #@19
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 56
    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 57
    iget v0, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 54
    return-void
.end method
