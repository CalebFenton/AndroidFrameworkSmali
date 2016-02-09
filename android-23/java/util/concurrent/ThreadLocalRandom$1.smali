.class final Ljava/util/concurrent/ThreadLocalRandom$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/ThreadLocalRandom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$1;->initialValue()Ljava/util/concurrent/ThreadLocalRandom;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom;-><init>()V

    #@5
    return-object v0
.end method
