.class public final Landroid/media/RouteDiscoveryPreference;
.super Ljava/lang/Object;
.source "RouteDiscoveryPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RouteDiscoveryPreference$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RouteDiscoveryPreference;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/media/RouteDiscoveryPreference;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mAllowedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreferredFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShouldPerformActiveScan:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedPackages(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageOrder(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredFeatures(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldPerformActiveScan(Landroid/media/RouteDiscoveryPreference;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Landroid/media/RouteDiscoveryPreference$1;

    invoke-direct {v0}, Landroid/media/RouteDiscoveryPreference$1;-><init>()V

    sput-object v0, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    .line 82
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/RouteDiscoveryPreference$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/RouteDiscoveryPreference$Builder;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mPreferredFeatures:Ljava/util/List;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    .line 87
    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mPackageOrder:Ljava/util/List;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    .line 88
    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mAllowedPackages:Ljava/util/List;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    .line 89
    iget-boolean v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mActiveScan:Z

    iput-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    .line 90
    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RouteDiscoveryPreference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mShouldPerformActiveScan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPreferredFeatures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPackageOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAllowedPackages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mExtras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 221
    return v0

    .line 223
    :cond_4
    instance-of v1, p1, Landroid/media/RouteDiscoveryPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 224
    return v2

    .line 226
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/RouteDiscoveryPreference;

    .line 227
    .local v1, "other":Landroid/media/RouteDiscoveryPreference;
    iget-object v3, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    .line 228
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    .line 229
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    iget-boolean v4, v1, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 227
    :goto_33
    return v0
.end method

.method public blacklist getAllowedPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDeduplicationPackageOrder()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPreferredFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 235
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    iget-object v1, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    iget-object v2, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    iget-boolean v3, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    .line 236
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldPerformActiveScan()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    return v0
.end method

.method public blacklist shouldRemoveDuplicates()Z
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    const-string v1, "RouteDiscoveryRequest{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string v1, "preferredFeatures={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    .line 209
    const-string v2, ", "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, ", activeScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 181
    iget-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 183
    return-void
.end method
