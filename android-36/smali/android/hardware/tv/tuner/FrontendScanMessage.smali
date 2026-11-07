.class public final Landroid/hardware/tv/tuner/FrontendScanMessage;
.super Ljava/lang/Object;
.source "FrontendScanMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendScanMessage$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendScanMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist analogType:I = 0x6

.field public static final blacklist annex:I = 0xd

.field public static final blacklist atsc3PlpInfos:I = 0xb

.field public static final blacklist dvbtCellIds:I = 0xf

.field public static final blacklist frequencies:I = 0x3

.field public static final blacklist groupIds:I = 0x8

.field public static final blacklist hierarchy:I = 0x5

.field public static final blacklist inputStreamIds:I = 0x9

.field public static final blacklist isEnd:I = 0x1

.field public static final blacklist isHighPriority:I = 0xe

.field public static final blacklist isLocked:I = 0x0

.field public static final blacklist modulation:I = 0xc

.field public static final blacklist plpIds:I = 0x7

.field public static final blacklist progressPercent:I = 0x2

.field public static final blacklist std:I = 0xa

.field public static final blacklist symbolRates:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendScanMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendScanMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    .line 45
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendScanMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 483
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 486
    return-void

    .line 484
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tagString(I)Ljava/lang/String;

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

    .line 511
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    .line 512
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    .line 513
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 489
    packed-switch p1, :pswitch_data_4c

    .line 507
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

    .line 505
    :pswitch_1c
    const-string v0, "dvbtCellIds"

    return-object v0

    .line 504
    :pswitch_1f
    const-string v0, "isHighPriority"

    return-object v0

    .line 503
    :pswitch_22
    const-string v0, "annex"

    return-object v0

    .line 502
    :pswitch_25
    const-string v0, "modulation"

    return-object v0

    .line 501
    :pswitch_28
    const-string v0, "atsc3PlpInfos"

    return-object v0

    .line 500
    :pswitch_2b
    const-string v0, "std"

    return-object v0

    .line 499
    :pswitch_2e
    const-string v0, "inputStreamIds"

    return-object v0

    .line 498
    :pswitch_31
    const-string v0, "groupIds"

    return-object v0

    .line 497
    :pswitch_34
    const-string v0, "plpIds"

    return-object v0

    .line 496
    :pswitch_37
    const-string v0, "analogType"

    return-object v0

    .line 495
    :pswitch_3a
    const-string v0, "hierarchy"

    return-object v0

    .line 494
    :pswitch_3d
    const-string v0, "symbolRates"

    return-object v0

    .line 493
    :pswitch_40
    const-string v0, "frequencies"

    return-object v0

    .line 492
    :pswitch_43
    const-string v0, "progressPercent"

    return-object v0

    .line 491
    :pswitch_46
    const-string v0, "isEnd"

    return-object v0

    .line 490
    :pswitch_49
    const-string v0, "isLocked"

    return-object v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
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

.method public static blacklist analogType(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # I

    .line 145
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist annex(B)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # B

    .line 250
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xd

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist atsc3PlpInfos([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 220
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 468
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 469
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 472
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 471
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 474
    :cond_19
    return v1

    .line 476
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 477
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 479
    :cond_26
    return v0
.end method

.method public static blacklist dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [I

    .line 280
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist frequencies([J)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [J

    .line 100
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist groupIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [I

    .line 175
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hierarchy(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # I

    .line 130
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist inputStreamIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [I

    .line 190
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isEnd(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # Z

    .line 70
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isHighPriority(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # Z

    .line 265
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xe

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLocked(Z)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # Z

    .line 55
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulation(Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendModulation;

    .line 235
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpIds([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [I

    .line 160
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist progressPercent(I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 4
    .param p0, "_value"    # I

    .line 85
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist std(Landroid/hardware/tv/tuner/FrontendScanMessageStandard;)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    .line 205
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist symbolRates([I)Landroid/hardware/tv/tuner/FrontendScanMessage;
    .registers 3
    .param p0, "_value"    # [I

    .line 115
    new-instance v0, Landroid/hardware/tv/tuner/FrontendScanMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_27

    .line 462
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getModulation()Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_27

    .line 459
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 460
    goto :goto_27

    .line 456
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 457
    nop

    .line 465
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0xa
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getAnalogType()I
    .registers 2

    .line 149
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 150
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getAnnex()B
    .registers 2

    .line 254
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 255
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .registers 2

    .line 224
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 225
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object v0
.end method

.method public blacklist getDvbtCellIds()[I
    .registers 2

    .line 284
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 285
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getFrequencies()[J
    .registers 2

    .line 104
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 105
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public blacklist getGroupIds()[I
    .registers 2

    .line 179
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 180
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getHierarchy()I
    .registers 2

    .line 134
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 135
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInputStreamIds()[I
    .registers 2

    .line 194
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 195
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getIsEnd()Z
    .registers 2

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 75
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsHighPriority()Z
    .registers 2

    .line 269
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 270
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsLocked()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 60
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getModulation()Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 2

    .line 239
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 240
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendModulation;

    return-object v0
.end method

.method public blacklist getPlpIds()[I
    .registers 2

    .line 164
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 165
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getProgressPercent()I
    .registers 2

    .line 89
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 90
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    .registers 2

    .line 209
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 210
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    return-object v0
.end method

.method public blacklist getSymbolRates()[I
    .registers 2

    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_assertTag(I)V

    .line 120
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 49
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_c8

    .line 448
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

    .line 444
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 445
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 446
    return-void

    .line 439
    .end local v1    # "_aidl_value":[I
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 440
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 441
    return-void

    .line 434
    .end local v1    # "_aidl_value":Z
    :pswitch_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 435
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 436
    return-void

    .line 429
    .end local v1    # "_aidl_value":B
    :pswitch_40
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendModulation;

    .line 430
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulation;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 431
    return-void

    .line 424
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulation;
    :pswitch_4c
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 425
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 426
    return-void

    .line 419
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    :pswitch_58
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    .line 420
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 421
    return-void

    .line 414
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendScanMessageStandard;
    :pswitch_64
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 415
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 416
    return-void

    .line 409
    .end local v1    # "_aidl_value":[I
    :pswitch_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 410
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 411
    return-void

    .line 404
    .end local v1    # "_aidl_value":[I
    :pswitch_74
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 405
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 406
    return-void

    .line 399
    .end local v1    # "_aidl_value":[I
    :pswitch_7c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 401
    return-void

    .line 394
    .end local v1    # "_aidl_value":I
    :pswitch_88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 396
    return-void

    .line 389
    .end local v1    # "_aidl_value":I
    :pswitch_94
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 390
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 391
    return-void

    .line 384
    .end local v1    # "_aidl_value":[I
    :pswitch_9c
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 385
    .local v1, "_aidl_value":[J
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 386
    return-void

    .line 379
    .end local v1    # "_aidl_value":[J
    :pswitch_a4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 381
    return-void

    .line 374
    .end local v1    # "_aidl_value":I
    :pswitch_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 375
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 376
    return-void

    .line 369
    .end local v1    # "_aidl_value":Z
    :pswitch_bc
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 370
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 371
    return-void

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_b0
        :pswitch_a4
        :pswitch_9c
        :pswitch_94
        :pswitch_88
        :pswitch_7c
        :pswitch_74
        :pswitch_6c
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAnalogType(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 154
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 155
    return-void
.end method

.method public blacklist setAnnex(B)V
    .registers 4
    .param p1, "_value"    # B

    .line 259
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 260
    return-void
.end method

.method public blacklist setAtsc3PlpInfos([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .registers 3
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 229
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 230
    return-void
.end method

.method public blacklist setDvbtCellIds([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 289
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method public blacklist setFrequencies([J)V
    .registers 3
    .param p1, "_value"    # [J

    .line 109
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public blacklist setGroupIds([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 184
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public blacklist setHierarchy(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 139
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method public blacklist setInputStreamIds([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 199
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 200
    return-void
.end method

.method public blacklist setIsEnd(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 79
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public blacklist setIsHighPriority(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 274
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method public blacklist setIsLocked(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 64
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public blacklist setModulation(Landroid/hardware/tv/tuner/FrontendModulation;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendModulation;

    .line 244
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 245
    return-void
.end method

.method public blacklist setPlpIds([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 169
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 170
    return-void
.end method

.method public blacklist setProgressPercent(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 94
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public blacklist setStd(Landroid/hardware/tv/tuner/FrontendScanMessageStandard;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    .line 214
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 215
    return-void
.end method

.method public blacklist setSymbolRates([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 124
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendScanMessage;->_set(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 310
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendScanMessage;->_tag:I

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8f

    .line 358
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getDvbtCellIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8f

    .line 355
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsHighPriority()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 356
    goto/16 :goto_8f

    .line 352
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAnnex()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    goto/16 :goto_8f

    .line 349
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getModulation()Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 350
    goto :goto_8f

    .line 346
    :pswitch_2f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAtsc3PlpInfos()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 347
    goto :goto_8f

    .line 343
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getStd()Landroid/hardware/tv/tuner/FrontendScanMessageStandard;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 344
    goto :goto_8f

    .line 340
    :pswitch_3f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getInputStreamIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 341
    goto :goto_8f

    .line 337
    :pswitch_47
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getGroupIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 338
    goto :goto_8f

    .line 334
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getPlpIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 335
    goto :goto_8f

    .line 331
    :pswitch_57
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getAnalogType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    goto :goto_8f

    .line 328
    :pswitch_5f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getHierarchy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto :goto_8f

    .line 325
    :pswitch_67
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getSymbolRates()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 326
    goto :goto_8f

    .line 322
    :pswitch_6f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getFrequencies()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 323
    goto :goto_8f

    .line 319
    :pswitch_77
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getProgressPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto :goto_8f

    .line 316
    :pswitch_7f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsEnd()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto :goto_8f

    .line 313
    :pswitch_87
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendScanMessage;->getIsLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    nop

    .line 361
    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method
