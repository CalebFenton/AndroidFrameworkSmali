.class Landroid/os/ParcelFileDescriptor$1;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

.field final synthetic blacklist val$queue:Landroid/os/MessageQueue;


# direct methods
.method constructor blacklist <init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$1;->val$queue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "status":Landroid/os/ParcelFileDescriptor$Status;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_e

    .line 319
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 320
    .local v1, "buf":[B
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->-$$Nest$smreadCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    .end local v1    # "buf":[B
    goto :goto_1a

    .line 321
    :cond_e
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1a

    .line 322
    new-instance v1, Landroid/os/ParcelFileDescriptor$Status;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    move-object v0, v1

    goto :goto_1b

    .line 321
    :cond_1a
    :goto_1a
    nop

    .line 324
    :goto_1b
    if-eqz v0, :cond_30

    .line 325
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$1;->val$queue:Landroid/os/MessageQueue;

    invoke-virtual {v1, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 326
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->-$$Nest$smcloseInternal(Ljava/io/FileDescriptor;)V

    .line 327
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    .line 328
    const/4 v1, 0x0

    return v1

    .line 330
    :cond_30
    const/4 v1, 0x1

    return v1
.end method
