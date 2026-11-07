.class public Ljava/util/UnknownFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "UnknownFormatFlagsException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x127920aL


# instance fields
.field private greylist-max-o flags:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "f"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 51
    if-eqz p1, :cond_8

    .line 53
    iput-object p1, p0, Ljava/util/UnknownFormatFlagsException;->flags:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getFlags()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Ljava/util/UnknownFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/UnknownFormatFlagsException;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
