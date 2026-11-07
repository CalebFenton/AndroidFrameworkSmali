.class public final Landroid/hardware/tv/tuner/FrontendBandwidth;
.super Ljava/lang/Object;
.source "FrontendBandwidth.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendBandwidth$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist atsc3:I = 0x0

.field public static final blacklist dtmb:I = 0x4

.field public static final blacklist dvbc:I = 0x1

.field public static final blacklist dvbt:I = 0x2

.field public static final blacklist isdbt:I = 0x3


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/hardware/tv/tuner/FrontendBandwidth$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendBandwidth$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tag:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendBandwidth-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendBandwidth;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 196
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 199
    return-void

    .line 197
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tagString(I)Ljava/lang/String;

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

    .line 213
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tag:I

    .line 214
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    .line 215
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 202
    packed-switch p1, :pswitch_data_2c

    .line 209
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

    .line 207
    :pswitch_1c
    const-string v0, "dtmb"

    return-object v0

    .line 206
    :pswitch_1f
    const-string v0, "isdbt"

    return-object v0

    .line 205
    :pswitch_22
    const-string v0, "dvbt"

    return-object v0

    .line 204
    :pswitch_25
    const-string v0, "dvbc"

    return-object v0

    .line 203
    :pswitch_28
    const-string v0, "atsc3"

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

.method public static blacklist atsc3(I)Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 4
    .param p0, "_value"    # I

    .line 44
    new-instance v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dtmb(I)Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 4
    .param p0, "_value"    # I

    .line 104
    new-instance v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbc(I)Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 4
    .param p0, "_value"    # I

    .line 59
    new-instance v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbt(I)Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 4
    .param p0, "_value"    # I

    .line 74
    new-instance v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbt(I)Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 4
    .param p0, "_value"    # I

    .line 89
    new-instance v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getTag()I

    .line 192
    return v0
.end method

.method public blacklist getAtsc3()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDtmb()I
    .registers 2

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbc()I
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbt()I
    .registers 2

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbt()I
    .registers 2

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_5c

    .line 184
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

    .line 180
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 182
    return-void

    .line 175
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    .end local v1    # "_aidl_value":I
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAtsc3(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 53
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public blacklist setDtmb(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 113
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setDvbc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 68
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setDvbt(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 83
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setIsdbt(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 98
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendBandwidth;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 134
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendBandwidth;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 149
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getDtmb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 146
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_33

    .line 143
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getDvbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    goto :goto_33

    .line 140
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_33

    .line 137
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendBandwidth;->getAtsc3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    nop

    .line 152
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
