.class Lcom/android/server/accessibility/ScreenMagnifier$2;
.super Landroid/os/AsyncTask;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V
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
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "val$scale"    # F

    #@0
    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    iput p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->val$scale:F

    #@4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 861
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get1(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    .line 863
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    #@d
    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->val$scale:F

    #@f
    .line 862
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    #@12
    .line 864
    const/4 v0, 0x0

    #@13
    return-object v0
.end method
