.class public final Landroid/hardware/tv/tuner/FrontendModulation;
.super Ljava/lang/Object;
.source "FrontendModulation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendModulation$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendModulation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist atsc:I = 0x6

.field public static final blacklist atsc3:I = 0x7

.field public static final blacklist dtmb:I = 0x8

.field public static final blacklist dvbc:I = 0x0

.field public static final blacklist dvbs:I = 0x1

.field public static final blacklist dvbt:I = 0x2

.field public static final blacklist isdbs:I = 0x3

.field public static final blacklist isdbs3:I = 0x4

.field public static final blacklist isdbt:I = 0x5


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendModulation$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 38
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendModulation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 292
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 295
    return-void

    .line 293
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

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

    .line 313
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 314
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 315
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 298
    packed-switch p1, :pswitch_data_38

    .line 309
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

    .line 307
    :pswitch_1c
    const-string v0, "dtmb"

    return-object v0

    .line 306
    :pswitch_1f
    const-string v0, "atsc3"

    return-object v0

    .line 305
    :pswitch_22
    const-string v0, "atsc"

    return-object v0

    .line 304
    :pswitch_25
    const-string v0, "isdbt"

    return-object v0

    .line 303
    :pswitch_28
    const-string v0, "isdbs3"

    return-object v0

    .line 302
    :pswitch_2b
    const-string v0, "isdbs"

    return-object v0

    .line 301
    :pswitch_2e
    const-string v0, "dvbt"

    return-object v0

    .line 300
    :pswitch_31
    const-string v0, "dvbs"

    return-object v0

    .line 299
    :pswitch_34
    const-string v0, "dvbc"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist atsc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 138
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 153
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dtmb(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 168
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/16 v1, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 48
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 63
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 78
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 93
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 108
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 123
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    .line 288
    return v0
.end method

.method public blacklist getAtsc()I
    .registers 2

    .line 142
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 143
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getAtsc3()I
    .registers 2

    .line 157
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 158
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDtmb()I
    .registers 2

    .line 172
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 173
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbc()I
    .registers 2

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 53
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbs()I
    .registers 2

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 68
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getDvbt()I
    .registers 2

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 83
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbs()I
    .registers 2

    .line 97
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 98
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbs3()I
    .registers 2

    .line 112
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 113
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbt()I
    .registers 2

    .line 127
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 128
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_8c

    .line 280
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

    .line 276
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 278
    return-void

    .line 271
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 273
    return-void

    .line 266
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 268
    return-void

    .line 261
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 263
    return-void

    .line 256
    .end local v1    # "_aidl_value":I
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 258
    return-void

    .line 251
    .end local v1    # "_aidl_value":I
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 253
    return-void

    .line 246
    .end local v1    # "_aidl_value":I
    :pswitch_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 248
    return-void

    .line 241
    .end local v1    # "_aidl_value":I
    :pswitch_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 243
    return-void

    .line 236
    .end local v1    # "_aidl_value":I
    :pswitch_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 238
    return-void

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_80
        :pswitch_74
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAtsc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 147
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 148
    return-void
.end method

.method public blacklist setAtsc3(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 162
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public blacklist setDtmb(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 177
    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public blacklist setDvbc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 57
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public blacklist setDvbs(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 72
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public blacklist setDvbt(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 87
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public blacklist setIsdbs(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 102
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public blacklist setIsdbs3(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 117
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public blacklist setIsdbt(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 132
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 198
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    .line 225
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDtmb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 222
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    goto :goto_53

    .line 219
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_53

    .line 216
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    goto :goto_53

    .line 213
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    goto :goto_53

    .line 210
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    goto :goto_53

    .line 207
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_53

    .line 204
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    goto :goto_53

    .line 201
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    nop

    .line 228
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
