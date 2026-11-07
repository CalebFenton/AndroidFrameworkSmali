.class public final Landroid/system/virtualizationservice/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/InputDevice$SingleTouch;,
        Landroid/system/virtualizationservice/InputDevice$EvDev;,
        Landroid/system/virtualizationservice/InputDevice$Keyboard;,
        Landroid/system/virtualizationservice/InputDevice$Mouse;,
        Landroid/system/virtualizationservice/InputDevice$Switches;,
        Landroid/system/virtualizationservice/InputDevice$Trackpad;,
        Landroid/system/virtualizationservice/InputDevice$MultiTouch;,
        Landroid/system/virtualizationservice/InputDevice$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/virtualizationservice/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist evDev:I = 0x1

.field public static final blacklist keyboard:I = 0x2

.field public static final blacklist mouse:I = 0x3

.field public static final blacklist multiTouch:I = 0x6

.field public static final blacklist singleTouch:I = 0x0

.field public static final blacklist switches:I = 0x4

.field public static final blacklist trackpad:I = 0x5


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/system/virtualizationservice/InputDevice$1;

    invoke-direct {v0}, Landroid/system/virtualizationservice/InputDevice$1;-><init>()V

    sput-object v0, Landroid/system/virtualizationservice/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "_value":Landroid/system/virtualizationservice/InputDevice$SingleTouch;
    const/4 v1, 0x0

    iput v1, p0, Landroid/system/virtualizationservice/InputDevice;->_tag:I

    .line 27
    iput-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/system/virtualizationservice/InputDevice;->_tag:I

    .line 36
    iput-object p2, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/InputDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/system/virtualizationservice/InputDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 267
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 270
    return-void

    .line 268
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/system/virtualizationservice/InputDevice;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/system/virtualizationservice/InputDevice;->_tagString(I)Ljava/lang/String;

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

    .line 286
    iput p1, p0, Landroid/system/virtualizationservice/InputDevice;->_tag:I

    .line 287
    iput-object p2, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    .line 288
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 273
    packed-switch p1, :pswitch_data_32

    .line 282
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

    .line 280
    :pswitch_1c
    const-string v0, "multiTouch"

    return-object v0

    .line 279
    :pswitch_1f
    const-string v0, "trackpad"

    return-object v0

    .line 278
    :pswitch_22
    const-string v0, "switches"

    return-object v0

    .line 277
    :pswitch_25
    const-string v0, "mouse"

    return-object v0

    .line 276
    :pswitch_28
    const-string v0, "keyboard"

    return-object v0

    .line 275
    :pswitch_2b
    const-string v0, "evDev"

    return-object v0

    .line 274
    :pswitch_2e
    const-string v0, "singleTouch"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 260
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 261
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 263
    :cond_10
    return v0
.end method

.method public static blacklist evDev(Landroid/system/virtualizationservice/InputDevice$EvDev;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$EvDev;

    .line 61
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyboard(Landroid/system/virtualizationservice/InputDevice$Keyboard;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$Keyboard;

    .line 76
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mouse(Landroid/system/virtualizationservice/InputDevice$Mouse;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$Mouse;

    .line 91
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist multiTouch(Landroid/system/virtualizationservice/InputDevice$MultiTouch;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    .line 136
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist singleTouch(Landroid/system/virtualizationservice/InputDevice$SingleTouch;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$SingleTouch;

    .line 46
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist switches(Landroid/system/virtualizationservice/InputDevice$Switches;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$Switches;

    .line 106
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist trackpad(Landroid/system/virtualizationservice/InputDevice$Trackpad;)Landroid/system/virtualizationservice/InputDevice;
    .registers 3
    .param p0, "_value"    # Landroid/system/virtualizationservice/InputDevice$Trackpad;

    .line 121
    new-instance v0, Landroid/system/virtualizationservice/InputDevice;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/system/virtualizationservice/InputDevice;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    goto :goto_4f

    .line 253
    :pswitch_9
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getMultiTouch()Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_4f

    .line 250
    :pswitch_13
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getTrackpad()Landroid/system/virtualizationservice/InputDevice$Trackpad;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 251
    goto :goto_4f

    .line 247
    :pswitch_1d
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getSwitches()Landroid/system/virtualizationservice/InputDevice$Switches;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 248
    goto :goto_4f

    .line 244
    :pswitch_27
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getMouse()Landroid/system/virtualizationservice/InputDevice$Mouse;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 245
    goto :goto_4f

    .line 241
    :pswitch_31
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getKeyboard()Landroid/system/virtualizationservice/InputDevice$Keyboard;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 242
    goto :goto_4f

    .line 238
    :pswitch_3b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getEvDev()Landroid/system/virtualizationservice/InputDevice$EvDev;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 239
    goto :goto_4f

    .line 235
    :pswitch_45
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getSingleTouch()Landroid/system/virtualizationservice/InputDevice$SingleTouch;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/system/virtualizationservice/InputDevice;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 236
    nop

    .line 256
    :goto_4f
    return v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3b
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getEvDev()Landroid/system/virtualizationservice/InputDevice$EvDev;
    .registers 2

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 66
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$EvDev;

    return-object v0
.end method

.method public blacklist getKeyboard()Landroid/system/virtualizationservice/InputDevice$Keyboard;
    .registers 2

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$Keyboard;

    return-object v0
.end method

.method public blacklist getMouse()Landroid/system/virtualizationservice/InputDevice$Mouse;
    .registers 2

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 96
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$Mouse;

    return-object v0
.end method

.method public blacklist getMultiTouch()Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    .registers 2

    .line 140
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 141
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    return-object v0
.end method

.method public blacklist getSingleTouch()Landroid/system/virtualizationservice/InputDevice$SingleTouch;
    .registers 2

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 51
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$SingleTouch;

    return-object v0
.end method

.method public blacklist getSwitches()Landroid/system/virtualizationservice/InputDevice$Switches;
    .registers 2

    .line 110
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 111
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$Switches;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/system/virtualizationservice/InputDevice;->_tag:I

    return v0
.end method

.method public blacklist getTrackpad()Landroid/system/virtualizationservice/InputDevice$Trackpad;
    .registers 2

    .line 125
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/system/virtualizationservice/InputDevice;->_assertTag(I)V

    .line 126
    iget-object v0, p0, Landroid/system/virtualizationservice/InputDevice;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/system/virtualizationservice/InputDevice$Trackpad;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_74

    .line 227
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

    .line 223
    :pswitch_20
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$MultiTouch;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    .line 224
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 225
    return-void

    .line 218
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/InputDevice$MultiTouch;
    :pswitch_2c
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$Trackpad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$Trackpad;

    .line 219
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Trackpad;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 220
    return-void

    .line 213
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Trackpad;
    :pswitch_38
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$Switches;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$Switches;

    .line 214
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Switches;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 215
    return-void

    .line 208
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Switches;
    :pswitch_44
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$Mouse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$Mouse;

    .line 209
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Mouse;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 210
    return-void

    .line 203
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Mouse;
    :pswitch_50
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$Keyboard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$Keyboard;

    .line 204
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Keyboard;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 205
    return-void

    .line 198
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/InputDevice$Keyboard;
    :pswitch_5c
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$EvDev;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$EvDev;

    .line 199
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$EvDev;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 200
    return-void

    .line 193
    .end local v1    # "_aidl_value":Landroid/system/virtualizationservice/InputDevice$EvDev;
    :pswitch_68
    sget-object v1, Landroid/system/virtualizationservice/InputDevice$SingleTouch;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualizationservice/InputDevice$SingleTouch;

    .line 194
    .local v1, "_aidl_value":Landroid/system/virtualizationservice/InputDevice$SingleTouch;
    invoke-direct {p0, v0, v1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 195
    return-void

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setEvDev(Landroid/system/virtualizationservice/InputDevice$EvDev;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$EvDev;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public blacklist setKeyboard(Landroid/system/virtualizationservice/InputDevice$Keyboard;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$Keyboard;

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public blacklist setMouse(Landroid/system/virtualizationservice/InputDevice$Mouse;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$Mouse;

    .line 100
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public blacklist setMultiTouch(Landroid/system/virtualizationservice/InputDevice$MultiTouch;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    .line 145
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public blacklist setSingleTouch(Landroid/system/virtualizationservice/InputDevice$SingleTouch;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$SingleTouch;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public blacklist setSwitches(Landroid/system/virtualizationservice/InputDevice$Switches;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$Switches;

    .line 115
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public blacklist setTrackpad(Landroid/system/virtualizationservice/InputDevice$Trackpad;)V
    .registers 3
    .param p1, "_value"    # Landroid/system/virtualizationservice/InputDevice$Trackpad;

    .line 130
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/system/virtualizationservice/InputDevice;->_set(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 161
    iget v0, p0, Landroid/system/virtualizationservice/InputDevice;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/system/virtualizationservice/InputDevice;->_tag:I

    packed-switch v0, :pswitch_data_44

    goto :goto_43

    .line 182
    :pswitch_b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getMultiTouch()Landroid/system/virtualizationservice/InputDevice$MultiTouch;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    .line 179
    :pswitch_13
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getTrackpad()Landroid/system/virtualizationservice/InputDevice$Trackpad;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    goto :goto_43

    .line 176
    :pswitch_1b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getSwitches()Landroid/system/virtualizationservice/InputDevice$Switches;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    goto :goto_43

    .line 173
    :pswitch_23
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getMouse()Landroid/system/virtualizationservice/InputDevice$Mouse;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    goto :goto_43

    .line 170
    :pswitch_2b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getKeyboard()Landroid/system/virtualizationservice/InputDevice$Keyboard;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    goto :goto_43

    .line 167
    :pswitch_33
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getEvDev()Landroid/system/virtualizationservice/InputDevice$EvDev;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    goto :goto_43

    .line 164
    :pswitch_3b
    invoke-virtual {p0}, Landroid/system/virtualizationservice/InputDevice;->getSingleTouch()Landroid/system/virtualizationservice/InputDevice$SingleTouch;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    nop

    .line 185
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
