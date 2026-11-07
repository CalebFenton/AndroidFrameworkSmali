.class public final Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
.super Ljava/lang/Object;
.source "TvInteractiveAppServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$InteractiveAppType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist INTERACTIVE_APP_TYPE_ATSC:I = 0x2

.field public static final whitelist INTERACTIVE_APP_TYPE_GINGA:I = 0x4

.field public static final whitelist INTERACTIVE_APP_TYPE_HBBTV:I = 0x1

.field public static final whitelist INTERACTIVE_APP_TYPE_OTHER:I = -0x80000000

.field public static final whitelist INTERACTIVE_APP_TYPE_TARGETED_AD:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppServiceInfo"

.field private static final blacklist XML_START_TAG_NAME:Ljava/lang/String; = "tv-interactive-app"


# instance fields
.field private final blacklist mExtraTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mService:Landroid/content/pm/ResolveInfo;

.field private blacklist mTypes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    .line 88
    if-eqz p1, :cond_4c

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 95
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_44

    .line 99
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v4, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, p1, v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V

    .line 106
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 107
    iput-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 108
    invoke-direct {p0, v4}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->toTypesFlag(Ljava/util/List;)V

    .line 109
    return-void

    .line 96
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid component. Can\'t find the service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .param p1, "service"    # Landroid/content/pm/ResolveInfo;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p4, "extraTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    .line 112
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 113
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 114
    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 115
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    .line 119
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 122
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 209
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

    .line 214
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 215
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 216
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    const-string v2, "android.media.tv.interactive.app"

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_c} :catch_b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_9d

    .line 218
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_77

    .line 224
    :try_start_e
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 225
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 228
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

    .line 233
    :cond_24
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v7, "tv-interactive-app"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 239
    sget-object v7, Lcom/android/internal/R$styleable;->TvInteractiveAppService:[I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 241
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 243
    .local v9, "textArr":[Ljava/lang/CharSequence;
    array-length v10, v9

    :goto_3d
    if-ge v8, v10, :cond_50

    aget-object v11, v9, v8

    .line 244
    .local v11, "cs":Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    nop

    .end local v11    # "cs":Ljava/lang/CharSequence;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    .line 247
    :cond_50
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_75

    .line 248
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "textArr":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_58

    :try_start_55
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_58} :catch_9d

    .line 253
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_58
    nop

    .line 254
    return-void

    .line 235
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_5a
    :try_start_5a
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Meta-data does not start with tv-interactive-app tag for "

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
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v7

    .line 216
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_75
    move-exception v3

    goto :goto_92

    .line 219
    :cond_77
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No android.media.tv.interactive.app meta-data found for "

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
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_92
    .catchall {:try_start_5a .. :try_end_92} :catchall_75

    .line 216
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_92
    if-eqz v2, :cond_9c

    :try_start_94
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception v4

    :try_start_99
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9c
    :goto_9c
    throw v3
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9d} :catch_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_9d} :catch_b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_99 .. :try_end_9d} :catch_9d

    .line 251
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_9d
    move-exception v2

    .line 252
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

    .line 248
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_b9
    move-exception v2

    .line 249
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

.method private blacklist toTypesFlag(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 258
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_7a

    :cond_21
    goto :goto_4d

    :sswitch_22
    const-string/jumbo v3, "hbbtv"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v0

    goto :goto_4e

    :sswitch_2d
    const-string/jumbo v3, "ginga"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v4

    goto :goto_4e

    :sswitch_38
    const-string v3, "atsc"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v5

    goto :goto_4e

    :sswitch_42
    const-string/jumbo v3, "targeted_ad"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x3

    goto :goto_4e

    :goto_4d
    const/4 v3, -0x1

    :goto_4e
    packed-switch v3, :pswitch_data_8c

    goto :goto_6c

    .line 271
    :pswitch_52
    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    goto :goto_6c

    .line 268
    :pswitch_59
    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 269
    goto :goto_78

    .line 265
    :pswitch_60
    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 266
    goto :goto_78

    .line 262
    :pswitch_66
    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 263
    goto :goto_78

    .line 273
    :goto_6c
    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 274
    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v2    # "type":Ljava/lang/String;
    :goto_78
    goto :goto_c

    .line 278
    :cond_79
    return-void

    :sswitch_data_7a
    .sparse-switch
        -0x7bf2f32e -> :sswitch_42
        0x2dd9c3 -> :sswitch_38
        0x5dcd9a6 -> :sswitch_2d
        0x5e7972a -> :sswitch_22
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_60
        :pswitch_59
        :pswitch_52
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getCustomSupportedTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getSupportedTypes()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    return-void
.end method
