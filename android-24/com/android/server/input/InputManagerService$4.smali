.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$d:Landroid/view/InputDevice;

.field final synthetic val$layouts:Ljava/util/List;

.field final synthetic val$systemLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "val$d"    # Landroid/view/InputDevice;
    .param p3, "val$systemLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 775
    .local p4, "val$layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    #@4
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    #@6
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    #@0
    .prologue
    .line 781
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    #@3
    move-result v3

    #@4
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    #@6
    invoke-virtual {v4}, Landroid/view/InputDevice;->getVendorId()I

    #@9
    move-result v4

    #@a
    if-ne v3, v4, :cond_0

    #@c
    .line 782
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    #@f
    move-result v3

    #@10
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    #@12
    invoke-virtual {v4}, Landroid/view/InputDevice;->getProductId()I

    #@15
    move-result v4

    #@16
    if-eq v3, v4, :cond_1

    #@18
    .line 783
    :cond_0
    return-void

    #@19
    .line 785
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    #@1c
    move-result-object v1

    #@1d
    .line 786
    .local v1, "locales":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    #@20
    move-result v2

    #@21
    .line 787
    .local v2, "numLocales":I
    const/4 v0, 0x0

    #@22
    .local v0, "localeIndex":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@24
    .line 788
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    #@26
    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v3, v4}, Lcom/android/server/input/InputManagerService;->-wrap1(Ljava/util/Locale;Ljava/util/Locale;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 789
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    #@32
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    .line 778
    :cond_2
    return-void

    #@36
    .line 787
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0
.end method
