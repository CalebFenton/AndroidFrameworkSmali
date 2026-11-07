.class Landroid/graphics/drawable/Icon$LoadDrawableTask$1;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/graphics/drawable/Icon$LoadDrawableTask;

.field final synthetic blacklist val$listener:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

.field final synthetic blacklist val$this$0:Landroid/graphics/drawable/Icon;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/Icon$LoadDrawableTask;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V
    .registers 4
    .param p1, "this$1"    # Landroid/graphics/drawable/Icon$LoadDrawableTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1197
    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->this$1:Landroid/graphics/drawable/Icon$LoadDrawableTask;

    iput-object p2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->val$this$0:Landroid/graphics/drawable/Icon;

    iput-object p3, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->val$listener:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1200
    iget-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->val$listener:Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;

    iget-object v1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;->this$1:Landroid/graphics/drawable/Icon$LoadDrawableTask;

    iget-object v1, v1, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 1201
    return-void
.end method
