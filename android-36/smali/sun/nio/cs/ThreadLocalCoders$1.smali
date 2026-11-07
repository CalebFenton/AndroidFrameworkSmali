.class Lsun/nio/cs/ThreadLocalCoders$1;
.super Lsun/nio/cs/ThreadLocalCoders$Cache;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    const-class v0, Lsun/nio/cs/ThreadLocalCoders;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .line 88
    invoke-direct {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;-><init>(I)V

    return-void
.end method


# virtual methods
.method blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0

    .line 99
    :cond_10
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1c

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1c
    nop

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 92
    :cond_14
    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_24

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 94
    :cond_24
    const/4 v0, 0x0

    return v0
.end method
