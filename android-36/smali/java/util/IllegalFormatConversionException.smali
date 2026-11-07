.class public Ljava/util/IllegalFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatConversionException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x10366beL


# instance fields
.field private greylist-max-o arg:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o c:C


# direct methods
.method public constructor whitelist test-api <init>(CLjava/lang/Class;)V
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 56
    .local p2, "arg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 57
    if-eqz p2, :cond_a

    .line 59
    iput-char p1, p0, Ljava/util/IllegalFormatConversionException;->c:C

    .line 60
    iput-object p2, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    .line 61
    return-void

    .line 58
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getArgumentClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api getConversion()C
    .registers 2

    .line 69
    iget-char v0, p0, Ljava/util/IllegalFormatConversionException;->c:C

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 83
    iget-char v0, p0, Ljava/util/IllegalFormatConversionException;->c:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iget-object v1, p0, Ljava/util/IllegalFormatConversionException;->arg:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%c != %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
