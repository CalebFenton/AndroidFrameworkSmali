.class final Landroid/net/DhcpResults$1;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/DhcpResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 124
    new-instance v0, Landroid/net/DhcpResults;

    #@2
    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    #@5
    .line 125
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    invoke-static {v0, p1}, Landroid/net/DhcpResults;->-wrap0(Landroid/net/DhcpResults;Landroid/os/Parcel;)V

    #@8
    .line 126
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/DhcpResults;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 130
    new-array v0, p1, [Landroid/net/DhcpResults;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->newArray(I)[Landroid/net/DhcpResults;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
