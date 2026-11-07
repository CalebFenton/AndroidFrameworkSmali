.class public final Landroid/service/controls/Control$StatelessBuilder;
.super Ljava/lang/Object;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatelessBuilder"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StatelessBuilder"


# instance fields
.field private blacklist mAppIntent:Landroid/app/PendingIntent;

.field private blacklist mControlId:Ljava/lang/String;

.field private blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mDeviceType:I

.field private blacklist mStructure:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/service/controls/Control;)V
    .registers 3
    .param p1, "control"    # Landroid/service/controls/Control;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 434
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 435
    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 460
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    .line 462
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 463
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 464
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 465
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 466
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    .line 467
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 468
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 469
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 470
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "appIntent"    # Landroid/app/PendingIntent;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 434
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 435
    iput-object v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 448
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 452
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/controls/Control;
    .registers 15

    .line 592
    new-instance v0, Landroid/service/controls/Control;

    iget-object v1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    iget v2, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    iget-object v3, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    sget-object v11, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    const-string v12, ""

    const/4 v13, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/service/controls/Control;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public whitelist setAppIntent(Landroid/app/PendingIntent;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "appIntent"    # Landroid/app/PendingIntent;

    .line 555
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 557
    return-object p0
.end method

.method public whitelist setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "controlId"    # Ljava/lang/String;

    .line 478
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mControlId:Ljava/lang/String;

    .line 480
    return-object p0
.end method

.method public whitelist setCustomColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "customColor"    # Landroid/content/res/ColorStateList;

    .line 583
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 584
    return-object p0
.end method

.method public whitelist setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "customIcon"    # Landroid/graphics/drawable/Icon;

    .line 569
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 570
    return-object p0
.end method

.method public whitelist setDeviceType(I)Landroid/service/controls/Control$StatelessBuilder;
    .registers 4
    .param p1, "deviceType"    # I

    .line 490
    invoke-static {p1}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatelessBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    goto :goto_24

    .line 494
    :cond_22
    iput p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mDeviceType:I

    .line 496
    :goto_24
    return-object p0
.end method

.method public whitelist setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "structure"    # Ljava/lang/CharSequence;

    .line 532
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 533
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 517
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 519
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 505
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 507
    return-object p0
.end method

.method public whitelist setZone(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatelessBuilder;
    .registers 2
    .param p1, "zone"    # Ljava/lang/CharSequence;

    .line 545
    iput-object p1, p0, Landroid/service/controls/Control$StatelessBuilder;->mZone:Ljava/lang/CharSequence;

    .line 546
    return-object p0
.end method
