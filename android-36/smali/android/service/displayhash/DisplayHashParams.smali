.class public final Landroid/service/displayhash/DisplayHashParams;
.super Ljava/lang/Object;
.source "DisplayHashParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/DisplayHashParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/displayhash/DisplayHashParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBufferSize:Landroid/util/Size;

.field private final blacklist mGrayscaleBuffer:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 195
    new-instance v0, Landroid/service/displayhash/DisplayHashParams$1;

    invoke-direct {v0}, Landroid/service/displayhash/DisplayHashParams$1;-><init>()V

    sput-object v0, Landroid/service/displayhash/DisplayHashParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 185
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 186
    .local v1, "grayscaleBuffer":Z
    :goto_e
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v2

    .line 188
    .local v2, "bufferSize":Landroid/util/Size;
    :goto_18
    iput-object v2, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    .line 189
    iput-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/Size;Z)V
    .registers 3
    .param p1, "bufferSize"    # Landroid/util/Size;
    .param p2, "grayscaleBuffer"    # Z

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    .line 124
    iput-boolean p2, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    .line 127
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBufferSize()Landroid/util/Size;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist isGrayscaleBuffer()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayHashParams { bufferSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grayscaleBuffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

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

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 168
    :cond_8
    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 169
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 170
    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 171
    :cond_1b
    return-void
.end method
