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
.field private static final whitelist serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field final greylist-max-o loadFactor:F


# direct methods
.method constructor greylist-max-o <init>(F)V
    .registers 2
    .param p1, "lf"    # F

    .line 1388
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$Segment;, "Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    return-void
.end method
