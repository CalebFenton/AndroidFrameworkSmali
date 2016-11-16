.class public Landroid/media/AudioRoutesInfo;
.super Ljava/lang/Object;
.source "AudioRoutesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRoutesInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioRoutesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_DOCK_SPEAKERS:I = 0x4

.field public static final MAIN_HDMI:I = 0x8

.field public static final MAIN_HEADPHONES:I = 0x2

.field public static final MAIN_HEADSET:I = 0x1

.field public static final MAIN_SPEAKER:I = 0x0

.field public static final MAIN_USB:I = 0x10


# instance fields
.field public bluetoothName:Ljava/lang/CharSequence;

.field public mainType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 80
    new-instance v0, Landroid/media/AudioRoutesInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/AudioRoutesInfo$1;-><init>()V

    #@5
    .line 79
    sput-object v0, Landroid/media/AudioRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@6
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioRoutesInfo;)V
    .locals 1
    .param p1, "o"    # Landroid/media/AudioRoutesInfo;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@6
    .line 42
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@8
    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@a
    .line 43
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    #@c
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@e
    .line 41
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@6
    .line 47
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@8
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/CharSequence;

    #@e
    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@10
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@16
    .line 46
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 64
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "SPEAKER"

    #@5
    return-object v0

    #@6
    .line 65
    :cond_0
    and-int/lit8 v0, p0, 0x1

    #@8
    if-eqz v0, :cond_1

    #@a
    const-string/jumbo v0, "HEADSET"

    #@d
    return-object v0

    #@e
    .line 66
    :cond_1
    and-int/lit8 v0, p0, 0x2

    #@10
    if-eqz v0, :cond_2

    #@12
    const-string/jumbo v0, "HEADPHONES"

    #@15
    return-object v0

    #@16
    .line 67
    :cond_2
    and-int/lit8 v0, p0, 0x4

    #@18
    if-eqz v0, :cond_3

    #@1a
    const-string/jumbo v0, "DOCK_SPEAKERS"

    #@1d
    return-object v0

    #@1e
    .line 68
    :cond_3
    and-int/lit8 v0, p0, 0x8

    #@20
    if-eqz v0, :cond_4

    #@22
    const-string/jumbo v0, "HDMI"

    #@25
    return-object v0

    #@26
    .line 69
    :cond_4
    and-int/lit8 v0, p0, 0x10

    #@28
    if-eqz v0, :cond_5

    #@2a
    const-string/jumbo v0, "USB"

    #@2d
    return-object v0

    #@2e
    .line 70
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/media/AudioRoutesInfo;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "{ type="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v1, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@1a
    invoke-static {v1}, Landroid/media/AudioRoutesInfo;->typeToString(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 59
    iget-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    const-string/jumbo v0, ""

    #@2d
    .line 58
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 60
    const-string/jumbo v1, " }"

    #@34
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, ", bluetoothName="

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    iget-object v2, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@4b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@5
    .line 76
    iget v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 74
    return-void
.end method
