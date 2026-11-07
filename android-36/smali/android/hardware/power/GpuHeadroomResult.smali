.class public final Landroid/hardware/power/GpuHeadroomResult;
.super Ljava/lang/Object;
.source "GpuHeadroomResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/GpuHeadroomResult$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/GpuHeadroomResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist globalHeadroom:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/hardware/power/GpuHeadroomResult$1;

    invoke-direct {v0}, Landroid/hardware/power/GpuHeadroomResult$1;-><init>()V

    sput-object v0, Landroid/hardware/power/GpuHeadroomResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "_value":F
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    .line 29
    iput-object p2, p0, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/power/GpuHeadroomResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/power/GpuHeadroomResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/power/GpuHeadroomResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 122
    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 125
    return-void

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/power/GpuHeadroomResult;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/power/GpuHeadroomResult;->_tagString(I)Ljava/lang/String;

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

    .line 135
    iput p1, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    .line 136
    iput-object p2, p0, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 128
    packed-switch p1, :pswitch_data_20

    .line 131
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

    .line 129
    :pswitch_1c
    const-string v0, "globalHeadroom"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist globalHeadroom(F)Landroid/hardware/power/GpuHeadroomResult;
    .registers 4
    .param p0, "_value"    # F

    .line 39
    new-instance v0, Landroid/hardware/power/GpuHeadroomResult;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/power/GpuHeadroomResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getTag()I

    .line 95
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 109
    :cond_8
    instance-of v2, p1, Landroid/hardware/power/GpuHeadroomResult;

    if-nez v2, :cond_d

    return v1

    .line 110
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/power/GpuHeadroomResult;

    .line 111
    .local v2, "that":Landroid/hardware/power/GpuHeadroomResult;
    iget v3, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    iget v4, v2, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    if-eq v3, v4, :cond_17

    return v1

    .line 112
    :cond_17
    iget-object v3, p0, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    .line 113
    :cond_22
    return v0
.end method

.method public blacklist getGlobalHeadroom()F
    .registers 2

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/power/GpuHeadroomResult;->_assertTag(I)V

    .line 44
    iget-object v0, p0, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 33
    iget v0, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 118
    iget v0, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/power/GpuHeadroomResult;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_2c

    .line 87
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

    .line 83
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 84
    .local v1, "_aidl_value":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/power/GpuHeadroomResult;->_set(ILjava/lang/Object;)V

    .line 85
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setGlobalHeadroom(F)V
    .registers 4
    .param p1, "_value"    # F

    .line 48
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/power/GpuHeadroomResult;->_set(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 100
    iget v0, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    packed-switch v0, :pswitch_data_3e

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpuHeadroomResult.globalHeadroom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 69
    iget v0, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/hardware/power/GpuHeadroomResult;->_tag:I

    packed-switch v0, :pswitch_data_14

    goto :goto_12

    .line 72
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
