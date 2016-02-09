.class public final Landroid/app/WallpaperInfo;
.super Ljava/lang/Object;
.source "WallpaperInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "WallpaperInfo"


# instance fields
.field final mAuthorResource:I

.field final mDescriptionResource:I

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mThumbnailResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 296
    new-instance v0, Landroid/app/WallpaperInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/WallpaperInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@9
    .line 85
    move-object/from16 v0, p2

    #@b
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    .line 87
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v8

    #@11
    .line 88
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    #@12
    .line 89
    .local v11, "settingsActivityComponent":Ljava/lang/String;
    const/4 v13, -0x1

    #@13
    .line 90
    .local v13, "thumbnailRes":I
    const/4 v3, -0x1

    #@14
    .line 91
    .local v3, "authorRes":I
    const/4 v4, -0x1

    #@15
    .line 93
    .local v4, "descriptionRes":I
    const/4 v7, 0x0

    #@16
    .line 95
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v15, "android.service.wallpaper"

    #@19
    invoke-virtual {v12, v8, v15}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1c
    move-result-object v7

    #@1d
    .line 96
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v7, :cond_1

    #@1f
    .line 97
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@21
    const-string/jumbo v16, "No android.service.wallpaper meta-data"

    #@24
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@27
    throw v15
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 132
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "settingsActivityComponent":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@29
    .line 133
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@2b
    .line 134
    new-instance v16, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v17, "Unable to create context for: "

    #@33
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v16

    #@37
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@39
    move-object/from16 v17, v0

    #@3b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v16

    #@3f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v16

    #@43
    .line 133
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@46
    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 135
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v15

    #@48
    .line 136
    if-eqz v7, :cond_0

    #@4a
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@4d
    .line 135
    :cond_0
    throw v15

    #@4e
    .line 101
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "settingsActivityComponent":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@50
    invoke-virtual {v8, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@53
    move-result-object v9

    #@54
    .line 103
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@57
    move-result-object v2

    #@58
    .line 106
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    #@5b
    move-result v14

    #@5c
    .local v14, "type":I
    const/4 v15, 0x1

    #@5d
    if-eq v14, v15, :cond_3

    #@5f
    .line 107
    const/4 v15, 0x2

    #@60
    if-ne v14, v15, :cond_2

    #@62
    .line 110
    :cond_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    .line 111
    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "wallpaper"

    #@69
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v15

    #@6d
    if-nez v15, :cond_4

    #@6f
    .line 112
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@71
    .line 113
    const-string/jumbo v16, "Meta-data does not start with wallpaper tag"

    #@74
    .line 112
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@77
    throw v15

    #@78
    .line 117
    :cond_4
    sget-object v15, Lcom/android/internal/R$styleable;->Wallpaper:[I

    #@7a
    .line 116
    invoke-virtual {v9, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7d
    move-result-object v10

    #@7e
    .line 119
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    #@7f
    .line 118
    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@82
    move-result-object v11

    #@83
    .line 122
    .local v11, "settingsActivityComponent":Ljava/lang/String;
    const/4 v15, 0x2

    #@84
    .line 123
    const/16 v16, -0x1

    #@86
    .line 121
    move/from16 v0, v16

    #@88
    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8b
    move-result v13

    #@8c
    .line 125
    const/4 v15, 0x3

    #@8d
    .line 126
    const/16 v16, -0x1

    #@8f
    .line 124
    move/from16 v0, v16

    #@91
    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@94
    move-result v3

    #@95
    .line 128
    const/4 v15, 0x0

    #@96
    .line 129
    const/16 v16, -0x1

    #@98
    .line 127
    move/from16 v0, v16

    #@9a
    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@9d
    move-result v4

    #@9e
    .line 131
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a1
    .line 136
    if-eqz v7, :cond_5

    #@a3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@a6
    .line 139
    :cond_5
    move-object/from16 v0, p0

    #@a8
    iput-object v11, v0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@aa
    .line 140
    move-object/from16 v0, p0

    #@ac
    iput v13, v0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@ae
    .line 141
    move-object/from16 v0, p0

    #@b0
    iput v3, v0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@b2
    .line 142
    move-object/from16 v0, p0

    #@b4
    iput v4, v0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@b6
    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@9
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@f
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@15
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@1b
    .line 150
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@23
    iput-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@25
    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 307
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Service:"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@17
    .line 268
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "  "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@30
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string/jumbo v1, "mSettingsActivityName="

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@4d
    .line 266
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 180
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    .line 181
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 180
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public loadAuthor(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget v2, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@2
    if-gtz v2, :cond_0

    #@4
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@6
    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@9
    throw v2

    #@a
    .line 223
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@c
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@e
    .line 224
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@f
    .line 225
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    #@11
    .line 226
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@15
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@17
    .line 227
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@19
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1b
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    .line 229
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v2, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@1f
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    return-object v2
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@4
    .line 237
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .line 238
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    #@7
    .line 239
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@9
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@d
    .line 240
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@f
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@11
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    .line 242
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@15
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@17
    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 243
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@1d
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1f
    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    #@21
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 247
    :cond_1
    iget v2, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@28
    if-gtz v2, :cond_2

    #@2a
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@2c
    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@2f
    throw v2

    #@30
    .line 248
    :cond_2
    iget v2, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@32
    .line 249
    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@34
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@36
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    .line 248
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@3b
    move-result-object v2

    #@3c
    return-object v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 211
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@2
    if-gez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 213
    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@a
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@c
    .line 214
    iget v1, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@e
    .line 215
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@12
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    .line 213
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WallpaperInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@e
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@10
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 275
    const-string/jumbo v1, ", settings: "

    #@19
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 276
    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1f
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 276
    const-string/jumbo v1, "}"

    #@26
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 287
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 288
    iget v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 289
    iget v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 290
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@16
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 285
    return-void
.end method
