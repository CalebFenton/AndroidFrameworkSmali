.class public Ljava/lang/Exception;
.super Ljava/lang/Throwable;
.source "Exception.java"


# static fields
.field private static final serialVersionUID:J = -0x2f02e0c1e5c4e33cL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 70
    return-void
.end method
