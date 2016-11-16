.class public final Landroid/media/tv/TvInputInfo;
.super Ljava/lang/Object;
.source "TvInputInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputInfo$1;,
        Landroid/media/tv/TvInputInfo$Builder;,
        Landroid/media/tv/TvInputInfo$TvInputSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final EXTRA_INPUT_ID:Ljava/lang/String; = "android.media.tv.extra.INPUT_ID"

.field private static final TAG:Ljava/lang/String; = "TvInputInfo"

.field public static final TYPE_COMPONENT:I = 0x3ec

.field public static final TYPE_COMPOSITE:I = 0x3e9

.field public static final TYPE_DISPLAY_PORT:I = 0x3f0

.field public static final TYPE_DVI:I = 0x3ee

.field public static final TYPE_HDMI:I = 0x3ef

.field public static final TYPE_OTHER:I = 0x3e8

.field public static final TYPE_SCART:I = 0x3eb

.field public static final TYPE_SVIDEO:I = 0x3ea

.field public static final TYPE_TUNER:I = 0x0

.field public static final TYPE_VGA:I = 0x3ed


# instance fields
.field private final mCanRecord:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private final mIconStandby:Landroid/graphics/drawable/Icon;

.field private mIconUri:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private final mIsConnectedToHdmiSwitch:Z

.field private final mIsHardwareInput:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mLabelResId:I

.field private final mParentId:Ljava/lang/String;

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivity:Ljava/lang/String;

.field private final mSetupActivity:Ljava/lang/String;

.field private final mTunerCount:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 610
    new-instance v0, Landroid/media/tv/TvInputInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/tv/TvInputInfo$1;-><init>()V

    #@5
    .line 609
    sput-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ZILandroid/hardware/hdmi/HdmiDeviceInfo;ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
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
    .param p11, "settingsActivity"    # Ljava/lang/String;
    .param p12, "canRecord"    # Z
    .param p13, "tunerCount"    # I
    .param p14, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p15, "isConnectedToHdmiSwitch"    # Z
    .param p16, "parentId"    # Ljava/lang/String;
    .param p17, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 265
    iput-object p1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@5
    .line 266
    iput-object p2, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@7
    .line 267
    iput p3, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@9
    .line 268
    iput-boolean p4, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@b
    .line 269
    iput-object p5, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@d
    .line 270
    iput p6, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@f
    .line 271
    iput-object p7, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@11
    .line 272
    iput-object p8, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@13
    .line 273
    iput-object p9, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@15
    .line 274
    iput-object p10, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@17
    .line 275
    iput-object p11, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@19
    .line 276
    iput-boolean p12, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    #@1b
    .line 277
    iput p13, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    #@1d
    .line 278
    iput-object p14, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1f
    .line 279
    move/from16 v0, p15

    #@21
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@23
    .line 280
    move-object/from16 v0, p16

    #@25
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@27
    .line 281
    move-object/from16 v0, p17

    #@29
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    #@2b
    .line 264
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ZILandroid/hardware/hdmi/HdmiDeviceInfo;ZLjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo;)V
    .locals 0
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
    .param p11, "settingsActivity"    # Ljava/lang/String;
    .param p12, "canRecord"    # Z
    .param p13, "tunerCount"    # I
    .param p14, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p15, "isConnectedToHdmiSwitch"    # Z
    .param p16, "parentId"    # Ljava/lang/String;
    .param p17, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p17}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ZILandroid/hardware/hdmi/HdmiDeviceInfo;ZLjava/lang/String;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 623
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@e
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@10
    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@16
    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@1c
    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1f
    move-result v0

    #@20
    if-ne v0, v1, :cond_0

    #@22
    move v0, v1

    #@23
    :goto_0
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@25
    .line 627
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/CharSequence;

    #@2d
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@2f
    .line 628
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/net/Uri;

    #@35
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@37
    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@3d
    .line 630
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@43
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@45
    .line 631
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@4b
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@4d
    .line 632
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@53
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@55
    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@5b
    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@61
    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@64
    move-result v0

    #@65
    if-ne v0, v1, :cond_1

    #@67
    move v0, v1

    #@68
    :goto_1
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    #@6a
    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v0

    #@6e
    iput v0, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    #@70
    .line 637
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@76
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@78
    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@7b
    move-result v0

    #@7c
    if-ne v0, v1, :cond_2

    #@7e
    :goto_2
    iput-boolean v1, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@80
    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@86
    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@89
    move-result-object v0

    #@8a
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    #@8c
    .line 622
    return-void

    #@8d
    :cond_0
    move v0, v2

    #@8e
    .line 626
    goto :goto_0

    #@8f
    :cond_1
    move v0, v2

    #@90
    .line 635
    goto :goto_1

    #@91
    :cond_2
    move v1, v2

    #@92
    .line 638
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "labelRes"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 200
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@5
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo$Builder;->setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p3}, Landroid/media/tv/TvInputInfo$Builder;->setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p4}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(I)Landroid/media/tv/TvInputInfo$Builder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p5}, Landroid/media/tv/TvInputInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 172
    new-instance v1, Landroid/media/tv/TvInputInfo$Builder;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@5
    invoke-virtual {v1, p2}, Landroid/media/tv/TvInputInfo$Builder;->setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p3}, Landroid/media/tv/TvInputInfo$Builder;->setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p4}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    #@14
    move-result-object v0

    #@15
    .line 177
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    iput-object p5, v0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@17
    .line 178
    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "labelRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 253
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@5
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo$Builder;->setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p3}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(I)Landroid/media/tv/TvInputInfo$Builder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p4}, Landroid/media/tv/TvInputInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 227
    new-instance v1, Landroid/media/tv/TvInputInfo$Builder;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    #@5
    invoke-virtual {v1, p2}, Landroid/media/tv/TvInputInfo$Builder;->setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p3}, Landroid/media/tv/TvInputInfo$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    #@10
    move-result-object v0

    #@11
    .line 231
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    iput-object p4, v0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@13
    .line 232
    return-object v0
.end method

.method private loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    iget v0, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 603
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    iget v0, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    #@10
    if-nez v0, :cond_0

    #@12
    .line 604
    const/4 v0, 0x0

    #@13
    return-object v0

    #@14
    .line 606
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@16
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method


# virtual methods
.method public canRecord()Z
    .locals 1

    #@0
    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    #@2
    return v0
.end method

.method public createSettingsIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 345
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 346
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 347
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@12
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@16
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 348
    const-string/jumbo v1, "android.media.tv.extra.INPUT_ID"

    #@1e
    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 349
    return-object v0

    #@26
    .line 351
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    #@27
    return-object v1
.end method

.method public createSetupIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 332
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 333
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 334
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@12
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@16
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 335
    const-string/jumbo v1, "android.media.tv.extra.INPUT_ID"

    #@1e
    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 336
    return-object v0

    #@26
    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    #@27
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 527
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 537
    if-ne p1, p0, :cond_0

    #@3
    .line 538
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 541
    :cond_0
    instance-of v2, p1, Landroid/media/tv/TvInputInfo;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 542
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 545
    nop

    #@c
    nop

    #@d
    .line 546
    .local v0, "obj":Landroid/media/tv/TvInputInfo;
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@f
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@11
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 547
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@19
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@1b
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1e
    move-result v2

    #@1f
    .line 546
    if-eqz v2, :cond_2

    #@21
    .line 548
    iget v2, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@23
    iget v3, v0, Landroid/media/tv/TvInputInfo;->mType:I

    #@25
    if-ne v2, v3, :cond_2

    #@27
    .line 549
    iget-boolean v2, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@29
    iget-boolean v3, v0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 550
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@2f
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@31
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@34
    move-result v2

    #@35
    .line 546
    if-eqz v2, :cond_2

    #@37
    .line 551
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@39
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@3b
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    .line 546
    if-eqz v2, :cond_2

    #@41
    .line 552
    iget v2, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@43
    iget v3, v0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@45
    if-ne v2, v3, :cond_2

    #@47
    .line 553
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@49
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@4b
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    .line 546
    if-eqz v2, :cond_2

    #@51
    .line 554
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@53
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@55
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    .line 546
    if-eqz v2, :cond_2

    #@5b
    .line 555
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@5d
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@5f
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@62
    move-result v2

    #@63
    .line 546
    if-eqz v2, :cond_2

    #@65
    .line 556
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@67
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@69
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@6c
    move-result v2

    #@6d
    .line 546
    if-eqz v2, :cond_2

    #@6f
    .line 557
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@71
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@73
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@76
    move-result v2

    #@77
    .line 546
    if-eqz v2, :cond_2

    #@79
    .line 558
    iget-boolean v2, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    #@7b
    iget-boolean v3, v0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    #@7d
    if-ne v2, v3, :cond_2

    #@7f
    .line 559
    iget v2, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    #@81
    iget v3, v0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    #@83
    if-ne v2, v3, :cond_2

    #@85
    .line 560
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@87
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@89
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8c
    move-result v2

    #@8d
    .line 546
    if-eqz v2, :cond_2

    #@8f
    .line 561
    iget-boolean v2, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@91
    iget-boolean v3, v0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@93
    if-ne v2, v3, :cond_2

    #@95
    .line 562
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@97
    iget-object v3, v0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@99
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@9c
    move-result v2

    #@9d
    .line 546
    if-eqz v2, :cond_2

    #@9f
    .line 563
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    #@a1
    iget-object v2, v0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    #@a3
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a6
    move-result v1

    #@a7
    .line 546
    :cond_2
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 325
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@8
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@e
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    #@0
    .prologue
    .line 396
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@2
    const/16 v1, 0x3ef

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 397
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@8
    return-object v0

    #@9
    .line 399
    :cond_0
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    return-object v0
.end method

.method public getTunerCount()I
    .locals 1

    #@0
    .prologue
    .line 373
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 359
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnectedToHdmiSwitch()Z
    .locals 1

    #@0
    .prologue
    .line 429
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@2
    return v0
.end method

.method public isHardwareInput()Z
    .locals 1

    #@0
    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@2
    return v0
.end method

.method public isHidden(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->-wrap0(Landroid/content/Context;Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isPassthroughInput()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 409
    iget v1, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public loadCustomLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {p1, v0, v1}, Landroid/media/tv/TvInputInfo$TvInputSettings;->-wrap1(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 479
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 480
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 481
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 482
    const/4 v2, 0x0

    #@11
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v3

    #@15
    iget-object v5, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@17
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@1a
    move-result-object v2

    #@1b
    .line 483
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    #@1c
    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1f
    move-result-object v0

    #@20
    .line 484
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@22
    .line 490
    if-eqz v2, :cond_1

    #@24
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    #@29
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2a
    .line 487
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@2b
    .line 488
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "TvInputInfo"

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Loading the default icon due to a failure on loading "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    iget-object v5, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 492
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@4a
    move-result-object v3

    #@4b
    return-object v3

    #@4c
    .line 490
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    #@4d
    goto :goto_0

    #@4e
    .line 485
    :cond_3
    return-object v0

    #@4f
    .line 490
    :cond_4
    if-eqz v2, :cond_5

    #@51
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@54
    :cond_5
    :goto_1
    if-eqz v4, :cond_2

    #@56
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@57
    :catch_2
    move-exception v4

    #@58
    goto :goto_1

    #@59
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    #@5a
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    :catchall_0
    move-exception v4

    #@5c
    move-object v6, v4

    #@5d
    move-object v4, v3

    #@5e
    move-object v3, v6

    #@5f
    :goto_2
    if-eqz v2, :cond_6

    #@61
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    #@64
    :cond_6
    :goto_3
    if-eqz v4, :cond_8

    #@66
    :try_start_7
    throw v4

    #@67
    :catch_4
    move-exception v5

    #@68
    if-nez v4, :cond_7

    #@6a
    move-object v4, v5

    #@6b
    goto :goto_3

    #@6c
    :cond_7
    if-eq v4, v5, :cond_6

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@71
    goto :goto_3

    #@72
    :cond_8
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    #@73
    :catchall_1
    move-exception v3

    #@74
    goto :goto_2
.end method

.method public loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 509
    if-nez p2, :cond_0

    #@3
    .line 510
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputInfo;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 511
    :cond_0
    const/4 v0, 0x1

    #@9
    if-ne p2, v0, :cond_1

    #@b
    .line 512
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@d
    if-eqz v0, :cond_3

    #@f
    .line 513
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 515
    :cond_1
    const/4 v0, 0x2

    #@17
    if-ne p2, v0, :cond_2

    #@19
    .line 516
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 517
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@1f
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 520
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Unknown state: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 522
    :cond_3
    return-object v1
.end method

.method public loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 451
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@e
    .line 453
    iget v2, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@10
    const/4 v3, 0x0

    #@11
    .line 452
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 454
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 455
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@20
    return-object v0

    #@21
    .line 457
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "TvInputInfo{id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 569
    const-string/jumbo v1, ", pkg="

    #@15
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 569
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@1b
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1d
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@1f
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 570
    const-string/jumbo v1, ", service="

    #@26
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 570
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2c
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2e
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@30
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 570
    const-string/jumbo v1, "}"

    #@37
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 581
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 582
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 583
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 584
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@19
    .line 585
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/CharSequence;

    #@1b
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1e
    .line 586
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@20
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@23
    .line 587
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelResId:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 588
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2a
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@2d
    .line 589
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@2f
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@32
    .line 590
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@34
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@37
    .line 591
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 592
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 593
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mCanRecord:Z

    #@43
    if-eqz v0, :cond_1

    #@45
    move v0, v1

    #@46
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@49
    .line 594
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mTunerCount:I

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 595
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@50
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@53
    .line 596
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@55
    if-eqz v0, :cond_2

    #@57
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@5a
    .line 597
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5f
    .line 598
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mExtras:Landroid/os/Bundle;

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@64
    .line 580
    return-void

    #@65
    :cond_0
    move v0, v2

    #@66
    .line 584
    goto :goto_0

    #@67
    :cond_1
    move v0, v2

    #@68
    .line 593
    goto :goto_1

    #@69
    :cond_2
    move v1, v2

    #@6a
    .line 596
    goto :goto_2
.end method
