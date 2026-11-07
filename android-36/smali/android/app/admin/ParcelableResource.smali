.class public final Landroid/app/admin/ParcelableResource;
.super Ljava/lang/Object;
.source "ParcelableResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ParcelableResource$ResourceType;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final blacklist ATTR_RESOURCE_ID:Ljava/lang/String; = "resource-id"

.field private static final blacklist ATTR_RESOURCE_NAME:Ljava/lang/String; = "resource-name"

.field private static final blacklist ATTR_RESOURCE_TYPE:Ljava/lang/String; = "resource-type"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ParcelableResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RESOURCE_TYPE_DRAWABLE:I = 0x1

.field public static final blacklist RESOURCE_TYPE_STRING:I = 0x2

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mResourceId:I

.field private final blacklist mResourceName:Ljava/lang/String;

.field private final blacklist mResourceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    .line 345
    new-instance v0, Landroid/app/admin/ParcelableResource$1;

    invoke-direct {v0}, Landroid/app/admin/ParcelableResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "resourceId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceName"    # Ljava/lang/String;
    .param p4, "resourceType"    # I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 108
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 109
    iput p4, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    .line 110
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "context must be provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-static {p1, p2, p3}, Landroid/app/admin/ParcelableResource;->verifyResourceExistsInCallingPackage(Landroid/content/Context;II)V

    .line 93
    iput p2, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 96
    iput p3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    .line 97
    return-void
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;
    .registers 6
    .param p0, "xmlPullParser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    const-string/jumbo v0, "resource-id"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 305
    .local v0, "resourceId":I
    const-string/jumbo v2, "package-name"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "resource-name"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "resourceName":Ljava/lang/String;
    const-string/jumbo v4, "resource-type"

    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 312
    .local v1, "resourceType":I
    new-instance v4, Landroid/app/admin/ParcelableResource;

    invoke-direct {v4, v0, v2, v3, v1}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private blacklist getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x2400

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 257
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist hasDrawableInCallingPackage(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .line 140
    :try_start_0
    const-string v0, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 141
    :catch_f
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist hasStringInCallingPackage(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .line 148
    :try_start_0
    const-string/jumbo v0, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 149
    :catch_10
    move-exception v0

    .line 150
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 274
    .local p0, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static blacklist loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 283
    .local p0, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist verifyResourceExistsInCallingPackage(Landroid/content/Context;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    packed-switch p2, :pswitch_data_5a

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ResourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_1c
    invoke-static {p0, p1}, Landroid/app/admin/ParcelableResource;->hasStringInCallingPackage(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_41

    .line 126
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 126
    const-string v2, "String with id %d doesn\'t exist in the calling package %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_3b
    invoke-static {p0, p1}, Landroid/app/admin/ParcelableResource;->hasDrawableInCallingPackage(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 136
    :goto_41
    return-void

    .line 118
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 118
    const-string v2, "Drawable with id %d doesn\'t exist in the calling package %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist verifyResourceName(Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 261
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 267
    return-void

    .line 263
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v2, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 263
    const-string v3, "Current resource name %s for resource id %d has changed from the previously stored resource name %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 319
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 320
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/ParcelableResource;

    .line 321
    .local v2, "other":Landroid/app/admin/ParcelableResource;
    iget v3, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    iget v4, v2, Landroid/app/admin/ParcelableResource;->mResourceId:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    iget v4, v2, Landroid/app/admin/ParcelableResource;->mResourceType:I

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 321
    :goto_37
    return v0

    .line 319
    .end local v2    # "other":Landroid/app/admin/ParcelableResource;
    :cond_38
    :goto_38
    return v1
.end method

.method public blacklist getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 188
    .local p3, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 190
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 191
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catch_12
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load drawable resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-static {p3}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResourceId()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    return v0
.end method

.method public blacklist getResourceName()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResourceType()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    return v0
.end method

.method public blacklist getString(Landroid/content/Context;Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 212
    .local p2, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 214
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 215
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catch_e
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load string resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs blacklist getString(Landroid/content/Context;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 237
    .local p2, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 239
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "rawString":Ljava/lang/String;
    nop

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 240
    invoke-static {v2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v2

    .line 244
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "rawString":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load string resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 329
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    iget v3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 339
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return-void
.end method

.method public blacklist writeToXmlFile(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p1, "xmlSerializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const-string/jumbo v0, "resource-id"

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    const-string/jumbo v0, "package-name"

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    const-string/jumbo v0, "resource-name"

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const-string/jumbo v0, "resource-type"

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    return-void
.end method
