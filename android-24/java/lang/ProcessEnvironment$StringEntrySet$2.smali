.class final Ljava/lang/ProcessEnvironment$StringEntrySet$2;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/ProcessEnvironment$Variable;",
        "Ljava/lang/ProcessEnvironment$Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val$o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 340
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->getKey()Ljava/lang/ProcessEnvironment$Variable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getKey()Ljava/lang/ProcessEnvironment$Variable;
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/util/Map$Entry;

    #@4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->getValue()Ljava/lang/ProcessEnvironment$Value;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Ljava/lang/ProcessEnvironment$Value;
    .locals 1

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    #@2
    check-cast v0, Ljava/util/Map$Entry;

    #@4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 347
    check-cast p1, Ljava/lang/ProcessEnvironment$Value;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->setValue(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/ProcessEnvironment$Value;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/ProcessEnvironment$Value;
    .locals 1
    .param p1, "value"    # Ljava/lang/ProcessEnvironment$Value;

    #@0
    .prologue
    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
