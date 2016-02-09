.class public Ljava/lang/TypeNotPresentException;
.super Ljava/lang/RuntimeException;
.source "TypeNotPresentException.java"


# static fields
.field private static final serialVersionUID:J = -0x46cb27489add30e0L


# instance fields
.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Type "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " not present"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e
    .line 44
    iput-object p1, p0, Ljava/lang/TypeNotPresentException;->typeName:Ljava/lang/String;

    #@20
    .line 42
    return-void
.end method


# virtual methods
.method public typeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Ljava/lang/TypeNotPresentException;->typeName:Ljava/lang/String;

    #@2
    return-object v0
.end method
