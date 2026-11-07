.class public final Landroid/app/WallpaperInfo;
.super Ljava/lang/Object;
.source "WallpaperInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperInfo"


# instance fields
.field final greylist-max-o mAuthorResource:I

.field final greylist-max-o mContextDescriptionResource:I

.field final greylist-max-o mContextUriResource:I

.field final greylist-max-o mDescriptionResource:I

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field final blacklist mSettingsSliceUri:Ljava/lang/String;

.field final blacklist mShouldUseDefaultUnfoldTransition:Z

.field final greylist-max-o mShowMetadataInPreview:Z

.field final blacklist mSupportMultipleDisplays:Z

.field final greylist-max-o mSupportsAmbientMode:Z

.field final greylist-max-o mThumbnailResource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 461
    new-instance v0, Landroid/app/WallpaperInfo$1;

    invoke-direct {v0}, Landroid/app/WallpaperInfo$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 98
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 100
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_b
    const-string v2, "android.service.wallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_11} :catch_b8

    .line 103
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_a5

    .line 108
    :try_start_13
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 110
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 113
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_1d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_29

    if-eq v6, v7, :cond_29

    goto :goto_1d

    .line 117
    :cond_29
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 123
    sget-object v9, Lcom/android/internal/R$styleable;->Wallpaper:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 125
    .local v9, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 127
    const/4 v10, -0x1

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    .line 130
    const/4 v7, 0x3

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    .line 133
    const/4 v7, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    .line 136
    const/4 v11, 0x4

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    .line 139
    const/4 v11, 0x5

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    .line 142
    const/4 v10, 0x6

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    .line 147
    const-string v10, "android.hardware.type.watch"

    .line 148
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 149
    .local v10, "defSupportsAmbientMode":Z
    const/4 v11, 0x7

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    .line 152
    const/16 v11, 0xa

    invoke-virtual {v9, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    .line 155
    const/16 v8, 0x8

    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    .line 157
    const/16 v8, 0x9

    invoke-virtual {v9, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    .line 161
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_94
    .catchall {:try_start_13 .. :try_end_94} :catchall_a3

    .line 162
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "defSupportsAmbientMode":Z
    if-eqz v2, :cond_99

    :try_start_96
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_96 .. :try_end_99} :catch_b8

    .line 165
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_99
    nop

    .line 166
    return-void

    .line 119
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_9b
    :try_start_9b
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with wallpaper tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/WallpaperInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v7

    .line 101
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/WallpaperInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :catchall_a3
    move-exception v3

    goto :goto_ad

    .line 104
    :cond_a5
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No android.service.wallpaper meta-data"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/WallpaperInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v3
    :try_end_ad
    .catchall {:try_start_9b .. :try_end_ad} :catchall_a3

    .line 101
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/WallpaperInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :goto_ad
    if-eqz v2, :cond_b7

    :try_start_af
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v4

    :try_start_b4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/app/WallpaperInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    :cond_b7
    :goto_b7
    throw v3
    :try_end_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b4 .. :try_end_b8} :catch_b8

    .line 162
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/app/WallpaperInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :catch_b8
    move-exception v2

    .line 163
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create context for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    move v0, v1

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v2

    :goto_3d
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    move v0, v2

    :goto_4e
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    iput-boolean v1, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    .line 180
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 181
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 210
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsSliceUri()Landroid/net/Uri;
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 379
    :cond_6
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShowMetadataInPreview()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    return v0
.end method

.method public whitelist loadAuthor(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 252
    iget v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    if-lez v0, :cond_1e

    .line 253
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 254
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 255
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_17

    .line 256
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 257
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 259
    :cond_17
    iget v2, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 252
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1e
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadContextDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 311
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    if-lez v0, :cond_22

    .line 312
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 313
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_17

    .line 315
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 316
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 318
    :cond_17
    iget v2, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 311
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_22
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadContextUri(Landroid/content/pm/PackageManager;)Landroid/net/Uri;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 289
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    if-lez v0, :cond_2a

    .line 290
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 291
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 292
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_17

    .line 293
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 296
    :cond_17
    iget v2, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 298
    .local v2, "contextUriCharSequence":Ljava/lang/CharSequence;
    if-nez v2, :cond_21

    .line 299
    const/4 v3, 0x0

    return-object v3

    .line 301
    :cond_21
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 289
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "contextUriCharSequence":Ljava/lang/CharSequence;
    :cond_2a
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 267
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 268
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_13

    .line 269
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 272
    :cond_13
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v2, :cond_26

    .line 273
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 277
    :cond_26
    iget v2, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    if-lez v2, :cond_37

    .line 278
    iget v2, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 277
    :cond_37
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 231
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 221
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 241
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_6
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist shouldUseDefaultUnfoldTransition()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    return v0
.end method

.method public whitelist supportsAmbientMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 345
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    return v0
.end method

.method public whitelist supportsMultipleDisplays()Z
    .registers 2

    .line 399
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

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

    .line 444
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportsAmbientMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsSliceUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mSupportMultipleDisplays:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShouldUseDefaultUnfoldTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 456
    return-void
.end method
