.class public final Landroid/adservices/adselection/AdSelectionResponse;
.super Ljava/lang/Object;
.source "AdSelectionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionResponse$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/AdSelectionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionId:J

.field private final blacklist mRenderUri:Landroid/net/Uri;

.field private final blacklist mWinningSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/adservices/adselection/AdSelectionResponse$1;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionResponse$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;)V
    .registers 6
    .param p1, "adSelectionId"    # J
    .param p3, "renderUri"    # Landroid/net/Uri;
    .param p4, "winningSeller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-wide p1, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    .line 47
    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    .line 48
    const-string v0, "Winning seller cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/adselection/AdSelectionResponse-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/AdSelectionResponse;-><init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    .line 55
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    .line 56
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdSelectionResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdSelectionResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Landroid/adservices/adselection/AdSelectionResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 92
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/AdSelectionResponse;

    .line 93
    .local v0, "adSelectionResponse":Landroid/adservices/adselection/AdSelectionResponse;
    iget-wide v2, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    iget-wide v4, v0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    .line 94
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, v0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 95
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 93
    :goto_27
    return v1

    .line 97
    .end local v0    # "adSelectionResponse":Landroid/adservices/adselection/AdSelectionResponse;
    :cond_28
    return v1
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 81
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getRenderUri()Landroid/net/Uri;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getWinningSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 102
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdSelectionResponse{mAdSelectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenderUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWinningSeller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    const-string v1, "Render uri cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Winning seller cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    return-void
.end method
