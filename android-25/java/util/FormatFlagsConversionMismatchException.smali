.class public Ljava/util/FormatFlagsConversionMismatchException;
.super Ljava/util/IllegalFormatException;
.source "FormatFlagsConversionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x123c11eL


# instance fields
.field private c:C

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "c"    # C

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 57
    if-nez p1, :cond_0

    #@5
    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 59
    :cond_0
    iput-object p1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    #@d
    .line 60
    iput-char p2, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    #@f
    .line 56
    return-void
.end method


# virtual methods
.method public getConversion()C
    .locals 1

    #@0
    .prologue
    .line 78
    iget-char v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    #@2
    return v0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Conversion = "

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
    const-string/jumbo v1, ", Flags = "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
