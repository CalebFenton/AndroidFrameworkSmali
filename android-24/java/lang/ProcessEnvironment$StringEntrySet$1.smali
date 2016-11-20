.class Ljava/lang/ProcessEnvironment$StringEntrySet$1;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/lang/ProcessEnvironment$StringEntrySet;


# direct methods
.method constructor <init>(Ljava/lang/ProcessEnvironment$StringEntrySet;)V
    .locals 1
    .param p1, "this$1"    # Ljava/lang/ProcessEnvironment$StringEntrySet;

    #@0
    .prologue
    .line 328
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->this$1:Ljava/lang/ProcessEnvironment$StringEntrySet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 329
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->this$1:Ljava/lang/ProcessEnvironment$StringEntrySet;

    #@7
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEntrySet;->-get0(Ljava/lang/ProcessEnvironment$StringEntrySet;)Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    #@11
    .line 328
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    new-instance v1, Ljava/lang/ProcessEnvironment$StringEntry;

    #@2
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    #@4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Map$Entry;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/ProcessEnvironment$StringEntry;-><init>(Ljava/util/Map$Entry;)V

    #@d
    return-object v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    return-void
.end method
