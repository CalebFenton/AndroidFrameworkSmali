.class final Landroid/os/SharedMemory$Closer;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Closer"
.end annotation


# instance fields
.field private blacklist mFd:I

.field private greylist-max-o mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;


# direct methods
.method private constructor blacklist <init>(ILandroid/os/SharedMemory$MemoryRegistration;)V
    .registers 3
    .param p1, "fd"    # I
    .param p2, "memoryReference"    # Landroid/os/SharedMemory$MemoryRegistration;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput p1, p0, Landroid/os/SharedMemory$Closer;->mFd:I

    .line 334
    iput-object p2, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 335
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/SharedMemory$Closer;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 340
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 341
    .local v0, "fd":Ljava/io/FileDescriptor;
    iget v1, p0, Landroid/os/SharedMemory$Closer;->mFd:I

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 342
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    goto :goto_f

    .line 343
    :catch_e
    move-exception v0

    :goto_f
    nop

    .line 344
    iget-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 346
    return-void
.end method
