.class public final Landroid/media/tv/ad/TvAdServiceInfo;
.super Ljava/lang/Object;
.source "TvAdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/ad/TvAdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "TvAdServiceInfo"

.field private static final blacklist XML_START_TAG_NAME:Ljava/lang/String; = "tv-ad-service"


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mService:Landroid/content/pm/ResolveInfo;

.field private final blacklist mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/media/tv/ad/TvAdServiceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/ad/TvAdServiceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/ad/TvAdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    .line 66
    if-eqz p1, :cond_4e

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.ad.TvAdService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 72
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_46

    .line 76
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/media/tv/ad/TvAdServiceInfo;->generateAdServiceId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, p1, v4}, Landroid/media/tv/ad/TvAdServiceInfo;->parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V

    .line 83
    iput-object v1, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 84
    iput-object v3, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mId:Ljava/lang/String;

    .line 85
    iget-object v5, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    return-void

    .line 73
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid component. Can\'t find the service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p3, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    .line 89
    iput-object p1, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 90
    iput-object p2, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mId:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    .line 95
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mId:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/ad/TvAdServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist generateAdServiceId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 147
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V
    .registers 16
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 153
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 154
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    const-string v2, "android.media.tv.ad.service"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_c} :catch_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_9c

    .line 156
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_76

    .line 162
    :try_start_e
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 166
    .local v4, "attrs":Landroid/util/AttributeSet;
    :goto_18
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_24

    const/4 v5, 0x2

    if-eq v6, v5, :cond_24

    goto :goto_18

    .line 171
    :cond_24
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "nodeName":Ljava/lang/String;
    const-string v7, "tv-ad-service"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 177
    sget-object v7, Lcom/android/internal/R$styleable;->TvAdService:[I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 179
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 181
    .local v9, "textArr":[Ljava/lang/CharSequence;
    array-length v10, v9

    :goto_3c
    if-ge v8, v10, :cond_4f

    aget-object v11, v9, v8

    .line 182
    .local v11, "cs":Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    nop

    .end local v11    # "cs":Ljava/lang/CharSequence;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 185
    :cond_4f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_74

    .line 186
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "textArr":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_57

    :try_start_54
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_57} :catch_9c

    .line 191
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_57
    nop

    .line 192
    return-void

    .line 173
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_59
    :try_start_59
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with tv-ad-service tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v7

    .line 154
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_74
    move-exception v3

    goto :goto_91

    .line 157
    :cond_76
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.media.tv.ad.service meta-data found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_91
    .catchall {:try_start_59 .. :try_end_91} :catchall_74

    .line 154
    .restart local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_91
    if-eqz v2, :cond_9b

    :try_start_93
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception v4

    :try_start_98
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9b
    :goto_9b
    throw v3
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_9c} :catch_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_98 .. :try_end_9c} :catch_9c

    .line 189
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_9c
    move-exception v2

    .line 190
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

    .line 186
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_b8
    move-exception v2

    .line 187
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
.method public whitelist describeContents()I
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 127
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getSupportedTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 201
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Landroid/media/tv/ad/TvAdServiceInfo;->mTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 204
    return-void
.end method
