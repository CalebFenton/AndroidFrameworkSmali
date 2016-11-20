.class Landroid/app/ActivityOptions$2$1;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$2;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityOptions$2;

.field final synthetic val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions$2;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/ActivityOptions$2;
    .param p2, "val$listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@0
    .prologue
    .line 348
    iput-object p1, p0, Landroid/app/ActivityOptions$2$1;->this$1:Landroid/app/ActivityOptions$2;

    #@2
    iput-object p2, p0, Landroid/app/ActivityOptions$2$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/app/ActivityOptions$2$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@2
    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationFinishedListener;->onAnimationFinished()V

    #@5
    .line 350
    return-void
.end method
