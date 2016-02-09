.class public Ljava/util/UnknownFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "UnknownFormatFlagsException.java"


# static fields
.field private static final serialVersionUID:J = 0x127920aL


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
    iput-object p1, p0, Ljava/util/UnknownFormatFlagsException;->flags:Ljava/lang/String;

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
    iget-object v0, p0, Ljava/util/UnknownFormatFlagsException;->flags:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Flags: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/util/UnknownFormatFlagsException;->flags:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
