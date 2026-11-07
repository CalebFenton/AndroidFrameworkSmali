.class public Ljava/util/MissingFormatArgumentException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatArgumentException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x124d163L


# instance fields
.field private greylist-max-o s:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 54
    if-eqz p1, :cond_8

    .line 56
    iput-object p1, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    .line 57
    return-void

    .line 55
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getFormatSpecifier()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format specifier \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
