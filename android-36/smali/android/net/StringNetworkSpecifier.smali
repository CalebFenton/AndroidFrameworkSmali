.class public final Landroid/net/StringNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "StringNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/StringNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist specifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/net/StringNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/StringNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/StringNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "specifier"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 39
    iput-object p1, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 45
    invoke-virtual {p0, p1}, Landroid/net/StringNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Landroid/net/StringNetworkSpecifier;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 51
    :cond_6
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/net/StringNetworkSpecifier;

    iget-object v1, v1, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget-object v0, p0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
