.class public final Landroid/hardware/radio/network/RadioAccessSpecifierBands;
.super Ljava/lang/Object;
.source "RadioAccessSpecifierBands.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/RadioAccessSpecifierBands$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/RadioAccessSpecifierBands;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist eutranBands:I = 0x3

.field public static final blacklist geranBands:I = 0x1

.field public static final blacklist ngranBands:I = 0x4

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist utranBands:I = 0x2


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/RadioAccessSpecifierBands-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 211
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 214
    return-void

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

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

    .line 228
    iput p1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    .line 229
    iput-object p2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    .line 230
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 217
    packed-switch p1, :pswitch_data_2c

    .line 224
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

    .line 222
    :pswitch_1c
    const-string v0, "ngranBands"

    return-object v0

    .line 221
    :pswitch_1f
    const-string v0, "eutranBands"

    return-object v0

    .line 220
    :pswitch_22
    const-string v0, "utranBands"

    return-object v0

    .line 219
    :pswitch_25
    const-string v0, "geranBands"

    return-object v0

    .line 218
    :pswitch_28
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist eutranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3
    .param p0, "_value"    # [I

    .line 92
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist geranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3
    .param p0, "_value"    # [I

    .line 60
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ngranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3
    .param p0, "_value"    # [I

    .line 108
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 4
    .param p0, "_value"    # Z

    .line 44
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist utranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .registers 3
    .param p0, "_value"    # [I

    .line 76
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    .line 196
    return v0
.end method

.method public blacklist getEutranBands()[I
    .registers 2

    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 97
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getGeranBands()[I
    .registers 2

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 65
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getNgranBands()[I
    .registers 2

    .line 112
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 113
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    return v0
.end method

.method public blacklist getUtranBands()[I
    .registers 2

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_4c

    .line 188
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

    .line 184
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 185
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 186
    return-void

    .line 179
    .end local v1    # "_aidl_value":[I
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 180
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 181
    return-void

    .line 174
    .end local v1    # "_aidl_value":[I
    :pswitch_30
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 175
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 176
    return-void

    .line 169
    .end local v1    # "_aidl_value":[I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 170
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 171
    return-void

    .line 164
    .end local v1    # "_aidl_value":[I
    :pswitch_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 165
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 166
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setEutranBands([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 101
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public blacklist setGeranBands([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public blacklist setNgranBands([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 117
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 53
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setUtranBands([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 201
    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_be

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioAccessSpecifierBands.ngranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/NgranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioAccessSpecifierBands.eutranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/EutranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioAccessSpecifierBands.utranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/UtranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioAccessSpecifierBands.geranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/GeranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :pswitch_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioAccessSpecifierBands.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_82
        :pswitch_62
        :pswitch_42
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 138
    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 153
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_33

    .line 150
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 151
    goto :goto_33

    .line 147
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 148
    goto :goto_33

    .line 144
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 145
    goto :goto_33

    .line 141
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    nop

    .line 156
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
