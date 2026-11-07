.class public final Landroid/adservices/customaudience/TrustedBiddingData;
.super Ljava/lang/Object;
.source "TrustedBiddingData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/TrustedBiddingData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/customaudience/TrustedBiddingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTrustedBiddingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTrustedBiddingUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/adservices/customaudience/TrustedBiddingData$1;

    invoke-direct {v0}, Landroid/adservices/customaudience/TrustedBiddingData$1;-><init>()V

    sput-object v0, Landroid/adservices/customaudience/TrustedBiddingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/TrustedBiddingData$Builder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->-$$Nest$fgetmTrustedBiddingUri(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    .line 54
    invoke-static {p1}, Landroid/adservices/customaudience/TrustedBiddingData$Builder;->-$$Nest$fgetmTrustedBiddingKeys(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/TrustedBiddingData$Builder;Landroid/adservices/customaudience/TrustedBiddingData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/TrustedBiddingData;-><init>(Landroid/adservices/customaudience/TrustedBiddingData$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/customaudience/TrustedBiddingData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/TrustedBiddingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/TrustedBiddingData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 100
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/TrustedBiddingData;

    .line 101
    .local v1, "that":Landroid/adservices/customaudience/TrustedBiddingData;
    iget-object v3, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 101
    :goto_23
    return v0
.end method

.method public whitelist getTrustedBiddingKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTrustedBiddingUri()Landroid/net/Uri;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object v0, p0, Landroid/adservices/customaudience/TrustedBiddingData;->mTrustedBiddingKeys:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 68
    return-void
.end method
