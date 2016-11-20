.class public Ljava/security/GuardedObject;
.super Ljava/lang/Object;
.source "GuardedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x48b9d198f0d259c4L


# instance fields
.field private guard:Ljava/security/Guard;

.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/security/Guard;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "guard"    # Ljava/security/Guard;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p2, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    #@5
    .line 69
    iput-object p1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    #@7
    .line 66
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 98
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    #@6
    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    #@8
    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    #@b
    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@e
    .line 95
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 85
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    #@6
    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    #@8
    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    #@b
    .line 87
    :cond_0
    iget-object v0, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    #@d
    return-object v0
.end method
