.class public final Landroid/telephony/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallProfile$VerificationStatus;,
        Landroid/telephony/ims/ImsCallProfile$CallRestrictCause;
    }
.end annotation


# static fields
.field public static final whitelist CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final whitelist CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final whitelist CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final whitelist CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final whitelist CALL_TYPE_NONE:I = 0x0

.field public static final whitelist CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final whitelist CALL_TYPE_VOICE:I = 0x2

.field public static final whitelist CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final whitelist CALL_TYPE_VS:I = 0x8

.field public static final whitelist CALL_TYPE_VS_RX:I = 0xa

.field public static final whitelist CALL_TYPE_VS_TX:I = 0x9

.field public static final whitelist CALL_TYPE_VT:I = 0x4

.field public static final whitelist CALL_TYPE_VT_NODIR:I = 0x7

.field public static final whitelist CALL_TYPE_VT_RX:I = 0x6

.field public static final whitelist CALL_TYPE_VT_TX:I = 0x5

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIALSTRING_NORMAL:I = 0x0

.field public static final whitelist DIALSTRING_SS_CONF:I = 0x1

.field public static final whitelist DIALSTRING_USSD:I = 0x2

.field public static final whitelist EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final whitelist EXTRA_ADDITIONAL_SIP_INVITE_FIELDS:Ljava/lang/String; = "android.telephony.ims.extra.ADDITIONAL_SIP_INVITE_FIELDS"

.field public static final whitelist EXTRA_ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "android.telephony.ims.extra.ASSERTED_DISPLAY_NAME"

.field public static final whitelist EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

.field public static final greylist-max-o EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final whitelist EXTRA_CALL_NETWORK_TYPE:Ljava/lang/String; = "android.telephony.ims.extra.CALL_NETWORK_TYPE"

.field public static final whitelist EXTRA_CALL_RAT_TYPE:Ljava/lang/String; = "CallRadioTech"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CALL_RAT_TYPE_ALT:Ljava/lang/String; = "callRadioTech"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telephony.ims.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final whitelist EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final whitelist EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final whitelist EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final whitelist EXTRA_CONFERENCE:Ljava/lang/String; = "android.telephony.ims.extra.CONFERENCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final blacklist EXTRA_CONFERENCE_DEPRECATED:Ljava/lang/String; = "conference"

.field public static final whitelist EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final whitelist EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final whitelist EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "e_call"

.field public static final whitelist EXTRA_EXTENDING_TO_CONFERENCE_SUPPORTED:Ljava/lang/String; = "android.telephony.ims.extra.EXTENDING_TO_CONFERENCE_SUPPORTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FORWARDED_NUMBER:Ljava/lang/String; = "android.telephony.ims.extra.FORWARDED_NUMBER"

.field public static final whitelist EXTRA_IS_BUSINESS_CALL:Ljava/lang/String; = "android.telephony.ims.extra.IS_BUSINESS_CALL"

.field public static final whitelist EXTRA_IS_CALL_PULL:Ljava/lang/String; = "CallPull"

.field public static final whitelist EXTRA_IS_CROSS_SIM_CALL:Ljava/lang/String; = "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telephony.ims.extra.LOCATION"

.field public static final greylist-max-o EXTRA_OEM_EXTRAS:Ljava/lang/String; = "android.telephony.ims.extra.OEM_EXTRAS"

.field public static final whitelist EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final whitelist EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final whitelist EXTRA_PICTURE_URL:Ljava/lang/String; = "android.telephony.ims.extra.PICTURE_URL"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telephony.ims.extra.PRIORITY"

.field public static final whitelist EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_NETWORKTYPE:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_REASON:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

.field public static final whitelist EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final greylist-max-o EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final whitelist OIR_DEFAULT:I = 0x0

.field public static final whitelist OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final whitelist OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final whitelist OIR_PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final whitelist SERVICE_TYPE_NONE:I = 0x0

.field public static final whitelist SERVICE_TYPE_NORMAL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsCallProfile"

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private blacklist mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-r mCallExtras:Landroid/os/Bundle;

.field public greylist-max-r mCallType:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private blacklist mEmergencyCallRouting:I

.field private blacklist mEmergencyCallTesting:Z

.field private blacklist mEmergencyServiceCategories:I

.field private blacklist mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasKnownUserIntentEmergency:Z

.field public greylist-max-r mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

.field public greylist-max-r mRestrictCause:I

.field public greylist-max-o mServiceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 875
    new-instance v0, Landroid/telephony/ims/ImsCallProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 552
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 575
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 579
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 582
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 584
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 626
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 627
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 628
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 629
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 552
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 575
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 579
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 582
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 584
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 651
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 652
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 654
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 655
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 7
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 552
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 575
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 579
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 582
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 584
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 680
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 681
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 682
    iput-object p3, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 683
    iput-object p4, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 684
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 552
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 575
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 579
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 582
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 584
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 617
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 618
    return-void
.end method

.method public static greylist-max-o OIRToPresentation(I)I
    .registers 2
    .param p0, "oir"    # I

    .line 1035
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_e

    .line 1047
    return v0

    .line 1043
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1041
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1045
    :pswitch_9
    return v0

    .line 1039
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 1037
    :pswitch_c
    const/4 v0, 0x2

    return v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist getCallTypeFromVideoState(I)I
    .registers 6
    .param p0, "videoState"    # I

    .line 981
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    .line 982
    .local v0, "videoTx":Z
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    .line 983
    .local v2, "videoRx":Z
    const/4 v3, 0x4

    invoke-static {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v4

    .line 984
    .local v4, "isPaused":Z
    if-eqz v4, :cond_13

    .line 985
    const/4 v1, 0x7

    return v1

    .line 986
    :cond_13
    if-eqz v0, :cond_19

    if-nez v2, :cond_19

    .line 987
    const/4 v1, 0x5

    return v1

    .line 988
    :cond_19
    if-nez v0, :cond_1f

    if-eqz v2, :cond_1f

    .line 989
    const/4 v1, 0x6

    return v1

    .line 990
    :cond_1f
    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    .line 991
    return v3

    .line 993
    :cond_24
    return v1
.end method

.method public static whitelist getVideoStateFromCallType(I)I
    .registers 2
    .param p0, "callType"    # I

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "videostate":I
    packed-switch p0, :pswitch_data_10

    .line 967
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_e

    .line 958
    :pswitch_6
    const/4 v0, 0x2

    .line 959
    goto :goto_e

    .line 955
    :pswitch_8
    const/4 v0, 0x1

    .line 956
    goto :goto_e

    .line 961
    :pswitch_a
    const/4 v0, 0x3

    .line 962
    goto :goto_e

    .line 964
    :pswitch_c
    const/4 v0, 0x0

    .line 965
    nop

    .line 970
    :goto_e
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I
    .registers 3
    .param p0, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 937
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 938
    .local v0, "videostate":I
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 939
    or-int/lit8 v0, v0, 0x4

    goto :goto_17

    .line 941
    :cond_15
    and-int/lit8 v0, v0, -0x5

    .line 943
    :goto_17
    return v0
.end method

.method private static greylist-max-o isVideoStateSet(II)Z
    .registers 3
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    .line 1101
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$readFromParcel$0(Ljava/lang/Object;)Landroid/telephony/ims/RtpHeaderExtensionType;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 872
    move-object v0, p0

    check-cast v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    return-object v0
.end method

.method private greylist-max-o maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1079
    if-nez p1, :cond_4

    .line 1080
    const/4 v0, 0x0

    return-object v0

    .line 1083
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 1084
    .local v0, "startSize":I
    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1085
    .local v1, "filtered":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 1086
    .local v2, "endSize":I
    if-eq v0, v2, :cond_33

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeCleanseExtras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra values were removed - only primitive types and system parcelables are permitted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsCallProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_33
    return-object v1
.end method

.method public static greylist-max-r presentationToOIR(I)I
    .registers 2
    .param p0, "presentation"    # I

    .line 1003
    packed-switch p0, :pswitch_data_10

    .line 1015
    const/4 v0, 0x0

    return v0

    .line 1013
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1009
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1011
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1005
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1007
    :pswitch_d
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist presentationToOir(I)I
    .registers 2
    .param p0, "presentation"    # I

    .line 1025
    invoke-static {p0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 861
    const-class v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    .line 869
    const-class v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 871
    .local v0, "accepted":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;-><init>()V

    .line 872
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 873
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 687
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 692
    return-object p2

    .line 695
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 703
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 704
    return p2

    .line 707
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 711
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 715
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 716
    return p2

    .line 719
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 730
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 732
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallExtras()Landroid/os/Bundle;
    .registers 2

    .line 905
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 893
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return v0
.end method

.method public whitelist getCallerNumberVerificationStatus()I
    .registers 2

    .line 814
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .registers 2

    .line 1246
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    return v0
.end method

.method public whitelist getEmergencyServiceCategories()I
    .registers 2

    .line 1220
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    return v0
.end method

.method public whitelist getEmergencyUrns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1231
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .registers 2

    .line 926
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public whitelist getProprietaryCallExtras()Landroid/os/Bundle;
    .registers 3

    .line 914
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 917
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 918
    .local v0, "proprietaryExtras":Landroid/os/Bundle;
    if-nez v0, :cond_1a

    .line 919
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1

    .line 922
    :cond_1a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public whitelist getRestrictCause()I
    .registers 2

    .line 901
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    return v0
.end method

.method public whitelist getServiceType()I
    .registers 2

    .line 889
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    return v0
.end method

.method public whitelist hasKnownUserIntentEmergency()Z
    .registers 2

    .line 1265
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    return v0
.end method

.method public whitelist isEmergencyCallTesting()Z
    .registers 2

    .line 1253
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    return v0
.end method

.method public whitelist isVideoCall()Z
    .registers 2

    .line 1065
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVideoPaused()Z
    .registers 2

    .line 1056
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setAcceptedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .line 1293
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1294
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1295
    return-void
.end method

.method public whitelist setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 736
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 737
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_9
    return-void
.end method

.method public whitelist setCallExtraBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 742
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 743
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 745
    :cond_9
    return-void
.end method

.method public whitelist setCallExtraInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 748
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 749
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    :cond_9
    return-void
.end method

.method public whitelist setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parcelable"    # Landroid/os/Parcelable;

    .line 763
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 764
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 766
    :cond_9
    return-void
.end method

.method public whitelist setCallRestrictCause(I)V
    .registers 2
    .param p1, "cause"    # I

    .line 773
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 774
    return-void
.end method

.method public whitelist setCallerNumberVerificationStatus(I)V
    .registers 2
    .param p1, "callerNumberVerificationStatus"    # I

    .line 805
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    .line 806
    return-void
.end method

.method public blacklist setEmergencyCallInfo(Landroid/telephony/emergency/EmergencyNumber;Z)V
    .registers 5
    .param p1, "num"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p2, "hasKnownUserIntentEmergency"    # Z

    .line 1115
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyServiceCategories(I)V

    .line 1116
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyUrns(Ljava/util/List;)V

    .line 1117
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallRouting(I)V

    .line 1118
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallTesting(Z)V

    .line 1120
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsCallProfile;->setHasKnownUserIntentEmergency(Z)V

    .line 1121
    return-void
.end method

.method public whitelist setEmergencyCallRouting(I)V
    .registers 2
    .param p1, "emergencyCallRouting"    # I

    .line 1173
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 1174
    return-void
.end method

.method public whitelist setEmergencyCallTesting(Z)V
    .registers 2
    .param p1, "isTesting"    # Z

    .line 1182
    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 1183
    return-void
.end method

.method public whitelist setEmergencyServiceCategories(I)V
    .registers 2
    .param p1, "emergencyServiceCategories"    # I

    .line 1145
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 1146
    return-void
.end method

.method public whitelist setEmergencyUrns(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1157
    .local p1, "emergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 1158
    return-void
.end method

.method public whitelist setHasKnownUserIntentEmergency(Z)V
    .registers 2
    .param p1, "hasKnownUserIntentEmergency"    # Z

    .line 1195
    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 1196
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 823
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3b
    const-string/jumbo v1, "null"

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyServiceCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyUrns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyCallRouting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyCallTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasKnownUserIntentEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerNumberVerstat= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAcceptedRtpHeaderExtensions= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    return-object v0
.end method

.method public whitelist updateCallExtras(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 781
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 782
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 783
    return-void
.end method

.method public whitelist updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 777
    iget v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 778
    return-void
.end method

.method public whitelist updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 791
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 792
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 842
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 843
    .local v0, "filteredExtras":Landroid/os/Bundle;
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 846
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 847
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 849
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 851
    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 852
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 855
    return-void
.end method
