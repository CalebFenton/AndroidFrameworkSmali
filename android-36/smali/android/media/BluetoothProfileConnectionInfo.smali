.class public final Landroid/media/BluetoothProfileConnectionInfo;
.super Ljava/lang/Object;
.source "BluetoothProfileConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/BluetoothProfileConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsLeOutput:Z

.field private final blacklist mProfile:I

.field private final blacklist mSupprNoisy:Z

.field private final blacklist mVolume:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo$1;

    invoke-direct {v0}, Landroid/media/BluetoothProfileConnectionInfo$1;-><init>()V

    sput-object v0, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 51
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v0}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    .line 52
    return-void
.end method

.method private constructor blacklist <init>(IZIZ)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "suppressNoisyIntent"    # Z
    .param p3, "volume"    # I
    .param p4, "isLeOutput"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    .line 41
    iput-boolean p2, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    .line 42
    iput p3, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    .line 43
    iput-boolean p4, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(IZIZLandroid/media/BluetoothProfileConnectionInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-void
.end method

.method public static blacklist createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "volume"    # I

    .line 91
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createA2dpSinkInfo(I)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "volume"    # I

    .line 102
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, p0, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z

    .line 113
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-direct {v0, v3, p0, v1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createHfpInfo()Landroid/media/BluetoothProfileConnectionInfo;
    .registers 4

    .line 186
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "isLeOutput"    # Z

    .line 129
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x16

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createLeAudioOutputInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "volume"    # I

    .line 145
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProfile()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    return v0
.end method

.method public blacklist getVolume()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    return v0
.end method

.method public blacklist isLeOutput()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    return v0
.end method

.method public blacklist isSuppressNoisyIntent()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    return-void
.end method
