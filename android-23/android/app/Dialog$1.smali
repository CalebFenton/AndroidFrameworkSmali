.class Landroid/app/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Dialog;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Landroid/app/Dialog$1;->this$0:Landroid/app/Dialog;

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
    .line 135
    iget-object v0, p0, Landroid/app/Dialog$1;->this$0:Landroid/app/Dialog;

    #@2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismissDialog()V

    #@5
    .line 134
    return-void
.end method
