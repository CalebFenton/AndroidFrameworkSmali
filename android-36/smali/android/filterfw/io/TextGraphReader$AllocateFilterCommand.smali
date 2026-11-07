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
.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mFilterName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "filterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    .line 89
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

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "filter":Landroid/filterfw/core/Filter;
    :try_start_1
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/FilterFactory;->createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_12

    .line 98
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    .local v1, "filter":Landroid/filterfw/core/Filter;
    nop

    .line 101
    invoke-static {p1, v1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fputmCurrentFilter(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)V

    .line 102
    return-void

    .line 96
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    .restart local v0    # "filter":Landroid/filterfw/core/Filter;
    :catch_12
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
