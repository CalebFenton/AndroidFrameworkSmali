.class public final Landroid/os/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Temperature$Type;,
        Landroid/os/Temperature$ThrottlingStatus;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist THROTTLING_CRITICAL:I = 0x4

.field public static final blacklist THROTTLING_EMERGENCY:I = 0x5

.field public static final blacklist THROTTLING_LIGHT:I = 0x1

.field public static final blacklist THROTTLING_MODERATE:I = 0x2

.field public static final blacklist THROTTLING_NONE:I = 0x0

.field public static final blacklist THROTTLING_SEVERE:I = 0x3

.field public static final blacklist THROTTLING_SHUTDOWN:I = 0x6

.field public static final blacklist TYPE_AMBIENT:I = 0x12

.field public static final blacklist TYPE_BATTERY:I = 0x2

.field public static final blacklist TYPE_BCL_CURRENT:I = 0x7

.field public static final blacklist TYPE_BCL_PERCENTAGE:I = 0x8

.field public static final blacklist TYPE_BCL_VOLTAGE:I = 0x6

.field public static final blacklist TYPE_CAMERA:I = 0xf

.field public static final blacklist TYPE_CPU:I = 0x0

.field public static final blacklist TYPE_DISPLAY:I = 0xb

.field public static final blacklist TYPE_FLASHLIGHT:I = 0x10

.field public static final blacklist TYPE_GPU:I = 0x1

.field public static final blacklist TYPE_MODEM:I = 0xc

.field public static final blacklist TYPE_NPU:I = 0x9

.field public static final blacklist TYPE_POGO:I = 0x13

.field public static final blacklist TYPE_POWER_AMPLIFIER:I = 0x5

.field public static final blacklist TYPE_SKIN:I = 0x3

.field public static final blacklist TYPE_SOC:I = 0xd

.field public static final blacklist TYPE_SPEAKER:I = 0x11

.field public static final blacklist TYPE_TPU:I = 0xa

.field public static final blacklist TYPE_UNKNOWN:I = -0x1

.field public static final blacklist TYPE_USB_PORT:I = 0x4

.field public static final blacklist TYPE_WIFI:I = 0xe


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mStatus:I

.field private final greylist-max-o mType:I

.field private final greylist-max-o mValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 214
    new-instance v0, Landroid/os/Temperature$1;

    invoke-direct {v0}, Landroid/os/Temperature$1;-><init>()V

    sput-object v0, Landroid/os/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FILjava/lang/String;I)V
    .registers 7
    .param p1, "value"    # F
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {p2}, Landroid/os/Temperature;->isValidType(I)Z

    move-result v0

    const-string v1, "Invalid Type"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    invoke-static {p4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v0

    const-string v1, "Invalid Status"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 139
    iput p1, p0, Landroid/os/Temperature;->mValue:F

    .line 140
    iput p2, p0, Landroid/os/Temperature;->mType:I

    .line 141
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    .line 142
    iput p4, p0, Landroid/os/Temperature;->mStatus:I

    .line 143
    return-void
.end method

.method public static blacklist isValidStatus(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 132
    if-ltz p0, :cond_7

    const/4 v0, 0x6

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist isValidType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 123
    const/4 v0, -0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x13

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 198
    instance-of v0, p1, Landroid/os/Temperature;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 199
    return v1

    .line 201
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/Temperature;

    .line 202
    .local v0, "other":Landroid/os/Temperature;
    iget v2, v0, Landroid/os/Temperature;->mValue:F

    iget v3, p0, Landroid/os/Temperature;->mValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_29

    iget v2, v0, Landroid/os/Temperature;->mType:I

    iget v3, p0, Landroid/os/Temperature;->mType:I

    if-ne v2, v3, :cond_29

    iget-object v2, v0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, v0, Landroid/os/Temperature;->mStatus:I

    iget v3, p0, Landroid/os/Temperature;->mStatus:I

    if-ne v2, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 202
    :goto_2a
    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/os/Temperature;->mStatus:I

    return v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/os/Temperature;->mType:I

    return v0
.end method

.method public greylist-max-o getValue()F
    .registers 2

    .line 151
    iget v0, p0, Landroid/os/Temperature;->mValue:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 190
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Temperature;->mValue:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 191
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/os/Temperature;->mType:I

    add-int/2addr v0, v2

    .line 192
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/Temperature;->mStatus:I

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temperature{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Temperature;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 208
    iget v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 209
    iget v0, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/os/Temperature;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget v0, p0, Landroid/os/Temperature;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    return-void
.end method
