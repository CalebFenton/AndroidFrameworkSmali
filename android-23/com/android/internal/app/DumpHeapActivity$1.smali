.class Lcom/android/internal/app/DumpHeapActivity$1;
.super Ljava/lang/Object;
.source "DumpHeapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/DumpHeapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/DumpHeapActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/DumpHeapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/DumpHeapActivity;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    #@5
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@7
    new-instance v1, Landroid/content/Intent;

    #@9
    const-string/jumbo v2, "com.android.server.am.DELETE_DUMPHEAP"

    #@c
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0, v1}, Lcom/android/internal/app/DumpHeapActivity;->sendBroadcast(Landroid/content/Intent;)V

    #@12
    .line 94
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/app/DumpHeapActivity;->finish()V

    #@17
    .line 91
    return-void
.end method
