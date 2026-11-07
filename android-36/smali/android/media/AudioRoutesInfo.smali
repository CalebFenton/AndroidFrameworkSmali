.class public Landroid/media/AudioRoutesInfo;
.super Ljava/lang/Object;
.source "AudioRoutesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioRoutesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MAIN_DOCK_SPEAKERS:I = 0x4

.field public static final greylist-max-o MAIN_HDMI:I = 0x8

.field public static final greylist-max-o MAIN_HEADPHONES:I = 0x2

.field public static final greylist-max-o MAIN_HEADSET:I = 0x1

.field public static final greylist-max-o MAIN_SPEAKER:I = 0x0

.field public static final greylist-max-o MAIN_USB:I = 0x10


# instance fields
.field public greylist-max-o bluetoothName:Ljava/lang/CharSequence;

.field public greylist-max-o mainType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/media/AudioRoutesInfo$1;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 39
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/AudioRoutesInfo;)V
    .registers 3
    .param p1, "o"    # Landroid/media/AudioRoutesInfo;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 42
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 43
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 44
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 47
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 49
    return-void
.end method

.method private static greylist-max-o typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 64
    if-nez p0, :cond_5

    const-string v0, "SPEAKER"

    return-object v0

    .line 65
    :cond_5
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_c

    const-string v0, "HEADSET"

    return-object v0

    .line 66
    :cond_c
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_13

    const-string v0, "HEADPHONES"

    return-object v0

    .line 67
    :cond_13
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1a

    const-string v0, "DOCK_SPEAKERS"

    return-object v0

    .line 68
    :cond_1a
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_21

    const-string v0, "HDMI"

    return-object v0

    .line 69
    :cond_21
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_28

    const-string v0, "USB"

    return-object v0

    .line 70
    :cond_28
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v1}, Landroid/media/AudioRoutesInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    iget-object v1, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, ""

    goto :goto_41

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", bluetoothName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 76
    iget v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
