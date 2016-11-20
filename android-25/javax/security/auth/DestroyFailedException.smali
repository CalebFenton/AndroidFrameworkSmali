.class public Ljavax/security/auth/DestroyFailedException;
.super Ljava/lang/Exception;
.source "DestroyFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c1c2ebfec5522eaL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method
