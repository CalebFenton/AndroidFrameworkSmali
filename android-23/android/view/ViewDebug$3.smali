.class final Landroid/view/ViewDebug$3;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;

    #@0
    .prologue
    .line 558
    iput-object p1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic post([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 567
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "data":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$3;->post([Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public varargs post([Ljava/lang/Void;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 567
    return-void
.end method

.method public bridge synthetic pre()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/view/ViewDebug$3;->pre()[Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pre()[Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 560
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public bridge synthetic run([Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 563
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "data":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$3;->run([Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public varargs run([Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    #@4
    iget v1, v1, Landroid/view/View;->mLeft:I

    #@6
    iget-object v2, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    #@8
    iget v2, v2, Landroid/view/View;->mTop:I

    #@a
    iget-object v3, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    #@c
    iget v3, v3, Landroid/view/View;->mRight:I

    #@e
    iget-object v4, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    #@10
    iget v4, v4, Landroid/view/View;->mBottom:I

    #@12
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@15
    .line 563
    return-void
.end method
