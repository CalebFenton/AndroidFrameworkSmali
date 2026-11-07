.class public final Landroid/net/MatchAllNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "MatchAllNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/MatchAllNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/net/MatchAllNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/MatchAllNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/MatchAllNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 4
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MatchAllNetworkSpecifier must not be used in NetworkRequests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Landroid/net/MatchAllNetworkSpecifier;

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    return-void
.end method
