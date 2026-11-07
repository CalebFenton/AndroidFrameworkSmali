.class public final Landroid/service/controls/Control$StatefulBuilder;
.super Ljava/lang/Object;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatefulBuilder"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StatefulBuilder"


# instance fields
.field private blacklist mAppIntent:Landroid/app/PendingIntent;

.field private blacklist mAuthRequired:Z

.field private blacklist mControlId:Ljava/lang/String;

.field private blacklist mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mDeviceType:I

.field private blacklist mStatus:I

.field private blacklist mStatusText:Ljava/lang/CharSequence;

.field private blacklist mStructure:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/service/controls/Control;)V
    .registers 4
    .param p1, "control"    # Landroid/service/controls/Control;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 633
    const-string v1, ""

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 634
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 640
    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 641
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 642
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 663
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    .line 665
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 666
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 667
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 668
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 669
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    .line 670
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 671
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 672
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 673
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStatus(Landroid/service/controls/Control;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 674
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmControlTemplate(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 675
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmStatusText(Landroid/service/controls/Control;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 676
    invoke-static {p1}, Landroid/service/controls/Control;->-$$Nest$fgetmAuthRequired(Landroid/service/controls/Control;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 677
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "appIntent"    # Landroid/app/PendingIntent;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 633
    const-string v1, ""

    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 634
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 640
    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 641
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    iput-object v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 642
    iput-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 651
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    .line 654
    iput-object p2, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 655
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/controls/Control;
    .registers 15

    .line 858
    new-instance v0, Landroid/service/controls/Control;

    iget-object v1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    iget v2, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    iget-object v3, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    iget v10, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    iget-object v11, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    iget-object v12, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    iget-boolean v13, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    invoke-direct/range {v0 .. v13}, Landroid/service/controls/Control;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public whitelist setAppIntent(Landroid/app/PendingIntent;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "appIntent"    # Landroid/app/PendingIntent;

    .line 762
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mAppIntent:Landroid/app/PendingIntent;

    .line 764
    return-object p0
.end method

.method public whitelist setAuthRequired(Z)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "authRequired"    # Z

    .line 849
    iput-boolean p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mAuthRequired:Z

    .line 850
    return-object p0
.end method

.method public whitelist setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "controlId"    # Ljava/lang/String;

    .line 685
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlId:Ljava/lang/String;

    .line 687
    return-object p0
.end method

.method public whitelist setControlTemplate(Landroid/service/controls/templates/ControlTemplate;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "controlTemplate"    # Landroid/service/controls/templates/ControlTemplate;

    .line 825
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 827
    return-object p0
.end method

.method public whitelist setCustomColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "customColor"    # Landroid/content/res/ColorStateList;

    .line 790
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 791
    return-object p0
.end method

.method public whitelist setCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "customIcon"    # Landroid/graphics/drawable/Icon;

    .line 776
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 777
    return-object p0
.end method

.method public whitelist setDeviceType(I)Landroid/service/controls/Control$StatefulBuilder;
    .registers 4
    .param p1, "deviceType"    # I

    .line 697
    invoke-static {p1}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    goto :goto_24

    .line 701
    :cond_22
    iput p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mDeviceType:I

    .line 703
    :goto_24
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/service/controls/Control$StatefulBuilder;
    .registers 4
    .param p1, "status"    # I

    .line 801
    if-ltz p1, :cond_9

    const/4 v0, 0x5

    if-lt p1, v0, :cond_6

    goto :goto_9

    .line 805
    :cond_6
    iput p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    goto :goto_24

    .line 802
    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatus:I

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_24
    return-object p0
.end method

.method public whitelist setStatusText(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "statusText"    # Ljava/lang/CharSequence;

    .line 837
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStatusText:Ljava/lang/CharSequence;

    .line 839
    return-object p0
.end method

.method public whitelist setStructure(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "structure"    # Ljava/lang/CharSequence;

    .line 739
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mStructure:Ljava/lang/CharSequence;

    .line 740
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 724
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mSubtitle:Ljava/lang/CharSequence;

    .line 726
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 712
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 714
    return-object p0
.end method

.method public whitelist setZone(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;
    .registers 2
    .param p1, "zone"    # Ljava/lang/CharSequence;

    .line 752
    iput-object p1, p0, Landroid/service/controls/Control$StatefulBuilder;->mZone:Ljava/lang/CharSequence;

    .line 753
    return-object p0
.end method
