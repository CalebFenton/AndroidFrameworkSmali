.class Lcom/android/server/input/InputManagerService$7;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$enabledLayoutDescriptors:[Ljava/lang/String;

.field final synthetic val$enabledLayouts:Ljava/util/ArrayList;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$potentialLayouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "val$enabledLayoutDescriptors"    # [Ljava/lang/String;
    .param p4, "val$identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    #@0
    .prologue
    .line 1059
    .local p3, "val$enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    .local p5, "val$potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    #@6
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    #@8
    iput-object p5, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1067
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayoutDescriptors:[Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    array-length v3, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, v2, v1

    #@9
    .line 1068
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 1069
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$enabledLayouts:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1070
    return-void

    #@1b
    .line 1067
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1077
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    #@21
    move-result v1

    #@22
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    #@24
    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    #@27
    move-result v2

    #@28
    if-ne v1, v2, :cond_4

    #@2a
    .line 1078
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    #@2d
    move-result v1

    #@2e
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    #@30
    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    #@33
    move-result v2

    #@34
    if-ne v1, v2, :cond_4

    #@36
    .line 1079
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 1080
    const/4 v1, 0x1

    #@3b
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    #@3d
    .line 1081
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@42
    .line 1083
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    .line 1064
    :cond_3
    :goto_1
    return-void

    #@48
    .line 1084
    :cond_4
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    #@4b
    move-result v1

    #@4c
    if-ne v1, v5, :cond_3

    #@4e
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    #@51
    move-result v1

    #@52
    if-ne v1, v5, :cond_3

    #@54
    .line 1085
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    #@56
    if-nez v1, :cond_3

    #@58
    .line 1086
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$potentialLayouts:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    goto :goto_1
.end method
