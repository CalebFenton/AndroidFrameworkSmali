.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)V

    #@5
    .line 166
    return-void
.end method
