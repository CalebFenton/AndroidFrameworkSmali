.class public Ljava/lang/InterruptedException;
.super Ljava/lang/Exception;
.source "InterruptedException.java"


# static fields
.field private static final serialVersionUID:J = 0x5cfda8c301deb7f9L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    return-void
.end method
