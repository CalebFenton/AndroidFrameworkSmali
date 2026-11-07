.class Landroid/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ForwardingListener;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ForwardingListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 278
    iput-object p1, p0, Landroid/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 281
    iget-object v0, p0, Landroid/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ForwardingListener;

    invoke-static {v0}, Landroid/widget/ForwardingListener;->-$$Nest$fgetmSrc(Landroid/widget/ForwardingListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 282
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 283
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 285
    :cond_10
    return-void
.end method
