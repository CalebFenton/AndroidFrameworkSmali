.class public Ljava/io/InvalidClassException;
.super Ljava/io/ObjectStreamException;
.source "InvalidClassException.java"


# static fields
.field private static final serialVersionUID:J = -0x3c23083669749950L


# instance fields
.field public classname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p2}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 66
    iput-object p1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    #@5
    .line 64
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 80
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iget-object v2, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "; "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 84
    :cond_0
    return-object v0
.end method
