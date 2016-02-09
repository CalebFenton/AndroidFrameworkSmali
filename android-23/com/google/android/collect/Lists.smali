.class public Lcom/google/android/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v2, p0

    #@1
    mul-int/lit8 v2, v2, 0x6e

    #@3
    div-int/lit8 v2, v2, 0x64

    #@5
    add-int/lit8 v0, v2, 0x5

    #@7
    .line 60
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 61
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@f
    .line 62
    return-object v1
.end method
