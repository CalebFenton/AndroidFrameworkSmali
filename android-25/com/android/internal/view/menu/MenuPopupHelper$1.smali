.class Lcom/android/internal/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    #@0
    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    #@5
    .line 322
    return-void
.end method
