.class Landroid/filterfw/io/TextGraphReader$InitFilterCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitFilterCommand"
.end annotation


# instance fields
.field private mParams:Landroid/filterfw/core/KeyValueMap;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/io/TextGraphReader;
    .param p2, "params"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 109
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    #@7
    .line 108
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-get0(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    #@3
    move-result-object v1

    #@4
    .line 116
    .local v1, "filter":Landroid/filterfw/core/Filter;
    :try_start_0
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    #@6
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 120
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-get1(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    #@f
    invoke-static {v3}, Landroid/filterfw/io/TextGraphReader;->-get0(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    #@16
    .line 113
    return-void

    #@17
    .line 117
    :catch_0
    move-exception v0

    #@18
    .line 118
    .local v0, "e":Landroid/filterfw/core/ProtocolException;
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    #@1a
    invoke-virtual {v0}, Landroid/filterfw/core/ProtocolException;->getMessage()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
.end method
