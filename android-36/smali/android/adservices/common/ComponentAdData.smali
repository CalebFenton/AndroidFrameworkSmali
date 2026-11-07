.class public final Landroid/adservices/common/ComponentAdData;
.super Ljava/lang/Object;
.source "ComponentAdData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/ComponentAdData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdRenderId:Ljava/lang/String;

.field private final blacklist mRenderUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/adservices/common/ComponentAdData$1;

    invoke-direct {v0}, Landroid/adservices/common/ComponentAdData$1;-><init>()V

    sput-object v0, Landroid/adservices/common/ComponentAdData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "renderUri"    # Landroid/net/Uri;
    .param p2, "adRenderId"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 75
    const-string v0, "Provided render uri is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    .line 76
    const-string v0, "Provided ad render id is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    .line 77
    return-void

    .line 73
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ad render id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/ComponentAdData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/ComponentAdData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 119
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/ComponentAdData;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/adservices/common/ComponentAdData;

    .line 120
    .local v1, "adData":Landroid/adservices/common/ComponentAdData;
    iget-object v3, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    .line 121
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    .line 120
    :goto_22
    return v0

    .line 119
    .end local v1    # "adData":Landroid/adservices/common/ComponentAdData;
    :cond_23
    return v2
.end method

.method public whitelist getAdRenderId()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRenderUri()Landroid/net/Uri;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentAdData{mRenderUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdRenderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Landroid/adservices/common/ComponentAdData;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object v0, p0, Landroid/adservices/common/ComponentAdData;->mAdRenderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
