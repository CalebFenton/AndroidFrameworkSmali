.class public Ljava/util/UnknownFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "UnknownFormatConversionException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x122d6c2L


# instance fields
.field private greylist-max-o s:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 51
    if-eqz p1, :cond_8

    .line 53
    iput-object p1, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getConversion()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 67
    iget-object v0, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Conversion = \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
