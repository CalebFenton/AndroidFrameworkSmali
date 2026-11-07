.class Landroid/provider/MediaStore$2;
.super Landroid/provider/IOpenAssetFileCallback$Stub;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/MediaStore;->openTypedAssetFileDescriptorInternal(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
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

    .line 4983
    iput-object p1, p0, Landroid/provider/MediaStore$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/provider/IOpenAssetFileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(Landroid/provider/ParcelableException;)V
    .registers 3
    .param p1, "exception"    # Landroid/provider/ParcelableException;

    .line 4991
    iget-object v0, p0, Landroid/provider/MediaStore$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 4992
    return-void
.end method

.method public blacklist onSuccess(Landroid/content/res/AssetFileDescriptor;)V
    .registers 3
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .line 4986
    iget-object v0, p0, Landroid/provider/MediaStore$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 4987
    return-void
.end method
