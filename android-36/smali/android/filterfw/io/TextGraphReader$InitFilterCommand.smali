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
.field private blacklist mParams:Landroid/filterfw/core/KeyValueMap;

.field final synthetic blacklist this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V
    .registers 3
    .param p2, "params"    # Landroid/filterfw/core/KeyValueMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/filterfw/io/TextGraphReader;)V
    .registers 6
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 116
    .local v0, "filter":Landroid/filterfw/core/Filter;
    :try_start_4
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_9
    .catch Landroid/filterfw/core/ProtocolException; {:try_start_4 .. :try_end_9} :catch_18

    .line 119
    nop

    .line 120
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-static {v2}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    .line 121
    return-void

    .line 117
    :catch_18
    move-exception v1

    .line 118
    .local v1, "e":Landroid/filterfw/core/ProtocolException;
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {v1}, Landroid/filterfw/core/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
