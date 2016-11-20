.class public Lsun/nio/cs/ThreadLocalCoders;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/cs/ThreadLocalCoders$1;,
        Lsun/nio/cs/ThreadLocalCoders$2;,
        Lsun/nio/cs/ThreadLocalCoders$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x3

.field private static decoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

.field private static encoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 89
    new-instance v0, Lsun/nio/cs/ThreadLocalCoders$1;

    #@3
    invoke-direct {v0, v1}, Lsun/nio/cs/ThreadLocalCoders$1;-><init>(I)V

    #@6
    sput-object v0, Lsun/nio/cs/ThreadLocalCoders;->decoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    #@8
    .line 113
    new-instance v0, Lsun/nio/cs/ThreadLocalCoders$2;

    #@a
    invoke-direct {v0, v1}, Lsun/nio/cs/ThreadLocalCoders$2;-><init>(I)V

    #@d
    sput-object v0, Lsun/nio/cs/ThreadLocalCoders;->encoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    #@f
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;
    .locals 2
    .param p0, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    sget-object v1, Lsun/nio/cs/ThreadLocalCoders;->decoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    #@2
    invoke-virtual {v1, p0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    #@8
    .line 109
    .local v0, "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@b
    .line 110
    return-object v0
.end method

.method public static encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;
    .locals 2
    .param p0, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 132
    sget-object v1, Lsun/nio/cs/ThreadLocalCoders;->encoderCache:Lsun/nio/cs/ThreadLocalCoders$Cache;

    #@2
    invoke-virtual {v1, p0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    #@8
    .line 133
    .local v0, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@b
    .line 134
    return-object v0
.end method
