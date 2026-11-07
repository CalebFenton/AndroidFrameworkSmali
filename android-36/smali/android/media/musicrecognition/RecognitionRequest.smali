.class public final Landroid/media/musicrecognition/RecognitionRequest;
.super Ljava/lang/Object;
.source "RecognitionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/RecognitionRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/musicrecognition/RecognitionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioAttributes:Landroid/media/AudioAttributes;

.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mCaptureSession:I

.field private final blacklist mIgnoreBeginningFrames:I

.field private final blacklist mMaxAudioLengthSeconds:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Landroid/media/musicrecognition/RecognitionRequest$1;

    invoke-direct {v0}, Landroid/media/musicrecognition/RecognitionRequest$1;-><init>()V

    sput-object v0, Landroid/media/musicrecognition/RecognitionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/musicrecognition/RecognitionRequest$Builder;)V
    .registers 3
    .param p1, "b"    # Landroid/media/musicrecognition/RecognitionRequest$Builder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/media/musicrecognition/RecognitionRequest$Builder;->-$$Nest$fgetmAudioAttributes(Landroid/media/musicrecognition/RecognitionRequest$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 48
    invoke-static {p1}, Landroid/media/musicrecognition/RecognitionRequest$Builder;->-$$Nest$fgetmAudioFormat(Landroid/media/musicrecognition/RecognitionRequest$Builder;)Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioFormat:Landroid/media/AudioFormat;

    .line 49
    invoke-static {p1}, Landroid/media/musicrecognition/RecognitionRequest$Builder;->-$$Nest$fgetmCaptureSession(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mCaptureSession:I

    .line 50
    invoke-static {p1}, Landroid/media/musicrecognition/RecognitionRequest$Builder;->-$$Nest$fgetmMaxAudioLengthSeconds(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mMaxAudioLengthSeconds:I

    .line 51
    invoke-static {p1}, Landroid/media/musicrecognition/RecognitionRequest$Builder;->-$$Nest$fgetmIgnoreBeginningFrames(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mIgnoreBeginningFrames:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/musicrecognition/RecognitionRequest$Builder;Landroid/media/musicrecognition/RecognitionRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/musicrecognition/RecognitionRequest;-><init>(Landroid/media/musicrecognition/RecognitionRequest$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-class v0, Landroid/media/AudioFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/media/AudioFormat;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioFormat:Landroid/media/AudioFormat;

    .line 156
    const-class v0, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mCaptureSession:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mMaxAudioLengthSeconds:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mIgnoreBeginningFrames:I

    .line 160
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/musicrecognition/RecognitionRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/musicrecognition/RecognitionRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getAudioFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getCaptureSession()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mCaptureSession:I

    return v0
.end method

.method public whitelist getIgnoreBeginningFrames()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mIgnoreBeginningFrames:I

    return v0
.end method

.method public whitelist getMaxAudioLengthSeconds()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mMaxAudioLengthSeconds:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mCaptureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mMaxAudioLengthSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/media/musicrecognition/RecognitionRequest;->mIgnoreBeginningFrames:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void
.end method
