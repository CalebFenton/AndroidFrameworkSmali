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
.field private static final DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field private static final LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private mCanRecord:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private mIconStandby:Landroid/graphics/drawable/Icon;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelResId:I

.field private mParentId:Ljava/lang/String;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSetupActivity:Ljava/lang/String;

.field private mTunerCount:Ljava/lang/Integer;

.field private mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 655
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@7
    .line 657
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@9
    const/4 v1, 0x1

    #@a
    .line 658
    const/16 v2, 0x3e8

    #@c
    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    .line 659
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@11
    const/4 v1, 0x2

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@16
    .line 660
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@18
    const/4 v1, 0x3

    #@19
    .line 661
    const/16 v2, 0x3e9

    #@1b
    .line 660
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1e
    .line 662
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@20
    const/4 v1, 0x4

    #@21
    const/16 v2, 0x3ea

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@26
    .line 663
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@28
    const/4 v1, 0x5

    #@29
    const/16 v2, 0x3eb

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@2e
    .line 664
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@30
    const/4 v1, 0x6

    #@31
    .line 665
    const/16 v2, 0x3ec

    #@33
    .line 664
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@36
    .line 666
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@38
    const/4 v1, 0x7

    #@39
    const/16 v2, 0x3ed

    #@3b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@3e
    .line 667
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@40
    const/16 v1, 0x8

    #@42
    const/16 v2, 0x3ee

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@47
    .line 668
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@49
    const/16 v1, 0x9

    #@4b
    const/16 v2, 0x3ef

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@50
    .line 669
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@52
    const/16 v1, 0xa

    #@54
    .line 670
    const/16 v2, 0x3f0

    #@56
    .line 669
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@59
    .line 646
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 697
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    #@5
    .line 698
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string/jumbo v2, "android.media.tv.TvInputService"

    #@a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    .line 699
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v1

    #@15
    .line 700
    const/16 v2, 0x84

    #@17
    .line 699
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@1d
    .line 696
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 711
    if-nez p1, :cond_0

    #@5
    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "context cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 714
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 715
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "resolveInfo cannot be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 717
    :cond_1
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    #@1b
    .line 718
    iput-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@1d
    .line 710
    return-void
.end method

.method private static generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 909
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 914
    const-string/jumbo v0, "/HDMI%04X%02X"

    #@3
    .line 917
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
    .line 918
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
    .line 917
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

.method private static generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "tvInputHardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 923
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
    .line 924
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@1e
    move-result v1

    #@1f
    .line 923
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

.method private parseServiceMetadata(I)V
    .locals 15
    .param p1, "inputType"    # I

    #@0
    .prologue
    .line 928
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v8, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    .line 929
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v5

    #@a
    .line 930
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    #@b
    const/4 v4, 0x0

    #@c
    .line 931
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v10, "android.media.tv.input"

    #@f
    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@12
    move-result-object v4

    #@13
    .line 932
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_1

    #@15
    .line 933
    new-instance v10, Ljava/lang/IllegalStateException;

    #@17
    new-instance v12, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v13, "No android.media.tv.input meta-data found for "

    #@1f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v12

    #@23
    .line 934
    iget-object v13, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@25
    .line 933
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v12

    #@29
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v12

    #@2d
    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@31
    .line 973
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v10

    #@32
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :catchall_0
    move-exception v11

    #@34
    move-object v14, v11

    #@35
    move-object v11, v10

    #@36
    move-object v10, v14

    #@37
    :goto_0
    if-eqz v4, :cond_0

    #@39
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    #@3c
    :cond_0
    :goto_1
    if-eqz v11, :cond_a

    #@3e
    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    #@3f
    .line 969
    :catch_1
    move-exception v2

    #@40
    .line 970
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/IllegalStateException;

    #@42
    new-instance v11, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v12, "Failed reading meta-data for "

    #@4a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v11

    #@4e
    iget-object v12, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@50
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v11

    #@58
    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5b
    throw v10

    #@5c
    .line 937
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_4
    iget-object v10, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5e
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@61
    move-result-object v6

    #@62
    .line 938
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@65
    move-result-object v0

    #@66
    .line 941
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    #@69
    move-result v9

    #@6a
    .local v9, "type":I
    const/4 v10, 0x1

    #@6b
    if-eq v9, v10, :cond_3

    #@6d
    .line 942
    const/4 v10, 0x2

    #@6e
    if-ne v9, v10, :cond_2

    #@70
    .line 945
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 946
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v10, "tv-input"

    #@77
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v10

    #@7b
    if-nez v10, :cond_4

    #@7d
    .line 947
    new-instance v10, Ljava/lang/IllegalStateException;

    #@7f
    new-instance v12, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v13, "Meta-data does not start with tv-input tag for "

    #@87
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v12

    #@8b
    .line 948
    iget-object v13, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@8d
    .line 947
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v12

    #@91
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v12

    #@95
    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@98
    throw v10

    #@99
    .line 973
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v9    # "type":I
    :catchall_1
    move-exception v10

    #@9a
    goto :goto_0

    #@9b
    .line 952
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "nodeName":Ljava/lang/String;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v9    # "type":I
    :cond_4
    sget-object v10, Lcom/android/internal/R$styleable;->TvInputService:[I

    #@9d
    .line 951
    invoke-virtual {v6, v0, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a0
    move-result-object v7

    #@a1
    .line 954
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x1

    #@a2
    .line 953
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a5
    move-result-object v10

    #@a6
    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    #@a8
    .line 955
    if-nez p1, :cond_5

    #@aa
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    #@ac
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@af
    move-result v10

    #@b0
    if-eqz v10, :cond_5

    #@b2
    .line 956
    new-instance v10, Ljava/lang/IllegalStateException;

    #@b4
    new-instance v12, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v13, "Setup activity not found for "

    #@bc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v12

    #@c0
    iget-object v13, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@c2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v12

    #@ca
    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v10

    #@ce
    .line 959
    :cond_5
    const/4 v10, 0x0

    #@cf
    .line 958
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d2
    move-result-object v10

    #@d3
    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mSettingsActivity:Ljava/lang/String;

    #@d5
    .line 960
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    #@d7
    if-nez v10, :cond_6

    #@d9
    .line 962
    const/4 v10, 0x2

    #@da
    const/4 v12, 0x0

    #@db
    .line 961
    invoke-virtual {v7, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@de
    move-result v10

    #@df
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e2
    move-result-object v10

    #@e3
    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    #@e5
    .line 964
    :cond_6
    iget-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    #@e7
    if-nez v10, :cond_7

    #@e9
    if-nez p1, :cond_7

    #@eb
    .line 966
    const/4 v10, 0x3

    #@ec
    const/4 v12, 0x1

    #@ed
    .line 965
    invoke-virtual {v7, v10, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f0
    move-result v10

    #@f1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f4
    move-result-object v10

    #@f5
    iput-object v10, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    #@f7
    .line 968
    :cond_7
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@fa
    .line 973
    if-eqz v4, :cond_8

    #@fc
    :try_start_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    #@ff
    :cond_8
    :goto_2
    if-eqz v11, :cond_b

    #@101
    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    #@102
    .line 971
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "type":I
    :catch_2
    move-exception v1

    #@103
    .line 972
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/IllegalStateException;

    #@105
    new-instance v11, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v12, "No resources found for "

    #@10d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v11

    #@111
    iget-object v12, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@113
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v11

    #@117
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v11

    #@11b
    invoke-direct {v10, v11, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11e
    throw v10

    #@11f
    .line 973
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "nodeName":Ljava/lang/String;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    .restart local v9    # "type":I
    :catch_3
    move-exception v11

    #@120
    goto :goto_2

    #@121
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "type":I
    :catch_4
    move-exception v12

    #@122
    if-nez v11, :cond_9

    #@124
    move-object v11, v12

    #@125
    goto/16 :goto_1

    #@127
    :cond_9
    if-eq v11, v12, :cond_0

    #@129
    :try_start_7
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@12c
    goto/16 :goto_1

    #@12e
    :cond_a
    throw v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    #@12f
    .line 927
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "nodeName":Ljava/lang/String;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    .restart local v9    # "type":I
    :cond_b
    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvInputInfo;
    .locals 21

    #@0
    .prologue
    .line 881
    new-instance v20, Landroid/content/ComponentName;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@8
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@a
    .line 882
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@12
    .line 881
    move-object/from16 v0, v20

    #@14
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 885
    .local v20, "componentName":Landroid/content/ComponentName;
    const/4 v5, 0x0

    #@18
    .line 886
    .local v5, "isHardwareInput":Z
    const/16 v16, 0x0

    #@1a
    .line 888
    .local v16, "isConnectedToHdmiSwitch":Z
    move-object/from16 v0, p0

    #@1c
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 889
    move-object/from16 v0, p0

    #@22
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@24
    move-object/from16 v0, v20

    #@26
    invoke-static {v0, v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 890
    .local v3, "id":Ljava/lang/String;
    const/16 v4, 0x3ef

    #@2c
    .line 891
    .local v4, "type":I
    const/4 v5, 0x1

    #@2d
    .line 892
    move-object/from16 v0, p0

    #@2f
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@31
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@34
    move-result v1

    #@35
    and-int/lit16 v1, v1, 0xfff

    #@37
    if-eqz v1, :cond_0

    #@39
    const/16 v16, 0x1

    #@3b
    .line 901
    :goto_0
    move-object/from16 v0, p0

    #@3d
    invoke-direct {v0, v4}, Landroid/media/tv/TvInputInfo$Builder;->parseServiceMetadata(I)V

    #@40
    .line 902
    new-instance v1, Landroid/media/tv/TvInputInfo;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget v7, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    #@4e
    .line 903
    move-object/from16 v0, p0

    #@50
    iget-object v8, v0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v9, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@56
    move-object/from16 v0, p0

    #@58
    iget-object v10, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v11, v0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v12, v0, Landroid/media/tv/TvInputInfo$Builder;->mSettingsActivity:Ljava/lang/String;

    #@62
    .line 904
    move-object/from16 v0, p0

    #@64
    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    #@66
    if-nez v13, :cond_3

    #@68
    const/4 v13, 0x0

    #@69
    :goto_1
    move-object/from16 v0, p0

    #@6b
    iget-object v14, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    #@6d
    if-nez v14, :cond_4

    #@6f
    const/4 v14, 0x0

    #@70
    .line 905
    :goto_2
    move-object/from16 v0, p0

    #@72
    iget-object v15, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    #@78
    move-object/from16 v17, v0

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    #@7e
    move-object/from16 v18, v0

    #@80
    .line 902
    const/16 v19, 0x0

    #@82
    invoke-direct/range {v1 .. v19}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ZILandroid/hardware/hdmi/HdmiDeviceInfo;ZLjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo;)V

    #@85
    return-object v1

    #@86
    .line 892
    :cond_0
    const/16 v16, 0x0

    #@88
    goto :goto_0

    #@89
    .line 893
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_1
    move-object/from16 v0, p0

    #@8b
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@8d
    if-eqz v1, :cond_2

    #@8f
    .line 894
    move-object/from16 v0, p0

    #@91
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@93
    move-object/from16 v0, v20

    #@95
    invoke-static {v0, v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    .line 895
    .restart local v3    # "id":Ljava/lang/String;
    sget-object v1, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@9f
    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@a2
    move-result v2

    #@a3
    const/4 v6, 0x0

    #@a4
    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    #@a7
    move-result v4

    #@a8
    .line 896
    .restart local v4    # "type":I
    const/4 v5, 0x1

    #@a9
    goto :goto_0

    #@aa
    .line 898
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_2
    invoke-static/range {v20 .. v20}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    .line 899
    .restart local v3    # "id":Ljava/lang/String;
    const/4 v4, 0x0

    #@af
    .restart local v4    # "type":I
    goto :goto_0

    #@b0
    .line 904
    :cond_3
    move-object/from16 v0, p0

    #@b2
    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    #@b4
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    #@b7
    move-result v13

    #@b8
    goto :goto_1

    #@b9
    :cond_4
    move-object/from16 v0, p0

    #@bb
    iget-object v14, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    #@bd
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@c0
    move-result v14

    #@c1
    goto :goto_2
.end method

.method public setCanRecord(Z)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1
    .param p1, "canRecord"    # Z

    #@0
    .prologue
    .line 856
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    #@6
    .line 857
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 869
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 870
    return-object p0
.end method

.method public setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3
    .param p1, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 800
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 801
    const-string/jumbo v0, "TvInputInfo"

    #@8
    const-string/jumbo v1, "TvInputHardwareInfo will not be used to build this TvInputInfo"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 802
    iput-object v2, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@10
    .line 804
    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@12
    .line 805
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 730
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 731
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 747
    if-nez p2, :cond_0

    #@2
    .line 748
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    #@4
    .line 756
    :goto_0
    return-object p0

    #@5
    .line 749
    :cond_0
    const/4 v0, 0x1

    #@6
    if-ne p2, v0, :cond_1

    #@8
    .line 750
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    #@a
    goto :goto_0

    #@b
    .line 751
    :cond_1
    const/4 v0, 0x2

    #@c
    if-ne p2, v0, :cond_2

    #@e
    .line 752
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    #@10
    goto :goto_0

    #@11
    .line 754
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Unknown state: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method public setLabel(I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 784
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Label text is already set."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 787
    :cond_0
    iput p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    #@f
    .line 788
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 768
    iget v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Resource ID for label is already set."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 771
    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    #@f
    .line 772
    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 817
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    #@2
    .line 818
    return-object p0
.end method

.method public setTunerCount(I)Landroid/media/tv/TvInputInfo$Builder;
    .locals 1
    .param p1, "tunerCount"    # I

    #@0
    .prologue
    .line 845
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    #@6
    .line 846
    return-object p0
.end method

.method public setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .locals 3
    .param p1, "tvInputHardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 830
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 831
    const-string/jumbo v0, "TvInputInfo"

    #@8
    const-string/jumbo v1, "mHdmiDeviceInfo will not be used to build this TvInputInfo"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 832
    iput-object v2, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@10
    .line 834
    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@12
    .line 835
    return-object p0
.end method
