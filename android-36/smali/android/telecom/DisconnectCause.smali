.class public final Landroid/telecom/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/DisconnectCause$Builder;,
        Landroid/telecom/DisconnectCause$DisconnectCauseCode;
    }
.end annotation


# static fields
.field public static final whitelist ANSWERED_ELSEWHERE:I = 0xb

.field public static final whitelist BUSY:I = 0x7

.field public static final whitelist CALL_PULLED:I = 0xc

.field public static final whitelist CANCELED:I = 0x4

.field public static final whitelist CONNECTION_MANAGER_NOT_SUPPORTED:I = 0xa

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR:I = 0x1

.field public static final whitelist LOCAL:I = 0x2

.field public static final whitelist MISSED:I = 0x5

.field public static final whitelist OTHER:I = 0x9

.field public static final whitelist REASON_EMERGENCY_CALL_PLACED:Ljava/lang/String; = "REASON_EMERGENCY_CALL_PLACED"

.field public static final whitelist REASON_EMULATING_SINGLE_CALL:Ljava/lang/String; = "EMULATING_SINGLE_CALL"

.field public static final whitelist REASON_IMS_ACCESS_BLOCKED:Ljava/lang/String; = "REASON_IMS_ACCESS_BLOCKED"

.field public static final whitelist REASON_WIFI_ON_BUT_WFC_OFF:Ljava/lang/String; = "REASON_WIFI_ON_BUT_WFC_OFF"

.field public static final whitelist REJECTED:I = 0x6

.field public static final whitelist REMOTE:I = 0x3

.field public static final whitelist RESTRICTED:I = 0x8

.field public static final whitelist UNKNOWN:I


# instance fields
.field private greylist-max-o mDisconnectCode:I

.field private greylist-max-o mDisconnectDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDisconnectLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mDisconnectReason:Ljava/lang/String;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mTelephonyDisconnectCause:I

.field private blacklist mTelephonyPreciseDisconnectCause:I

.field private greylist-max-o mToneToPlay:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 438
    new-instance v0, Landroid/telecom/DisconnectCause$1;

    invoke-direct {v0}, Landroid/telecom/DisconnectCause$1;-><init>()V

    sput-object v0, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 8
    .param p1, "code"    # I

    .line 160
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "code":I
    .local v1, "code":I
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;

    .line 183
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "code":I
    .end local p2    # "label":Ljava/lang/CharSequence;
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "reason":Ljava/lang/String;
    .local v1, "code":I
    .local v2, "label":Ljava/lang/CharSequence;
    .local v3, "description":Ljava/lang/CharSequence;
    .local v4, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "toneToPlay"    # I

    .line 197
    const v7, 0xffff

    const/4 v8, 0x0

    const/16 v6, 0x24

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "code":I
    .end local p2    # "label":Ljava/lang/CharSequence;
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "reason":Ljava/lang/String;
    .end local p5    # "toneToPlay":I
    .local v1, "code":I
    .local v2, "label":Ljava/lang/CharSequence;
    .local v3, "description":Ljava/lang/CharSequence;
    .local v4, "reason":Ljava/lang/String;
    .local v5, "toneToPlay":I
    invoke-direct/range {v0 .. v8}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 200
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "toneToPlay"    # I
    .param p6, "telephonyDisconnectCause"    # I
    .param p7, "telephonyPreciseDisconnectCause"    # I
    .param p8, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    .line 222
    iput-object p2, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 223
    iput-object p3, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 224
    iput-object p4, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 225
    iput p5, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    .line 226
    iput p6, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    .line 227
    iput p7, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    .line 228
    iput-object p8, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 229
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 170
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    .local v1, "code":I
    .local v4, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 491
    instance-of v0, p1, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    if-eqz v0, :cond_8c

    .line 492
    move-object v0, p1

    check-cast v0, Landroid/telecom/DisconnectCause;

    .line 493
    .local v0, "d":Landroid/telecom/DisconnectCause;
    iget v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 494
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 495
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 496
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget v2, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    .line 497
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTone()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget v2, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    .line 498
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTelephonyDisconnectCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget v2, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 500
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getTelephonyPreciseDisconnectCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 499
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 501
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x1

    goto :goto_8b

    :cond_8a
    nop

    .line 493
    :goto_8b
    return v1

    .line 503
    .end local v0    # "d":Landroid/telecom/DisconnectCause;
    :cond_8c
    return v1
.end method

.method public whitelist getCode()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getReason()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTelephonyDisconnectCause()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 287
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    return v0
.end method

.method public blacklist getTelephonyPreciseDisconnectCause()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 300
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    return v0
.end method

.method public whitelist getTone()I
    .registers 2

    .line 322
    iget v0, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 479
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 480
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 481
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 482
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    .line 484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 486
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 508
    const-string v0, ""

    .line 509
    .local v0, "code":Ljava/lang/String;
    iget v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    packed-switch v1, :pswitch_data_ce

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 544
    :pswitch_1e
    const-string v0, "CALL_PULLED"

    .line 545
    goto :goto_45

    .line 547
    :pswitch_21
    const-string v0, "ANSWERED_ELSEWHERE"

    .line 548
    goto :goto_45

    .line 541
    :pswitch_24
    const-string v0, "CONNECTION_MANAGER_NOT_SUPPORTED"

    .line 542
    goto :goto_45

    .line 538
    :pswitch_27
    const-string v0, "OTHER"

    .line 539
    goto :goto_45

    .line 535
    :pswitch_2a
    const-string v0, "RESTRICTED"

    .line 536
    goto :goto_45

    .line 532
    :pswitch_2d
    const-string v0, "BUSY"

    .line 533
    goto :goto_45

    .line 529
    :pswitch_30
    const-string v0, "REJECTED"

    .line 530
    goto :goto_45

    .line 526
    :pswitch_33
    const-string v0, "MISSED"

    .line 527
    goto :goto_45

    .line 523
    :pswitch_36
    const-string v0, "CANCELED"

    .line 524
    goto :goto_45

    .line 520
    :pswitch_39
    const-string v0, "REMOTE"

    .line 521
    goto :goto_45

    .line 517
    :pswitch_3c
    const-string v0, "LOCAL"

    .line 518
    goto :goto_45

    .line 514
    :pswitch_3f
    const-string v0, "ERROR"

    .line 515
    goto :goto_45

    .line 511
    :pswitch_42
    const-string v0, "UNKNOWN"

    .line 512
    nop

    .line 553
    :goto_45
    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    const-string v2, ""

    if-nez v1, :cond_4d

    move-object v1, v2

    goto :goto_53

    :cond_4d
    iget-object v1, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "label":Ljava/lang/String;
    :goto_53
    iget-object v3, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    if-nez v3, :cond_59

    .line 555
    move-object v3, v2

    goto :goto_5f

    :cond_59
    iget-object v3, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "description":Ljava/lang/String;
    :goto_5f
    iget-object v4, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    if-nez v4, :cond_64

    goto :goto_66

    :cond_64
    iget-object v2, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    .line 557
    .local v2, "reason":Ljava/lang/String;
    :goto_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause [ Code: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Label: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Description: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Reason: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Tone: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")  TelephonyCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ImsReasonInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 462
    iget v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 464
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 465
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mDisconnectReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Landroid/telecom/DisconnectCause;->mToneToPlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Landroid/telecom/DisconnectCause;->mTelephonyPreciseDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v0, p0, Landroid/telecom/DisconnectCause;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 470
    return-void
.end method
