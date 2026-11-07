.class public final Landroid/hardware/display/WifiDisplayStatus;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/WifiDisplayStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-r DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final greylist-max-r DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final greylist-max-r DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final greylist-max-o FEATURE_STATE_DISABLED:I = 0x1

.field public static final greylist-max-o FEATURE_STATE_OFF:I = 0x2

.field public static final greylist-max-r FEATURE_STATE_ON:I = 0x3

.field public static final greylist-max-o FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final greylist-max-r SCAN_STATE_NOT_SCANNING:I = 0x0

.field public static final greylist-max-o SCAN_STATE_SCANNING:I = 0x1


# instance fields
.field private final greylist-max-r mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private final greylist-max-o mActiveDisplayState:I

.field private final greylist-max-r mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final greylist-max-o mFeatureState:I

.field private final greylist-max-o mScanState:I

.field private final greylist-max-o mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 8

    .line 102
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 104
    return-void
.end method

.method public constructor greylist-max-o <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .registers 9
    .param p1, "featureState"    # I
    .param p2, "scanState"    # I
    .param p3, "activeDisplayState"    # I
    .param p4, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p6, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-eqz p5, :cond_1b

    .line 112
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    .line 113
    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    .line 114
    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    .line 115
    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 116
    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 118
    if-eqz p6, :cond_13

    move-object v0, p6

    goto :goto_18

    :cond_13
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    :goto_18
    iput-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 119
    return-void

    .line 109
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displays must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getActiveDisplay()Landroid/hardware/display/WifiDisplay;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public greylist getActiveDisplayState()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    return v0
.end method

.method public greylist getDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public greylist getFeatureState()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    return v0
.end method

.method public greylist getScanState()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    return v0
.end method

.method public greylist-max-o getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplayStatus{featureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 191
    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_21
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v0

    :goto_2a
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 196
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 195
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 199
    :cond_34
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/WifiDisplaySessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    return-void
.end method
