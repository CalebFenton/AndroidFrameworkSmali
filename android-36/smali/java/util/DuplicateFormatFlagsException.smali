.class public Ljava/util/DuplicateFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "DuplicateFormatFlagsException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1203f23L


# instance fields
.field private greylist-max-o flags:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "f"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 52
    if-eqz p1, :cond_8

    .line 54
    iput-object p1, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    .line 55
    return-void

    .line 53
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getFlags()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 67
    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Flags = \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
