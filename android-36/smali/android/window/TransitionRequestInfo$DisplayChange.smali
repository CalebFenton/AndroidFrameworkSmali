.class public final Landroid/window/TransitionRequestInfo$DisplayChange;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$DisplayChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndRotation:I

.field private blacklist mPhysicalDisplayChanged:Z

.field private blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartRotation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 280
    new-instance v0, Landroid/window/TransitionRequestInfo$DisplayChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$DisplayChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 123
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 126
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 131
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "startRotation"    # I
    .param p3, "endRotation"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 123
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 126
    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 136
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 137
    iput p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 138
    iput p3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 139
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 123
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 126
    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 262
    .local v2, "flg":B
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    .line 263
    .local v1, "physicalDisplayChanged":Z
    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    .local v3, "displayId":I
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_23

    move-object v4, v0

    goto :goto_2b

    :cond_23
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 265
    .local v4, "startAbsBounds":Landroid/graphics/Rect;
    :goto_2b
    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_30

    goto :goto_38

    :cond_30
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 266
    .local v0, "endAbsBounds":Landroid/graphics/Rect;
    :goto_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 267
    .local v5, "startRotation":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 269
    .local v6, "endRotation":I
    iput v3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    .line 270
    iput-object v4, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 271
    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 272
    iput v5, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 273
    iput v6, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 274
    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 277
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    return v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartRotation()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    return v0
.end method

.method public blacklist isPhysicalDisplayChanged()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    return v0
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 194
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 195
    return-object p0
.end method

.method public blacklist setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2
    .param p1, "value"    # I

    .line 206
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    .line 207
    return-object p0
.end method

.method public blacklist setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2
    .param p1, "value"    # Z

    .line 212
    iput-boolean p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    .line 213
    return-object p0
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 188
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 189
    return-object p0
.end method

.method public blacklist setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2
    .param p1, "value"    # I

    .line 200
    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    .line 201
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayChange { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDisplayChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 240
    :cond_8
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 241
    :cond_f
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 242
    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 243
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 245
    :cond_27
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    :cond_30
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return-void
.end method
