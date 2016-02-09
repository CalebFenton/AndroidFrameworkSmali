.class Landroid/widget/Gallery$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Gallery;

    #@0
    .prologue
    .line 1238
    iput-object p1, p0, Landroid/widget/Gallery$2;->this$0:Landroid/widget/Gallery;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Landroid/widget/Gallery$2;->this$0:Landroid/widget/Gallery;

    #@2
    invoke-static {v0}, Landroid/widget/Gallery;->-wrap0(Landroid/widget/Gallery;)V

    #@5
    .line 1240
    return-void
.end method
