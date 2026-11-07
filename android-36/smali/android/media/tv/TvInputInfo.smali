.class public final Landroid/media/tv/TvInputInfo;
.super Ljava/lang/Object;
.source "TvInputInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputInfo$Builder;,
        Landroid/media/tv/TvInputInfo$TvInputSettings;,
        Landroid/media/tv/TvInputInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist EXTRA_INPUT_ID:Ljava/lang/String; = "android.media.tv.extra.INPUT_ID"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvInputInfo"

.field public static final whitelist TYPE_COMPONENT:I = 0x3ec

.field public static final whitelist TYPE_COMPOSITE:I = 0x3e9

.field public static final whitelist TYPE_DISPLAY_PORT:I = 0x3f0

.field public static final whitelist TYPE_DVI:I = 0x3ee

.field public static final whitelist TYPE_HDMI:I = 0x3ef

.field public static final whitelist TYPE_OTHER:I = 0x3e8

.field public static final whitelist TYPE_SCART:I = 0x3eb

.field public static final whitelist TYPE_SVIDEO:I = 0x3ea

.field public static final whitelist TYPE_TUNER:I = 0x0

.field public static final whitelist TYPE_VGA:I = 0x3ed


# instance fields
.field private final blacklist mCanPauseRecording:Z

.field private final greylist-max-o mCanRecord:Z

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final blacklist mHdmiConnectionRelativePosition:I

.field private final greylist-max-o mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private final greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private final greylist-max-o mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private final greylist-max-o mIconStandby:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconUri:Landroid/net/Uri;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mIsConnectedToHdmiSwitch:Z

.field private final greylist-max-o mIsHardwareInput:Z

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mLabelResId:I

.field private final greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field private final greylist-max-o mSetupActivity:Ljava/lang/String;

.field private final greylist-max-o mTunerCount:I

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 637
    new-instance v0, Landroid/media/tv/TvInputInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZZILandroid/hardware/hdmi/HdmiDeviceInfo;ZILjava/lang/String;Landroid/os/Bundle;)V
    .registers 35
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isHardwareInput"    # Z
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "labelResId"    # I
    .param p7, "icon"    # Landroid/graphics/drawable/Icon;
    .param p8, "iconStandby"    # Landroid/graphics/drawable/Icon;
    .param p9, "iconDisconnected"    # Landroid/graphics/drawable/Icon;
    .param p10, "setupActivity"    # Ljava/lang/String;
    .param p11, "canRecord"    # Z
    .param p12, "canPauseRecording"    # Z
    .param p13, "tunerCount"    # I
    .param p14, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p15, "isConnectedToHdmiSwitch"    # Z
    .param p16, "hdmiConnectionRelativePosition"    # I
    .param p17, "parentId"    # Ljava/lang/String;
    .param p18, "extras"    # Landroid/os/Bundle;

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 272
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 273
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    .line 274
    move/from16 v3, p3

    iput v3, v0, Landroid/media/tv/TvInputInfo;->mType:I

    .line 275
    move/from16 v4, p4

    iput-boolean v4, v0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    .line 276
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    .line 277
    move/from16 v6, p6

    iput v6, v0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    .line 278
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 279
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    .line 280
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    .line 281
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    .line 282
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    .line 283
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/media/tv/TvInputInfo;->mCanPauseRecording:Z

    .line 284
    move/from16 v13, p13

    iput v13, v0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    .line 285
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 286
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    .line 287
    move/from16 v1, p16

    iput v1, v0, Landroid/media/tv/TvInputInfo;->mHdmiConnectionRelativePosition:I

    .line 288
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    .line 289
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    .line 290
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZZILandroid/hardware/hdmi/HdmiDeviceInfo;ZILjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo-IA;)V
    .registers 20

    invoke-direct/range {p0 .. p18}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZZILandroid/hardware/hdmi/HdmiDeviceInfo;ZILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    .line 655
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    .line 656
    const-class v0, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    .line 658
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 659
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    .line 660
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_6d

    move v0, v2

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_78

    move v0, v2

    goto :goto_79

    :cond_78
    move v0, v1

    :goto_79
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanPauseRecording:Z

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    .line 665
    const-class v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_92

    move v1, v2

    :cond_92
    iput-boolean v1, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiConnectionRelativePosition:I

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    .line 670
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvInputInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "labelRes"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo$Builder;->setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p3}, Landroid/media/tv/TvInputInfo$Builder;->setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p4}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(I)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p5}, Landroid/media/tv/TvInputInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method public static whitelist createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "iconUri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 179
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo$Builder;->setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p3}, Landroid/media/tv/TvInputInfo$Builder;->setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p4}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 183
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    iput-object p5, v0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    .line 184
    return-object v0
.end method

.method public static whitelist createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "labelRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo$Builder;->setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p3}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(I)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p4}, Landroid/media/tv/TvInputInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public static whitelist createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "iconUri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo$Builder;->setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p3}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 237
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    iput-object p4, v0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    .line 238
    return-object v0
.end method

.method private greylist-max-o loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 630
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_14

    .line 632
    const/4 v0, 0x0

    return-object v0

    .line 634
    :cond_14
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist canPauseRecording()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanPauseRecording:Z

    return v0
.end method

.method public whitelist canRecord()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    return v0
.end method

.method public whitelist createSettingsIntent()Landroid/content/Intent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createSetupIntent()Landroid/content/Intent;
    .registers 4

    .line 341
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "android.media.tv.extra.INPUT_ID"

    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    return-object v0

    .line 347
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 563
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 564
    return v0

    .line 567
    :cond_4
    instance-of v1, p1, Landroid/media/tv/TvInputInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 568
    return v2

    .line 571
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    .line 572
    .local v1, "obj":Landroid/media/tv/TvInputInfo;
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    .line 573
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget v3, p0, Landroid/media/tv/TvInputInfo;->mType:I

    iget v4, v1, Landroid/media/tv/TvInputInfo;->mType:I

    if-ne v3, v4, :cond_ac

    iget-boolean v3, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    iget-boolean v4, v1, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    if-ne v3, v4, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    .line 576
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    .line 577
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget v3, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    iget v4, v1, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    if-ne v3, v4, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 579
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    .line 580
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    .line 581
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    .line 582
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    iget-boolean v4, v1, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    if-ne v3, v4, :cond_ac

    iget-boolean v3, p0, Landroid/media/tv/TvInputInfo;->mCanPauseRecording:Z

    iget-boolean v4, v1, Landroid/media/tv/TvInputInfo;->mCanPauseRecording:Z

    if-ne v3, v4, :cond_ac

    iget v3, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    iget v4, v1, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    if-ne v3, v4, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 586
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    iget-boolean v4, v1, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    if-ne v3, v4, :cond_ac

    iget v3, p0, Landroid/media/tv/TvInputInfo;->mHdmiConnectionRelativePosition:I

    iget v4, v1, Landroid/media/tv/TvInputInfo;->mHdmiConnectionRelativePosition:I

    if-ne v3, v4, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    .line 589
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    .line 590
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    goto :goto_ad

    :cond_ac
    move v0, v2

    .line 572
    :goto_ad
    return v0
.end method

.method public greylist-max-r getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 334
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getHdmiConnectionRelativePosition()I
    .registers 2

    .line 455
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiConnectionRelativePosition:I

    return v0
.end method

.method public whitelist getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 411
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_9

    .line 412
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0

    .line 414
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParentId()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getTunerCount()I
    .registers 2

    .line 380
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 366
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isConnectedToHdmiSwitch()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 445
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    return v0
.end method

.method public whitelist isHardwareInput()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 434
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    return v0
.end method

.method public whitelist isHidden(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 466
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->-$$Nest$smisHidden(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassthroughInput()Z
    .registers 2

    .line 424
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist loadCustomLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 494
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->-$$Nest$smgetCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 505
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_b

    .line 506
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 507
    :cond_b
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_54

    .line 508
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_39

    .line 509
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_1a
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2d

    .line 510
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_27

    .line 511
    nop

    .line 513
    if-eqz v0, :cond_26

    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 511
    :cond_26
    return-object v1

    .line 513
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_27
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_39

    .line 516
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2c
    goto :goto_54

    .line 508
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_2d
    move-exception v1

    if-eqz v0, :cond_38

    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/tv/TvInputInfo;
    .end local p1    # "context":Landroid/content/Context;
    :cond_38
    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    .line 513
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/media/tv/TvInputInfo;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_39
    move-exception v0

    .line 514
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading the default icon due to a failure on loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvInputInfo"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    :cond_54
    :goto_54
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 535
    if-nez p2, :cond_7

    .line 536
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputInfo;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 537
    :cond_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 538
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_23

    .line 539
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 541
    :cond_15
    const/4 v0, 0x2

    if-ne p2, v0, :cond_25

    .line 542
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_23

    .line 543
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 548
    :cond_23
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 477
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    if-eqz v0, :cond_16

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 480
    :cond_16
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 481
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 483
    :cond_21
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvInputInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 608
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 609
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 612
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 613
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 614
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 616
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 617
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 618
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 620
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanPauseRecording:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 621
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 623
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 624
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiConnectionRelativePosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 627
    return-void
.end method
