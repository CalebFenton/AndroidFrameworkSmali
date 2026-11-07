.class public Ljava/lang/ref/SoftReference;
.super Ljava/lang/ref/Reference;
.source "SoftReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static greylist-max-o clock:J


# instance fields
.field private greylist-max-o timestamp:J


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;)V

    .line 90
    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    .line 91
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 104
    sget-wide v0, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v0, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist test-api get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 116
    .local p0, "this":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    invoke-super {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "o":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_12

    iget-wide v1, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    sget-wide v3, Ljava/lang/ref/SoftReference;->clock:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    .line 118
    sget-wide v1, Ljava/lang/ref/SoftReference;->clock:J

    iput-wide v1, p0, Ljava/lang/ref/SoftReference;->timestamp:J

    .line 119
    :cond_12
    return-object v0
.end method
