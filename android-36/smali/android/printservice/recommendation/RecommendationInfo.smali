.class public final Landroid/printservice/recommendation/RecommendationInfo;
.super Ljava/lang/Object;
.source "RecommendationInfo.java"

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
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDiscoveredPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mName:Ljava/lang/CharSequence;

.field private final greylist-max-o mPackageName:Ljava/lang/CharSequence;

.field private final greylist-max-o mRecommendsMultiVendorService:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/printservice/recommendation/RecommendationInfo$1;

    invoke-direct {v0}, Landroid/printservice/recommendation/RecommendationInfo$1;-><init>()V

    sput-object v0, Landroid/printservice/recommendation/RecommendationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Landroid/printservice/recommendation/RecommendationInfo;->readDiscoveredPrinters(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 121
    :goto_15
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/printservice/recommendation/RecommendationInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/printservice/recommendation/RecommendationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/printservice/recommendation/RecommendationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "numDiscoveredPrinters"    # I
    .param p4, "recommendsMultiVendorService"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This constructor has been deprecated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p4, "recommendsMultiVendorService"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;Z)V"
        }
    .end annotation

    .line 62
    .local p3, "discoveredPrinters":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 64
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    .line 65
    const-string v0, "discoveredPrinters"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    .line 67
    iput-boolean p4, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    .line 68
    return-void
.end method

.method private static greylist-max-o readDiscoveredPrinters(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "numDiscoveredPrinters":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v1, "discoveredPrinters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_22

    .line 104
    :try_start_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_17} :catch_1b

    .line 107
    nop

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 105
    :catch_1b
    move-exception v3

    .line 106
    .local v3, "e":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 110
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :cond_22
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDiscoveredPrinters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getNumDiscoveredPrinters()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist recommendsMultiVendorService()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    .local v0, "numDiscoveredPrinters":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationInfo;->mDiscoveredPrinters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 174
    .local v2, "printer":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBlob([B)V

    .line 175
    .end local v2    # "printer":Ljava/net/InetAddress;
    goto :goto_19

    .line 177
    :cond_2d
    iget-boolean v1, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    return-void
.end method
