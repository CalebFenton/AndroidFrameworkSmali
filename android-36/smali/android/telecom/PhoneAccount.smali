.class public final Landroid/telecom/PhoneAccount;
.super Ljava/lang/Object;
.source "PhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccount$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_ADHOC_CONFERENCE_CALLING:I = 0x4000

.field public static final whitelist CAPABILITY_CALL_COMPOSER:I = 0x8000

.field public static final whitelist CAPABILITY_CALL_PROVIDER:I = 0x2

.field public static final whitelist CAPABILITY_CALL_SUBJECT:I = 0x40

.field public static final whitelist CAPABILITY_CONNECTION_MANAGER:I = 0x1

.field public static final whitelist CAPABILITY_EMERGENCY_CALLS_ONLY:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_EMERGENCY_PREFERRED:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_EMERGENCY_VIDEO_CALLING:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_MULTI_USER:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_PLACE_EMERGENCY_CALLS:I = 0x10

.field public static final whitelist CAPABILITY_RTT:I = 0x1000

.field public static final whitelist CAPABILITY_SELF_MANAGED:I = 0x800

.field public static final whitelist CAPABILITY_SIM_SUBSCRIPTION:I = 0x4

.field public static final whitelist CAPABILITY_SUPPORTS_CALL_STREAMING:I = 0x80000

.field public static final whitelist CAPABILITY_SUPPORTS_TRANSACTIONAL_OPERATIONS:I = 0x40000

.field public static final whitelist CAPABILITY_SUPPORTS_VIDEO_CALLING:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VOICE_CALLING_INDICATIONS:I = 0x10000

.field public static final whitelist CAPABILITY_VIDEO_CALLING:I = 0x8

.field public static final whitelist CAPABILITY_VIDEO_CALLING_RELIES_ON_PRESENCE:I = 0x100

.field public static final whitelist CAPABILITY_VOICE_CALLING_AVAILABLE:I = 0x20000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_ADD_SELF_MANAGED_CALLS_TO_INCALLSERVICE:Ljava/lang/String; = "android.telecom.extra.ADD_SELF_MANAGED_CALLS_TO_INCALLSERVICE"

.field public static final whitelist EXTRA_ALWAYS_USE_VOIP_AUDIO_MODE:Ljava/lang/String; = "android.telecom.extra.ALWAYS_USE_VOIP_AUDIO_MODE"

.field public static final whitelist EXTRA_CALL_SUBJECT_CHARACTER_ENCODING:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

.field public static final whitelist EXTRA_CALL_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

.field public static final whitelist EXTRA_LOG_SELF_MANAGED_CALLS:Ljava/lang/String; = "android.telecom.extra.LOG_SELF_MANAGED_CALLS"

.field public static final whitelist EXTRA_PLAY_CALL_RECORDING_TONE:Ljava/lang/String; = "android.telecom.extra.PLAY_CALL_RECORDING_TONE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SKIP_CALL_FILTERING:Ljava/lang/String; = "android.telecom.extra.SKIP_CALL_FILTERING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SORT_ORDER:Ljava/lang/String; = "android.telecom.extra.SORT_ORDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUPPORTS_HANDOVER_FROM:Ljava/lang/String; = "android.telecom.extra.SUPPORTS_HANDOVER_FROM"

.field public static final whitelist EXTRA_SUPPORTS_HANDOVER_TO:Ljava/lang/String; = "android.telecom.extra.SUPPORTS_HANDOVER_TO"

.field public static final greylist-max-o EXTRA_SUPPORTS_VIDEO_CALLING_FALLBACK:Ljava/lang/String; = "android.telecom.extra.SUPPORTS_VIDEO_CALLING_FALLBACK"

.field public static final whitelist NO_HIGHLIGHT_COLOR:I = 0x0

.field public static final greylist-max-o NO_ICON_TINT:I = 0x0

.field public static final whitelist NO_RESOURCE_ID:I = -0x1

.field public static final whitelist SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final whitelist SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final whitelist SCHEME_VOICEMAIL:Ljava/lang/String; = "voicemail"


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final greylist-max-o mAddress:Landroid/net/Uri;

.field private final greylist-max-o mCapabilities:I

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mGroupId:Ljava/lang/String;

.field private final greylist-max-o mHighlightColor:I

.field private final greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIsEnabled:Z

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mShortDescription:Ljava/lang/CharSequence;

.field private final blacklist mSimultaneousCallingRestriction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSubscriptionAddress:Landroid/net/Uri;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private final greylist-max-o mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1227
    new-instance v0, Landroid/telecom/PhoneAccount$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccount$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_15

    .line 1242
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    goto :goto_17

    .line 1244
    :cond_15
    iput-object v1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1246
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_28

    .line 1247
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    goto :goto_2a

    .line 1249
    :cond_28
    iput-object v1, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 1251
    :goto_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1252
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    goto :goto_3d

    .line 1254
    :cond_3b
    iput-object v1, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 1256
    :goto_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 1259
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 1261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_70

    .line 1262
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_72

    .line 1264
    :cond_70
    iput-object v1, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1266
    :goto_72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x0

    :goto_7b
    iput-boolean v2, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1273
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 1274
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    goto :goto_a9

    .line 1275
    :cond_a7
    iput-object v1, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 1277
    :goto_a9
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccount-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Ljava/util/Set;)V
    .registers 16
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "subscriptionAddress"    # Landroid/net/Uri;
    .param p4, "capabilities"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .param p6, "highlightColor"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "shortDescription"    # Ljava/lang/CharSequence;
    .param p10, "extras"    # Landroid/os/Bundle;
    .param p11, "supportedAudioRoutes"    # I
    .param p12, "isEnabled"    # Z
    .param p13, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "I",
            "Landroid/graphics/drawable/Icon;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    .line 907
    .local p9, "supportedUriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p14, "simultaneousCallingRestriction":Ljava/util/Set;, "Ljava/util/Set<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    iput-object p1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 909
    iput-object p2, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 910
    iput-object p3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 911
    iput p4, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    .line 912
    iput-object p5, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    .line 913
    iput p6, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    .line 914
    iput-object p7, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 915
    iput-object p8, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 916
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 917
    iput-object p10, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    .line 918
    iput p11, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    .line 919
    iput-boolean p12, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 920
    iput-object p13, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    .line 921
    iput-object p14, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 922
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Ljava/util/Set;Landroid/telecom/PhoneAccount-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/os/Bundle;IZLjava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private static blacklist areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 9
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "newExtras"    # Landroid/os/Bundle;

    .line 1410
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_39

    if-nez p1, :cond_7

    goto :goto_39

    .line 1414
    :cond_7
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 1415
    return v1

    .line 1418
    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1419
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_37

    .line 1420
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1421
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1422
    .local v5, "newValue":Ljava/lang/Object;
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 1423
    return v1

    .line 1426
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "newValue":Ljava/lang/Object;
    :cond_37
    goto :goto_1a

    .line 1427
    :cond_38
    return v0

    .line 1411
    :cond_39
    :goto_39
    if-ne p0, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    return v0
.end method

.method private greylist-max-o audioRoutesToString()Ljava/lang/String;
    .registers 3

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1387
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1388
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    :cond_11
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1391
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    :cond_1d
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1394
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_2a
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasAudioRoutes(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1397
    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .registers 3
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 927
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o capabilitiesToString()Ljava/lang/String;
    .registers 3

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1322
    const-string v1, "SelfManaged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    :cond_12
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1325
    const-string v1, "SuppVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    :cond_1f
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1328
    const-string v1, "Video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :cond_2c
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1331
    const-string v1, "Presence "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :cond_39
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1334
    const-string v1, "CallProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    :cond_45
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1337
    const-string v1, "CallSubject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    :cond_52
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1340
    const-string v1, "ConnectionMgr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :cond_5e
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1343
    const-string v1, "EmergOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_6b
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1346
    const-string v1, "MultiUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    :cond_78
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1349
    const-string v1, "PlaceEmerg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :cond_85
    const/16 v1, 0x2000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1352
    const-string v1, "EmerPrefer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_92
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1355
    const-string v1, "EmergVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    :cond_9f
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1358
    const-string v1, "SimSub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :cond_ab
    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1361
    const-string v1, "Rtt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :cond_b8
    const/16 v1, 0x4000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1364
    const-string v1, "AdhocConf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    :cond_c5
    const v1, 0x8000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1367
    const-string v1, "CallComposer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    :cond_d3
    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1370
    const-string v1, "SuppVoice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    :cond_e0
    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1373
    const-string v1, "Voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_ed
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 1376
    const-string v1, "TransactOps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    :cond_fa
    const/high16 v1, 0x80000

    invoke-virtual {p0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 1379
    const-string v1, "Stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    :cond_107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 512
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 513
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_8b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_8b

    .line 514
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telecom/PhoneAccount;

    .line 515
    .local v2, "that":Landroid/telecom/PhoneAccount;
    iget v3, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    iget v4, v2, Landroid/telecom/PhoneAccount;->mCapabilities:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    iget v4, v2, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    iget v4, v2, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    if-ne v3, v4, :cond_89

    iget-boolean v3, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    iget-boolean v4, v2, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-ne v3, v4, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 519
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    .line 520
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    .line 521
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    .line 522
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    .line 523
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    .line 524
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    .line 525
    invoke-static {v3, v4}, Landroid/telecom/PhoneAccount;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    .line 526
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    iget-object v4, v2, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    .line 527
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_8a

    :cond_89
    move v0, v1

    .line 515
    :goto_8a
    return v0

    .line 513
    .end local v2    # "that":Landroid/telecom/PhoneAccount;
    :cond_8b
    :goto_8b
    return v1
.end method

.method public whitelist getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 943
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 955
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCapabilities()I
    .registers 2

    .line 978
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1039
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getGroupId()Ljava/lang/String;
    .registers 2

    .line 1082
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHighlightColor()I
    .registers 2

    .line 1112
    iget v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 1057
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1009
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getShortDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1018
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSimultaneousCallingRestriction()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 1157
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    return-object v0

    .line 1154
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can not be called if there is no simultaneous calling restriction. See #hasSimultaneousCallingRestriction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubscriptionAddress()Landroid/net/Uri;
    .registers 2

    .line 969
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 1048
    iget v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    return v0
.end method

.method public whitelist getSupportedUriSchemes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o hasAudioRoutes(I)Z
    .registers 3
    .param p1, "routes"    # I

    .line 1000
    iget v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist hasCapabilities(I)Z
    .registers 3
    .param p1, "capability"    # I

    .line 989
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist hasSimultaneousCallingRestriction()Z
    .registers 2

    .line 1171
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 533
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    iget v3, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    .line 534
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    iget v8, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    .line 535
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    iget-boolean v10, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 536
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    iget-object v12, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 533
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 1067
    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    return v0
.end method

.method public greylist-max-o isSelfManaged()Z
    .registers 3

    .line 1128
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o setIsEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 1120
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    .line 1121
    return-void
.end method

.method public whitelist supportsUriScheme(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uriScheme"    # Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    if-nez p1, :cond_8

    goto :goto_26

    .line 1098
    :cond_8
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1099
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_24

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1100
    const/4 v0, 0x1

    return v0

    .line 1102
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_24
    goto :goto_e

    .line 1103
    :cond_25
    return v1

    .line 1095
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist toBuilder()Landroid/telecom/PhoneAccount$Builder;
    .registers 2

    .line 935
    new-instance v0, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1282
    iget-boolean v1, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    if-eqz v1, :cond_12

    const/16 v1, 0x58

    goto :goto_14

    :cond_12
    const/16 v1, 0x20

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1283
    const-string v1, "] PhoneAccount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1285
    const-string v1, " Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1286
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->capabilitiesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1287
    const-string v1, " Audio Routes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1288
    invoke-direct {p0}, Landroid/telecom/PhoneAccount;->audioRoutesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1289
    const-string v1, " Schemes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1290
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1291
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1292
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .end local v2    # "scheme":Ljava/lang/String;
    goto :goto_4c

    .line 1294
    :cond_62
    const-string v1, " Extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v1, " GroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v1, " SC Restrictions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->hasSimultaneousCallingRestriction()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_a9

    .line 1300
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    iget-object v1, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 1302
    .local v4, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    .end local v4    # "handle":Landroid/telecom/PhoneAccountHandle;
    goto :goto_92

    .line 1305
    :cond_a5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ae

    .line 1307
    :cond_a9
    const-string v1, "[NONE]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :goto_ae
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1185
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    .line 1186
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 1188
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1191
    :goto_12
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    if-nez v0, :cond_1a

    .line 1192
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 1194
    :cond_1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mAddress:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1197
    :goto_22
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    if-nez v0, :cond_2a

    .line 1198
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1200
    :cond_2a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSubscriptionAddress:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1203
    :goto_32
    iget v0, p0, Landroid/telecom/PhoneAccount;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget v0, p0, Landroid/telecom/PhoneAccount;->mHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mShortDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1207
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1209
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_53

    .line 1210
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    .line 1212
    :cond_53
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1215
    :goto_5b
    iget-boolean v0, p0, Landroid/telecom/PhoneAccount;->mIsEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1216
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1217
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1218
    iget v0, p0, Landroid/telecom/PhoneAccount;->mSupportedAudioRoutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    if-nez v0, :cond_78

    .line 1220
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_88

    .line 1222
    :cond_78
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1223
    iget-object v0, p0, Landroid/telecom/PhoneAccount;->mSimultaneousCallingRestriction:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1225
    :goto_88
    return-void
.end method
