.class public Lcom/android/internal/telephony/metrics/RcsStats;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;,
        Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;,
        Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;,
        Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;,
        Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;,
        Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;
    }
.end annotation


# static fields
.field private static final blacklist FEATURE_TAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MESSAGE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MMTEL_SERVICE_ID_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:I = -0x1

.field private static final blacklist NOTIFY_REASONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RANDOM:Ljava/util/Random;

.field private static final blacklist RCS_SERVICE_ID_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SERVICE_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATE_DENIED:I = 0x2

.field public static final blacklist STATE_DEREGISTERED:I = 0x1

.field public static final blacklist STATE_REGISTERED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RcsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

.field private static final blacklist sSubscribeTaskIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private blacklist mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

.field protected final blacklist mDedicatedBearerListenerEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsRegistrationFeatureTagStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mImsRegistrationServiceDescStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastFeatureTagStatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastSipDelegateStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRcsAcsProvisioningStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRcsProvisioningCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

.field private blacklist mSipMessageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipTransportSession:Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

.field private blacklist mSipTransportSessionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$7smFsGMIkYUx_I-q8CZRDrCP8pA(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z
    .registers 2

    .line 1045
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Q-OBZcH-VcoCVfJBbDDRhdMTHyY(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z
    .registers 2

    .line 1049
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$QdgC11R5W3GqDMKLwe7KHhxJYLs(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    .line 1075
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$R0Xovchc0xWtTeLeibuOW0vZETQ(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    .line 1082
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_Rw9SxeiCr8Cuk3V1_x-UMSL0MI(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    .line 1065
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAtomsStorage(Lcom/android/internal/telephony/metrics/RcsStats;)Lcom/android/internal/telephony/metrics/PersistAtomsStorage;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFeatureTagStatMap(Lcom/android/internal/telephony/metrics/RcsStats;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRcsProvisioningCallback(Lcom/android/internal/telephony/metrics/RcsStats;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->removeRcsProvisioningCallback(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMMTEL_SERVICE_ID_SET()Ljava/util/HashSet;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->MMTEL_SERVICE_ID_SET:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetRANDOM()Ljava/util/Random;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RANDOM:Ljava/util/Random;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetRCS_SERVICE_ID_SET()Ljava/util/HashSet;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RCS_SERVICE_ID_SET:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->sSubscribeTaskIds:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcopyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 26

    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RANDOM:Ljava/util/Random;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->FEATURE_TAGS:Ljava/util/Map;

    .line 133
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\";+g.gsma.rcs.cpm.pager-large"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 133
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 135
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 137
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 139
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    .line 143
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 141
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x7

    .line 147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 144
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "+g.gsma.callcomposer"

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x8

    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 148
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x9

    .line 152
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 151
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xa

    .line 154
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 153
    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xb

    .line 156
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 155
    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xc

    .line 158
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 157
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xd

    .line 160
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 159
    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xe

    .line 164
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 161
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0xf

    move-object/from16 v17, v15

    .line 167
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 166
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "+g.gsma.rcs.botversion=\"#=1\""

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x10

    move-object/from16 v18, v15

    .line 170
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 168
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v2, "+g.gsma.rcs.isbot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x11

    .line 172
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 171
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x12

    .line 174
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 173
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x13

    .line 176
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 175
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0x14

    .line 178
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 177
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->SERVICE_IDS:Ljava/util/Map;

    .line 190
    const-string v2, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v15, "org.openmobilealliance:IM-session"

    move-object/from16 v16, v2

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "org.openmobilealliance:ChatSession"

    move-object/from16 v19, v15

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v15, "org.openmobilealliance:File-Transfer-HTTP"

    move-object/from16 v20, v2

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.ftsms"

    move-object/from16 v21, v15

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 198
    invoke-interface {v0, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v15, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopush"

    move-object/from16 v22, v2

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geosms"

    move-object/from16 v23, v15

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 203
    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v15, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callcomposer"

    move-object/from16 v24, v2

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v2, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedmap"

    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedsketch"

    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v2, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v15

    move-object/from16 v15, v17

    .line 220
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "org.gsma.rcs.isbot"

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v18

    .line 224
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->MESSAGE_TYPE:Ljava/util/Map;

    .line 236
    const-string v2, "INVITE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "ACK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "OPTIONS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v2, "BYE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "CANCEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v2, "REGISTER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "PRACK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "SUBSCRIBE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "NOTIFY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v2, "PUBLISH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "INFO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "REFER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v2, "MESSAGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v17

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v2, "UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->NOTIFY_REASONS:Ljava/util/Map;

    .line 276
    const-string v1, "deactivated"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "probation"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "rejected"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "timeout"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v1, "giveup"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "noresource"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RCS_SERVICE_ID_SET:Ljava/util/HashSet;

    move-object/from16 v1, v19

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    .line 294
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedmap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedsketch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v1, " org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v1, "org.gsma.rcs.isbot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->MMTEL_SERVICE_ID_SET:Ljava/util/HashSet;

    move-object/from16 v1, v16

    .line 309
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v25

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->sSubscribeTaskIds:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 797
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    return-void
.end method

.method private blacklist concludeSipDelegateStat()V
    .registers 8

    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_32

    .line 1532
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v0

    .line 1533
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1534
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_19
    :goto_19
    if-ge v4, v3, :cond_32

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    .line 1535
    invoke-virtual {v5}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1536
    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->conclude(J)V

    .line 1537
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_32
    :goto_32
    return-void
.end method

.method private blacklist copyImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .registers 4

    .line 1373
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;-><init>()V

    .line 1374
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    .line 1375
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    .line 1376
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    .line 1377
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    .line 1378
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    return-object p0
.end method

.method private blacklist copyImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 3

    .line 1398
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    .line 1399
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    .line 1400
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    .line 1401
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    .line 1402
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    .line 1403
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    return-object p0
.end method

.method private static blacklist copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 4

    .line 402
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    .line 404
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    .line 405
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    .line 406
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    .line 407
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    .line 408
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    return-object v0
.end method

.method private blacklist copyRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 4

    .line 1384
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;-><init>()V

    .line 1385
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    .line 1386
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    .line 1387
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    .line 1388
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    .line 1389
    iget-boolean v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    .line 1390
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 1391
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    return-object p0
.end method

.method private blacklist deleteImsRegistrationServiceDescStats(I)V
    .registers 7

    .line 1418
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1419
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1421
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v4, p1, :cond_e

    .line 1422
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_22
    move-exception p0

    goto :goto_3b

    .line 1425
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_29
    if-ge v2, p1, :cond_39

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1426
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1428
    :cond_39
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_22

    throw p0
.end method

.method private blacklist flushImsRegistrationFeatureTagStatsInvalid()V
    .registers 9

    .line 1489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1496
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v3

    .line 1497
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v3

    .line 1498
    iget v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-eq v4, v3, :cond_b

    .line 1499
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1503
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_4c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1504
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 1505
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V

    .line 1506
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1508
    :cond_4c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private blacklist flushRcsAcsProvisioningStatsInvalid()V
    .registers 9

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1473
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v3

    .line 1474
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v3

    .line 1475
    iget v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-eq v4, v3, :cond_b

    .line 1476
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1480
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_4c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1481
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 1482
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V

    .line 1483
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1485
    :cond_4c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/metrics/RcsStats;
    .registers 3

    .line 802
    const-class v0, Lcom/android/internal/telephony/metrics/RcsStats;

    monitor-enter v0

    .line 803
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    if-nez v1, :cond_18

    .line 804
    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string v2, "RcsStats created."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/RcsStats;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    goto :goto_18

    :catchall_16
    move-exception v1

    goto :goto_1c

    .line 807
    :cond_18
    :goto_18
    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    monitor-exit v0

    return-object v1

    .line 808
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_16

    throw v1
.end method

.method private blacklist getLastFeatureTags(I)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;
    .registers 4

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1545
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    return-object p0

    .line 1547
    :cond_19
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;I)V

    .line 1548
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private blacklist getLastSipDelegateStat(ILjava/util/Set;)Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    .line 1514
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->compare(ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_27

    .line 1521
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;ILjava/util/Set;)V

    .line 1522
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_27
    return-object v1
.end method

.method private blacklist getRcsAcsProvisioningStats(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 5

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 1453
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    .line 1455
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    if-nez v1, :cond_1d

    goto :goto_e

    .line 1459
    :cond_1d
    iget v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-ne v2, v0, :cond_e

    iget v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    if-ne v2, p1, :cond_e

    return-object v1

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist handleImsRegistrationServiceDescStats()V
    .registers 9

    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1433
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1435
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v4

    .line 1436
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v4

    .line 1437
    iget v5, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-eq v5, v4, :cond_e

    .line 1438
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    iget-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1441
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V

    goto :goto_e

    :catchall_42
    move-exception p0

    goto :goto_5b

    .line 1445
    :cond_44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_49
    if-ge v3, v2, :cond_59

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1446
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_49

    .line 1448
    :cond_59
    monitor-exit v0

    return-void

    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_42

    throw p0
.end method

.method private declared-synchronized blacklist removeRcsProvisioningCallback(I)V
    .registers 3

    monitor-enter p0

    .line 1368
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1369
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method private blacklist setImsRegistrationServiceDescStatsTime(I)V
    .registers 7

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1409
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1410
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v3, p1, :cond_9

    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_9

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 1414
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_20

    throw p0
.end method


# virtual methods
.method public declared-synchronized blacklist concludeSipTransportFeatureTagsStat()V
    .registers 5

    monitor-enter p0

    .line 1010
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_33

    if-eqz v0, :cond_b

    .line 1011
    monitor-exit p0

    return-void

    .line 1014
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v0

    .line 1015
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1016
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1017
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    if-eqz v3, :cond_21

    .line 1019
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->conclude(J)V
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_33

    goto :goto_21

    :catchall_33
    move-exception v0

    goto :goto_37

    .line 1022
    :cond_35
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_33

    throw v0
.end method

.method public declared-synchronized blacklist confirmedSipTransportSession(Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 1064
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 1065
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    if-eqz p1, :cond_23

    .line 1067
    invoke-static {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fputmSipResponse(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_25

    .line 1069
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    throw p1
.end method

.method public blacklist convertMessageTypeToValue(Ljava/lang/String;)I
    .registers 3

    .line 1602
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->MESSAGE_TYPE:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1603
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1602
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist convertPresenceNotifyReason(Ljava/lang/String;)I
    .registers 3

    .line 1609
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->NOTIFY_REASONS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1610
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1609
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist convertServiceIdToValue(Ljava/lang/String;)I
    .registers 3

    .line 1595
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->SERVICE_IDS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1596
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1595
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist convertTagNameToValue(Ljava/lang/String;)I
    .registers 3

    .line 1588
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->FEATURE_TAGS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1588
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist createSipDelegateStats(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_14

    .line 964
    :try_start_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 965
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getLastSipDelegateStat(ILjava/util/Set;)Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    move-result-object p2

    .line 966
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->createSipDelegateStat(I)V

    goto :goto_14

    :catchall_11
    move-exception p1

    .line 964
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1

    .line 968
    :cond_14
    :goto_14
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist earlySipTransportSession(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 1056
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSession:Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    .line 1058
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1059
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method protected blacklist getCarrierId(I)I
    .registers 2

    .line 1564
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 1565
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1566
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized blacklist getRcsProvisioningCallback(IZ)Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;
    .registers 5

    monitor-enter p0

    .line 1344
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    if-eqz v0, :cond_11

    .line 1346
    monitor-exit p0

    return-object v0

    .line 1350
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Lcom/android/internal/telephony/metrics/RcsStats;IZ)V

    .line 1352
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_21

    .line 1353
    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method protected blacklist getSlotId(I)I
    .registers 2

    .line 1559
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    return p0
.end method

.method protected blacklist getSubId(I)I
    .registers 2

    .line 1582
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    return p0
.end method

.method protected blacklist getWallTimeMillis()J
    .registers 3

    .line 1572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist invalidatedMessageResult(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 12

    monitor-enter p0

    .line 1034
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    if-nez v0, :cond_10

    .line 1035
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .line 1037
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    const/4 v3, 0x0

    move v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$maddSipMessageStat(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;ILjava/lang/String;III)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_d

    .line 1039
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_d

    throw p1
.end method

.method protected blacklist isValidCarrierId(I)Z
    .registers 2

    .line 0
    const/4 p0, -0x1

    if-le p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1577
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onFlushIncompleteImsRegistrationFeatureTagStats()V
    .registers 9

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    monitor-enter v0

    .line 872
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v1

    .line 873
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 874
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->copyImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v5

    .line 877
    iget-wide v6, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    sub-long v6, v1, v6

    iput-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 878
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V

    .line 879
    iput-wide v1, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    goto :goto_d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 881
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public blacklist onFlushIncompleteImsRegistrationServiceDescStats()V
    .registers 9

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1221
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1223
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/RcsStats;->copyImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v3

    .line 1224
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    .line 1227
    iget-wide v6, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    sub-long v6, v4, v6

    iput-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1228
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V

    .line 1229
    iput-wide v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_9

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 1231
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public blacklist onFlushIncompleteRcsAcsProvisioningStats()V
    .registers 9

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    monitor-enter v0

    .line 947
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v1

    .line 948
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 951
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->copyRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v5

    .line 954
    iget-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    sub-long v6, v1, v6

    iput-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 955
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V

    .line 957
    iput-wide v1, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 959
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public declared-synchronized blacklist onGbaFailureEvent(II)V
    .registers 5

    monitor-enter p0

    .line 1326
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 1327
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-nez v1, :cond_d

    .line 1328
    monitor-exit p0

    return-void

    .line 1331
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    .line 1332
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    const/4 p1, 0x0

    .line 1334
    iput-boolean p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    .line 1335
    iput p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    const/4 p1, 0x1

    .line 1336
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    .line 1337
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1338
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized blacklist onGbaSuccessEvent(I)V
    .registers 4

    monitor-enter p0

    .line 1310
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 1311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-nez v1, :cond_d

    .line 1312
    monitor-exit p0

    return-void

    .line 1315
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    .line 1316
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    const/4 p1, 0x1

    .line 1318
    iput-boolean p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    const/4 v0, -0x1

    .line 1319
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    .line 1320
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    .line 1321
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1322
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerEvent(IIIIZZZ)V
    .registers 10

    monitor-enter p0

    .line 1164
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 1166
    monitor-exit p0

    return-void

    .line 1169
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;-><init>()V

    .line 1170
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    .line 1171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    .line 1172
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    .line 1173
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    .line 1174
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    .line 1175
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    .line 1176
    iput-boolean p6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    .line 1177
    iput-boolean p7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    const/4 p1, 0x1

    .line 1178
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    .line 1179
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsDedicatedBearerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)V
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_31

    .line 1180
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerListenerAdded(IIII)V
    .registers 8

    monitor-enter p0

    .line 1089
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v0

    .line 1090
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_41

    .line 1093
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_41

    .line 1097
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3f

    if-eqz v0, :cond_21

    .line 1098
    monitor-exit p0

    return-void

    .line 1101
    :cond_21
    :try_start_21
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    .line 1102
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    .line 1103
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    .line 1104
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 1105
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    const/4 p2, 0x0

    .line 1106
    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    const/4 p2, 0x1

    .line 1107
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    .line 1109
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3f

    .line 1110
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    goto :goto_43

    .line 1094
    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_3f

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerListenerRemoved(I)V
    .registers 4

    monitor-enter p0

    .line 1150
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    .line 1153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1155
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsDedicatedBearerListenerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)V

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_2c

    .line 1158
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerListenerUpdateSession(IIIIZ)V
    .registers 9

    monitor-enter p0

    .line 1117
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v0

    .line 1118
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    .line 1121
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5a

    .line 1125
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1126
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    .line 1127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1129
    iput p3, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 1130
    iput p4, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    .line 1131
    iput-boolean p5, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    .line 1133
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :catchall_3b
    move-exception p1

    goto :goto_5c

    .line 1135
    :cond_3d
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    .line 1136
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    .line 1137
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    .line 1138
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 1139
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    .line 1140
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    const/4 p2, 0x1

    .line 1141
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    .line 1143
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_3b

    .line 1145
    :goto_58
    monitor-exit p0

    return-void

    .line 1122
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    :goto_5c
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_3b

    throw p1
.end method

.method public blacklist onImsRegistrationFeatureTagStats(ILjava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    monitor-enter v0

    .line 824
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 825
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 826
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->flushImsRegistrationFeatureTagStatsInvalid()V

    .line 827
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_55

    .line 831
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteImsRegistrationFeatureTagStats(I)V

    if-nez p2, :cond_22

    .line 834
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string p1, "featureTagNames is null or empty"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    monitor-exit v0

    return-void

    .line 838
    :cond_22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 839
    new-instance v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;-><init>()V

    .line 840
    iput v1, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    .line 842
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/metrics/RcsStats;->convertTagNameToValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    .line 843
    iput p3, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    .line 844
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 845
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 847
    :cond_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_12

    throw p0
.end method

.method public blacklist onImsRegistrationServiceDescStats(ILjava/util/List;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1189
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 1190
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1191
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->handleImsRegistrationServiceDescStats()V

    .line 1192
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_5f

    .line 1195
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteImsRegistrationServiceDescStats(I)V

    if-nez p2, :cond_22

    .line 1198
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string p1, "serviceIds is null or empty"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    monitor-exit v0

    return-void

    .line 1203
    :cond_22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1204
    new-instance v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    .line 1207
    iput v1, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    .line 1209
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->convertServiceIdToValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    add-int/lit8 v3, v2, 0x1

    .line 1211
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    .line 1212
    iput p4, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    .line 1213
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_27

    .line 1215
    :cond_5d
    monitor-exit v0

    return-void

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_12

    throw p0
.end method

.method public declared-synchronized blacklist onPresenceNotifyEvent(ILjava/lang/String;ZZZZ)V
    .registers 10

    monitor-enter p0

    .line 1271
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;-><init>()V

    .line 1273
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 1274
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1275
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->handleImsRegistrationServiceDescStats()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 1276
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_37

    .line 1279
    :cond_17
    :try_start_17
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    .line 1281
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->convertPresenceNotifyReason(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    .line 1282
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    const/4 p1, 0x1

    .line 1283
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    .line 1284
    iput p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    .line 1285
    iput p6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    .line 1286
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    .line 1287
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addPresenceNotifyEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)V
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_15

    .line 1288
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_15

    throw p1
.end method

.method public blacklist onRcsAcsProvisioningStats(IIIZ)V
    .registers 8

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    monitor-enter v0

    .line 905
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 906
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 907
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->flushRcsAcsProvisioningStatsInvalid()V

    .line 908
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_3a

    .line 912
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteRcsAcsProvisioningStats(I)V

    .line 915
    new-instance v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;-><init>()V

    .line 916
    iput v1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    .line 917
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    .line 918
    iput p2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    .line 919
    iput p3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    .line 920
    iput-boolean p4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    const/4 p1, 0x1

    .line 921
    iput p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 925
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_12

    throw p0
.end method

.method public declared-synchronized blacklist onRcsClientProvisioningStats(II)V
    .registers 5

    monitor-enter p0

    .line 886
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 888
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    if-nez v1, :cond_d

    .line 889
    monitor-exit p0

    return-void

    .line 892
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;-><init>()V

    .line 893
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    .line 895
    iput p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    const/4 p1, 0x1

    .line 896
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    .line 897
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsClientProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_26

    .line 898
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public declared-synchronized blacklist onSipDelegateStats(ILjava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_17

    .line 973
    :try_start_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 974
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getLastSipDelegateStat(ILjava/util/Set;)Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    move-result-object p1

    .line 975
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->setSipDelegateDestroyReason(I)V

    .line 976
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->concludeSipDelegateStat()V

    goto :goto_17

    :catchall_14
    move-exception p1

    .line 973
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1

    .line 978
    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist onSipMessageRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 1027
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    .line 1028
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1029
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist onSipMessageResponse(ILjava/lang/String;II)V
    .registers 12

    monitor-enter p0

    .line 1044
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 1045
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    if-eqz v0, :cond_3b

    .line 1047
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmMethod(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmDirection(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)I

    move-result v5

    move v2, p1

    move v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$maddSipMessageStat(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;ILjava/lang/String;III)V

    .line 1049
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda4;

    invoke-direct {p3, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3b

    :catchall_38
    move-exception v0

    move-object p1, v0

    goto :goto_3d

    .line 1051
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_38

    throw p1
.end method

.method public declared-synchronized blacklist onSipTransportFeatureTagStats(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 986
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    .line 987
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getLastFeatureTags(I)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    move-result-object v0

    if-eqz p4, :cond_2b

    .line 988
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 989
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 990
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateLastFeatureTagState(Ljava/lang/String;IIJ)V

    goto :goto_15

    :catchall_28
    move-exception v0

    move-object p1, v0

    goto :goto_77

    :cond_2b
    if-eqz p2, :cond_50

    .line 994
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_50

    .line 995
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/FeatureTagState;

    .line 996
    invoke-virtual {p2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {p2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v3

    const/4 v2, 0x2

    .line 996
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateLastFeatureTagState(Ljava/lang/String;IIJ)V

    goto :goto_37

    :cond_50
    if-eqz p3, :cond_75

    .line 1000
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_75

    .line 1001
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/FeatureTagState;

    .line 1003
    invoke-virtual {p2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v3

    const/4 v2, 0x1

    .line 1002
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateLastFeatureTagState(Ljava/lang/String;IIJ)V
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_28

    goto :goto_5c

    .line 1006
    :cond_75
    monitor-exit p0

    return-void

    :goto_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_28

    throw p1
.end method

.method public declared-synchronized blacklist onSipTransportSessionClosed(ILjava/lang/String;IZ)V
    .registers 11

    monitor-enter p0

    .line 1074
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    if-eqz v0, :cond_41

    if-eqz p3, :cond_22

    .line 1078
    invoke-static {v0, p3}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fputmSipResponse(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;I)V

    :cond_22
    move-object v1, v0

    goto :goto_27

    :catchall_24
    move-exception v0

    move-object p1, v0

    goto :goto_43

    .line 1080
    :goto_27
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSession:Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmMethod(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmDirection(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)I

    move-result v3

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$maddSipTransportSessionStat(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;ILjava/lang/String;IIZ)V

    .line 1082
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_24

    .line 1084
    :cond_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_24

    throw p1
.end method

.method public blacklist onStoreCompleteImsRegistrationFeatureTagStats(I)V
    .registers 10

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    monitor-enter v0

    .line 853
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result p1

    .line 854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v2

    .line 856
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 857
    iget v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-ne v6, p1, :cond_16

    .line 858
    iget-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    sub-long v6, v2, v6

    iput-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 859
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V

    .line 860
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_35
    move-exception p0

    goto :goto_4e

    .line 863
    :cond_37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, p1, :cond_4c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 864
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 866
    :cond_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_35

    throw p0
.end method

.method public blacklist onStoreCompleteImsRegistrationServiceDescStats(I)V
    .registers 10

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1293
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result p1

    .line 1294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1296
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v4, p1, :cond_12

    .line 1297
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1298
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V

    .line 1299
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_34
    move-exception p0

    goto :goto_4d

    .line 1302
    :cond_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, p1, :cond_4b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1303
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1305
    :cond_4b
    monitor-exit v0

    return-void

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_34

    throw p0
.end method

.method public blacklist onStoreCompleteRcsAcsProvisioningStats(I)V
    .registers 7

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    monitor-enter v0

    .line 933
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getRcsAcsProvisioningStats(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 936
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    sub-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 937
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V

    .line 939
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 941
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public declared-synchronized blacklist onUceEventStats(IIZII)V
    .registers 9

    monitor-enter p0

    .line 1237
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;-><init>()V

    .line 1239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 1240
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1241
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->handleImsRegistrationServiceDescStats()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 1242
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_40

    .line 1244
    :cond_17
    :try_start_17
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    .line 1245
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    .line 1246
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    .line 1247
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    .line 1248
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    .line 1249
    iput p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    const/4 p1, 0x1

    .line 1250
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    .line 1251
    iget-object p4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addUceEventStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V

    if-ne p2, p1, :cond_3e

    if-eqz p3, :cond_39

    .line 1261
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->setImsRegistrationServiceDescStatsTime(I)V

    goto :goto_3e

    .line 1263
    :cond_39
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->deleteImsRegistrationServiceDescStats(I)V
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_15

    .line 1266
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist printAllMetrics(Ljava/io/PrintWriter;)V
    .registers 11

    monitor-enter p0

    .line 1619
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    if-eqz v0, :cond_513

    iget-object v0, v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    if-nez v0, :cond_b

    goto/16 :goto_513

    .line 1623
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1624
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object p1, p1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 1626
    const-string v1, "RcsStats Metrics Proto: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    const-string v1, "------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    const-string v1, "ImsRegistrationFeatureTagStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1630
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    if-ge v4, v2, :cond_75

    aget-object v5, v1, v4

    .line 1631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Feature Tag Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Registration Tech = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Registered Duration (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :catchall_72
    move-exception p1

    goto/16 :goto_515

    .line 1637
    :cond_75
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1639
    const-string v1, "RcsClientProvisioningStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1641
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v2, v1

    move v4, v3

    :goto_84
    if-ge v4, v2, :cond_bf

    aget-object v5, v1, v4

    .line 1642
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 1647
    :cond_bf
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1649
    const-string v1, "RcsAcsProvisioningStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1651
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v2, v1

    move v4, v3

    :goto_ce
    if-ge v4, v2, :cond_127

    aget-object v5, v1, v4

    .line 1652
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Response Code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Single Registration Enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", State Timer (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 1660
    :cond_127
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1662
    const-string v1, "SipDelegateStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1664
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    array-length v2, v1

    move v4, v3

    :goto_136
    if-ge v4, v2, :cond_17b

    aget-object v5, v1, v4

    .line 1665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Destroy Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Uptime (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_136

    .line 1671
    :cond_17b
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1673
    const-string v1, "SipTransportFeatureTagStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1675
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v2, v1

    move v4, v3

    :goto_18a
    if-ge v4, v2, :cond_1d9

    aget-object v5, v1, v4

    .line 1676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Feature Tag Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Denied Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Deregistered Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Associated Time (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18a

    .line 1683
    :cond_1d9
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1685
    const-string v1, "SipMessageResponse:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1687
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v2, v1

    move v4, v3

    :goto_1e8
    if-ge v4, v2, :cond_241

    aget-object v5, v1, v4

    .line 1688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Message Method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Direction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e8

    .line 1696
    :cond_241
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1698
    const-string v1, "SipTransportSession:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1700
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v2, v1

    move v4, v3

    :goto_250
    if-ge v4, v2, :cond_2a9

    aget-object v5, v1, v4

    .line 1701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Session Method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Direction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", GraceFully Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_250

    .line 1709
    :cond_2a9
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1711
    const-string v1, "ImsDedicatedBearerListenerEvent:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1713
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v2, v1

    move v4, v3

    :goto_2b8
    if-ge v4, v2, :cond_307

    aget-object v5, v1, v4

    .line 1714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] RAT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", QCI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Dedicated Bearer Established = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b8

    .line 1721
    :cond_307
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1723
    const-string v1, "ImsDedicatedBearerEvent:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1725
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v2, v1

    move v4, v3

    :goto_316
    if-ge v4, v2, :cond_383

    aget-object v5, v1, v4

    .line 1726
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] RAT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", QCI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Bearer State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Local Connection Info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Remote Connection Info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Listener Existence = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_316

    .line 1736
    :cond_383
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1738
    const-string v1, "ImsRegistrationServiceDescStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1740
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v2, v1

    move v4, v3

    :goto_392
    if-ge v4, v2, :cond_3e1

    aget-object v5, v1, v4

    .line 1741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", Registration Tech = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Published Time (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_392

    .line 1748
    :cond_3e1
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1750
    const-string v1, "UceEventStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1752
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v2, v1

    move v4, v3

    :goto_3f0
    if-ge v4, v2, :cond_449

    aget-object v5, v1, v4

    .line 1753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Successful = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f0

    .line 1761
    :cond_449
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1763
    const-string v1, "PresenceNotifyEvent:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1765
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v2, v1

    move v4, v3

    :goto_458
    if-ge v4, v2, :cond_4bb

    aget-object v5, v1, v4

    .line 1766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Body = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", RCS Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", MMTEL Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", NoCaps Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_458

    .line 1775
    :cond_4bb
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1777
    const-string v1, "GbaEvent:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1779
    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v1, p1

    :goto_4c9
    if-ge v3, v1, :cond_50e

    aget-object v2, p1, v3

    .line 1780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] Successful = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Fail Reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c9

    .line 1786
    :cond_50e
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    :try_end_511
    .catchall {:try_start_1 .. :try_end_511} :catchall_72

    .line 1787
    monitor-exit p0

    return-void

    .line 1620
    :cond_513
    :goto_513
    monitor-exit p0

    return-void

    :goto_515
    :try_start_515
    monitor-exit p0
    :try_end_516
    .catchall {:try_start_515 .. :try_end_516} :catchall_72

    throw p1
.end method

.method public blacklist registerUceCallback()V
    .registers 3

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    if-nez v0, :cond_19

    .line 814
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Lcom/android/internal/telephony/metrics/RcsStats;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    .line 815
    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string v1, "UceStatsWriterCallback created."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    invoke-static {p0}, Lcom/android/ims/rcs/uce/UceStatsWriter;->init(Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;)Lcom/android/ims/rcs/uce/UceStatsWriter;

    :cond_19
    return-void
.end method

.method public declared-synchronized blacklist setEnableSingleRegistration(IZ)V
    .registers 4

    monitor-enter p0

    .line 1360
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;

    if-eqz p1, :cond_15

    .line 1362
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->setEnableSingleRegistration(Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_17

    .line 1364
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_13

    throw p1
.end method
