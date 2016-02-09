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
    .line 63
    new-instance v0, Landroid/media/AudioRoutesInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/AudioRoutesInfo$1;-><init>()V

    #@5
    .line 62
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@5
    .line 59
    iget v0, p0, Landroid/media/AudioRoutesInfo;->mainType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 57
    return-void
.end method
