.class Landroid/view/ViewDebug$4;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$p:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1934
    iput-object p1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewDebug$4;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1937
    iget-object v0, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$4;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1938
    return-void
.end method
