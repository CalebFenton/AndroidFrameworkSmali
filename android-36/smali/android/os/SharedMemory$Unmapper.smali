.class final Landroid/os/SharedMemory$Unmapper;
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
    name = "Unmapper"
.end annotation


# instance fields
.field private greylist-max-o mAddress:J

.field private greylist-max-o mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

.field private greylist-max-o mSize:I


# direct methods
.method private constructor greylist-max-o <init>(JILandroid/os/SharedMemory$MemoryRegistration;)V
    .registers 5
    .param p1, "address"    # J
    .param p3, "size"    # I
    .param p4, "memoryReference"    # Landroid/os/SharedMemory$MemoryRegistration;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-wide p1, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    .line 359
    iput p3, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    .line 360
    iput-object p4, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 361
    return-void
.end method

.method synthetic constructor blacklist <init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 366
    :try_start_0
    iget-wide v0, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    iget v2, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    .line 367
    :catch_9
    move-exception v0

    :goto_a
    nop

    .line 368
    iget-object v0, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 370
    return-void
.end method
