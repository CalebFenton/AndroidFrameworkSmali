.class public final Landroid/nearby/PresenceScanFilter;
.super Landroid/nearby/ScanFilter;
.source "PresenceScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/PresenceScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/PresenceScanFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/PublicCredential;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExtendedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPresenceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/nearby/PresenceScanFilter$1;

    invoke-direct {v0}, Landroid/nearby/PresenceScanFilter$1;-><init>()V

    sput-object v0, Landroid/nearby/PresenceScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "rssiThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nearby/PublicCredential;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p2, "credentials":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/PublicCredential;>;"
    .local p3, "presenceActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "extendedProperties":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/DataElement;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/nearby/ScanFilter;-><init>(II)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/nearby/PresenceScanFilter-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nearby/PresenceScanFilter;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/nearby/ScanFilter;-><init>(ILandroid/os/Parcel;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 81
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    const-class v1, Landroid/nearby/PublicCredential;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/nearby/PublicCredential;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 84
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 86
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 88
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    .line 90
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    const-class v1, Landroid/nearby/DataElement;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/nearby/DataElement;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 93
    :cond_52
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PresenceScanFilter;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Landroid/nearby/PresenceScanFilter;

    invoke-direct {v0, p0}, Landroid/nearby/PresenceScanFilter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCredentials()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nearby/PublicCredential;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getExtendedProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPresenceActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    invoke-super {p0, p1, p2}, Landroid/nearby/ScanFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 127
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mCredentials:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 129
    :cond_1a
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 131
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mPresenceActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 133
    :cond_30
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 135
    iget-object v0, p0, Landroid/nearby/PresenceScanFilter;->mExtendedProperties:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 137
    :cond_46
    return-void
.end method
