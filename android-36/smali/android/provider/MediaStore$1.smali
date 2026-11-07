.class Landroid/provider/MediaStore$1;
.super Landroid/provider/IOpenFileCallback$Stub;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/MediaStore;->openFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 4837
    iput-object p1, p0, Landroid/provider/MediaStore$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/provider/IOpenFileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/provider/ParcelableException;)V
    .registers 3
    .param p1, "exception"    # Landroid/provider/ParcelableException;

    .line 4845
    iget-object v0, p0, Landroid/provider/MediaStore$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 4846
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 4840
    iget-object v0, p0, Landroid/provider/MediaStore$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 4841
    return-void
.end method
