.class public Ljava/lang/ref/SoftReference;
.super Ljava/lang/ref/Reference;
.source "SoftReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static clock:J


# instance fields
.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;)V

    #@3
    .line 90
    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    #@5
    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    #@7
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 104
    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    #@5
    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    #@7
    .line 102
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    invoke-super {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "o":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    #@6
    iget-wide v2, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    #@8
    sget-wide v4, Ljava/lang/ref/SoftReference;->clock:J

    #@a
    cmp-long v1, v2, v4

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 118
    sget-wide v2, Ljava/lang/ref/SoftReference;->clock:J

    #@10
    iput-wide v2, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    #@12
    .line 119
    :cond_0
    return-object v0
.end method
