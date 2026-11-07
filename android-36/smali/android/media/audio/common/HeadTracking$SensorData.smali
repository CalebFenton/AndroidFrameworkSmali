.class public final Landroid/media/audio/common/HeadTracking$SensorData;
.super Ljava/lang/Object;
.source "HeadTracking.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/HeadTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/HeadTracking$SensorData$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/HeadTracking$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist headToStage:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/media/audio/common/HeadTracking$SensorData$1;

    invoke-direct {v0}, Landroid/media/audio/common/HeadTracking$SensorData$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/HeadTracking$SensorData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_10

    .line 95
    .local v0, "_value":[F
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    .line 96
    iput-object v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    .line 97
    return-void

    nop

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    .line 105
    iput-object p2, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->readFromParcel(Landroid/os/Parcel;)V

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/HeadTracking-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 175
    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 178
    return-void

    .line 176
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/HeadTracking$SensorData;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 188
    iput p1, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    .line 189
    iput-object p2, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 181
    packed-switch p1, :pswitch_data_20

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_1c
    const-string v0, "headToStage"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist headToStage([F)Landroid/media/audio/common/HeadTracking$SensorData;
    .registers 3
    .param p0, "_value"    # [F

    .line 115
    new-instance v0, Landroid/media/audio/common/HeadTracking$SensorData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/HeadTracking$SensorData;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getTag()I

    .line 171
    return v0
.end method

.method public blacklist getHeadToStage()[F
    .registers 2

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/HeadTracking$SensorData;->_assertTag(I)V

    .line 120
    iget-object v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_value:Ljava/lang/Object;

    check-cast v0, [F

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_32

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :pswitch_20
    const/4 v1, 0x6

    filled-new-array {v1}, [I

    move-result-object v1

    const-class v2, [F

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 160
    .local v1, "_aidl_value":[F
    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/HeadTracking$SensorData;->_set(ILjava/lang/Object;)V

    .line 161
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setHeadToStage([F)V
    .registers 3
    .param p1, "_value"    # [F

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/HeadTracking$SensorData;->_set(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 145
    iget v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/media/audio/common/HeadTracking$SensorData;->_tag:I

    packed-switch v0, :pswitch_data_18

    goto :goto_17

    .line 148
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/audio/common/HeadTracking$SensorData;->getHeadToStage()[F

    move-result-object v0

    const/4 v1, 0x6

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 151
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
