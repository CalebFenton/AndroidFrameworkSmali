.class public final Landroid/telephony/UiccSlotMapping;
.super Ljava/lang/Object;
.source "UiccSlotMapping.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLogicalSlotIndex:I

.field private final blacklist mPhysicalSlotIndex:I

.field private final blacklist mPortIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/telephony/UiccSlotMapping$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotMapping$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "portIndex"    # I
    .param p2, "physicalSlotIndex"    # I
    .param p3, "logicalSlotIndex"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    .line 100
    iput p2, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    .line 101
    iput p3, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    .line 102
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotMapping-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotMapping;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 139
    return v0

    .line 141
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 145
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccSlotMapping;

    .line 146
    .local v2, "that":Landroid/telephony/UiccSlotMapping;
    iget v3, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    iget v4, v2, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 142
    .end local v2    # "that":Landroid/telephony/UiccSlotMapping;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist getLogicalSlotIndex()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    return v0
.end method

.method public whitelist getPhysicalSlotIndex()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    return v0
.end method

.method public whitelist getPortIndex()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 153
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccSlotMapping (mPortIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhysicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPortIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mPhysicalSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/telephony/UiccSlotMapping;->mLogicalSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void
.end method
