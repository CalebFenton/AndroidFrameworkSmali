.class public final Landroid/service/euicc/EuiccProfileInfo;
.super Ljava/lang/Object;
.source "EuiccProfileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccProfileInfo$Builder;,
        Landroid/service/euicc/EuiccProfileInfo$ProfileState;,
        Landroid/service/euicc/EuiccProfileInfo$ProfileClass;,
        Landroid/service/euicc/EuiccProfileInfo$PolicyRule;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POLICY_RULE_DELETE_AFTER_DISABLING:I = 0x4

.field public static final whitelist POLICY_RULE_DO_NOT_DELETE:I = 0x2

.field public static final whitelist POLICY_RULE_DO_NOT_DISABLE:I = 0x1

.field public static final whitelist PROFILE_CLASS_OPERATIONAL:I = 0x2

.field public static final whitelist PROFILE_CLASS_PROVISIONING:I = 0x1

.field public static final whitelist PROFILE_CLASS_TESTING:I = 0x0

.field public static final greylist-max-o PROFILE_CLASS_UNSET:I = -0x1

.field public static final whitelist PROFILE_STATE_DISABLED:I = 0x0

.field public static final whitelist PROFILE_STATE_ENABLED:I = 0x1

.field public static final greylist-max-o PROFILE_STATE_UNSET:I = -0x1


# instance fields
.field private final greylist-max-o mAccessRules:[Landroid/telephony/UiccAccessRule;

.field private final greylist-max-o mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

.field private final greylist-max-o mIccid:Ljava/lang/String;

.field private final greylist-max-o mNickname:Ljava/lang/String;

.field private final greylist-max-o mPolicyRules:I

.field private final greylist-max-o mProfileClass:I

.field private final greylist-max-o mProfileName:Ljava/lang/String;

.field private final greylist-max-o mServiceProviderName:Ljava/lang/String;

.field private final greylist-max-o mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccessRules(Landroid/service/euicc/EuiccProfileInfo;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierIdentifier(Landroid/service/euicc/EuiccProfileInfo;)Landroid/service/carrier/CarrierIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccid(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNickname(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPolicyRules(Landroid/service/euicc/EuiccProfileInfo;)I
    .registers 1

    iget p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Landroid/service/euicc/EuiccProfileInfo;)I
    .registers 1

    iget p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileName(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceProviderName(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/service/euicc/EuiccProfileInfo;)I
    .registers 1

    iget p0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Landroid/service/euicc/EuiccProfileInfo$1;

    invoke-direct {v0}, Landroid/service/euicc/EuiccProfileInfo$1;-><init>()V

    sput-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 186
    .local v0, "exist":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 187
    sget-object v1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    iput-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    goto :goto_3c

    .line 189
    :cond_39
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 191
    :goto_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    .line 192
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/UiccAccessRule;

    iput-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 193
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/euicc/EuiccProfileInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;)V
    .registers 11
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "serviceProviderName"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "profileClass"    # I
    .param p6, "state"    # I
    .param p7, "carrierIdentifier"    # Landroid/service/carrier/CarrierIdentifier;
    .param p8, "policyRules"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierIdentifier;",
            "I",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p9, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 339
    iput-object p4, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 340
    iput p5, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    .line 341
    iput p6, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    .line 342
    iput-object p7, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 343
    iput p8, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    .line 344
    if-eqz p9, :cond_2a

    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 345
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    invoke-interface {p9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    goto :goto_2d

    .line 347
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 349
    :goto_2d
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;Landroid/service/euicc/EuiccProfileInfo-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V
    .registers 7
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "accessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p3, "nickname"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 166
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 168
    iput-object p3, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 172
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    .line 173
    iput v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    .line 174
    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    .line 176
    return-void

    .line 164
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iccid contains invalid characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 414
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 415
    return v0

    .line 417
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_66

    .line 421
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/euicc/EuiccProfileInfo;

    .line 422
    .local v2, "that":Landroid/service/euicc/EuiccProfileInfo;
    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 423
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 424
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 425
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    iget v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    if-ne v3, v4, :cond_64

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    iget v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    if-ne v3, v4, :cond_64

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 428
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    iget v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    if-ne v3, v4, :cond_64

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 430
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_65

    :cond_64
    move v0, v1

    .line 422
    :goto_65
    return v0

    .line 418
    .end local v2    # "that":Landroid/service/euicc/EuiccProfileInfo;
    :cond_66
    :goto_66
    return v1
.end method

.method public whitelist getCarrierIdentifier()Landroid/service/carrier/CarrierIdentifier;
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    return-object v0
.end method

.method public whitelist getIccid()Ljava/lang/String;
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNickname()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPolicyRules()I
    .registers 2

    .line 399
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    return v0
.end method

.method public whitelist getProfileClass()I
    .registers 2

    .line 382
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    return v0
.end method

.method public whitelist getProfileName()Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 388
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    return v0
.end method

.method public whitelist getUiccAccessRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_6
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasPolicyRule(I)Z
    .registers 3
    .param p1, "policy"    # I

    .line 409
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist hasPolicyRules()Z
    .registers 2

    .line 404
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 435
    const/4 v0, 0x1

    .line 436
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 437
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 438
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 439
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 440
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    add-int/2addr v1, v2

    .line 441
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    add-int/2addr v0, v2

    .line 442
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 443
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    add-int/2addr v0, v2

    .line 444
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 445
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccProfileInfo (nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceProviderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CarrierIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", policyRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 466
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 468
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 197
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    if-eqz v0, :cond_2c

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 205
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/service/carrier/CarrierIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    .line 207
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 209
    :goto_30
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 211
    return-void
.end method
