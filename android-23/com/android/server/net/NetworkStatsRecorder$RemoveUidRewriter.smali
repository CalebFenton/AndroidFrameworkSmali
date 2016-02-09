.class public Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUidRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollection;

.field private final mUids:[I


# direct methods
.method public constructor <init>(J[I)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "uids"    # [I

    #@0
    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 335
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    #@8
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@a
    .line 336
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUids:[I

    #@c
    .line 334
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    #@5
    .line 347
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@7
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->clearDirty()V

    #@a
    .line 348
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@c
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mUids:[I

    #@e
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    #@11
    .line 345
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@5
    .line 340
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    new-instance v1, Ljava/io/DataOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    #@a
    .line 357
    return-void
.end method
