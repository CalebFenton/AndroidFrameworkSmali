.class public Ljava/util/DuplicateFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "DuplicateFormatFlagsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1203f23L


# instance fields
.field private final flags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "f"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 39
    if-nez p1, :cond_0

    #@5
    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "f == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 42
    :cond_0
    iput-object p1, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    #@10
    .line 38
    return-void
.end method


# virtual methods
.method public getFlags()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    #@2
    return-object v0
.end method
