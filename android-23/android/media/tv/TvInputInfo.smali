.class public final Landroid/media/tv/TvInputInfo;
.super Ljava/lang/Object;
.source "TvInputInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputInfo$TvInputSettings;,
        Landroid/media/tv/TvInputInfo$1;
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

.field private static final DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field public static final EXTRA_INPUT_ID:Ljava/lang/String; = "android.media.tv.extra.INPUT_ID"

.field private static final LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

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

.field private static final XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconUri:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private mIsConnectedToHdmiSwitch:Z

.field private final mIsHardwareInput:Z

.field private mLabel:Ljava/lang/String;

.field private mLabelRes:I

.field private final mParentId:Ljava/lang/String;

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSetupActivity:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 110
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@7
    .line 137
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@9
    const/4 v1, 0x1

    #@a
    .line 138
    const/16 v2, 0x3e8

    #@c
    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    .line 139
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@11
    const/4 v1, 0x2

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@16
    .line 140
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@18
    const/4 v1, 0x3

    #@19
    const/16 v2, 0x3e9

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1e
    .line 141
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@20
    const/4 v1, 0x4

    #@21
    const/16 v2, 0x3ea

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@26
    .line 142
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@28
    const/4 v1, 0x5

    #@29
    const/16 v2, 0x3eb

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@2e
    .line 143
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@30
    const/4 v1, 0x6

    #@31
    const/16 v2, 0x3ec

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@36
    .line 144
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@38
    const/4 v1, 0x7

    #@39
    const/16 v2, 0x3ed

    #@3b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@3e
    .line 145
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@40
    const/16 v1, 0x8

    #@42
    const/16 v2, 0x3ee

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@47
    .line 146
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@49
    const/16 v1, 0x9

    #@4b
    const/16 v2, 0x3ef

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@50
    .line 147
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@52
    const/16 v1, 0xa

    #@54
    .line 148
    const/16 v2, 0x3f0

    #@56
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@59
    .line 633
    new-instance v0, Landroid/media/tv/TvInputInfo$1;

    #@5b
    invoke-direct {v0}, Landroid/media/tv/TvInputInfo$1;-><init>()V

    #@5e
    .line 632
    sput-object v0, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isHardwareInput"    # Z

    #@0
    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 337
    iput-object p1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@5
    .line 338
    iput-object p2, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@7
    .line 339
    iput-object p3, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@9
    .line 340
    iput p4, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@b
    .line 341
    iput-boolean p5, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@d
    .line 336
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
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@c
    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@12
    .line 648
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@1a
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@1c
    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@22
    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@28
    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@2e
    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@31
    move-result v0

    #@32
    if-ne v0, v1, :cond_0

    #@34
    move v0, v1

    #@35
    :goto_0
    iput-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@37
    .line 653
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3d
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3f
    .line 654
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@45
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@47
    .line 655
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/net/Uri;

    #@4d
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@4f
    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v0

    #@53
    iput v0, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    #@55
    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    iput-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    #@5b
    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@5e
    move-result v0

    #@5f
    if-ne v0, v1, :cond_1

    #@61
    :goto_1
    iput-boolean v1, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@63
    .line 645
    return-void

    #@64
    :cond_0
    move v0, v2

    #@65
    .line 652
    goto :goto_0

    #@66
    :cond_1
    move v1, v2

    #@67
    .line 658
    goto :goto_1
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

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/media/tv/TvInputInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 161
    new-instance v0, Landroid/content/ComponentName;

    #@4
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@c
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 160
    invoke-static {v0}, Landroid/media/tv/TvInputInfo;->generateInputIdForComponentName(Landroid/content/ComponentName;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move v5, v4

    #@16
    move v6, v4

    #@17
    move-object v7, v3

    #@18
    move-object v8, v3

    #@19
    move-object v9, v3

    #@1a
    move v10, v4

    #@1b
    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .locals 12
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

    #@0
    .prologue
    .line 209
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xfff

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v10, 0x1

    #@9
    .line 211
    .local v10, "isConnectedToHdmiSwitch":Z
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    #@b
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@f
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@11
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 210
    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 212
    const/16 v4, 0x3ef

    #@1c
    const/4 v5, 0x1

    #@1d
    const/4 v7, 0x0

    #@1e
    const/4 v9, 0x0

    #@1f
    move-object v0, p0

    #@20
    move-object v1, p1

    #@21
    move-object v3, p3

    #@22
    move/from16 v6, p4

    #@24
    move-object/from16 v8, p5

    #@26
    .line 210
    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    #@29
    move-result-object v11

    #@2a
    .line 214
    .local v11, "input":Landroid/media/tv/TvInputInfo;
    iput-object p2, v11, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2c
    .line 215
    return-object v11

    #@2d
    .line 209
    .end local v10    # "isConnectedToHdmiSwitch":Z
    .end local v11    # "input":Landroid/media/tv/TvInputInfo;
    :cond_0
    const/4 v10, 0x0

    #@2e
    .restart local v10    # "isConnectedToHdmiSwitch":Z
    goto :goto_0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .locals 12
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

    #@0
    .prologue
    .line 183
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xfff

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v10, 0x1

    #@9
    .line 185
    .local v10, "isConnectedToHdmiSwitch":Z
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    #@b
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@f
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@11
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 184
    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 186
    const/16 v4, 0x3ef

    #@1c
    const/4 v5, 0x1

    #@1d
    const/4 v6, 0x0

    #@1e
    const/4 v8, 0x0

    #@1f
    move-object v0, p0

    #@20
    move-object v1, p1

    #@21
    move-object v3, p3

    #@22
    move-object/from16 v7, p4

    #@24
    move-object/from16 v9, p5

    #@26
    .line 184
    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    #@29
    move-result-object v11

    #@2a
    .line 188
    .local v11, "input":Landroid/media/tv/TvInputInfo;
    iput-object p2, v11, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2c
    .line 189
    return-object v11

    #@2d
    .line 183
    .end local v10    # "isConnectedToHdmiSwitch":Z
    .end local v11    # "input":Landroid/media/tv/TvInputInfo;
    :cond_0
    const/4 v10, 0x0

    #@2e
    .restart local v10    # "isConnectedToHdmiSwitch":Z
    goto :goto_0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;ILandroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo;
    .locals 11
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

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 257
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@4
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->get(II)I

    #@b
    move-result v4

    #@c
    .line 259
    .local v4, "inputType":I
    new-instance v0, Landroid/content/ComponentName;

    #@e
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@12
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@16
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 258
    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 260
    const/4 v5, 0x1

    #@1e
    move-object v0, p0

    #@1f
    move-object v1, p1

    #@20
    move v6, p3

    #@21
    move-object v7, v3

    #@22
    move-object v8, p4

    #@23
    move-object v9, v3

    #@24
    .line 258
    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;Landroid/net/Uri;)Landroid/media/tv/TvInputInfo;
    .locals 11
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

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 235
    sget-object v0, Landroid/media/tv/TvInputInfo;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@4
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    #@b
    move-result v4

    #@c
    .line 237
    .local v4, "inputType":I
    new-instance v0, Landroid/content/ComponentName;

    #@e
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@12
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@16
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 236
    invoke-static {v0, p2}, Landroid/media/tv/TvInputInfo;->generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 238
    const/4 v5, 0x1

    #@1e
    move-object v0, p0

    #@1f
    move-object v1, p1

    #@20
    move-object v7, p3

    #@21
    move-object v8, v3

    #@22
    move-object v9, p4

    #@23
    move v10, v6

    #@24
    .line 236
    invoke-static/range {v0 .. v10}, Landroid/media/tv/TvInputInfo;->createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method private static createTvInputInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/net/Uri;Z)Landroid/media/tv/TvInputInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "inputType"    # I
    .param p5, "isHardwareInput"    # Z
    .param p6, "labelRes"    # I
    .param p7, "label"    # Ljava/lang/String;
    .param p8, "icon"    # Landroid/graphics/drawable/Icon;
    .param p9, "iconUri"    # Landroid/net/Uri;
    .param p10, "isConnectedToHdmiSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    move-object/from16 v0, p1

    #@2
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    .line 268
    .local v14, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v11

    #@8
    .line 269
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    #@9
    .line 271
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v2, "android.media.tv.input"

    #@c
    invoke-virtual {v14, v11, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@f
    move-result-object v10

    #@10
    .line 272
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v10, :cond_1

    #@12
    .line 273
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "No android.media.tv.input meta-data for "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 274
    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@22
    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 316
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v8

    #@2f
    .line 317
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Unable to create context for: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 318
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    #@4c
    .line 319
    if-eqz v10, :cond_0

    #@4e
    .line 320
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@51
    .line 318
    :cond_0
    throw v2

    #@52
    .line 277
    .restart local v10    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@54
    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@57
    move-result-object v12

    #@58
    .line 278
    .local v12, "res":Landroid/content/res/Resources;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@5b
    move-result-object v7

    #@5c
    .line 281
    .local v7, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    #@5f
    move-result v15

    #@60
    .local v15, "type":I
    const/4 v2, 0x1

    #@61
    if-eq v15, v2, :cond_3

    #@63
    .line 282
    const/4 v2, 0x2

    #@64
    if-ne v15, v2, :cond_2

    #@66
    .line 285
    :cond_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    .line 286
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v2, "tv-input"

    #@6d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v2

    #@71
    if-nez v2, :cond_4

    #@73
    .line 287
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@75
    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v4, "Meta-data does not start with tv-input-service tag in "

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    .line 287
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v2

    #@8f
    .line 291
    :cond_4
    new-instance v1, Landroid/media/tv/TvInputInfo;

    #@91
    move-object/from16 v2, p1

    #@93
    move-object/from16 v3, p2

    #@95
    move-object/from16 v4, p3

    #@97
    move/from16 v5, p4

    #@99
    move/from16 v6, p5

    #@9b
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    #@9e
    .line 293
    .local v1, "input":Landroid/media/tv/TvInputInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->TvInputService:[I

    #@a0
    .line 292
    invoke-virtual {v12, v7, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a3
    move-result-object v13

    #@a4
    .line 295
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    #@a5
    .line 294
    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    iput-object v2, v1, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@ab
    .line 299
    if-nez p4, :cond_5

    #@ad
    iget-object v2, v1, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@af
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_5

    #@b5
    .line 300
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@b7
    new-instance v3, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v4, "Setup activity not found in "

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@c5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v2

    #@d1
    .line 303
    :cond_5
    const/4 v2, 0x0

    #@d2
    .line 302
    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    iput-object v2, v1, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@d8
    .line 308
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    #@db
    .line 310
    move/from16 v0, p6

    #@dd
    iput v0, v1, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    #@df
    .line 311
    move-object/from16 v0, p7

    #@e1
    iput-object v0, v1, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    #@e3
    .line 312
    move-object/from16 v0, p8

    #@e5
    iput-object v0, v1, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@e7
    .line 313
    move-object/from16 v0, p9

    #@e9
    iput-object v0, v1, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@eb
    .line 314
    move/from16 v0, p10

    #@ed
    iput-boolean v0, v1, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ef
    .line 319
    if-eqz v10, :cond_6

    #@f1
    .line 320
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    #@f4
    .line 315
    :cond_6
    return-object v1
.end method

.method private static generateInputIdForComponentName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static generateInputIdForHardware(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "/"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "HW"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 629
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@1e
    move-result v1

    #@1f
    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method private static generateInputIdForHdmiDevice(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 612
    const-string/jumbo v0, "/HDMI%04X%02X"

    #@3
    .line 615
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@12
    const/4 v3, 0x2

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    .line 616
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@18
    move-result v4

    #@19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    const/4 v5, 0x0

    #@1e
    aput-object v4, v3, v5

    #@20
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@23
    move-result v4

    #@24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    const/4 v5, 0x1

    #@29
    aput-object v4, v3, v5

    #@2b
    .line 615
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method private loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 586
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    #@10
    if-nez v0, :cond_0

    #@12
    .line 587
    const/4 v0, 0x0

    #@13
    return-object v0

    #@14
    .line 589
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@16
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method


# virtual methods
.method public createSettingsIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 405
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 406
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 407
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@12
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@16
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 408
    const-string/jumbo v1, "android.media.tv.extra.INPUT_ID"

    #@1e
    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 409
    return-object v0

    #@26
    .line 411
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
    .line 392
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 393
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 394
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@12
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@16
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 395
    const-string/jumbo v1, "android.media.tv.extra.INPUT_ID"

    #@1e
    invoke-virtual {p0}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 396
    return-object v0

    #@26
    .line 398
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
    .line 532
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 542
    if-ne p1, p0, :cond_0

    #@2
    .line 543
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 546
    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvInputInfo;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 547
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 550
    check-cast v0, Landroid/media/tv/TvInputInfo;

    #@d
    .line 551
    .local v0, "obj":Landroid/media/tv/TvInputInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@f
    iget-object v2, v0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 385
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    iget-object v2, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    #@0
    .prologue
    .line 427
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@2
    const/16 v1, 0x3ef

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 428
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@8
    return-object v0

    #@9
    .line 430
    :cond_0
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 418
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 537
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
    .line 460
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@2
    return v0
.end method

.method public isHardwareInput()Z
    .locals 1

    #@0
    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@2
    return v0
.end method

.method public isHidden(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 473
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
    .line 440
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
    .line 503
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
    .line 514
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 515
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 516
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 517
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
    .line 518
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
    .line 519
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@22
    .line 525
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
    .line 522
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@2b
    .line 523
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
    .line 527
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputInfo;->loadServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@4a
    move-result-object v3

    #@4b
    return-object v3

    #@4c
    .line 525
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    #@4d
    goto :goto_0

    #@4e
    .line 520
    :cond_3
    return-object v0

    #@4f
    .line 525
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

.method public loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 484
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@e
    iget v2, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    #@10
    .line 486
    const/4 v3, 0x0

    #@11
    .line 485
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 487
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    #@18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 488
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    #@20
    return-object v0

    #@21
    .line 490
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
    .line 556
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
    .line 557
    const-string/jumbo v1, ", pkg="

    #@15
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 557
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@1b
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1d
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1f
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 558
    const-string/jumbo v1, ", service="

    #@26
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 558
    iget-object v1, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2c
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2e
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@30
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 558
    const-string/jumbo v1, "}"

    #@37
    .line 556
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
    .line 569
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mId:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 570
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mParentId:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 571
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@11
    .line 572
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSetupActivity:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 573
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mSettingsActivity:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 574
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mType:I

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 575
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsHardwareInput:Z

    #@22
    if-eqz v0, :cond_0

    #@24
    move v0, v1

    #@25
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@28
    .line 576
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2a
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@2d
    .line 577
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2f
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@32
    .line 578
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mIconUri:Landroid/net/Uri;

    #@34
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@37
    .line 579
    iget v0, p0, Landroid/media/tv/TvInputInfo;->mLabelRes:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 580
    iget-object v0, p0, Landroid/media/tv/TvInputInfo;->mLabel:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 581
    iget-boolean v0, p0, Landroid/media/tv/TvInputInfo;->mIsConnectedToHdmiSwitch:Z

    #@43
    if-eqz v0, :cond_1

    #@45
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@48
    .line 568
    return-void

    #@49
    :cond_0
    move v0, v2

    #@4a
    .line 575
    goto :goto_0

    #@4b
    :cond_1
    move v1, v2

    #@4c
    .line 581
    goto :goto_1
.end method
