.class public final Landroid/hardware/camera2/params/SessionConfiguration;
.super Ljava/lang/Object;
.source "SessionConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SessionConfiguration$SessionMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SESSION_HIGH_SPEED:I = 0x1

.field public static final whitelist SESSION_REGULAR:I = 0x0

.field public static final whitelist SESSION_SHARED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SESSION_VENDOR_START:I = 0x8000

.field private static final blacklist TAG:Ljava/lang/String; = "SessionConfiguration"


# instance fields
.field private blacklist mColorSpace:I

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

.field private final greylist-max-o mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

.field private greylist-max-o mSessionType:I

.field private greylist-max-o mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/SessionConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;)V
    .registers 4
    .param p1, "sessionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 112
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 164
    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 166
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 6
    .param p1, "sessionType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "cb"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .line 133
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 112
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 134
    iput p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 136
    iput-object p4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 137
    iput-object p3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 112
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    iput-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .local v0, "sessionType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, "inputWidth":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, "inputHeight":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .local v3, "inputFormat":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 178
    .local v4, "isInputMultiResolution":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v5, "outConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    sget-object v6, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 183
    .local v6, "hasSessionParameters":Z
    if-eqz v6, :cond_38

    .line 184
    new-instance v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 185
    .local v7, "settings":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v7, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    .line 188
    .end local v7    # "settings":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_38
    if-lez v1, :cond_46

    if-lez v2, :cond_46

    const/4 v7, -0x1

    if-eq v3, v7, :cond_46

    .line 189
    new-instance v7, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(IIIZ)V

    iput-object v7, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 192
    :cond_46
    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    .line 193
    iput-object v5, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 194
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/SessionConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist clearColorSpace()V
    .registers 3

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    .line 399
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 400
    .local v1, "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    .line 401
    .end local v1    # "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_9

    .line 402
    :cond_19
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 252
    return v0

    .line 253
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 254
    return v1

    .line 255
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/SessionConfiguration;

    if-eqz v2, :cond_4d

    .line 256
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 257
    .local v2, "other":Landroid/hardware/camera2/params/SessionConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    iget v4, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    .line 258
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2a

    goto :goto_4c

    .line 262
    :cond_2a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    iget-object v4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 263
    iget-object v4, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, v2, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 264
    return v0

    .line 262
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 267
    .end local v3    # "i":I
    :cond_4b
    return v1

    .line 259
    :cond_4c
    :goto_4c
    return v0

    .line 270
    .end local v2    # "other":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_4d
    return v0
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 411
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 412
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 414
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    return-object v0
.end method

.method public whitelist getOutputConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSessionParameters()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 374
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public whitelist getSessionType()I
    .registers 2

    .line 289
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    return v0
.end method

.method public whitelist getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 278
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 279
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .registers 4
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Named;

    .line 388
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mColorSpace:I

    .line 389
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 390
    .local v1, "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    .line 391
    .end local v1    # "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_c

    .line 392
    :cond_1c
    return-void
.end method

.method public whitelist setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .registers 4
    .param p1, "input"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 328
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 329
    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 334
    return-void

    .line 331
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported for high speed session types"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 2
    .param p1, "params"    # Landroid/hardware/camera2/CaptureRequest;

    .line 364
    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    .line 365
    return-void
.end method

.method public whitelist setStateCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 433
    iput-object p2, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 434
    iput-object p1, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 435
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    if-eqz p1, :cond_59

    .line 214
    iget v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 216
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_3e

    .line 221
    :cond_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    :goto_3e
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mOutputConfigurations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v0, :cond_55

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 229
    iget-object v0, p0, Landroid/hardware/camera2/params/SessionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    .line 230
    .local v0, "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    .end local v0    # "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_58

    .line 232
    :cond_55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    :goto_58
    return-void

    .line 212
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
