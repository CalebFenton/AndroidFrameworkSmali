.class public final Landroid/net/LocalNetworkInfo;
.super Ljava/lang/Object;
.source "LocalNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LocalNetworkInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LocalNetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUpstreamNetwork:Landroid/net/Network;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/net/LocalNetworkInfo$1;

    invoke-direct {v0}, Landroid/net/LocalNetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/LocalNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Network;)V
    .registers 2
    .param p1, "upstreamNetwork"    # Landroid/net/Network;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/net/LocalNetworkInfo;->mUpstreamNetwork:Landroid/net/Network;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUpstreamNetwork()Landroid/net/Network;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/net/LocalNetworkInfo;->mUpstreamNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalNetworkInfo { upstream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LocalNetworkInfo;->mUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Landroid/net/LocalNetworkInfo;->mUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    return-void
.end method
