.class final Ljava/util/stream/Streams$2;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/util/stream/BaseStream;

.field final synthetic val$b:Ljava/util/stream/BaseStream;


# direct methods
.method constructor <init>(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)V
    .locals 0

    #@0
    .prologue
    .line 875
    .local p1, "val$a":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    .local p2, "val$b":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    iput-object p1, p0, Ljava/util/stream/Streams$2;->val$a:Ljava/util/stream/BaseStream;

    #@2
    iput-object p2, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 879
    :try_start_0
    iget-object v3, p0, Ljava/util/stream/Streams$2;->val$a:Ljava/util/stream/BaseStream;

    #@2
    invoke-interface {v3}, Ljava/util/stream/BaseStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 892
    iget-object v3, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    #@7
    invoke-interface {v3}, Ljava/util/stream/BaseStream;->close()V

    #@a
    .line 877
    return-void

    #@b
    .line 881
    :catch_0
    move-exception v0

    #@c
    .line 883
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    #@e
    invoke-interface {v3}, Ljava/util/stream/BaseStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@11
    .line 890
    :goto_0
    throw v0

    #@12
    .line 885
    :catch_1
    move-exception v1

    #@13
    .line 887
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@16
    goto :goto_0

    #@17
    .line 888
    :catch_2
    move-exception v2

    #@18
    .local v2, "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method
