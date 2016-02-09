.class public Lcom/android/ims/ImsStreamMediaProfile;
.super Ljava/lang/Object;
.source "ImsStreamMediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsStreamMediaProfile$1;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x4

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x5

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x6

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x8

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x9

.field public static final AUDIO_QUALITY_GSM_HR:I = 0xa

.field public static final AUDIO_QUALITY_NONE:I = 0x0

.field public static final AUDIO_QUALITY_QCELP13K:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsStreamMediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_INACTIVE:I = 0x0

.field public static final DIRECTION_INVALID:I = -0x1

.field public static final DIRECTION_RECEIVE:I = 0x1

.field public static final DIRECTION_SEND:I = 0x2

.field public static final DIRECTION_SEND_RECEIVE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImsStreamMediaProfile"

.field public static final VIDEO_QUALITY_NONE:I = 0x0

.field public static final VIDEO_QUALITY_QCIF:I = 0x1

.field public static final VIDEO_QUALITY_QVGA_LANDSCAPE:I = 0x2

.field public static final VIDEO_QUALITY_QVGA_PORTRAIT:I = 0x4

.field public static final VIDEO_QUALITY_VGA_LANDSCAPE:I = 0x8

.field public static final VIDEO_QUALITY_VGA_PORTRAIT:I = 0x10


# instance fields
.field public mAudioDirection:I

.field public mAudioQuality:I

.field public mVideoDirection:I

.field public mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile$1;-><init>()V

    #@5
    .line 128
    sput-object v0, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@6
    .line 80
    const/4 v0, 0x3

    #@7
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@9
    .line 81
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@c
    .line 82
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@f
    .line 78
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@5
    .line 88
    iput p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@7
    .line 89
    iput p3, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@9
    .line 90
    iput p4, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@b
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    invoke-direct {p0, p1}, Lcom/android/ims/ImsStreamMediaProfile;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 74
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@6
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@c
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@12
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@18
    .line 121
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 94
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@2
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@4
    .line 95
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@6
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@8
    .line 96
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@a
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@c
    .line 97
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@e
    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@10
    .line 93
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{ audioQuality="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 103
    const-string/jumbo v1, ", audioDirection="

    #@15
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 103
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@1b
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 104
    const-string/jumbo v1, ", videoQuality="

    #@22
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 104
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@28
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 105
    const-string/jumbo v1, ", videoDirection="

    #@2f
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 105
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@35
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 105
    const-string/jumbo v1, " }"

    #@3c
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 115
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 116
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 117
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 118
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 114
    return-void
.end method
