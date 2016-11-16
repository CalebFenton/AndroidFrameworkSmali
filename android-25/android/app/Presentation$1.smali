.class Landroid/app/Presentation$1;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Presentation;


# direct methods
.method constructor <init>(Landroid/app/Presentation;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Presentation;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 327
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    #@2
    invoke-static {v0}, Landroid/app/Presentation;->-get0(Landroid/app/Presentation;)Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v0

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 340
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    #@e
    invoke-static {v0}, Landroid/app/Presentation;->-wrap0(Landroid/app/Presentation;)V

    #@11
    .line 338
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    #@2
    invoke-static {v0}, Landroid/app/Presentation;->-get0(Landroid/app/Presentation;)Landroid/view/Display;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v0

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 333
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    #@e
    invoke-static {v0}, Landroid/app/Presentation;->-wrap1(Landroid/app/Presentation;)V

    #@11
    .line 331
    :cond_0
    return-void
.end method
