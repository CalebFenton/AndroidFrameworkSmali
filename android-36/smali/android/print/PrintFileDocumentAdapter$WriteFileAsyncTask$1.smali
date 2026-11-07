.class Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;
.super Ljava/lang/Object;
.source "PrintFileDocumentAdapter.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;-><init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

.field final synthetic blacklist val$this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;Landroid/print/PrintFileDocumentAdapter;)V
    .registers 3
    .param p1, "this$1"    # Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;->this$1:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;->val$this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;->this$1:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->cancel(Z)Z

    .line 113
    return-void
.end method
