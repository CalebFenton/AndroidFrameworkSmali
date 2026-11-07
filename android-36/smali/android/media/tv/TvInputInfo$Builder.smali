.class public final Landroid/media/tv/TvInputInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field private static final greylist-max-o LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final greylist-max-o LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final greylist-max-o PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final greylist-max-o PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final greylist-max-o XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final greylist-max-o sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private blacklist mCanPauseRecording:Ljava/lang/Boolean;

.field private greylist-max-o mCanRecord:Ljava/lang/Boolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconStandby:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mLabelResId:I

.field private greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private greylist-max-o mSetupActivity:Ljava/lang/String;

.field private greylist-max-o mTunerCount:Ljava/lang/Integer;

.field private greylist-max-o mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 684
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    .line 686
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    if-eqz p1, :cond_2b

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.TvInputService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 730
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 732
    iget-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_23

    .line 735
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    .line 736
    return-void

    .line 733
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid component. Can\'t find the service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    if-eqz p1, :cond_14

    .line 749
    if-eqz p2, :cond_c

    .line 752
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    .line 753
    iput-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 754
    return-void

    .line 750
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resolveInfo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 967
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 972
    const-string v0, "/HDMI%04X%02X"

    .line 975
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 976
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 975
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "tvInputHardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    return-object v0
.end method

.method private static blacklist getRelativePosition(Landroid/content/Context;Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 986
    nop

    .line 987
    const-string v0, "hdmi_control"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 988
    .local v0, "hcm":Landroid/hardware/hdmi/HdmiControlManager;
    if-nez v0, :cond_d

    .line 989
    const/4 v1, 0x0

    return v1

    .line 991
    :cond_d
    nop

    .line 992
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPhysicalAddress()I

    move-result v2

    .line 991
    invoke-static {v1, v2}, Landroid/hardware/hdmi/HdmiUtils;->getHdmiAddressRelativePosition(II)I

    move-result v1

    return v1
.end method

.method private greylist-max-o parseServiceMetadata(I)V
    .registers 14
    .param p1, "inputType"    # I

    .line 996
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 997
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 998
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_a
    const-string v2, "android.media.tv.input"

    .line 999
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_10} :catch_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_bc

    .line 1000
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_96

    .line 1005
    :try_start_12
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1006
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1009
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_1c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_28

    if-eq v6, v7, :cond_28

    goto :goto_1c

    .line 1013
    :cond_28
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1014
    .local v5, "nodeName":Ljava/lang/String;
    const-string v9, "tv-input"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 1019
    sget-object v9, Lcom/android/internal/R$styleable;->TvInputService:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1021
    .local v9, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    .line 1023
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    const/4 v11, 0x0

    if-nez v10, :cond_4f

    .line 1024
    invoke-virtual {v9, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    .line 1027
    :cond_4f
    iget-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v7, :cond_60

    if-nez p1, :cond_60

    .line 1028
    const/4 v7, 0x3

    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    .line 1031
    :cond_60
    iget-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    if-nez v7, :cond_6f

    .line 1032
    const/4 v7, 0x4

    invoke-virtual {v9, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    .line 1037
    :cond_6f
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_72
    .catchall {:try_start_12 .. :try_end_72} :catchall_94

    .line 1038
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_77

    :try_start_74
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_77} :catch_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_77} :catch_bc

    .line 1042
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_77
    nop

    .line 1043
    return-void

    .line 1015
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_79
    :try_start_79
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with tv-input tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/media/tv/TvInputInfo$Builder;
    .end local p1    # "inputType":I
    throw v7

    .line 998
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/media/tv/TvInputInfo$Builder;
    .restart local p1    # "inputType":I
    :catchall_94
    move-exception v3

    goto :goto_b1

    .line 1001
    :cond_96
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.media.tv.input meta-data found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/media/tv/TvInputInfo$Builder;
    .end local p1    # "inputType":I
    throw v3
    :try_end_b1
    .catchall {:try_start_79 .. :try_end_b1} :catchall_94

    .line 998
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/media/tv/TvInputInfo$Builder;
    .restart local p1    # "inputType":I
    :goto_b1
    if-eqz v2, :cond_bb

    :try_start_b3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_bb

    :catchall_b7
    move-exception v4

    :try_start_b8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/media/tv/TvInputInfo$Builder;
    .end local p1    # "inputType":I
    :cond_bb
    :goto_bb
    throw v3
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bc} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_bc} :catch_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b8 .. :try_end_bc} :catch_bc

    .line 1040
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/media/tv/TvInputInfo$Builder;
    .restart local p1    # "inputType":I
    :catch_bc
    move-exception v2

    .line 1041
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No resources found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1038
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_d8
    move-exception v2

    .line 1039
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvInputInfo;
    .registers 29

    .line 928
    move-object/from16 v0, p0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 933
    .local v2, "isHardwareInput":Z
    const/4 v3, 0x0

    .line 935
    .local v3, "isConnectedToHdmiSwitch":Z
    const/4 v4, 0x0

    .line 937
    .local v4, "hdmiConnectionRelativePosition":I
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_3b

    .line 938
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-static {v1, v5}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v5

    .line 939
    .local v5, "id":Ljava/lang/String;
    const/16 v7, 0x3ef

    .line 940
    .local v7, "type":I
    const/4 v2, 0x1

    .line 941
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    iget-object v9, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-static {v8, v9}, Landroid/media/tv/TvInputInfo$Builder;->getRelativePosition(Landroid/content/Context;Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v4

    .line 942
    const/4 v8, 0x2

    if-ne v4, v8, :cond_31

    const/4 v8, 0x1

    goto :goto_32

    :cond_31
    move v8, v6

    :goto_32
    move v3, v8

    move v12, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object v10, v5

    move v11, v7

    goto :goto_7f

    .line 944
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_3b
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v5, :cond_73

    .line 945
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-static {v1, v5}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v5

    .line 946
    .restart local v5    # "id":Ljava/lang/String;
    sget-object v7, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 947
    .restart local v7    # "type":I
    const/4 v2, 0x1

    .line 948
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_6b

    .line 949
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 950
    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v8

    .line 949
    const v9, 0xffff

    invoke-static {v9, v8}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v8

    iput-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 956
    :cond_6b
    move v12, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object v10, v5

    move v11, v7

    goto :goto_7f

    .line 953
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_73
    invoke-static {v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 954
    .restart local v5    # "id":Ljava/lang/String;
    const/4 v7, 0x0

    move v12, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object v10, v5

    move v11, v7

    .line 956
    .end local v2    # "isHardwareInput":Z
    .end local v3    # "isConnectedToHdmiSwitch":Z
    .end local v4    # "hdmiConnectionRelativePosition":I
    .end local v5    # "id":Ljava/lang/String;
    .local v10, "id":Ljava/lang/String;
    .local v11, "type":I
    .local v12, "isHardwareInput":Z
    .local v23, "isConnectedToHdmiSwitch":Z
    .local v24, "hdmiConnectionRelativePosition":I
    :goto_7f
    invoke-direct {v0, v11}, Landroid/media/tv/TvInputInfo$Builder;->parseServiceMetadata(I)V

    .line 957
    new-instance v8, Landroid/media/tv/TvInputInfo;

    iget-object v9, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    iget v14, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    iget-object v15, v0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    iget-object v4, v0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    .line 959
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    if-nez v5, :cond_99

    move/from16 v19, v6

    goto :goto_a1

    :cond_99
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v19, v5

    .line 960
    :goto_a1
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    if-nez v5, :cond_a8

    move/from16 v20, v6

    goto :goto_b0

    :cond_a8
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v20, v5

    .line 961
    :goto_b0
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v5, :cond_b5

    goto :goto_bb

    :cond_b5
    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_bb
    move/from16 v21, v6

    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    iget-object v7, v0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    const/16 v27, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    invoke-direct/range {v8 .. v27}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZZILandroid/hardware/hdmi/HdmiDeviceInfo;ZILjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo-IA;)V

    .line 957
    return-object v8
.end method

.method public whitelist setCanPauseRecording(Z)Landroid/media/tv/TvInputInfo$Builder;
    .registers 3
    .param p1, "canPauseRecording"    # Z

    .line 903
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    .line 904
    return-object p0
.end method

.method public whitelist setCanRecord(Z)Landroid/media/tv/TvInputInfo$Builder;
    .registers 3
    .param p1, "canRecord"    # Z

    .line 891
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    .line 892
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 916
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 917
    return-object p0
.end method

.method public whitelist setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 4
    .param p1, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 835
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v0, :cond_e

    .line 836
    const-string v0, "TvInputInfo"

    const-string v1, "TvInputHardwareInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 839
    :cond_e
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 840
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 765
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 766
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;I)Landroid/media/tv/TvInputInfo$Builder;
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 782
    if-nez p2, :cond_5

    .line 783
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_10

    .line 784
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 785
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    goto :goto_10

    .line 786
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 787
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    .line 791
    :goto_10
    return-object p0

    .line 789
    :cond_11
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

.method public whitelist setLabel(I)Landroid/media/tv/TvInputInfo$Builder;
    .registers 4
    .param p1, "resId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 819
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    .line 822
    iput p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    .line 823
    return-object p0

    .line 820
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label text is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 803
    iget v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    if-nez v0, :cond_7

    .line 806
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 807
    return-object p0

    .line 804
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource ID for label is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 852
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    .line 853
    return-object p0
.end method

.method public whitelist setTunerCount(I)Landroid/media/tv/TvInputInfo$Builder;
    .registers 3
    .param p1, "tunerCount"    # I

    .line 880
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    .line 881
    return-object p0
.end method

.method public whitelist setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 4
    .param p1, "tvInputHardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 865
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v0, :cond_e

    .line 866
    const-string v0, "TvInputInfo"

    const-string v1, "mHdmiDeviceInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 869
    :cond_e
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 870
    return-object p0
.end method
