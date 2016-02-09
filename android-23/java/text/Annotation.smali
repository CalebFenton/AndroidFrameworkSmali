.class public Ljava/text/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Ljava/text/Annotation;->value:Ljava/lang/Object;

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Ljava/text/Annotation;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/Annotation;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[value="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/text/Annotation;->value:Ljava/lang/Object;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const/16 v1, 0x5d

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method
