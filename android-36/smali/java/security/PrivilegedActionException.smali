.class public Ljava/security/PrivilegedActionException;
.super Ljava/lang/Exception;
.source "PrivilegedActionException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x418f53f65211f5baL


# instance fields
.field private greylist-max-o exception:Ljava/lang/Exception;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 71
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 72
    iput-object p1, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 103
    iget-object v0, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist test-api getException()Ljava/lang/Exception;
    .registers 2

    .line 91
    iget-object v0, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    move-object v1, v0

    :goto_2b
    return-object v1
.end method
