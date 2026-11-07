.class public Landroid/appwidget/AppWidgetProviderInfo;
.super Ljava/lang/Object;
.source "AppWidgetProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetProviderInfo$FeatureFlags;,
        Landroid/appwidget/AppWidgetProviderInfo$CategoryFlags;,
        Landroid/appwidget/AppWidgetProviderInfo$ResizeModeFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESIZE_BOTH:I = 0x3

.field public static final whitelist RESIZE_HORIZONTAL:I = 0x1

.field public static final whitelist RESIZE_NONE:I = 0x0

.field public static final whitelist RESIZE_VERTICAL:I = 0x2

.field public static final whitelist WIDGET_CATEGORY_HOME_SCREEN:I = 0x1

.field public static final whitelist WIDGET_CATEGORY_KEYGUARD:I = 0x2

.field public static final whitelist WIDGET_CATEGORY_NOT_KEYGUARD:I = 0x8

.field public static final whitelist WIDGET_CATEGORY_SEARCHBOX:I = 0x4

.field public static final blacklist WIDGET_CATEGORY_UNKNOWN:I = -0x1

.field public static final whitelist WIDGET_FEATURE_CONFIGURATION_OPTIONAL:I = 0x4

.field public static final whitelist WIDGET_FEATURE_HIDE_FROM_PICKER:I = 0x2

.field public static final whitelist WIDGET_FEATURE_RECONFIGURABLE:I = 0x1


# instance fields
.field public whitelist autoAdvanceViewId:I

.field public whitelist configure:Landroid/content/ComponentName;

.field public whitelist descriptionRes:I

.field public whitelist generatedPreviewCategories:I

.field public whitelist icon:I

.field public whitelist initialKeyguardLayout:I

.field public whitelist initialLayout:I

.field public blacklist isExtendedFromAppWidgetProvider:Z

.field public whitelist label:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist maxResizeHeight:I

.field public whitelist maxResizeWidth:I

.field public whitelist minHeight:I

.field public whitelist minResizeHeight:I

.field public whitelist minResizeWidth:I

.field public whitelist minWidth:I

.field public whitelist previewImage:I

.field public whitelist previewLayout:I

.field public whitelist provider:Landroid/content/ComponentName;

.field public greylist providerInfo:Landroid/content/pm/ActivityInfo;

.field public whitelist resizeMode:I

.field public whitelist targetCellHeight:I

.field public whitelist targetCellWidth:I

.field public whitelist updatePeriodMillis:I

.field public whitelist widgetCategory:I

.field public whitelist widgetFeatures:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 630
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 415
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 423
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    .line 427
    invoke-static {}, Landroid/appwidget/flags/Flags;->generatedPreviews()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    .line 430
    :cond_ab
    return-void
.end method

.method private greylist-max-o loadDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I
    .param p3, "resourceId"    # I
    .param p4, "loadDefaultIcon"    # Z

    .line 600
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 602
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {p3}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 603
    if-gez p2, :cond_16

    .line 604
    const/4 p2, 0x0

    .line 606
    :cond_16
    invoke-virtual {v1, p3, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1a} :catch_1c

    return-object v0

    .line 610
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_1b
    goto :goto_1d

    .line 608
    :catch_1c
    move-exception v1

    .line 611
    :goto_1d
    if-eqz p4, :cond_29

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_29
    return-object v0
.end method


# virtual methods
.method public whitelist clone()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 4

    .line 562
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 563
    .local v0, "that":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    :goto_12
    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 564
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 565
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 566
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 567
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 568
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 569
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 570
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 571
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 572
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 573
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 574
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 575
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v1, :cond_45

    goto :goto_4b

    :cond_45
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v2

    :goto_4b
    iput-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 576
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 577
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 578
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 579
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 580
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 581
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 582
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 583
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 584
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 585
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 586
    iget-boolean v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    iput-boolean v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    .line 587
    invoke-static {}, Landroid/appwidget/flags/Flags;->generatedPreviews()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 588
    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    .line 590
    :cond_83
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 524
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public final whitelist getProfile()Landroid/os/UserHandle;
    .registers 3

    .line 516
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public final whitelist loadDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 497
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 498
    nop

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 503
    .local v0, "description":Ljava/lang/CharSequence;
    if-eqz v0, :cond_26

    .line 504
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 507
    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .line 463
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 439
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 440
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_11

    .line 441
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 443
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .line 483
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetProviderInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o updateDimensions(Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 619
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 620
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 621
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 622
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 623
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 624
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 625
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 530
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 531
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 543
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 551
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 554
    invoke-static {}, Landroid/appwidget/flags/Flags;->generatedPreviews()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 555
    iget v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    :cond_83
    return-void
.end method
