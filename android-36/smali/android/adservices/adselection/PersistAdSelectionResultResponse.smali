.class public final Landroid/adservices/adselection/PersistAdSelectionResultResponse;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/PersistAdSelectionResultResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdRenderUri:Landroid/net/Uri;

.field private final blacklist mAdSelectionId:J

.field private final blacklist mComponentAdUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWinningSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$1;

    invoke-direct {v0}, Landroid/adservices/adselection/PersistAdSelectionResultResponse$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;)V
    .registers 6
    .param p1, "adSelectionId"    # J
    .param p3, "adRenderUri"    # Landroid/net/Uri;
    .param p4, "winningSeller"    # Landroid/adservices/common/AdTechIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/net/Uri;",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p5, "componentAdUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    .line 68
    iput-object p3, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    .line 69
    iput-object p4, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 70
    iput-object p5, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/adselection/PersistAdSelectionResultResponse-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;-><init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    .line 77
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    .line 78
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    .line 80
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/PersistAdSelectionResultResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Landroid/adservices/adselection/PersistAdSelectionResultResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;

    .line 87
    .local v0, "response":Landroid/adservices/adselection/PersistAdSelectionResultResponse;
    iget-wide v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    iget-wide v4, v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    .line 88
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 89
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    iget-object v3, v0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    .line 90
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    .line 87
    :goto_31
    return v1

    .line 92
    .end local v0    # "response":Landroid/adservices/adselection/PersistAdSelectionResultResponse;
    :cond_32
    return v1
.end method

.method public blacklist getAdRenderUri()Landroid/net/Uri;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 107
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getComponentAdUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWinningSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 97
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    const-string v1, "Ad render uri cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Winning seller cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mAdRenderUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse;->mComponentAdUris:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    return-void
.end method
