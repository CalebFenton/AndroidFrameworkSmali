.class public Lcom/android/ims/internal/uce/common/CapInfo;
.super Ljava/lang/Object;
.source "CapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CALLCOMPOSER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.callcomposer\""

.field public static final blacklist CAPDISC_VIA_PRESENCE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

.field public static final blacklist CHATBOT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gppapplication.ims.iari.rcs.chatbot\""

.field public static final blacklist CHATBOTROLE:Ljava/lang/String; = "+g.gsma.rcs.isbot"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/common/CapInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FILE_TRANSFER:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

.field public static final blacklist FILE_TRANSFER_HTTP:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

.field public static final blacklist FILE_TRANSFER_SNF:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw\""

.field public static final blacklist FILE_TRANSFER_THUMBNAIL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb\""

.field public static final blacklist FULL_SNF_GROUPCHAT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat\""

.field public static final blacklist GEOPULL:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull\""

.field public static final blacklist GEOPULL_FT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft\""

.field public static final blacklist GEOPUSH:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

.field public static final blacklist GEOSMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gppapplication.ims.iari.rcs.geosms\""

.field public static final blacklist IMAGE_SHARE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

.field public static final blacklist INSTANT_MSG:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

.field public static final blacklist IP_VIDEO:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\";video"

.field public static final blacklist IP_VOICE:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

.field public static final blacklist MMTEL_CALLCOMPOSER:Ljava/lang/String; = "+g.gsma.callcomposer"

.field public static final blacklist POSTCALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.callunanswered\""

.field public static final blacklist RCS_IP_VIDEO_CALL:Ljava/lang/String; = "+g.gsma.rcs.ipvideocall"

.field public static final blacklist RCS_IP_VIDEO_ONLY_CALL:Ljava/lang/String; = "+g.gsma.rcs.ipvideoonlycall"

.field public static final blacklist RCS_IP_VOICE_CALL:Ljava/lang/String; = "+g.gsma.rcs.ipcall"

.field public static final blacklist SHAREDMAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.sharedmap\""

.field public static final blacklist SHAREDSKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gppservice.ims.icsi.gsma.sharedsketch\""

.field public static final blacklist SOCIAL_PRESENCE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp\""

.field public static final blacklist STANDALONE_CHATBOT:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final blacklist STANDALONE_MSG:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg;urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

.field public static final blacklist VIDEO_SHARE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-vs\""

.field public static final blacklist VIDEO_SHARE_DURING_CS:Ljava/lang/String; = "+g.3gpp.cs-voice"


# instance fields
.field private blacklist mCallComposerSupported:Z

.field private blacklist mCapInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCapTimestamp:J

.field private greylist-max-o mCdViaPresenceSupported:Z

.field private blacklist mChatbotRoleSupported:Z

.field private blacklist mChatbotSupported:Z

.field private greylist-max-o mExts:[Ljava/lang/String;

.field private greylist-max-o mFtHttpSupported:Z

.field private greylist-max-o mFtSnFSupported:Z

.field private greylist-max-o mFtSupported:Z

.field private greylist-max-o mFtThumbSupported:Z

.field private greylist-max-o mFullSnFGroupChatSupported:Z

.field private greylist-max-o mGeoPullFtSupported:Z

.field private greylist-max-o mGeoPullSupported:Z

.field private greylist-max-o mGeoPushSupported:Z

.field private blacklist mGeoSmsSupported:Z

.field private greylist-max-o mImSupported:Z

.field private greylist-max-o mIpVideoSupported:Z

.field private greylist-max-o mIpVoiceSupported:Z

.field private greylist-max-o mIsSupported:Z

.field private blacklist mMmtelCallComposerSupported:Z

.field private blacklist mPostCallSupported:Z

.field private greylist-max-o mRcsIpVideoCallSupported:Z

.field private greylist-max-o mRcsIpVideoOnlyCallSupported:Z

.field private greylist-max-o mRcsIpVoiceCallSupported:Z

.field private blacklist mSharedMapSupported:Z

.field private blacklist mSharedSketchSupported:Z

.field private blacklist mSmChatbotSupported:Z

.field private greylist-max-o mSmSupported:Z

.field private greylist-max-o mSpSupported:Z

.field private greylist-max-o mVsDuringCSSupported:Z

.field private greylist-max-o mVsSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 846
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    .line 190
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 859
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/CapInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addCapability(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "featureTagName"    # Ljava/lang/String;
    .param p2, "versions"    # Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCapInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public greylist-max-r getCapTimestamp()J
    .registers 3

    .line 712
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    return-wide v0
.end method

.method public blacklist getCapabilityVersions(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "featureTagName"    # Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getExts()[Ljava/lang/String;
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isCallComposerSupported()Z
    .registers 2

    .line 574
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    return v0
.end method

.method public blacklist isCapabilitySupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "featureTag"    # Ljava/lang/String;

    .line 796
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isCdViaPresenceSupported()Z
    .registers 2

    .line 364
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    return v0
.end method

.method public blacklist isChatbotRoleSupported()Z
    .registers 2

    .line 654
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    return v0
.end method

.method public blacklist isChatbotSupported()Z
    .registers 2

    .line 638
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    return v0
.end method

.method public greylist-max-r isFtHttpSupported()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    return v0
.end method

.method public greylist-max-r isFtSnFSupported()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    return v0
.end method

.method public greylist-max-r isFtSupported()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    return v0
.end method

.method public greylist-max-r isFtThumbSupported()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    return v0
.end method

.method public greylist-max-r isFullSnFGroupChatSupported()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    return v0
.end method

.method public greylist-max-r isGeoPullFtSupported()Z
    .registers 2

    .line 420
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    return v0
.end method

.method public greylist-max-r isGeoPullSupported()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    return v0
.end method

.method public greylist-max-r isGeoPushSupported()Z
    .registers 2

    .line 457
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    return v0
.end method

.method public blacklist isGeoSmsSupported()Z
    .registers 2

    .line 558
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    return v0
.end method

.method public greylist-max-r isImSupported()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    return v0
.end method

.method public greylist-max-r isIpVideoSupported()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    return v0
.end method

.method public greylist-max-r isIpVoiceSupported()Z
    .registers 2

    .line 383
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    return v0
.end method

.method public greylist-max-r isIsSupported()Z
    .registers 2

    .line 289
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    return v0
.end method

.method public blacklist isMmtelCallComposerSupported()Z
    .registers 2

    .line 686
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    return v0
.end method

.method public blacklist isPostCallSupported()Z
    .registers 2

    .line 590
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    return v0
.end method

.method public greylist-max-r isRcsIpVideoCallSupported()Z
    .registers 2

    .line 509
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    return v0
.end method

.method public greylist-max-r isRcsIpVideoOnlyCallSupported()Z
    .registers 2

    .line 517
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    return v0
.end method

.method public greylist-max-r isRcsIpVoiceCallSupported()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    return v0
.end method

.method public blacklist isSharedMapSupported()Z
    .registers 2

    .line 606
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    return v0
.end method

.method public blacklist isSharedSketchSupported()Z
    .registers 2

    .line 622
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    return v0
.end method

.method public blacklist isSmChatbotSupported()Z
    .registers 2

    .line 670
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    return v0
.end method

.method public greylist-max-r isSmSupported()Z
    .registers 2

    .line 475
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    return v0
.end method

.method public greylist-max-r isSpSupported()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    return v0
.end method

.method public greylist-max-r isVsDuringCSSupported()Z
    .registers 2

    .line 307
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    return v0
.end method

.method public greylist-max-r isVsSupported()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4c

    move v0, v1

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_57

    move v0, v1

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_62

    move v0, v1

    goto :goto_63

    :cond_62
    move v0, v2

    :goto_63
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6d

    move v0, v1

    goto :goto_6e

    :cond_6d
    move v0, v2

    :goto_6e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_78

    move v0, v1

    goto :goto_79

    :cond_78
    move v0, v2

    :goto_79
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_83

    move v0, v1

    goto :goto_84

    :cond_83
    move v0, v2

    :goto_84
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8e

    move v0, v1

    goto :goto_8f

    :cond_8e
    move v0, v2

    :goto_8f
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_99

    move v0, v1

    goto :goto_9a

    :cond_99
    move v0, v2

    :goto_9a
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a4

    move v0, v1

    goto :goto_a5

    :cond_a4
    move v0, v2

    :goto_a5
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_af

    move v0, v1

    goto :goto_b0

    :cond_af
    move v0, v2

    :goto_b0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_ba

    move v0, v1

    goto :goto_bb

    :cond_ba
    move v0, v2

    :goto_bb
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c5

    move v0, v1

    goto :goto_c6

    :cond_c5
    move v0, v2

    :goto_c6
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d0

    move v0, v1

    goto :goto_d1

    :cond_d0
    move v0, v2

    :goto_d1
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_db

    move v0, v1

    goto :goto_dc

    :cond_db
    move v0, v2

    :goto_dc
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e6

    move v0, v1

    goto :goto_e7

    :cond_e6
    move v0, v2

    :goto_e7
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f1

    move v0, v1

    goto :goto_f2

    :cond_f1
    move v0, v2

    :goto_f2
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_fc

    move v0, v1

    goto :goto_fd

    :cond_fc
    move v0, v2

    :goto_fd
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_107

    move v0, v1

    goto :goto_108

    :cond_107
    move v0, v2

    :goto_108
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_112

    move v0, v1

    goto :goto_113

    :cond_112
    move v0, v2

    :goto_113
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_11d

    move v0, v1

    goto :goto_11e

    :cond_11d
    move v0, v2

    :goto_11e
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_128

    move v0, v1

    goto :goto_129

    :cond_128
    move v0, v2

    :goto_129
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_133

    move v0, v1

    goto :goto_134

    :cond_133
    move v0, v2

    :goto_134
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13d

    goto :goto_13e

    :cond_13d
    move v1, v2

    :goto_13e
    iput-boolean v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 898
    .local v0, "capInfoBundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 899
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_158

    .line 901
    :cond_16e
    return-void
.end method

.method public blacklist removeCapability(Ljava/lang/String;)V
    .registers 3
    .param p1, "featureTagName"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    return-void
.end method

.method public blacklist setCallComposerSupported(Z)V
    .registers 2
    .param p1, "callComposerSupported"    # Z

    .line 582
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    .line 583
    return-void
.end method

.method public blacklist setCapInfoMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p1, "capInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    .line 787
    return-void
.end method

.method public greylist-max-r setCapTimestamp(J)V
    .registers 3
    .param p1, "capTimestamp"    # J

    .line 718
    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    .line 719
    return-void
.end method

.method public greylist-max-r setCdViaPresenceSupported(Z)V
    .registers 2
    .param p1, "cdViaPresenceSupported"    # Z

    .line 374
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    .line 375
    return-void
.end method

.method public blacklist setChatbotRoleSupported(Z)V
    .registers 2
    .param p1, "chatbotRoleSupported"    # Z

    .line 662
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    .line 663
    return-void
.end method

.method public blacklist setChatbotSupported(Z)V
    .registers 2
    .param p1, "chatbotSupported"    # Z

    .line 646
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    .line 647
    return-void
.end method

.method public greylist-max-r setExts([Ljava/lang/String;)V
    .registers 2
    .param p1, "exts"    # [Ljava/lang/String;

    .line 705
    iput-object p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    .line 706
    return-void
.end method

.method public greylist-max-r setFtHttpSupported(Z)V
    .registers 2
    .param p1, "ftHttpSupported"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    .line 263
    return-void
.end method

.method public greylist-max-r setFtSnFSupported(Z)V
    .registers 2
    .param p1, "ftSnFSupported"    # Z

    .line 244
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    .line 245
    return-void
.end method

.method public greylist-max-r setFtSupported(Z)V
    .registers 2
    .param p1, "ftSupported"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    .line 281
    return-void
.end method

.method public greylist-max-r setFtThumbSupported(Z)V
    .registers 2
    .param p1, "ftThumbSupported"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    .line 227
    return-void
.end method

.method public greylist-max-r setFullSnFGroupChatSupported(Z)V
    .registers 2
    .param p1, "fullSnFGroupChatSupported"    # Z

    .line 526
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    .line 527
    return-void
.end method

.method public greylist-max-r setGeoPullFtSupported(Z)V
    .registers 2
    .param p1, "geoPullFtSupported"    # Z

    .line 430
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    .line 431
    return-void
.end method

.method public greylist-max-r setGeoPullSupported(Z)V
    .registers 2
    .param p1, "geoPullSupported"    # Z

    .line 448
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    .line 449
    return-void
.end method

.method public greylist-max-r setGeoPushSupported(Z)V
    .registers 2
    .param p1, "geoPushSupported"    # Z

    .line 466
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    .line 467
    return-void
.end method

.method public blacklist setGeoSmsSupported(Z)V
    .registers 2
    .param p1, "geoSmsSupported"    # Z

    .line 566
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    .line 567
    return-void
.end method

.method public greylist-max-r setImSupported(Z)V
    .registers 2
    .param p1, "imSupported"    # Z

    .line 208
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    .line 209
    return-void
.end method

.method public greylist-max-r setIpVideoSupported(Z)V
    .registers 2
    .param p1, "ipVideoSupported"    # Z

    .line 410
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    .line 411
    return-void
.end method

.method public greylist-max-r setIpVoiceSupported(Z)V
    .registers 2
    .param p1, "ipVoiceSupported"    # Z

    .line 392
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    .line 393
    return-void
.end method

.method public greylist-max-r setIsSupported(Z)V
    .registers 2
    .param p1, "isSupported"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    .line 299
    return-void
.end method

.method public blacklist setMmtelCallComposerSupported(Z)V
    .registers 2
    .param p1, "mmtelCallComposerSupported"    # Z

    .line 694
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    .line 695
    return-void
.end method

.method public blacklist setPostCallSupported(Z)V
    .registers 2
    .param p1, "postCallSupported"    # Z

    .line 598
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    .line 599
    return-void
.end method

.method public greylist-max-r setRcsIpVideoCallSupported(Z)V
    .registers 2
    .param p1, "rcsIpVideoCallSupported"    # Z

    .line 542
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    .line 543
    return-void
.end method

.method public greylist-max-r setRcsIpVideoOnlyCallSupported(Z)V
    .registers 2
    .param p1, "rcsIpVideoOnlyCallSupported"    # Z

    .line 550
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    .line 551
    return-void
.end method

.method public greylist-max-r setRcsIpVoiceCallSupported(Z)V
    .registers 2
    .param p1, "rcsIpVoiceCallSupported"    # Z

    .line 534
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    .line 535
    return-void
.end method

.method public blacklist setSharedMapSupported(Z)V
    .registers 2
    .param p1, "sharedMapSupported"    # Z

    .line 614
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    .line 615
    return-void
.end method

.method public blacklist setSharedSketchSupported(Z)V
    .registers 2
    .param p1, "sharedSketchSupported"    # Z

    .line 630
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    .line 631
    return-void
.end method

.method public blacklist setSmChatbotSupported(Z)V
    .registers 2
    .param p1, "smChatbotSupported"    # Z

    .line 678
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    .line 679
    return-void
.end method

.method public greylist-max-r setSmSupported(Z)V
    .registers 2
    .param p1, "smSupported"    # Z

    .line 484
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    .line 485
    return-void
.end method

.method public greylist-max-r setSpSupported(Z)V
    .registers 2
    .param p1, "spSupported"    # Z

    .line 354
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    .line 355
    return-void
.end method

.method public greylist-max-r setVsDuringCSSupported(Z)V
    .registers 2
    .param p1, "vsDuringCSSupported"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    .line 318
    return-void
.end method

.method public greylist-max-r setVsSupported(Z)V
    .registers 2
    .param p1, "vsSupported"    # Z

    .line 336
    iput-boolean p1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    .line 337
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 806
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mImSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtThumbSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtSnFSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFtHttpSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsDuringCSSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mVsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSpSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCdViaPresenceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVoiceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mIpVideoSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullFtSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPullSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoPushSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mFullSnFGroupChatSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mGeoSmsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCallComposerSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mPostCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedMapSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSharedSketchSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mChatbotRoleSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mSmChatbotSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mMmtelCallComposerSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVoiceCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget-boolean v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mRcsIpVideoOnlyCallSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mExts:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 837
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 839
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 840
    .local v0, "capInfoBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/ims/internal/uce/common/CapInfo;->mCapInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 841
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_aa

    .line 843
    :cond_c6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 844
    return-void
.end method
