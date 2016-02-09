.class public Ljava/util/IllegalFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatFlagsException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc1128L


# instance fields
.field private final flags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "flags"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 40
    if-nez p1, :cond_0

    #@5
    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "flags == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 43
    :cond_0
    iput-object p1, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    #@10
    .line 39
    return-void
.end method


# virtual methods
.method public getFlags()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    #@2
    return-object v0
.end method
