.class public Landroid/appwidget/AppWidgetProviderInfo;
.super Ljava/lang/Object;
.source "AppWidgetProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetProviderInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESIZE_BOTH:I = 0x3

.field public static final RESIZE_HORIZONTAL:I = 0x1

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_VERTICAL:I = 0x2

.field public static final WIDGET_CATEGORY_HOME_SCREEN:I = 0x1

.field public static final WIDGET_CATEGORY_KEYGUARD:I = 0x2

.field public static final WIDGET_CATEGORY_SEARCHBOX:I = 0x4


# instance fields
.field public autoAdvanceViewId:I

.field public configure:Landroid/content/ComponentName;

.field public icon:I

.field public initialKeyguardLayout:I

.field public initialLayout:I

.field public label:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public minHeight:I

.field public minResizeHeight:I

.field public minResizeWidth:I

.field public minWidth:I

.field public previewImage:I

.field public provider:Landroid/content/ComponentName;

.field public providerInfo:Landroid/content/pm/ActivityInfo;

.field public resizeMode:I

.field public updatePeriodMillis:I

.field public widgetCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 385
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo$1;

    #@2
    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo$1;-><init>()V

    #@5
    .line 384
    sput-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 222
    new-instance v0, Landroid/content/ComponentName;

    #@b
    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    #@e
    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@10
    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@16
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@1c
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@22
    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@28
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@2e
    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v0

    #@32
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@34
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v0

    #@38
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@3a
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 232
    new-instance v0, Landroid/content/ComponentName;

    #@42
    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    #@45
    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@47
    .line 234
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@4d
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #@53
    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@59
    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@5f
    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v0

    #@63
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@65
    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v0

    #@69
    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@6b
    .line 240
    const/4 v0, 0x0

    #@6c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@72
    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@74
    .line 220
    return-void
.end method

.method private loadDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I
    .param p3, "resourceId"    # I
    .param p4, "loadDefaultIcon"    # Z

    #@0
    .prologue
    .line 367
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v2

    #@4
    .line 368
    iget-object v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@6
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    .line 367
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    .line 369
    .local v1, "resources":Landroid/content/res/Resources;
    if-lez p3, :cond_1

    #@e
    .line 370
    if-gtz p2, :cond_0

    #@10
    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@17
    move-result-object v2

    #@18
    iget p2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1a
    .line 373
    :cond_0
    invoke-virtual {v1, p3, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 375
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@20
    .line 378
    :cond_1
    if-eqz p4, :cond_2

    #@22
    iget-object v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@2b
    move-result-object v2

    #@2c
    :goto_0
    return-object v2

    #@2d
    :cond_2
    const/4 v2, 0x0

    #@2e
    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 340
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    #@3
    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    #@6
    .line 341
    .local v0, "that":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@8
    if-nez v1, :cond_0

    #@a
    move-object v1, v2

    #@b
    :goto_0
    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@d
    .line 342
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@f
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@11
    .line 343
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@13
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@15
    .line 344
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@17
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@19
    .line 345
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@1b
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@1d
    .line 346
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@1f
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@21
    .line 347
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@23
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@25
    .line 348
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@27
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@29
    .line 349
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@2b
    if-nez v1, :cond_1

    #@2d
    move-object v1, v2

    #@2e
    :goto_1
    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@30
    .line 350
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@32
    if-nez v1, :cond_2

    #@34
    :goto_2
    iput-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@36
    .line 351
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #@38
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #@3a
    .line 352
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@3c
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@3e
    .line 353
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@40
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@42
    .line 354
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@44
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@46
    .line 355
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@48
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@4a
    .line 356
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@4c
    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@4e
    .line 357
    return-object v0

    #@4f
    .line 341
    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@51
    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    #@54
    move-result-object v1

    #@55
    goto :goto_0

    #@56
    .line 349
    :cond_1
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@58
    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    #@5b
    move-result-object v1

    #@5c
    goto :goto_1

    #@5d
    .line 350
    :cond_2
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@5f
    const/4 v2, 0x0

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    goto :goto_2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 361
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getProfile()Landroid/os/UserHandle;
    .locals 2

    #@0
    .prologue
    .line 303
    new-instance v0, Landroid/os/UserHandle;

    #@2
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v1

    #@c
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    return-object v0
.end method

.method public final loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public final loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 250
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@3
    invoke-virtual {v1, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 251
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@9
    .line 252
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 254
    :cond_0
    return-object v2
.end method

.method public final loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    #@0
    .prologue
    .line 294
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AppWidgetProviderInfo("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x2f

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const/16 v1, 0x29

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 309
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 310
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 311
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 315
    :goto_0
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 316
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 317
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 318
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 319
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 320
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 321
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 322
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 323
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 324
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    #@3a
    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 328
    :goto_1
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@42
    .line 329
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 330
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 331
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    #@4e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 332
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    #@53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 333
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    #@58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 334
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@5d
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@60
    .line 308
    return-void

    #@61
    .line 313
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    goto :goto_0

    #@65
    .line 326
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    goto :goto_1
.end method
