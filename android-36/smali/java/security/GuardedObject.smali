.class public Ljava/security/GuardedObject;
.super Ljava/lang/Object;
.source "GuardedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x48b9d198f0d259c4L


# instance fields
.field private greylist-max-o guard:Ljava/security/Guard;

.field private greylist-max-o object:Ljava/lang/Object;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;Ljava/security/Guard;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "guard"    # Ljava/security/Guard;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    .line 70
    iput-object p1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    .line 101
    :cond_b
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist test-api getObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    .line 88
    :cond_b
    iget-object v0, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    return-object v0
.end method
