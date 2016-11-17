.class public Landroid/net/DhcpInfo;
.super Ljava/lang/Object;
.source "DhcpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dns1:I

.field public dns2:I

.field public gateway:I

.field public ipAddress:I

.field public leaseDuration:I

.field public netmask:I

.field public serverAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/net/DhcpInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/DhcpInfo$1;-><init>()V

    #@5
    .line 87
    sput-object v0, Landroid/net/DhcpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/DhcpInfo;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    if-eqz p1, :cond_0

    #@5
    .line 42
    iget v0, p1, Landroid/net/DhcpInfo;->ipAddress:I

    #@7
    iput v0, p0, Landroid/net/DhcpInfo;->ipAddress:I

    #@9
    .line 43
    iget v0, p1, Landroid/net/DhcpInfo;->gateway:I

    #@b
    iput v0, p0, Landroid/net/DhcpInfo;->gateway:I

    #@d
    .line 44
    iget v0, p1, Landroid/net/DhcpInfo;->netmask:I

    #@f
    iput v0, p0, Landroid/net/DhcpInfo;->netmask:I

    #@11
    .line 45
    iget v0, p1, Landroid/net/DhcpInfo;->dns1:I

    #@13
    iput v0, p0, Landroid/net/DhcpInfo;->dns1:I

    #@15
    .line 46
    iget v0, p1, Landroid/net/DhcpInfo;->dns2:I

    #@17
    iput v0, p0, Landroid/net/DhcpInfo;->dns2:I

    #@19
    .line 47
    iget v0, p1, Landroid/net/DhcpInfo;->serverAddress:I

    #@1b
    iput v0, p0, Landroid/net/DhcpInfo;->serverAddress:I

    #@1d
    .line 48
    iget v0, p1, Landroid/net/DhcpInfo;->leaseDuration:I

    #@1f
    iput v0, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    #@21
    .line 40
    :cond_0
    return-void
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "addr"    # I

    #@0
    .prologue
    .line 67
    invoke-static {p1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 55
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "ipaddr "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    iget v1, p0, Landroid/net/DhcpInfo;->ipAddress:I

    #@d
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    #@10
    .line 56
    const-string/jumbo v1, " gateway "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    iget v1, p0, Landroid/net/DhcpInfo;->gateway:I

    #@18
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    #@1b
    .line 57
    const-string/jumbo v1, " netmask "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    iget v1, p0, Landroid/net/DhcpInfo;->netmask:I

    #@23
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    #@26
    .line 58
    const-string/jumbo v1, " dns1 "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    iget v1, p0, Landroid/net/DhcpInfo;->dns1:I

    #@2e
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    #@31
    .line 59
    const-string/jumbo v1, " dns2 "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    iget v1, p0, Landroid/net/DhcpInfo;->dns2:I

    #@39
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    #@3c
    .line 60
    const-string/jumbo v1, " DHCP server "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    iget v1, p0, Landroid/net/DhcpInfo;->serverAddress:I

    #@44
    invoke-static {v0, v1}, Landroid/net/DhcpInfo;->putAddress(Ljava/lang/StringBuffer;I)V

    #@47
    .line 61
    const-string/jumbo v1, " lease "

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4d
    move-result-object v1

    #@4e
    iget v2, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, " seconds"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5a
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/net/DhcpInfo;->ipAddress:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 78
    iget v0, p0, Landroid/net/DhcpInfo;->gateway:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 79
    iget v0, p0, Landroid/net/DhcpInfo;->netmask:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 80
    iget v0, p0, Landroid/net/DhcpInfo;->dns1:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 81
    iget v0, p0, Landroid/net/DhcpInfo;->dns2:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 82
    iget v0, p0, Landroid/net/DhcpInfo;->serverAddress:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 83
    iget v0, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 76
    return-void
.end method
