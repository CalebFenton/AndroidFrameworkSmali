.class public final Landroid/telephony/data/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataCallResponse$Builder;,
        Landroid/telephony/data/DataCallResponse$HandoverFailureMode;,
        Landroid/telephony/data/DataCallResponse$LinkStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HANDOVER_FAILURE_MODE_DO_FALLBACK:I = 0x1

.field public static final whitelist HANDOVER_FAILURE_MODE_LEGACY:I = 0x0

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_HANDOVER:I = 0x2

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_SETUP_NORMAL:I = 0x3

.field public static final whitelist HANDOVER_FAILURE_MODE_UNKNOWN:I = -0x1

.field public static final whitelist LINK_STATUS_ACTIVE:I = 0x2

.field public static final whitelist LINK_STATUS_DORMANT:I = 0x1

.field public static final whitelist LINK_STATUS_INACTIVE:I = 0x0

.field public static final whitelist LINK_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist PDU_SESSION_ID_NOT_SET:I = 0x0

.field public static final whitelist RETRY_DURATION_UNDEFINED:I = -0x1


# instance fields
.field private final greylist-max-o mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCause:I

.field private final blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandoverFailureMode:I

.field private final blacklist mId:I

.field private final blacklist mInterfaceName:Ljava/lang/String;

.field private final blacklist mLinkStatus:I

.field private final greylist-max-o mMtu:I

.field private final blacklist mMtuV4:I

.field private final blacklist mMtuV6:I

.field private final blacklist mNetworkValidationStatus:I

.field private final blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPduSessionId:I

.field private final blacklist mProtocolType:I

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private final blacklist mSuggestedRetryTime:J

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 566
    new-instance v0, Landroid/telephony/data/DataCallResponse$1;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .registers 35
    .param p1, "cause"    # I
    .param p2, "suggestedRetryTime"    # I
    .param p3, "id"    # I
    .param p4, "linkStatus"    # I
    .param p5, "protocolType"    # I
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p11, "mtu"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    .line 178
    .local p7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p8, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p9, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p10, "pcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move/from16 v0, p2

    int-to-long v3, v0

    .line 180
    if-nez p6, :cond_9

    const-string v1, ""

    move-object v8, v1

    goto :goto_b

    :cond_9
    move-object/from16 v8, p6

    .line 181
    :goto_b
    if-nez p7, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_15

    :cond_13
    move-object/from16 v9, p7

    .line 182
    :goto_15
    if-nez p8, :cond_1d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    goto :goto_1f

    :cond_1d
    move-object/from16 v10, p8

    .line 183
    :goto_1f
    if-nez p9, :cond_27

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto :goto_29

    :cond_27
    move-object/from16 v11, p9

    .line 184
    :goto_29
    if-nez p10, :cond_31

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    goto :goto_33

    :cond_31
    move-object/from16 v12, p10

    .line 187
    :goto_33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    .line 178
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move/from16 v14, p11

    move/from16 v15, p11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v13, p11

    invoke-direct/range {v1 .. v22}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;I)V

    .line 191
    return-void
.end method

.method private constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;I)V
    .registers 38
    .param p1, "cause"    # I
    .param p2, "suggestedRetryTime"    # J
    .param p4, "id"    # I
    .param p5, "linkStatus"    # I
    .param p6, "protocolType"    # I
    .param p7, "interfaceName"    # Ljava/lang/String;
    .param p12, "mtu"    # I
    .param p13, "mtuV4"    # I
    .param p14, "mtuV6"    # I
    .param p15, "handoverFailureMode"    # I
    .param p16, "pduSessionId"    # I
    .param p17, "defaultQos"    # Landroid/telephony/data/Qos;
    .param p19, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p21, "networkValidationStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IIIII",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;",
            "Landroid/telephony/data/NetworkSliceInfo;",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;I)V"
        }
    .end annotation

    .line 202
    .local p8, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p9, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p10, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p11, "pcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p18, "qosBearerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerSession;>;"
    .local p20, "trafficDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/TrafficDescriptor;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 203
    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 204
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 205
    move/from16 v4, p4

    iput v4, v0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 206
    move/from16 v5, p5

    iput v5, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 207
    move/from16 v6, p6

    iput v6, v0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 208
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 209
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v9, p8

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 210
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v10, p9

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 211
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v11, p10

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 212
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v12, p11

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 213
    move/from16 v8, p12

    iput v8, v0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 214
    move/from16 v13, p13

    iput v13, v0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    .line 215
    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    .line 216
    move/from16 v15, p15

    iput v15, v0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 217
    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 218
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 220
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v1, p20

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 222
    move/from16 v3, p21

    iput v3, v0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    .line 224
    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7d

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_88

    .line 226
    :cond_7d
    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    const-string v2, "Active data calls must be on a valid interface!"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-nez v1, :cond_89

    .line 232
    :cond_88
    return-void

    .line 229
    :cond_89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Active data call must not have a failure!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;ILandroid/telephony/data/DataCallResponse-IA;)V
    .registers 23

    invoke-direct/range {p0 .. p21}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 244
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    .line 244
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 248
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    .line 249
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    .line 248
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 252
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    .line 252
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 256
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    .line 256
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 264
    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 267
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    const-class v1, Landroid/telephony/data/QosBearerSession;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/QosBearerSession;

    .line 267
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 270
    const-class v0, Landroid/telephony/data/NetworkSliceInfo;

    .line 271
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/NetworkSliceInfo;

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSliceInfo;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 274
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/TrafficDescriptor;

    .line 274
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    .line 278
    return-void
.end method

.method public static blacklist failureModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "handoverFailureMode"    # I

    .line 588
    packed-switch p0, :pswitch_data_1c

    .line 594
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 593
    :pswitch_8
    const-string/jumbo v0, "retry setup new one"

    return-object v0

    .line 592
    :pswitch_c
    const-string/jumbo v0, "retry handover"

    return-object v0

    .line 591
    :pswitch_10
    const-string v0, "fallback"

    return-object v0

    .line 590
    :pswitch_13
    const-string/jumbo v0, "legacy"

    return-object v0

    .line 589
    :pswitch_17
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 492
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 494
    :cond_4
    instance-of v1, p1, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 495
    return v2

    .line 498
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/data/DataCallResponse;

    .line 500
    .local v1, "other":Landroid/telephony/data/DataCallResponse;
    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-ne v3, v4, :cond_100

    iget-wide v3, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    iget-wide v5, v1, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mId:I

    if-ne v3, v4, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    if-ne v3, v4, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 506
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 507
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 508
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 509
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 510
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 511
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 512
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 513
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mMtu:I

    if-ne v3, v4, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    if-ne v3, v4, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    if-ne v3, v4, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    if-ne v3, v4, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 519
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 520
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 521
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 522
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 523
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_100

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 524
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_100

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    iget v4, v1, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    if-ne v3, v4, :cond_100

    goto :goto_101

    :cond_100
    move v0, v2

    .line 500
    :goto_101
    return v0
.end method

.method public whitelist getAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCause()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    return v0
.end method

.method public blacklist getDefaultQos()Landroid/telephony/data/Qos;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public whitelist getDnsAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGatewayAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHandoverFailureMode()I
    .registers 2

    .line 403
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 318
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    return v0
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLinkStatus()I
    .registers 2

    .line 323
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    return v0
.end method

.method public whitelist getMtu()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    return v0
.end method

.method public whitelist getMtuV4()I
    .registers 2

    .line 388
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    return v0
.end method

.method public whitelist getMtuV6()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    return v0
.end method

.method public whitelist getNetworkValidationStatus()I
    .registers 2

    .line 457
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    return v0
.end method

.method public whitelist getPcscfAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPduSessionId()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    return v0
.end method

.method public whitelist getProtocolType()I
    .registers 2

    .line 329
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    return v0
.end method

.method public blacklist getQosBearerSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRetryDurationMillis()J
    .registers 3

    .line 312
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    return-wide v0
.end method

.method public whitelist getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;
    .registers 2

    .line 439
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object v0
.end method

.method public whitelist getSuggestedRetryTime()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 297
    const/4 v0, 0x0

    return v0

    .line 298
    :cond_a
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 299
    const v0, 0x7fffffff

    return v0

    .line 301
    :cond_17
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getTrafficDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 23

    .line 530
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 531
    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v8

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 532
    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v10

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v18

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 534
    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v20

    iget v1, v0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    .line 530
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "DataCallResponse: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 465
    const-string v2, " cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 466
    const-string v2, " retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 467
    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 468
    const-string v2, " linkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 469
    const-string v2, " protocolType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 470
    const-string v2, " ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 471
    const-string v2, " addresses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 472
    const-string v2, " dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 473
    const-string v2, " gateways="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 474
    const-string v2, " pcscf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 475
    const-string v2, " mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 476
    const-string v2, " mtuV4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 477
    const-string v2, " mtuV6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 478
    const-string v2, " handoverFailureMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-static {v2}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 479
    const-string v2, " pduSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 480
    const-string v2, " defaultQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 481
    const-string v2, " qosBearerSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 482
    const-string v2, " sliceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 483
    const-string v2, " trafficDescriptors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 484
    const-string v2, " networkValidationStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    .line 485
    invoke-static {v2}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 486
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 544
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 546
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 551
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 552
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 553
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 554
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 560
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 561
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 562
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 563
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mNetworkValidationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    return-void
.end method
