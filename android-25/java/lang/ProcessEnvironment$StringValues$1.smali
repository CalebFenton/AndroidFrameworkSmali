.class Ljava/lang/ProcessEnvironment$StringValues$1;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringValues;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/lang/ProcessEnvironment$StringValues;


# direct methods
.method constructor <init>(Ljava/lang/ProcessEnvironment$StringValues;)V
    .locals 1
    .param p1, "this$1"    # Ljava/lang/ProcessEnvironment$StringValues;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->this$1:Ljava/lang/ProcessEnvironment$StringValues;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 371
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->this$1:Ljava/lang/ProcessEnvironment$StringValues;

    #@7
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringValues;->-get0(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    #@11
    .line 370
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

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
    .line 373
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringValues$1;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    #@8
    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$ExternalData;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    return-void
.end method
