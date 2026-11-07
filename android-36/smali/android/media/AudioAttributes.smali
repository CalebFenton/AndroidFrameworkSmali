.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$AttrInternalContentType;,
        Landroid/media/AudioAttributes$AttributeContentType;,
        Landroid/media/AudioAttributes$AttributeUsage;,
        Landroid/media/AudioAttributes$AttributeSdkUsage;,
        Landroid/media/AudioAttributes$AttributeSystemUsage;,
        Landroid/media/AudioAttributes$Builder;,
        Landroid/media/AudioAttributes$SpatializationBehavior;,
        Landroid/media/AudioAttributes$CapturePolicy;
    }
.end annotation


# static fields
.field public static final whitelist ALLOW_CAPTURE_BY_ALL:I = 0x1

.field public static final whitelist ALLOW_CAPTURE_BY_NONE:I = 0x3

.field public static final whitelist ALLOW_CAPTURE_BY_SYSTEM:I = 0x2

.field private static final greylist-max-o ALL_PARCEL_FLAGS:I = 0x1

.field private static final greylist-max-o ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final greylist-max-o ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field private static final blacklist CONTENT_TYPES:Landroid/util/IntArray;

.field public static final whitelist CONTENT_TYPE_MOVIE:I = 0x3

.field public static final whitelist CONTENT_TYPE_MUSIC:I = 0x2

.field public static final whitelist CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final whitelist CONTENT_TYPE_SPEECH:I = 0x1

.field public static final whitelist CONTENT_TYPE_ULTRASOUND:I = 0x7cd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_ALL:I = 0x1f7ff

.field private static final blacklist FLAG_ALL_API_SET:I = 0x1d1

.field private static final greylist-max-o FLAG_ALL_PUBLIC:I = 0x111

.field public static final whitelist FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final whitelist FLAG_BEACON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_BYPASS_MUTE:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_CALL_REDIRECTION:I = 0x10000

.field public static final blacklist FLAG_CAPTURE_PRIVATE:I = 0x2000

.field public static final blacklist FLAG_CONTENT_SPATIALIZED:I = 0x4000

.field public static final greylist-max-o FLAG_DEEP_BUFFER:I = 0x200

.field public static final whitelist FLAG_HW_AV_SYNC:I = 0x10

.field public static final whitelist FLAG_HW_HOTWORD:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x100

.field public static final blacklist FLAG_MUTE_HAPTIC:I = 0x800

.field public static final blacklist FLAG_NEVER_SPATIALIZE:I = 0x8000

.field public static final blacklist FLAG_NO_MEDIA_PROJECTION:I = 0x400

.field public static final blacklist FLAG_NO_SYSTEM_CAPTURE:I = 0x1000

.field public static final greylist-max-o FLAG_SCO:I = 0x4

.field public static final greylist-max-o FLAG_SECURE:I = 0x2

.field public static final greylist-max-o FLATTEN_TAGS:I = 0x1

.field public static final blacklist SDK_USAGES:Landroid/util/IntArray;

.field public static final whitelist SPATIALIZATION_BEHAVIOR_AUTO:I = 0x0

.field public static final whitelist SPATIALIZATION_BEHAVIOR_NEVER:I = 0x1

.field public static final greylist-max-o SUPPRESSIBLE_ALARM:I = 0x4

.field public static final greylist-max-o SUPPRESSIBLE_CALL:I = 0x2

.field public static final greylist-max-o SUPPRESSIBLE_MEDIA:I = 0x5

.field public static final greylist-max-o SUPPRESSIBLE_NEVER:I = 0x3

.field public static final greylist-max-o SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final greylist-max-o SUPPRESSIBLE_SYSTEM:I = 0x6

.field public static final greylist-max-o SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final blacklist SYSTEM_USAGE_OFFSET:I = 0x3e8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final whitelist USAGE_ALARM:I = 0x4

.field public static final whitelist USAGE_ANNOUNCEMENT:I = 0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final whitelist USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final whitelist USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final whitelist USAGE_ASSISTANT:I = 0x10

.field public static final whitelist USAGE_CALL_ASSISTANT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_EMERGENCY:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_GAME:I = 0xe

.field private static final blacklist USAGE_INVALID:I = -0x1

.field public static final whitelist USAGE_MEDIA:I = 0x1

.field public static final whitelist USAGE_NOTIFICATION:I = 0x5

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final whitelist USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final whitelist USAGE_SAFETY:I = 0x3e9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_SPEAKER_CLEANUP:I = 0x3ec
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USAGE_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_VEHICLE_STATUS:I = 0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final whitelist USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final whitelist USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field private static final blacklist sXsdStringToUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-p mContentType:I

.field private greylist-max-p mFlags:I

.field private greylist-max-r mFormattedTags:Ljava/lang/String;

.field private greylist-max-p mSource:I

.field private greylist-max-o mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V
    .registers 2

    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smusageForStreamType(I)I
    .registers 1

    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 15

    .line 323
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 324
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0xb

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v8, 0xc

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v9, 0xe

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v10, 0x10

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v11, 0x11

    invoke-virtual {v0, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    .line 1595
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 340
    invoke-virtual {v0, v12, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v14, 0xd

    invoke-virtual {v0, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    new-array v0, v10, [I

    fill-array-data v0, :array_1be

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    .line 586
    filled-new-array {v12, v2, v4, v6, v7}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/AudioAttributes;->CONTENT_TYPES:Landroid/util/IntArray;

    .line 1414
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    .line 1595
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v12, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v12, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v12, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1599
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1598
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1601
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1600
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1605
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1604
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1607
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1606
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1608
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1611
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1610
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1614
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1613
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1617
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1616
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1621
    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1620
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    return-void

    nop

    :array_1be
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 574
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 576
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 578
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 597
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 574
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 576
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 578
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 1387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 1388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 1389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2e

    move v0, v2

    .line 1391
    .local v0, "hasFlattenedTags":Z
    :cond_2e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 1392
    if-eqz v0, :cond_4a

    .line 1393
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1394
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 1396
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1397
    .local v1, "tagsArray":[Ljava/lang/String;
    array-length v3, v1

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_50
    if-ltz v3, :cond_5c

    .line 1398
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1397
    add-int/lit8 v3, v3, -0x1

    goto :goto_50

    .line 1400
    .end local v3    # "i":I
    :cond_5c
    const-string v2, ";"

    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1402
    .end local v1    # "tagsArray":[Ljava/lang/String;
    :goto_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_86

    .line 1410
    const-string v1, "AudioAttributes"

    const-string v2, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 1407
    :sswitch_75
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1408
    goto :goto_85

    .line 1404
    :sswitch_81
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 1405
    nop

    .line 1412
    :goto_85
    return-void

    :sswitch_data_86
    .sparse-switch
        -0x7b9 -> :sswitch_81
        0x7bc -> :sswitch_75
    .end sparse-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist capturePolicyToFlags(II)I
    .registers 4
    .param p0, "capturePolicy"    # I
    .param p1, "flags"    # I

    .line 1823
    packed-switch p0, :pswitch_data_18

    .line 1835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown allow playback capture policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1825
    :pswitch_b
    or-int/lit16 p1, p1, 0x1400

    .line 1826
    goto :goto_16

    .line 1828
    :pswitch_e
    or-int/lit16 p1, p1, 0x400

    .line 1829
    and-int/lit16 p1, p1, -0x1001

    .line 1830
    goto :goto_16

    .line 1832
    :pswitch_13
    and-int/lit16 p1, p1, -0x1401

    .line 1833
    nop

    .line 1837
    :goto_16
    return p1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist getSdkUsages()[I
    .registers 1

    .line 372
    sget-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isHiddenUsage(I)Z
    .registers 2
    .param p0, "usage"    # I

    .line 1715
    const/16 v0, 0xf

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isSdkContentType(I)Z
    .registers 2
    .param p0, "contentType"    # I

    .line 1725
    sget-object v0, Landroid/media/AudioAttributes;->CONTENT_TYPES:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSdkUsage(I)Z
    .registers 2
    .param p0, "usage"    # I

    .line 1703
    sget-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemUsage(I)Z
    .registers 2
    .param p0, "usage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1687
    const/16 v0, 0x11

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3eb

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x3ec

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static greylist toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 2
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 1755
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .registers 8
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1760
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    .line 1761
    if-eqz p0, :cond_b

    .line 1762
    goto :goto_c

    :cond_b
    const/4 v1, 0x7

    .line 1761
    :goto_c
    return v1

    .line 1764
    :cond_d
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_17

    .line 1765
    return v3

    .line 1767
    :cond_17
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    const/16 v4, 0x8

    and-int/2addr v0, v4

    const/4 v5, 0x3

    if-ne v0, v4, :cond_27

    .line 1768
    if-eqz p0, :cond_24

    .line 1769
    goto :goto_26

    :cond_24
    const/16 v5, 0x9

    .line 1768
    :goto_26
    return v5

    .line 1772
    :cond_27
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 1773
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 1776
    :cond_36
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    sparse-switch v0, :sswitch_data_74

    .line 1810
    if-nez p0, :cond_51

    .line 1814
    return v5

    .line 1783
    :sswitch_40
    return v1

    .line 1801
    :sswitch_41
    const/16 v0, 0xa

    return v0

    .line 1793
    :sswitch_44
    const/4 v0, 0x2

    return v0

    .line 1799
    :sswitch_46
    const/4 v0, 0x5

    return v0

    .line 1791
    :sswitch_48
    return v2

    .line 1788
    :sswitch_49
    if-eqz p0, :cond_4c

    .line 1789
    goto :goto_4d

    :cond_4c
    move v3, v4

    .line 1788
    :goto_4d
    return v3

    .line 1786
    :sswitch_4e
    return v3

    .line 1781
    :sswitch_4f
    return v5

    .line 1808
    :sswitch_50
    return v5

    .line 1811
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_50
        0x1 -> :sswitch_4f
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_49
        0x4 -> :sswitch_48
        0x5 -> :sswitch_46
        0x6 -> :sswitch_44
        0x7 -> :sswitch_46
        0x8 -> :sswitch_46
        0x9 -> :sswitch_46
        0xa -> :sswitch_46
        0xb -> :sswitch_41
        0xc -> :sswitch_4f
        0xd -> :sswitch_40
        0xe -> :sswitch_4f
        0x10 -> :sswitch_4f
        0x11 -> :sswitch_4e
        0x3e8 -> :sswitch_50
        0x3e9 -> :sswitch_50
        0x3ea -> :sswitch_50
        0x3eb -> :sswitch_50
        0x3ec -> :sswitch_50
    .end sparse-switch
.end method

.method private static greylist-max-o usageForStreamType(I)I
    .registers 2
    .param p0, "streamType"    # I

    .line 1651
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_1c

    .line 1675
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 1672
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 1670
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 1668
    :pswitch_c
    const/4 v0, 0x3

    return v0

    .line 1666
    :pswitch_e
    return v0

    .line 1664
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1662
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 1660
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 1658
    :pswitch_15
    const/4 v0, 0x6

    return v0

    .line 1656
    :pswitch_17
    const/16 v0, 0xd

    return v0

    .line 1653
    :pswitch_1a
    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_17
        :pswitch_c
        :pswitch_4
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o usageToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 1495
    sparse-switch p0, :sswitch_data_5a

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1539
    :sswitch_17
    const-string v0, "USAGE_SPEAKER_CLEANUP"

    return-object v0

    .line 1537
    :sswitch_1a
    const-string v0, "USAGE_ANNOUNCEMENT"

    return-object v0

    .line 1535
    :sswitch_1d
    const-string v0, "USAGE_VEHICLE_STATUS"

    return-object v0

    .line 1533
    :sswitch_20
    const-string v0, "USAGE_SAFETY"

    return-object v0

    .line 1531
    :sswitch_23
    const-string v0, "USAGE_EMERGENCY"

    return-object v0

    .line 1529
    :sswitch_26
    const-string v0, "USAGE_CALL_ASSISTANT"

    return-object v0

    .line 1527
    :sswitch_29
    const-string v0, "USAGE_ASSISTANT"

    return-object v0

    .line 1525
    :sswitch_2c
    const-string v0, "USAGE_GAME"

    return-object v0

    .line 1523
    :sswitch_2f
    const-string v0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object v0

    .line 1521
    :sswitch_32
    const-string v0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object v0

    .line 1519
    :sswitch_35
    const-string v0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object v0

    .line 1517
    :sswitch_38
    const-string v0, "USAGE_NOTIFICATION_EVENT"

    return-object v0

    .line 1515
    :sswitch_3b
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object v0

    .line 1513
    :sswitch_3e
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object v0

    .line 1511
    :sswitch_41
    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object v0

    .line 1509
    :sswitch_44
    const-string v0, "USAGE_NOTIFICATION_RINGTONE"

    return-object v0

    .line 1507
    :sswitch_47
    const-string v0, "USAGE_NOTIFICATION"

    return-object v0

    .line 1505
    :sswitch_4a
    const-string v0, "USAGE_ALARM"

    return-object v0

    .line 1503
    :sswitch_4d
    const-string v0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object v0

    .line 1501
    :sswitch_50
    const-string v0, "USAGE_VOICE_COMMUNICATION"

    return-object v0

    .line 1499
    :sswitch_53
    const-string v0, "USAGE_MEDIA"

    return-object v0

    .line 1497
    :sswitch_56
    const-string v0, "USAGE_UNKNOWN"

    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_56
        0x1 -> :sswitch_53
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_47
        0x6 -> :sswitch_44
        0x7 -> :sswitch_41
        0x8 -> :sswitch_3e
        0x9 -> :sswitch_3b
        0xa -> :sswitch_38
        0xb -> :sswitch_35
        0xc -> :sswitch_32
        0xd -> :sswitch_2f
        0xe -> :sswitch_2c
        0x10 -> :sswitch_29
        0x11 -> :sswitch_26
        0x3e8 -> :sswitch_23
        0x3e9 -> :sswitch_20
        0x3ea -> :sswitch_1d
        0x3eb -> :sswitch_1a
        0x3ec -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist usageToXsdString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 1549
    sparse-switch p0, :sswitch_data_a0

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1585
    :sswitch_22
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ANNOUNCEMENT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1583
    :sswitch_29
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VEHICLE_STATUS:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1581
    :sswitch_30
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_SAFETY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1579
    :sswitch_37
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_EMERGENCY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1577
    :sswitch_3e
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_CALL_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1575
    :sswitch_45
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANT:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1573
    :sswitch_4c
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VIRTUAL_SOURCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1571
    :sswitch_53
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_GAME:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1569
    :sswitch_5a
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1567
    :sswitch_61
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1565
    :sswitch_68
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ASSISTANCE_ACCESSIBILITY:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1563
    :sswitch_6f
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION_TELEPHONY_RINGTONE:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1561
    :sswitch_76
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_NOTIFICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1559
    :sswitch_7d
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_ALARM:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1557
    :sswitch_84
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION_SIGNALLING:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1555
    :sswitch_8b
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1553
    :sswitch_92
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_MEDIA:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1551
    :sswitch_99
    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioUsage;->AUDIO_USAGE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_99
        0x1 -> :sswitch_92
        0x2 -> :sswitch_8b
        0x3 -> :sswitch_84
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_76
        0x6 -> :sswitch_6f
        0xb -> :sswitch_68
        0xc -> :sswitch_61
        0xd -> :sswitch_5a
        0xe -> :sswitch_53
        0xf -> :sswitch_4c
        0x10 -> :sswitch_45
        0x11 -> :sswitch_3e
        0x3e8 -> :sswitch_37
        0x3e9 -> :sswitch_30
        0x3ea -> :sswitch_29
        0x3eb -> :sswitch_22
    .end sparse-switch
.end method

.method public static blacklist xsdStringToUsage(Ljava/lang/String;)I
    .registers 3
    .param p0, "xsdUsage"    # Ljava/lang/String;

    .line 1628
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1629
    sget-object v0, Landroid/media/AudioAttributes;->sXsdStringToUsage:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1631
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage name not found in AudioUsage enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist areHapticChannelsMuted()Z
    .registers 2

    .line 688
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o contentTypeToString()Ljava/lang/String;
    .registers 4

    .line 1638
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    sparse-switch v0, :sswitch_data_50

    .line 1646
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1645
    :sswitch_20
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_ULTRASOUND"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1644
    :sswitch_28
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1643
    :sswitch_30
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MOVIE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1642
    :sswitch_38
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MUSIC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1641
    :sswitch_40
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SPEECH"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1640
    :sswitch_48
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_40
        0x2 -> :sswitch_38
        0x3 -> :sswitch_30
        0x4 -> :sswitch_28
        0x7cd -> :sswitch_20
    .end sparse-switch
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1344
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1463
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1465
    .local v0, "token":J
    const-wide v2, 0x10e00000001L

    iget v4, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1466
    const-wide v2, 0x10e00000002L

    iget v4, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1467
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1469
    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_43

    aget-object v5, v2, v4

    .line 1470
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1471
    const-string v6, ""

    if-eq v5, v6, :cond_40

    .line 1472
    const-wide v6, 0x20900000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1469
    .end local v5    # "t":Ljava/lang/String;
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1477
    :cond_43
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1478
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1431
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1432
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 1434
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioAttributes;

    .line 1436
    .local v2, "that":Landroid/media/AudioAttributes;
    iget v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v4, v2, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v4, v2, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v4, v2, Landroid/media/AudioAttributes;->mSource:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v4, v2, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1441
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 1436
    :goto_39
    return v0

    .line 1432
    .end local v2    # "that":Landroid/media/AudioAttributes;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getAllFlags()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 657
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x1f7ff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getAllowedCapturePolicy()I
    .registers 3

    .line 741
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 742
    const/4 v0, 0x3

    return v0

    .line 744
    :cond_9
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    .line 745
    const/4 v0, 0x2

    return v0

    .line 747
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBundle()Landroid/os/Bundle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 667
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 668
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 670
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getCapturePreset()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 637
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public whitelist getContentType()I
    .registers 2

    .line 604
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 646
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public whitelist getSpatializationBehavior()I
    .registers 3

    .line 730
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 731
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 730
    :goto_b
    return v0
.end method

.method public whitelist getSystemUsage()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 626
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public greylist-max-o getTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 612
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 613
    const/4 v0, 0x0

    return v0

    .line 615
    :cond_a
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getVolumeControlStream()I
    .registers 2

    .line 1743
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 1446
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isContentSpatialized()Z
    .registers 2

    .line 698
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .registers 3

    .line 756
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1451
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1452
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1453
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1454
    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v3}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_42
    const-string v2, ""

    :goto_44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1456
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1458
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_75

    const-string v2, "null"

    goto :goto_7b

    :cond_75
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1451
    return-object v0
.end method

.method public greylist-max-o usageToString()Ljava/lang/String;
    .registers 2

    .line 1482
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1365
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2e

    .line 1371
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1372
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1373
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .end local v0    # "tagsArray":[Ljava/lang/String;
    goto :goto_39

    .line 1374
    :cond_2e
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 1375
    iget-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3a

    .line 1374
    :cond_39
    :goto_39
    nop

    .line 1377
    :goto_3a
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_44

    .line 1378
    const/16 v0, -0x7b9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 1380
    :cond_44
    const/16 v0, 0x7bc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1383
    :goto_4e
    return-void
.end method
