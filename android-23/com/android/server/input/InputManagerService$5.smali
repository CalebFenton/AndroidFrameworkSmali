.class Lcom/android/server/input/InputManagerService$5;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    .line 857
    .local p2, "val$list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$5;->val$list:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "keyboardLayoutResId"    # I
    .param p6, "priority"    # I

    #@0
    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$5;->val$list:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroid/hardware/input/KeyboardLayout;

    #@4
    invoke-direct {v1, p2, p3, p4, p6}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 860
    return-void
.end method
