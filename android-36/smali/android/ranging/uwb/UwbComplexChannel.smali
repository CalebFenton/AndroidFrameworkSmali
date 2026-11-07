.class public final Landroid/ranging/uwb/UwbComplexChannel;
.super Ljava/lang/Object;
.source "UwbComplexChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/uwb/UwbComplexChannel$Builder;,
        Landroid/ranging/uwb/UwbComplexChannel$UwbPreambleCodeIndex;,
        Landroid/ranging/uwb/UwbComplexChannel$UwbChannel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/uwb/UwbComplexChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PREAMBLE_INDEXES_BPRF:[I

.field public static final whitelist UWB_CHANNEL_10:I = 0xa

.field public static final whitelist UWB_CHANNEL_12:I = 0xc

.field public static final whitelist UWB_CHANNEL_13:I = 0xd

.field public static final whitelist UWB_CHANNEL_14:I = 0xe

.field public static final whitelist UWB_CHANNEL_5:I = 0x5

.field public static final whitelist UWB_CHANNEL_6:I = 0x6

.field public static final whitelist UWB_CHANNEL_8:I = 0x8

.field public static final whitelist UWB_CHANNEL_9:I = 0x9

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_10:I = 0xa

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_11:I = 0xb

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_12:I = 0xc

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_25:I = 0x19

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_26:I = 0x1a

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_27:I = 0x1b

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_28:I = 0x1c

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_29:I = 0x1d

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_30:I = 0x1e

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_31:I = 0x1f

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_32:I = 0x20

.field public static final whitelist UWB_PREAMBLE_CODE_INDEX_9:I = 0x9


# instance fields
.field private final blacklist mChannel:I

.field private final blacklist mPreambleIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPREAMBLE_INDEXES_BPRF()[I
    .registers 1

    sget-object v0, Landroid/ranging/uwb/UwbComplexChannel;->PREAMBLE_INDEXES_BPRF:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 137
    const/16 v0, 0xb

    const/16 v1, 0xc

    const/16 v2, 0x9

    const/16 v3, 0xa

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/ranging/uwb/UwbComplexChannel;->PREAMBLE_INDEXES_BPRF:[I

    .line 158
    new-instance v0, Landroid/ranging/uwb/UwbComplexChannel$1;

    invoke-direct {v0}, Landroid/ranging/uwb/UwbComplexChannel$1;-><init>()V

    sput-object v0, Landroid/ranging/uwb/UwbComplexChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/uwb/UwbComplexChannel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/uwb/UwbComplexChannel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/uwb/UwbComplexChannel$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/uwb/UwbComplexChannel$Builder;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/ranging/uwb/UwbComplexChannel$Builder;->-$$Nest$fgetmChannel(Landroid/ranging/uwb/UwbComplexChannel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    .line 149
    invoke-static {p1}, Landroid/ranging/uwb/UwbComplexChannel$Builder;->-$$Nest$fgetmPreambleIndex(Landroid/ranging/uwb/UwbComplexChannel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    .line 150
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/uwb/UwbComplexChannel$Builder;Landroid/ranging/uwb/UwbComplexChannel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/uwb/UwbComplexChannel;-><init>(Landroid/ranging/uwb/UwbComplexChannel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 207
    :cond_4
    instance-of v1, p1, Landroid/ranging/uwb/UwbComplexChannel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v1, p1

    check-cast v1, Landroid/ranging/uwb/UwbComplexChannel;

    .line 208
    .local v1, "other":Landroid/ranging/uwb/UwbComplexChannel;
    iget v3, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    iget v4, v1, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    iget v4, v1, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 207
    .end local v1    # "other":Landroid/ranging/uwb/UwbComplexChannel;
    :cond_1b
    return v2
.end method

.method public whitelist getChannel()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    return v0
.end method

.method public whitelist getPreambleIndex()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 213
    iget v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbComplexChannel{ mChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreambleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

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

    .line 200
    iget v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/ranging/uwb/UwbComplexChannel;->mPreambleIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
