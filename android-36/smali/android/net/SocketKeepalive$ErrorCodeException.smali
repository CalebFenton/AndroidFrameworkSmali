.class public Landroid/net/SocketKeepalive$ErrorCodeException;
.super Ljava/lang/Exception;
.source "SocketKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SocketKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCodeException"
.end annotation


# instance fields
.field public final blacklist error:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "error"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 228
    iput p1, p0, Landroid/net/SocketKeepalive$ErrorCodeException;->error:I

    .line 229
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 224
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 225
    iput p1, p0, Landroid/net/SocketKeepalive$ErrorCodeException;->error:I

    .line 226
    return-void
.end method
