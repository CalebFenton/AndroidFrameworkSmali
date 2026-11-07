.class Lsun/nio/fs/NativeBuffer$Deallocator;
.super Ljava/lang/Object;
.source "NativeBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/NativeBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deallocator"
.end annotation


# instance fields
.field private final blacklist address:J


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "address"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lsun/nio/fs/NativeBuffer$Deallocator;->address:J

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 52
    invoke-static {}, Lsun/nio/fs/NativeBuffer;->-$$Nest$sfgetunsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    iget-wide v1, p0, Lsun/nio/fs/NativeBuffer$Deallocator;->address:J

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->freeMemory(J)V

    .line 53
    return-void
.end method
