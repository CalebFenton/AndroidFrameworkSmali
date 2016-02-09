.class public Ljava/util/IllegalFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatConversionException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final arg:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:C


# direct methods
.method public constructor <init>(CLjava/lang/Class;)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    .local p2, "arg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 47
    iput-char p1, p0, Ljava/util/IllegalFormatConversionException;->c:C

    #@5
    .line 48
    if-nez p2, :cond_0

    #@7
    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "arg == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 51
    :cond_0
    iput-object p2, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    #@12
    .line 46
    return-void
.end method


# virtual methods
.method public getArgumentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getConversion()C
    .locals 1

    #@0
    .prologue
    .line 69
    iget-char v0, p0, Ljava/util/IllegalFormatConversionException;->c:C

    #@2
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 74
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
    iget-char v1, p0, Ljava/util/IllegalFormatConversionException;->c:C

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " can\'t format "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    #@1b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, " arguments"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
