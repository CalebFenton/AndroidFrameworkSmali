.class Landroid/widget/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
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
    .line 126
    iput-object p1, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/Gallery;->-set2(Landroid/widget/Gallery;Z)Z

    #@6
    .line 130
    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    #@8
    invoke-virtual {v0}, Landroid/widget/Gallery;->selectionChanged()V

    #@b
    .line 128
    return-void
.end method
