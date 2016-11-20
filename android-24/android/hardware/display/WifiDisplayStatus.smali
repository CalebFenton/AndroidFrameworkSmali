.class public final Landroid/hardware/display/WifiDisplayStatus;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/WifiDisplayStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplayStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final FEATURE_STATE_DISABLED:I = 0x1

.field public static final FEATURE_STATE_OFF:I = 0x2

.field public static final FEATURE_STATE_ON:I = 0x3

.field public static final FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final SCAN_STATE_NOT_SCANNING:I = 0x0

.field public static final SCAN_STATE_SCANNING:I = 0x1


# instance fields
.field private final mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private final mActiveDisplayState:I

.field private final mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mFeatureState:I

.field private final mScanState:I

.field private final mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus$1;-><init>()V

    #@5
    sput-object v0, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 94
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@4
    move-object v0, p0

    #@5
    move v2, v1

    #@6
    move v3, v1

    #@7
    move-object v6, v4

    #@8
    .line 93
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    #@b
    .line 92
    return-void
.end method

.method public constructor <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2
    .param p1, "featureState"    # I
    .param p2, "scanState"    # I
    .param p3, "activeDisplayState"    # I
    .param p4, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p6, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    if-nez p5, :cond_0

    #@5
    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "displays must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 103
    :cond_0
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    #@10
    .line 104
    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    #@12
    .line 105
    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    #@14
    .line 106
    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@16
    .line 107
    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@18
    .line 109
    if-eqz p6, :cond_1

    #@1a
    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :goto_0
    iput-object p6, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    #@1c
    .line 98
    return-void

    #@1d
    .line 109
    .restart local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_1
    new-instance p6, Landroid/hardware/display/WifiDisplaySessionInfo;

    #@1f
    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    invoke-direct {p6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    #@22
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 190
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActiveDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@2
    return-object v0
.end method

.method public getActiveDisplayState()I
    .locals 1

    #@0
    .prologue
    .line 140
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    #@2
    return v0
.end method

.method public getDisplays()[Landroid/hardware/display/WifiDisplay;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@2
    return-object v0
.end method

.method public getFeatureState()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    #@2
    return v0
.end method

.method public getScanState()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    #@2
    return v0
.end method

.method public getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WifiDisplayStatus{featureState="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 197
    const-string/jumbo v1, ", scanState="

    #@15
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 197
    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    #@1b
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 198
    const-string/jumbo v1, ", activeDisplayState="

    #@22
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 198
    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    #@28
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 199
    const-string/jumbo v1, ", activeDisplay="

    #@2f
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 199
    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@35
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 200
    const-string/jumbo v1, ", displays="

    #@3c
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 200
    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@42
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 201
    const-string/jumbo v1, ", sessionInfo="

    #@4d
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 201
    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    #@53
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 202
    const-string/jumbo v1, "}"

    #@5a
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 169
    iget v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    #@3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 170
    iget v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    #@8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 171
    iget v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    #@d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 173
    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 174
    const/4 v2, 0x1

    #@15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 175
    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@1a
    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 180
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@1f
    array-length v2, v2

    #@20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 181
    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@25
    array-length v3, v2

    #@26
    :goto_1
    if-ge v1, v3, :cond_1

    #@28
    aget-object v0, v2, v1

    #@2a
    .line 182
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 181
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 177
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    goto :goto_0

    #@34
    .line 185
    :cond_1
    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    #@36
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/WifiDisplaySessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 168
    return-void
.end method
