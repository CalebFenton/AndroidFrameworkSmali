.class public Landroid/media/AudioDescriptor;
.super Ljava/lang/Object;
.source "AudioDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDescriptor$AudioDescriptorStandard;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STANDARD_EDID:I = 0x1

.field public static final whitelist STANDARD_NONE:I = 0x0

.field public static final whitelist STANDARD_SADB:I = 0x2

.field public static final whitelist STANDARD_VSADB:I = 0x3


# instance fields
.field private final blacklist mDescriptor:[B

.field private final blacklist mEncapsulationType:I

.field private final blacklist mStandard:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/media/AudioDescriptor$1;

    invoke-direct {v0}, Landroid/media/AudioDescriptor$1;-><init>()V

    sput-object v0, Landroid/media/AudioDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II[B)V
    .registers 4
    .param p1, "standard"    # I
    .param p2, "encapsulationType"    # I
    .param p3, "descriptor"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/media/AudioDescriptor;->mStandard:I

    .line 77
    iput p2, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    .line 78
    iput-object p3, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    .line 79
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    .line 158
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 124
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioDescriptor;

    .line 125
    .local v2, "that":Landroid/media/AudioDescriptor;
    iget v3, p0, Landroid/media/AudioDescriptor;->mStandard:I

    iget v4, v2, Landroid/media/AudioDescriptor;->mStandard:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    iget v4, v2, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    iget-object v4, v2, Landroid/media/AudioDescriptor;->mDescriptor:[B

    .line 127
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 125
    :goto_2d
    return v0

    .line 122
    .end local v2    # "that":Landroid/media/AudioDescriptor;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public whitelist getDescriptor()[B
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    return-object v0
.end method

.method public whitelist getEncapsulationType()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    return v0
.end method

.method public whitelist getStandard()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 116
    iget v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encapsulation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    if-eqz v1, :cond_4f

    iget-object v1, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    array-length v1, v1

    if-lez v1, :cond_4f

    .line 136
    const-string v1, ", descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_4f
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 152
    return-void
.end method
