.class public Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
.super Ljava/io/FileOutputStream;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseOutputStream"
.end annotation


# instance fields
.field private final greylist-max-o mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 1068
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1069
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1070
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    :try_start_0
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 1077
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1078
    nop

    .line 1079
    return-void

    .line 1077
    :catchall_a
    move-exception v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1078
    throw v0
.end method
