.class public Landroid/os/HidlMemory;
.super Ljava/lang/Object;
.source "HidlMemory.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mHandle:Landroid/os/NativeHandle;

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mNativeContext:J

.field private final blacklist mSize:J


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "handle"    # Landroid/os/NativeHandle;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    .line 61
    iput-wide p2, p0, Landroid/os/HidlMemory;->mSize:J

    .line 62
    iput-object p4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    .line 63
    return-void
.end method

.method private native blacklist nativeFinalize()V
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    if-eqz v0, :cond_c

    .line 81
    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    invoke-virtual {v0}, Landroid/os/NativeHandle;->close()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    .line 84
    :cond_c
    return-void
.end method

.method public whitelist dup()Landroid/os/HidlMemory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/os/HidlMemory;

    iget-object v1, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    iget-wide v2, p0, Landroid/os/HidlMemory;->mSize:J

    iget-object v4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    if-eqz v4, :cond_11

    iget-object v4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    invoke-virtual {v4}, Landroid/os/NativeHandle;->dup()Landroid/os/NativeHandle;

    move-result-object v4

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 135
    invoke-direct {p0}, Landroid/os/HidlMemory;->nativeFinalize()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_8
    move-exception v0

    goto :goto_11

    .line 132
    :catch_a
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/os/HidlMemory;
    throw v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_8

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/os/HidlMemory;
    :goto_11
    invoke-direct {p0}, Landroid/os/HidlMemory;->nativeFinalize()V

    .line 136
    throw v0
.end method

.method public whitelist getHandle()Landroid/os/NativeHandle;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSize()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/os/HidlMemory;->mSize:J

    return-wide v0
.end method

.method public whitelist releaseHandle()Landroid/os/NativeHandle;
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    .line 94
    .local v0, "handle":Landroid/os/NativeHandle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    .line 95
    return-object v0
.end method
