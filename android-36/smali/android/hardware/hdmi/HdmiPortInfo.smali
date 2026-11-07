.class public final Landroid/hardware/hdmi/HdmiPortInfo;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPortInfo$Builder;,
        Landroid/hardware/hdmi/HdmiPortInfo$PortType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PORT_INPUT:I = 0x0

.field public static final whitelist PORT_OUTPUT:I = 0x1


# instance fields
.field private final greylist-max-o mAddress:I

.field private final greylist-max-o mArcSupported:Z

.field private final greylist-max-o mCecSupported:Z

.field private final blacklist mEarcSupported:Z

.field private final greylist-max-o mId:I

.field private final greylist-max-o mMhlSupported:Z

.field private final greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/hardware/hdmi/HdmiPortInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArcSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCecSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEarcSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/hardware/hdmi/HdmiPortInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMhlSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/hardware/hdmi/HdmiPortInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiPortInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIZZZ)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "address"    # I
    .param p4, "cec"    # Z
    .param p5, "mhl"    # Z
    .param p6, "arc"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    .line 80
    iput p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    .line 81
    iput p3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    .line 82
    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    .line 83
    iput-boolean p6, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    .line 85
    iput-boolean p5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmId(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    .line 99
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmType(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    .line 100
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmAddress(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    .line 101
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmCecSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    .line 102
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmArcSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    .line 103
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmEarcSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    .line 104
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmMhlSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;Landroid/hardware/hdmi/HdmiPortInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 232
    instance-of v0, p1, Landroid/hardware/hdmi/HdmiPortInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 233
    return v1

    .line 235
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 236
    .local v0, "other":Landroid/hardware/hdmi/HdmiPortInfo;
    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    if-ne v2, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public whitelist getAddress()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 243
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isArcSupported()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    return v0
.end method

.method public whitelist isCecSupported()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    return v0
.end method

.method public whitelist isEarcSupported()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    return v0
.end method

.method public whitelist isMhlSupported()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return v0
.end method

.method public blacklist toBuilder()Landroid/hardware/hdmi/HdmiPortInfo$Builder;
    .registers 3

    .line 94
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiPortInfo;Landroid/hardware/hdmi/HdmiPortInfo-IA;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    if-nez v3, :cond_23

    const-string v3, "HDMI_IN"

    goto :goto_25

    :cond_23
    const-string v3, "HDMI_OUT"

    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "cec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "arc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "mhl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, "earc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 207
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return-void
.end method
