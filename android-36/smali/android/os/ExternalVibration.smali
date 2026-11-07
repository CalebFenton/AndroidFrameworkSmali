.class public Landroid/os/ExternalVibration;
.super Ljava/lang/Object;
.source "ExternalVibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ExternalVibration"


# instance fields
.field private blacklist mAttrs:Landroid/media/AudioAttributes;

.field private blacklist mController:Landroid/os/IExternalVibrationController;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 216
    new-instance v0, Landroid/os/ExternalVibration$1;

    invoke-direct {v0}, Landroid/os/ExternalVibration$1;-><init>()V

    sput-object v0, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/media/AudioAttributes;
    .param p4, "controller"    # Landroid/os/IExternalVibrationController;

    .line 49
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "uid":I
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "attrs":Landroid/media/AudioAttributes;
    .end local p4    # "controller":Landroid/os/IExternalVibrationController;
    .local v1, "uid":I
    .local v2, "pkg":Ljava/lang/String;
    .local v3, "attrs":Landroid/media/AudioAttributes;
    .local v4, "controller":Landroid/os/IExternalVibrationController;
    invoke-direct/range {v0 .. v5}, Landroid/os/ExternalVibration;-><init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/media/AudioAttributes;
    .param p4, "controller"    # Landroid/os/IExternalVibrationController;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/os/ExternalVibration;->mUid:I

    .line 61
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    .line 63
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IExternalVibrationController;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    .line 64
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    .line 75
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/ExternalVibration;->readAudioAttributes(Landroid/os/Parcel;)Landroid/media/AudioAttributes;

    move-result-object v3

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IExternalVibrationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibrationController;

    move-result-object v4

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 79
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/ExternalVibration;-><init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/ExternalVibration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/ExternalVibration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist readAudioAttributes(Landroid/os/Parcel;)Landroid/media/AudioAttributes;
    .registers 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "usage":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "contentType":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "capturePreset":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "flags":I
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 90
    .local v4, "builder":Landroid/media/AudioAttributes$Builder;
    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 91
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setSystemUsage(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_22

    .line 93
    :cond_1f
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 95
    :goto_22
    invoke-virtual {v4, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 96
    invoke-virtual {v5, v2}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 98
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 95
    return-object v5
.end method

.method private static blacklist writeAudioAttributes(Landroid/media/AudioAttributes;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "attrs"    # Landroid/media/AudioAttributes;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 205
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 175
    if-eqz p1, :cond_13

    instance-of v0, p1, Landroid/os/ExternalVibration;

    if-nez v0, :cond_7

    goto :goto_13

    .line 178
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/os/ExternalVibration;

    .line 179
    .local v0, "other":Landroid/os/ExternalVibration;
    iget-object v1, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 176
    .end local v0    # "other":Landroid/os/ExternalVibration;
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/os/ExternalVibration;->mUid:I

    return v0
.end method

.method public blacklist getVibrationAttributes()Landroid/os/VibrationAttributes;
    .registers 3

    .line 118
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 5
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 159
    goto :goto_20

    .line 157
    :catch_7
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to link to token death: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public blacklist mute()Z
    .registers 4

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->mute()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 132
    nop

    .line 133
    const/4 v0, 0x1

    return v0

    .line 129
    :catch_8
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mute vibration stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalVibration{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ExternalVibration;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 5
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 170
    goto :goto_f

    .line 168
    :catch_7
    move-exception v0

    .line 169
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "ExternalVibration"

    const-string v2, "Failed to unlink to token death"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_f
    return-void
.end method

.method public blacklist unmute()Z
    .registers 4

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->unmute()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 147
    nop

    .line 148
    const/4 v0, 0x1

    return v0

    .line 144
    :catch_8
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unmute vibration stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 195
    iget v0, p0, Landroid/os/ExternalVibration;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0, p1}, Landroid/os/ExternalVibration;->writeAudioAttributes(Landroid/media/AudioAttributes;Landroid/os/Parcel;)V

    .line 198
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 199
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 200
    return-void
.end method
