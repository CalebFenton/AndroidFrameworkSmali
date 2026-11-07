.class public final Landroid/printservice/PrintServiceInfo;
.super Ljava/lang/Object;
.source "PrintServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o TAG_PRINT_SERVICE:Ljava/lang/String; = "print-service"


# instance fields
.field private final greylist-max-o mAddPrintersActivityName:Ljava/lang/String;

.field private final greylist-max-o mAdvancedPrintOptionsActivityName:Ljava/lang/String;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mIsEnabled:Z

.field private final greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final greylist-max-o mSettingsActivityName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-class v0, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    .line 333
    new-instance v0, Landroid/printservice/PrintServiceInfo$1;

    invoke-direct {v0}, Landroid/printservice/PrintServiceInfo$1;-><init>()V

    sput-object v0, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "settingsActivityName"    # Ljava/lang/String;
    .param p3, "addPrintersActivityName"    # Ljava/lang/String;
    .param p4, "advancedPrintOptionsActivityName"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 100
    iput-object p2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    .line 79
    const/4 v0, 0x0

    const-class v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static greylist-max-o create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "settingsActivityName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 127
    .local v1, "addPrintersActivityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 129
    .local v2, "advancedPrintOptionsActivityName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 131
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.printservice"

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_c1

    .line 135
    const/4 v5, 0x0

    .line 136
    .local v5, "type":I
    :goto_13
    const-string v6, "Error reading meta-data:"

    const/4 v7, 0x1

    if-eq v5, v7, :cond_21

    const/4 v8, 0x2

    if-eq v5, v8, :cond_21

    .line 137
    :try_start_1b
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_13

    .line 140
    :cond_21
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "print-service"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 142
    sget-object v7, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Ignoring meta-data that does not start with print-service tag"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 145
    :cond_36
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 147
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 148
    .local v10, "allAttributes":Landroid/util/AttributeSet;
    sget-object v11, Lcom/android/internal/R$styleable;->PrintService:[I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 151
    .local v11, "attributes":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 154
    invoke-virtual {v11, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 157
    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 160
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_5c} :catch_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_5c} :catch_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_5c} :catch_64
    .catchall {:try_start_1b .. :try_end_5c} :catchall_62

    .line 170
    .end local v5    # "type":I
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "allAttributes":Landroid/util/AttributeSet;
    .end local v11    # "attributes":Landroid/content/res/TypedArray;
    :goto_5c
    if-eqz v3, :cond_c1

    .line 171
    :goto_5e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_c1

    .line 170
    :catchall_62
    move-exception v5

    goto :goto_bb

    .line 166
    :catch_64
    move-exception v5

    .line 167
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_65
    sget-object v6, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load resources for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    nop

    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_c1

    .line 171
    goto :goto_5e

    .line 164
    :catch_85
    move-exception v5

    .line 165
    .local v5, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v7, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    nop

    .end local v5    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_c1

    .line 171
    goto :goto_5e

    .line 162
    :catch_a0
    move-exception v5

    .line 163
    .local v5, "ioe":Ljava/io/IOException;
    sget-object v7, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_65 .. :try_end_b7} :catchall_62

    .line 170
    nop

    .end local v5    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_c1

    .line 171
    goto :goto_5e

    .line 170
    :goto_bb
    if-eqz v3, :cond_c0

    .line 171
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 173
    :cond_c0
    throw v5

    .line 176
    :cond_c1
    :goto_c1
    new-instance v5, Landroid/printservice/PrintServiceInfo;

    invoke-direct {v5, p1, v0, v1, v2}, Landroid/printservice/PrintServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 297
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 298
    return v0

    .line 300
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 301
    return v1

    .line 303
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 304
    return v1

    .line 306
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/printservice/PrintServiceInfo;

    .line 307
    .local v2, "other":Landroid/printservice/PrintServiceInfo;
    iget-object v3, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 308
    iget-object v3, v2, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 309
    return v1

    .line 311
    :cond_1f
    iget-object v3, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 312
    return v1

    .line 314
    :cond_2a
    return v0
.end method

.method public greylist-max-o getAddPrintersActivityName()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getAdvancedOptionsActivityName()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 111
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist-max-o getId()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public greylist-max-o getSettingsActivityName()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public greylist-max-o isEnabled()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    return v0
.end method

.method public greylist-max-o setIsEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 213
    iput-boolean p1, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    .line 214
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintServiceInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v1, "isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", settingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", addPrintersActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ", advancedPrintOptionsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    .line 282
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    return-void
.end method
