.class public Ljava/security/PrivilegedActionException;
.super Ljava/lang/Exception;
.source "PrivilegedActionException.java"


# static fields
.field private static final serialVersionUID:J = 0x418f53f65211f5baL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 27
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
