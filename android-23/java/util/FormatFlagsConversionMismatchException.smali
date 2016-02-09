.class public Ljava/util/FormatFlagsConversionMismatchException;
.super Ljava/util/IllegalFormatException;
.source "FormatFlagsConversionMismatchException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x123c11eL


# instance fields
.field private final c:C

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 2
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "c"    # C

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 46
    if-nez p1, :cond_0

    #@5
    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "f == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 49
    :cond_0
    iput-object p1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    #@10
    .line 50
    iput-char p2, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    #@12
    .line 45
    return-void
.end method


# virtual methods
.method public getConversion()C
    .locals 1

    #@0
    .prologue
    .line 68
    iget-char v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    #@2
    return v0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "%"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-char v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " does not support \'"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "\'"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
