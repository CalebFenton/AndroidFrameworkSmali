.class public Ljava/io/InvalidClassException;
.super Ljava/io/ObjectStreamException;
.source "InvalidClassException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x3c23083669749950L


# instance fields
.field public whitelist test-api classname:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p2}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 80
    iget-object v0, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 81
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
