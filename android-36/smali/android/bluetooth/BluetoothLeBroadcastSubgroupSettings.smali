.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroupSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;,
        Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Quality;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist QUALITY_HIGH:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_STANDARD:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private final blacklist mPreferredQuality:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V
    .registers 3
    .param p1, "preferredQuality"    # I
    .param p2, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mPreferredQuality:I

    .line 75
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;-><init>(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 81
    return v1

    .line 83
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    .line 84
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;
    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mPreferredQuality:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->getPreferredQuality()I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 85
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 84
    :goto_20
    return v1
.end method

.method public whitelist getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public whitelist getPreferredQuality()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 113
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mPreferredQuality:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 90
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mPreferredQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mPreferredQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    return-void
.end method
