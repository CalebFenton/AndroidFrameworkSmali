.class public final Landroid/nearby/PresenceBroadcastRequest;
.super Landroid/nearby/BroadcastRequest;
.source "PresenceBroadcastRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/PresenceBroadcastRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/PresenceBroadcastRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredential:Landroid/nearby/PrivateCredential;

.field private final blacklist mExtendedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSalt:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/nearby/PresenceBroadcastRequest$1;

    invoke-direct {v0}, Landroid/nearby/PresenceBroadcastRequest$1;-><init>()V

    sput-object v0, Landroid/nearby/PresenceBroadcastRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/util/List;[BLjava/util/List;Landroid/nearby/PrivateCredential;Ljava/util/List;)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "txPower"    # I
    .param p4, "salt"    # [B
    .param p6, "credential"    # Landroid/nearby/PrivateCredential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/nearby/PrivateCredential;",
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p3, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, "extendedProperties":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/DataElement;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/nearby/BroadcastRequest;-><init>(IIILjava/util/List;)V

    .line 47
    iput-object p4, p0, Landroid/nearby/PresenceBroadcastRequest;->mSalt:[B

    .line 48
    iput-object p5, p0, Landroid/nearby/PresenceBroadcastRequest;->mActions:Ljava/util/List;

    .line 49
    iput-object p6, p0, Landroid/nearby/PresenceBroadcastRequest;->mCredential:Landroid/nearby/PrivateCredential;

    .line 50
    iput-object p7, p0, Landroid/nearby/PresenceBroadcastRequest;->mExtendedProperties:Ljava/util/List;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/util/List;[BLjava/util/List;Landroid/nearby/PrivateCredential;Ljava/util/List;Landroid/nearby/PresenceBroadcastRequest-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/nearby/PresenceBroadcastRequest;-><init>(IILjava/util/List;[BLjava/util/List;Landroid/nearby/PrivateCredential;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/nearby/BroadcastRequest;-><init>(ILandroid/os/Parcel;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mSalt:[B

    .line 56
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mSalt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mActions:Ljava/util/List;

    .line 59
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mActions:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 60
    const-class v0, Landroid/nearby/PrivateCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/nearby/PrivateCredential;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nearby/PrivateCredential;

    iput-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mCredential:Landroid/nearby/PrivateCredential;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mExtendedProperties:Ljava/util/List;

    .line 63
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mExtendedProperties:Ljava/util/List;

    const-class v1, Landroid/nearby/DataElement;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/nearby/DataElement;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 64
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PresenceBroadcastRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v0, Landroid/nearby/PresenceBroadcastRequest;

    invoke-direct {v0, p0}, Landroid/nearby/PresenceBroadcastRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCredential()Landroid/nearby/PrivateCredential;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mCredential:Landroid/nearby/PrivateCredential;

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

    .line 115
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mExtendedProperties:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSalt()[B
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mSalt:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    invoke-super {p0, p1, p2}, Landroid/nearby/BroadcastRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mSalt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mSalt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 128
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mCredential:Landroid/nearby/PrivateCredential;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    iget-object v0, p0, Landroid/nearby/PresenceBroadcastRequest;->mExtendedProperties:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 131
    return-void
.end method
