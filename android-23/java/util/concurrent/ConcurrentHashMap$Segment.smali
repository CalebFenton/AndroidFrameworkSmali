.class Ljava/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field final loadFactor:F


# direct methods
.method constructor <init>(F)V
    .locals 0
    .param p1, "lf"    # F

    #@0
    .prologue
    .line 1210
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Segment;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@3
    iput p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    #@5
    return-void
.end method
