.class public final Landroid/net/TestNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "TestNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TestNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInterfaceName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/net/TestNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/TestNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/TestNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 47
    iput-object p1, p0, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    .line 48
    return-void

    .line 45
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty interfaceName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 59
    invoke-virtual {p0, p1}, Landroid/net/TestNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Landroid/net/TestNetworkSpecifier;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 65
    :cond_6
    iget-object v0, p0, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/net/TestNetworkSpecifier;

    iget-object v1, v1, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestNetworkSpecifier ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

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

    .line 85
    iget-object v0, p0, Landroid/net/TestNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
