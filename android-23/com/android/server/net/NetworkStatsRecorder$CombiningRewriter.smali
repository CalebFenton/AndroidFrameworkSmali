.class Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombiningRewriter"
.end annotation


# instance fields
.field private final mCollection:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 1
    .param p1, "collection"    # Lcom/android/server/net/NetworkStatsCollection;

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 301
    const-string/jumbo v0, "missing NetworkStatsCollection"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    #@c
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@e
    .line 300
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    #@5
    .line 310
    return-void
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 305
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    #@0
    .prologue
    .line 316
    const/4 v0, 0x1

    #@1
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
    .line 321
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@2
    new-instance v1, Ljava/io/DataOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    #@a
    .line 322
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    #@c
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    #@f
    .line 320
    return-void
.end method
