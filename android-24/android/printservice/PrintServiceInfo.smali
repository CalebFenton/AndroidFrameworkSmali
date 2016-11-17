.class public final Landroid/printservice/PrintServiceInfo;
.super Ljava/lang/Object;
.source "PrintServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/PrintServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_PRINT_SERVICE:Ljava/lang/String; = "print-service"


# instance fields
.field private final mAddPrintersActivityName:Ljava/lang/String;

.field private final mAdvancedPrintOptionsActivityName:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mIsEnabled:Z

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const-class v0, Landroid/printservice/PrintServiceInfo;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 312
    new-instance v0, Landroid/printservice/PrintServiceInfo$1;

    #@a
    invoke-direct {v0}, Landroid/printservice/PrintServiceInfo$1;-><init>()V

    #@d
    .line 311
    sput-object v0, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "settingsActivityName"    # Ljava/lang/String;
    .param p3, "addPrintersActivityName"    # Ljava/lang/String;
    .param p4, "advancedPrintOptionsActivityName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Landroid/content/ComponentName;

    #@5
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@9
    .line 93
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@d
    .line 92
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@16
    .line 94
    iput-object p1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@18
    .line 95
    iput-object p2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1a
    .line 96
    iput-object p3, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    #@1c
    .line 97
    iput-object p4, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    #@1e
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@a
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    #@13
    .line 76
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@1a
    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@1c
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@22
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    #@28
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    #@2e
    .line 73
    return-void
.end method

.method public static create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;
    .locals 17
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 118
    const/4 v11, 0x0

    #@1
    .line 119
    .local v11, "settingsActivityName":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 120
    .local v1, "addPrintersActivityName":Ljava/lang/String;
    const/4 v2, 0x0

    #@3
    .line 122
    .local v2, "advancedPrintOptionsActivityName":Ljava/lang/String;
    const/4 v9, 0x0

    #@4
    .line 123
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v8

    #@8
    .line 124
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    #@a
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    .line 125
    const-string/jumbo v15, "android.printservice"

    #@f
    .line 124
    invoke-virtual {v14, v8, v15}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@12
    move-result-object v9

    #@13
    .line 126
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v9, :cond_1

    #@15
    .line 128
    const/4 v12, 0x0

    #@16
    .line 129
    .local v12, "type":I
    :goto_0
    const/4 v14, 0x1

    #@17
    if-eq v12, v14, :cond_0

    #@19
    const/4 v14, 0x2

    #@1a
    if-eq v12, v14, :cond_0

    #@1c
    .line 130
    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    #@1f
    move-result v12

    #@20
    goto :goto_0

    #@21
    .line 133
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    .line 134
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "print-service"

    #@28
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v14

    #@2c
    if-nez v14, :cond_2

    #@2e
    .line 135
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    #@30
    const-string/jumbo v15, "Ignoring meta-data that does not start with print-service tag"

    #@33
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 163
    .end local v1    # "addPrintersActivityName":Ljava/lang/String;
    .end local v2    # "advancedPrintOptionsActivityName":Ljava/lang/String;
    .end local v11    # "settingsActivityName":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_1

    #@38
    .line 164
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@3b
    .line 169
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v12    # "type":I
    :cond_1
    :goto_2
    new-instance v14, Landroid/printservice/PrintServiceInfo;

    #@3d
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v14, v0, v11, v1, v2}, Landroid/printservice/PrintServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    return-object v14

    #@43
    .line 139
    .restart local v1    # "addPrintersActivityName":Ljava/lang/String;
    .restart local v2    # "advancedPrintOptionsActivityName":Ljava/lang/String;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v11    # "settingsActivityName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@45
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@47
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    .line 138
    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@4c
    move-result-object v10

    #@4d
    .line 140
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@50
    move-result-object v3

    #@51
    .line 142
    .local v3, "allAttributes":Landroid/util/AttributeSet;
    sget-object v14, Lcom/android/internal/R$styleable;->PrintService:[I

    #@53
    .line 141
    invoke-virtual {v10, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@56
    move-result-object v4

    #@57
    .line 145
    .local v4, "attributes":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@58
    .line 144
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@5b
    move-result-object v11

    #@5c
    .line 148
    .local v11, "settingsActivityName":Ljava/lang/String;
    const/4 v14, 0x1

    #@5d
    .line 147
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 150
    .local v1, "addPrintersActivityName":Ljava/lang/String;
    const/4 v14, 0x3

    #@62
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@65
    move-result-object v2

    #@66
    .line 153
    .local v2, "advancedPrintOptionsActivityName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_1

    #@6a
    .line 155
    .end local v1    # "addPrintersActivityName":Ljava/lang/String;
    .end local v2    # "advancedPrintOptionsActivityName":Ljava/lang/String;
    .end local v3    # "allAttributes":Landroid/util/AttributeSet;
    .end local v4    # "attributes":Landroid/content/res/TypedArray;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "settingsActivityName":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@6b
    .line 156
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    #@6d
    new-instance v15, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v16, "Error reading meta-data:"

    #@75
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v15

    #@79
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v15

    #@7d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v15

    #@81
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@84
    .line 163
    if-eqz v9, :cond_1

    #@86
    .line 164
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@89
    goto :goto_2

    #@8a
    .line 159
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v5

    #@8b
    .line 160
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    #@8d
    new-instance v15, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v16, "Unable to load resources for: "

    #@95
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v15

    #@99
    .line 161
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@9d
    move-object/from16 v16, v0

    #@9f
    move-object/from16 v0, v16

    #@a1
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@a3
    move-object/from16 v16, v0

    #@a5
    .line 160
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v15

    #@a9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v15

    #@ad
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b0
    .line 163
    if-eqz v9, :cond_1

    #@b2
    .line 164
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@b5
    goto :goto_2

    #@b6
    .line 157
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v13

    #@b7
    .line 158
    .local v13, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    #@b9
    new-instance v15, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v16, "Error reading meta-data:"

    #@c1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v15

    #@c5
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v15

    #@c9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v15

    #@cd
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d0
    .line 163
    if-eqz v9, :cond_1

    #@d2
    .line 164
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@d5
    goto/16 :goto_2

    #@d7
    .line 162
    .end local v13    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v14

    #@d8
    .line 163
    if-eqz v9, :cond_3

    #@da
    .line 164
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@dd
    .line 162
    :cond_3
    throw v14
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 256
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 276
    if-ne p0, p1, :cond_0

    #@4
    .line 277
    return v4

    #@5
    .line 279
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 280
    return v3

    #@8
    .line 282
    :cond_1
    invoke-virtual {p0}, Landroid/printservice/PrintServiceInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 283
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 285
    check-cast v0, Landroid/printservice/PrintServiceInfo;

    #@16
    .line 286
    .local v0, "other":Landroid/printservice/PrintServiceInfo;
    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 287
    iget-object v1, v0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 288
    return v3

    #@1f
    .line 290
    :cond_3
    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@21
    iget-object v2, v0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 291
    return v3

    #@2a
    .line 293
    :cond_4
    return v4
.end method

.method public getAddPrintersActivityName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAdvancedOptionsActivityName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 106
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    .line 107
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 106
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    #@7
    return v0

    #@8
    :cond_0
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    #@2
    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 299
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintServiceInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 300
    const-string/jumbo v1, "id="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 301
    const-string/jumbo v1, "isEnabled="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-boolean v2, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    .line 302
    const-string/jumbo v1, ", resolveInfo="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    .line 303
    const-string/jumbo v1, ", settingsActivityName="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 304
    const-string/jumbo v1, ", addPrintersActivityName="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 305
    const-string/jumbo v1, ", advancedPrintOptionsActivityName="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 306
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    #@50
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 307
    const-string/jumbo v1, "}"

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 261
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 262
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    int-to-byte v0, v0

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@f
    .line 263
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 264
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 265
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 266
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 260
    return-void

    #@24
    :cond_0
    move v0, v1

    #@25
    .line 262
    goto :goto_0
.end method
