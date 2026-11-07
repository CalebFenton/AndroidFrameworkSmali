.class Lsun/nio/ch/Util$1;
.super Ljava/lang/ThreadLocal;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lsun/nio/ch/Util$BufferCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lsun/nio/ch/Util$1;->initialValue()Lsun/nio/ch/Util$BufferCache;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initialValue()Lsun/nio/ch/Util$BufferCache;
    .registers 2

    .line 54
    new-instance v0, Lsun/nio/ch/Util$BufferCache;

    invoke-direct {v0}, Lsun/nio/ch/Util$BufferCache;-><init>()V

    return-object v0
.end method
