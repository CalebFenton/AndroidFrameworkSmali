.class Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;
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
    name = "AllocateFilterCommand"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterfw/io/TextGraphReader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "filterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 87
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    #@7
    .line 88
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    #@9
    .line 86
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    const/4 v1, 0x0

    #@1
    .line 95
    .local v1, "filter":Landroid/filterfw/core/Filter;
    :try_start_0
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-get2(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    #@4
    move-result-object v2

    #@5
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    #@7
    iget-object v4, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    #@9
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/FilterFactory;->createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    .line 101
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-static {p1, v1}, Landroid/filterfw/io/TextGraphReader;->-set0(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;

    #@10
    .line 91
    return-void

    #@11
    .line 96
    .local v1, "filter":Landroid/filterfw/core/Filter;
    :catch_0
    move-exception v0

    #@12
    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    #@14
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2
.end method
