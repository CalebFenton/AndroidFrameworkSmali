.class public final Ldalvik/system/InMemoryDexClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "InMemoryDexClassLoader.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "dexBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Ldalvik/system/InMemoryDexClassLoader;-><init>([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "dexBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ldalvik/system/InMemoryDexClassLoader;-><init>([Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "dexBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "librarySearchPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Ldalvik/system/BaseDexClassLoader;-><init>([Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 41
    return-void
.end method
