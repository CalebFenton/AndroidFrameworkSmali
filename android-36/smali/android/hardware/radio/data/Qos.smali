.class public final Landroid/hardware/radio/data/Qos;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/Qos$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/data/Qos;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist eps:I = 0x1

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist nr:I = 0x2


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Landroid/hardware/radio/data/Qos$1;

    invoke-direct {v0}, Landroid/hardware/radio/data/Qos$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/data/Qos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    .line 35
    iput-object p2, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/Qos;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/data/Qos-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/Qos;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 173
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 176
    return-void

    .line 174
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/Qos;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/data/Qos;->_tagString(I)Ljava/lang/String;

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
    iput p1, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    .line 189
    iput-object p2, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 179
    packed-switch p1, :pswitch_data_26

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
    const-string v0, "nr"

    return-object v0

    .line 181
    :pswitch_1f
    const-string v0, "eps"

    return-object v0

    .line 180
    :pswitch_22
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 157
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 160
    :cond_10
    return v0
.end method

.method public static blacklist eps(Landroid/hardware/radio/data/EpsQos;)Landroid/hardware/radio/data/Qos;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/data/EpsQos;

    .line 60
    new-instance v0, Landroid/hardware/radio/data/Qos;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/data/Qos;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/data/Qos;
    .registers 4
    .param p0, "_value"    # Z

    .line 45
    new-instance v0, Landroid/hardware/radio/data/Qos;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/data/Qos;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist nr(Landroid/hardware/radio/data/NrQos;)Landroid/hardware/radio/data/Qos;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/data/NrQos;

    .line 75
    new-instance v0, Landroid/hardware/radio/data/Qos;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/data/Qos;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 150
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/Qos;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    .line 147
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/Qos;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 148
    nop

    .line 153
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getEps()Landroid/hardware/radio/data/EpsQos;
    .registers 2

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/Qos;->_assertTag(I)V

    .line 65
    iget-object v0, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/data/EpsQos;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/Qos;->_assertTag(I)V

    .line 50
    iget-object v0, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getNr()Landroid/hardware/radio/data/NrQos;
    .registers 2

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/Qos;->_assertTag(I)V

    .line 80
    iget-object v0, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/data/NrQos;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_44

    .line 139
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

    .line 135
    :pswitch_20
    sget-object v1, Landroid/hardware/radio/data/NrQos;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/NrQos;

    .line 136
    .local v1, "_aidl_value":Landroid/hardware/radio/data/NrQos;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 137
    return-void

    .line 130
    .end local v1    # "_aidl_value":Landroid/hardware/radio/data/NrQos;
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/data/EpsQos;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/EpsQos;

    .line 131
    .local v1, "_aidl_value":Landroid/hardware/radio/data/EpsQos;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 132
    return-void

    .line 125
    .end local v1    # "_aidl_value":Landroid/hardware/radio/data/EpsQos;
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 126
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 127
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setEps(Landroid/hardware/radio/data/EpsQos;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/data/EpsQos;

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 54
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public blacklist setNr(Landroid/hardware/radio/data/NrQos;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/data/NrQos;

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 165
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_7e

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qos.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qos.eps("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qos.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_42
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 105
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 114
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_23

    .line 111
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    goto :goto_23

    .line 108
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    nop

    .line 117
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
