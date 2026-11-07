.class public final Landroid/hardware/tv/tuner/FrontendCapabilities;
.super Ljava/lang/Object;
.source "FrontendCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendCapabilities$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist analogCaps:I = 0x0

.field public static final blacklist atsc3Caps:I = 0x2

.field public static final blacklist atscCaps:I = 0x1

.field public static final blacklist dtmbCaps:I = 0x3

.field public static final blacklist dvbcCaps:I = 0x5

.field public static final blacklist dvbsCaps:I = 0x4

.field public static final blacklist dvbtCaps:I = 0x6

.field public static final blacklist iptvCaps:I = 0xa

.field public static final blacklist isdbs3Caps:I = 0x8

.field public static final blacklist isdbsCaps:I = 0x7

.field public static final blacklist isdbtCaps:I = 0x9


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "_value":Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    .line 31
    iput-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    .line 40
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 380
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 383
    return-void

    .line 381
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tagString(I)Ljava/lang/String;

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

    .line 403
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    .line 404
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    .line 405
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 386
    packed-switch p1, :pswitch_data_3e

    .line 399
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

    .line 397
    :pswitch_1c
    const-string v0, "iptvCaps"

    return-object v0

    .line 396
    :pswitch_1f
    const-string v0, "isdbtCaps"

    return-object v0

    .line 395
    :pswitch_22
    const-string v0, "isdbs3Caps"

    return-object v0

    .line 394
    :pswitch_25
    const-string v0, "isdbsCaps"

    return-object v0

    .line 393
    :pswitch_28
    const-string v0, "dvbtCaps"

    return-object v0

    .line 392
    :pswitch_2b
    const-string v0, "dvbcCaps"

    return-object v0

    .line 391
    :pswitch_2e
    const-string v0, "dvbsCaps"

    return-object v0

    .line 390
    :pswitch_31
    const-string v0, "dtmbCaps"

    return-object v0

    .line 389
    :pswitch_34
    const-string v0, "atsc3Caps"

    return-object v0

    .line 388
    :pswitch_37
    const-string v0, "atscCaps"

    return-object v0

    .line 387
    :pswitch_3a
    const-string v0, "analogCaps"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_37
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

.method public static blacklist analogCaps(Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    .line 50
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3Caps(Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    .line 80
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atscCaps(Landroid/hardware/tv/tuner/FrontendAtscCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    .line 65
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 372
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 373
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 374
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 376
    :cond_10
    return v0
.end method

.method public static blacklist dtmbCaps(Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    .line 95
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbcCaps(Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    .line 125
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbsCaps(Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    .line 110
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dvbtCaps(Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    .line 140
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvCaps(Landroid/hardware/tv/tuner/FrontendIptvCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIptvCapabilities;

    .line 200
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbs3Caps(Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    .line 170
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbsCaps(Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    .line 155
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtCaps(Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;)Landroid/hardware/tv/tuner/FrontendCapabilities;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    .line 185
    new-instance v0, Landroid/hardware/tv/tuner/FrontendCapabilities;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_7a

    goto/16 :goto_78

    .line 366
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIptvCaps()Landroid/hardware/tv/tuner/FrontendIptvCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_78

    .line 363
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 364
    goto :goto_78

    .line 360
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 361
    goto :goto_78

    .line 357
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 358
    goto :goto_78

    .line 354
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 355
    goto :goto_78

    .line 351
    :pswitch_3c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 352
    goto :goto_78

    .line 348
    :pswitch_46
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 349
    goto :goto_78

    .line 345
    :pswitch_50
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 346
    goto :goto_78

    .line 342
    :pswitch_5a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 343
    goto :goto_78

    .line 339
    :pswitch_64
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 340
    goto :goto_78

    .line 336
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 337
    nop

    .line 369
    :goto_78
    return v0

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_64
        :pswitch_5a
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_32
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    .registers 2

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    return-object v0
.end method

.method public blacklist getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    .registers 2

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 85
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    return-object v0
.end method

.method public blacklist getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    .registers 2

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 70
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    return-object v0
.end method

.method public blacklist getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    .registers 2

    .line 99
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 100
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    return-object v0
.end method

.method public blacklist getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    .registers 2

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 130
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    return-object v0
.end method

.method public blacklist getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    .registers 2

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 115
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    return-object v0
.end method

.method public blacklist getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    .registers 2

    .line 144
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 145
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    return-object v0
.end method

.method public blacklist getIptvCaps()Landroid/hardware/tv/tuner/FrontendIptvCapabilities;
    .registers 2

    .line 204
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 205
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIptvCapabilities;

    return-object v0
.end method

.method public blacklist getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    .registers 2

    .line 174
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 175
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    return-object v0
.end method

.method public blacklist getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    .registers 2

    .line 159
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 160
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    return-object v0
.end method

.method public blacklist getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    .registers 2

    .line 189
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_assertTag(I)V

    .line 190
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_a4

    .line 328
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

    .line 324
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIptvCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIptvCapabilities;

    .line 325
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIptvCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 326
    return-void

    .line 319
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIptvCapabilities;
    :pswitch_2c
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    .line 320
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 321
    return-void

    .line 314
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;
    :pswitch_38
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    .line 315
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 316
    return-void

    .line 309
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;
    :pswitch_44
    sget-object v1, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    .line 310
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 311
    return-void

    .line 304
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;
    :pswitch_50
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    .line 305
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 306
    return-void

    .line 299
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    :pswitch_5c
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    .line 300
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 301
    return-void

    .line 294
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;
    :pswitch_68
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    .line 295
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 296
    return-void

    .line 289
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;
    :pswitch_74
    sget-object v1, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    .line 290
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 291
    return-void

    .line 284
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;
    :pswitch_80
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    .line 285
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 286
    return-void

    .line 279
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;
    :pswitch_8c
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    .line 280
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 281
    return-void

    .line 274
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendAtscCapabilities;
    :pswitch_98
    sget-object v1, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    .line 275
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 276
    return-void

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_98
        :pswitch_8c
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

.method public blacklist setAnalogCaps(Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public blacklist setAtsc3Caps(Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    .line 89
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public blacklist setAtscCaps(Landroid/hardware/tv/tuner/FrontendAtscCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public blacklist setDtmbCaps(Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    .line 104
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public blacklist setDvbcCaps(Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    .line 134
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public blacklist setDvbsCaps(Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public blacklist setDvbtCaps(Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    .line 149
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public blacklist setIptvCaps(Landroid/hardware/tv/tuner/FrontendIptvCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIptvCapabilities;

    .line 209
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 210
    return-void
.end method

.method public blacklist setIsdbs3Caps(Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    .line 179
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 180
    return-void
.end method

.method public blacklist setIsdbsCaps(Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    .line 164
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public blacklist setIsdbtCaps(Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    .line 194
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendCapabilities;->_set(ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 230
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendCapabilities;->_tag:I

    packed-switch v0, :pswitch_data_64

    goto :goto_63

    .line 263
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIptvCaps()Landroid/hardware/tv/tuner/FrontendIptvCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_63

    .line 260
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbtCaps()Landroid/hardware/tv/tuner/FrontendIsdbtCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 261
    goto :goto_63

    .line 257
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbs3Caps()Landroid/hardware/tv/tuner/FrontendIsdbs3Capabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 258
    goto :goto_63

    .line 254
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getIsdbsCaps()Landroid/hardware/tv/tuner/FrontendIsdbsCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto :goto_63

    .line 251
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbtCaps()Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 252
    goto :goto_63

    .line 248
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbcCaps()Landroid/hardware/tv/tuner/FrontendDvbcCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    goto :goto_63

    .line 245
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDvbsCaps()Landroid/hardware/tv/tuner/FrontendDvbsCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    goto :goto_63

    .line 242
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getDtmbCaps()Landroid/hardware/tv/tuner/FrontendDtmbCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 243
    goto :goto_63

    .line 239
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtsc3Caps()Landroid/hardware/tv/tuner/FrontendAtsc3Capabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 240
    goto :goto_63

    .line 236
    :pswitch_53
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAtscCaps()Landroid/hardware/tv/tuner/FrontendAtscCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_63

    .line 233
    :pswitch_5b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendCapabilities;->getAnalogCaps()Landroid/hardware/tv/tuner/FrontendAnalogCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    nop

    .line 266
    :goto_63
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_53
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
