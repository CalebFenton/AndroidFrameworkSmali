.class Lcom/android/internal/app/DumpHeapActivity$2;
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
    .line 97
    iput-object p1, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 100
    iget-object v2, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@3
    iput-boolean v5, v2, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    #@5
    .line 101
    iget-object v2, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/app/DumpHeapActivity;->scheduleDelete()V

    #@a
    .line 102
    new-instance v1, Landroid/content/Intent;

    #@c
    const-string/jumbo v2, "android.intent.action.SEND"

    #@f
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@12
    .line 103
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@14
    invoke-virtual {v2}, Lcom/android/internal/app/DumpHeapActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "Heap Dump"

    #@1b
    sget-object v4, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@1d
    invoke-static {v2, v3, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    #@20
    move-result-object v0

    #@21
    .line 104
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@24
    .line 105
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@27
    .line 106
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@2a
    move-result-object v2

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@33
    .line 107
    const-string/jumbo v2, "android.intent.extra.STREAM"

    #@36
    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@3b
    .line 108
    iget-object v2, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@3d
    .line 109
    iget-object v3, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@3f
    const v4, 0x104037c

    #@42
    invoke-virtual {v3, v4}, Lcom/android/internal/app/DumpHeapActivity;->getText(I)Ljava/lang/CharSequence;

    #@45
    move-result-object v3

    #@46
    .line 108
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v2, v3}, Lcom/android/internal/app/DumpHeapActivity;->startActivity(Landroid/content/Intent;)V

    #@4d
    .line 110
    iget-object v2, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    #@4f
    invoke-virtual {v2}, Lcom/android/internal/app/DumpHeapActivity;->finish()V

    #@52
    .line 99
    return-void
.end method
