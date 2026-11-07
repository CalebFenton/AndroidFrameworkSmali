.class public interface abstract Ljavax/security/auth/Destroyable;
.super Ljava/lang/Object;
.source "Destroyable.java"


# virtual methods
.method public whitelist test-api destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljavax/security/auth/DestroyFailedException;

    invoke-direct {v0}, Ljavax/security/auth/DestroyFailedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method
