.class public Ljava/util/IllegalFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatConversionException.java"


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private arg:Ljava/lang/Class;

.field private c:C


# direct methods
.method public constructor <init>(CLjava/lang/Class;)V
    .locals 1
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
    .line 55
    .local p2, "arg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 56
    if-nez p2, :cond_0

    #@5
    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 58
    :cond_0
    iput-char p1, p0, Ljava/util/IllegalFormatConversionException;->c:C

    #@d
    .line 59
    iput-object p2, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    #@f
    .line 55
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
    .line 77
    iget-object v0, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getConversion()C
    .locals 1

    #@0
    .prologue
    .line 68
    iget-char v0, p0, Ljava/util/IllegalFormatConversionException;->c:C

    #@2
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "%c != %s"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-char v2, p0, Ljava/util/IllegalFormatConversionException;->c:C

    #@8
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-object v2, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
