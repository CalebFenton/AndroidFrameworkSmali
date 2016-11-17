.class final Lsun/nio/ch/Util$1;
.super Ljava/lang/ThreadLocal;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lsun/nio/ch/Util$BufferCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lsun/nio/ch/Util$1;->initialValue()Lsun/nio/ch/Util$BufferCache;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Lsun/nio/ch/Util$BufferCache;
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Lsun/nio/ch/Util$BufferCache;

    #@2
    invoke-direct {v0}, Lsun/nio/ch/Util$BufferCache;-><init>()V

    #@5
    return-object v0
.end method
