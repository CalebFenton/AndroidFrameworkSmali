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

.field final mContextDescriptionResource:I

.field final mContextUriResource:I

.field final mDescriptionResource:I

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mShowMetadataInPreview:Z

.field final mThumbnailResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 375
    new-instance v0, Landroid/app/WallpaperInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/WallpaperInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 21
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
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@9
    .line 90
    move-object/from16 v0, p2

    #@b
    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    .line 92
    .local v15, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v10

    #@11
    .line 93
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    #@12
    .line 94
    .local v13, "settingsActivityComponent":Ljava/lang/String;
    const/16 v16, -0x1

    #@14
    .line 95
    .local v16, "thumbnailRes":I
    const/4 v3, -0x1

    #@15
    .line 96
    .local v3, "authorRes":I
    const/4 v6, -0x1

    #@16
    .line 97
    .local v6, "descriptionRes":I
    const/4 v5, -0x1

    #@17
    .line 98
    .local v5, "contextUriRes":I
    const/4 v4, -0x1

    #@18
    .line 99
    .local v4, "contextDescriptionRes":I
    const/4 v14, 0x0

    #@19
    .line 101
    .local v14, "showMetadataInPreview":Z
    const/4 v9, 0x0

    #@1a
    .line 103
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v18, "android.service.wallpaper"

    #@1d
    move-object/from16 v0, v18

    #@1f
    invoke-virtual {v15, v10, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@22
    move-result-object v9

    #@23
    .line 104
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_1

    #@25
    .line 105
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@27
    const-string/jumbo v19, "No android.service.wallpaper meta-data"

    #@2a
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v18
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 149
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "settingsActivityComponent":Ljava/lang/String;
    .end local v14    # "showMetadataInPreview":Z
    :catch_0
    move-exception v7

    #@2f
    .line 150
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@31
    .line 151
    new-instance v19, Ljava/lang/StringBuilder;

    #@33
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v20, "Unable to create context for: "

    #@39
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v19

    #@3d
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@3f
    move-object/from16 v20, v0

    #@41
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v19

    #@45
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v19

    #@49
    .line 150
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 152
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v18

    #@4e
    .line 153
    if-eqz v9, :cond_0

    #@50
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@53
    .line 152
    :cond_0
    throw v18

    #@54
    .line 109
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v13    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v14    # "showMetadataInPreview":Z
    :cond_1
    :try_start_2
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@56
    move-object/from16 v18, v0

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@5d
    move-result-object v11

    #@5e
    .line 111
    .local v11, "res":Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@61
    move-result-object v2

    #@62
    .line 114
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    #@65
    move-result v17

    #@66
    .local v17, "type":I
    const/16 v18, 0x1

    #@68
    move/from16 v0, v17

    #@6a
    move/from16 v1, v18

    #@6c
    if-eq v0, v1, :cond_3

    #@6e
    .line 115
    const/16 v18, 0x2

    #@70
    move/from16 v0, v17

    #@72
    move/from16 v1, v18

    #@74
    if-ne v0, v1, :cond_2

    #@76
    .line 118
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    .line 119
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v18, "wallpaper"

    #@7d
    move-object/from16 v0, v18

    #@7f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v18

    #@83
    if-nez v18, :cond_4

    #@85
    .line 120
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@87
    .line 121
    const-string/jumbo v19, "Meta-data does not start with wallpaper tag"

    #@8a
    .line 120
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v18

    #@8e
    .line 125
    :cond_4
    sget-object v18, Lcom/android/internal/R$styleable;->Wallpaper:[I

    #@90
    .line 124
    move-object/from16 v0, v18

    #@92
    invoke-virtual {v11, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@95
    move-result-object v12

    #@96
    .line 127
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    #@98
    .line 126
    move/from16 v0, v18

    #@9a
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@9d
    move-result-object v13

    #@9e
    .line 130
    .local v13, "settingsActivityComponent":Ljava/lang/String;
    const/16 v18, 0x2

    #@a0
    .line 131
    const/16 v19, -0x1

    #@a2
    .line 129
    move/from16 v0, v18

    #@a4
    move/from16 v1, v19

    #@a6
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a9
    move-result v16

    #@aa
    .line 133
    const/16 v18, 0x3

    #@ac
    .line 134
    const/16 v19, -0x1

    #@ae
    .line 132
    move/from16 v0, v18

    #@b0
    move/from16 v1, v19

    #@b2
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b5
    move-result v3

    #@b6
    .line 136
    const/16 v18, 0x0

    #@b8
    .line 137
    const/16 v19, -0x1

    #@ba
    .line 135
    move/from16 v0, v18

    #@bc
    move/from16 v1, v19

    #@be
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c1
    move-result v6

    #@c2
    .line 139
    const/16 v18, 0x4

    #@c4
    .line 140
    const/16 v19, -0x1

    #@c6
    .line 138
    move/from16 v0, v18

    #@c8
    move/from16 v1, v19

    #@ca
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@cd
    move-result v5

    #@ce
    .line 142
    const/16 v18, 0x5

    #@d0
    .line 143
    const/16 v19, -0x1

    #@d2
    .line 141
    move/from16 v0, v18

    #@d4
    move/from16 v1, v19

    #@d6
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d9
    move-result v4

    #@da
    .line 145
    const/16 v18, 0x6

    #@dc
    .line 146
    const/16 v19, 0x0

    #@de
    .line 144
    move/from16 v0, v18

    #@e0
    move/from16 v1, v19

    #@e2
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e5
    move-result v14

    #@e6
    .line 148
    .local v14, "showMetadataInPreview":Z
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e9
    .line 153
    if-eqz v9, :cond_5

    #@eb
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@ee
    .line 156
    :cond_5
    move-object/from16 v0, p0

    #@f0
    iput-object v13, v0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@f2
    .line 157
    move/from16 v0, v16

    #@f4
    move-object/from16 v1, p0

    #@f6
    iput v0, v1, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@f8
    .line 158
    move-object/from16 v0, p0

    #@fa
    iput v3, v0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@fc
    .line 159
    move-object/from16 v0, p0

    #@fe
    iput v6, v0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@100
    .line 160
    move-object/from16 v0, p0

    #@102
    iput v5, v0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    #@104
    .line 161
    move-object/from16 v0, p0

    #@106
    iput v4, v0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    #@108
    .line 162
    move-object/from16 v0, p0

    #@10a
    iput-boolean v14, v0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    #@10c
    .line 88
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@a
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@10
    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@16
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@1c
    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    #@22
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    #@28
    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    const/4 v0, 0x1

    #@2f
    :cond_0
    iput-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    #@31
    .line 173
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@39
    iput-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@3b
    .line 165
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 386
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
    .line 343
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
    .line 344
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
    .line 345
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
    .line 342
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 203
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    .line 204
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 203
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
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
    .line 196
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
    .line 188
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
    .line 339
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getShowMetadataInPreview()Z
    .locals 1

    #@0
    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    #@2
    return v0
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
    .line 245
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
    .line 246
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@c
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@e
    .line 247
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@f
    .line 248
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    #@11
    .line 249
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@15
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@17
    .line 250
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@19
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1b
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    .line 252
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

.method public loadContextDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    iget v2, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    #@2
    if-gtz v2, :cond_0

    #@4
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@6
    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@9
    throw v2

    #@a
    .line 305
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@c
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@e
    .line 306
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@f
    .line 307
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    #@11
    .line 308
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@15
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@17
    .line 309
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@19
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1b
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    .line 311
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v2, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    #@1f
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method public loadContextUri(Landroid/content/pm/PackageManager;)Landroid/net/Uri;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 282
    iget v3, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    #@3
    if-gtz v3, :cond_0

    #@5
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@7
    invoke-direct {v3}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@a
    throw v3

    #@b
    .line 283
    :cond_0
    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@d
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@f
    .line 284
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@10
    .line 285
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_1

    #@12
    .line 286
    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@14
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@16
    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@18
    .line 287
    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@1a
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1c
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    .line 290
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v3, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    #@20
    .line 289
    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 291
    .local v1, "contextUriString":Ljava/lang/String;
    if-nez v1, :cond_2

    #@2a
    .line 292
    return-object v4

    #@2b
    .line 294
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2e
    move-result-object v3

    #@2f
    return-object v3
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
    .line 259
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@4
    .line 260
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .line 261
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    #@7
    .line 262
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@9
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b
    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@d
    .line 263
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@f
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@11
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    .line 265
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
    .line 266
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
    .line 270
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
    .line 271
    :cond_2
    iget v2, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@32
    .line 272
    iget-object v3, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@34
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@36
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    .line 271
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
    .line 224
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
    .line 214
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
    .line 234
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@2
    if-gez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 236
    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@a
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@c
    .line 237
    iget v1, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@e
    .line 238
    iget-object v2, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@12
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    .line 236
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
    .line 350
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
    .line 351
    const-string/jumbo v1, ", settings: "

    #@19
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 352
    iget-object v1, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1f
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 352
    const-string/jumbo v1, "}"

    #@26
    .line 350
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
    .line 362
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 363
    iget v0, p0, Landroid/app/WallpaperInfo;->mThumbnailResource:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 364
    iget v0, p0, Landroid/app/WallpaperInfo;->mAuthorResource:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 365
    iget v0, p0, Landroid/app/WallpaperInfo;->mDescriptionResource:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 366
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextUriResource:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 367
    iget v0, p0, Landroid/app/WallpaperInfo;->mContextDescriptionResource:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 368
    iget-boolean v0, p0, Landroid/app/WallpaperInfo;->mShowMetadataInPreview:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 369
    iget-object v0, p0, Landroid/app/WallpaperInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@28
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    .line 361
    return-void

    #@2c
    .line 368
    :cond_0
    const/4 v0, 0x0

    #@2d
    goto :goto_0
.end method
