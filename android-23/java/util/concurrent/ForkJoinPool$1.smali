.class final Ljava/util/concurrent/ForkJoinPool$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/concurrent/ForkJoinPool;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3237
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$1;->run()Ljava/util/concurrent/ForkJoinPool;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    #@0
    .prologue
    .line 3237
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->-wrap0()Ljava/util/concurrent/ForkJoinPool;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
