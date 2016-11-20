.class Lcom/android/server/accessibility/MagnificationController$1;
.super Landroid/os/AsyncTask;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/MagnificationController;->persistScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationController;

.field final synthetic val$scale:F

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationController;FI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationController;
    .param p2, "val$scale"    # F
    .param p3, "val$userId"    # I

    #@0
    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    #@2
    iput p2, p0, Lcom/android/server/accessibility/MagnificationController$1;->val$scale:F

    #@4
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$1;->val$userId:I

    #@6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 537
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$1;->this$0:Lcom/android/server/accessibility/MagnificationController;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->-get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 539
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    #@9
    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$1;->val$scale:F

    #@b
    iget v3, p0, Lcom/android/server/accessibility/MagnificationController$1;->val$userId:I

    #@d
    .line 538
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    #@10
    .line 540
    const/4 v0, 0x0

    #@11
    return-object v0
.end method
