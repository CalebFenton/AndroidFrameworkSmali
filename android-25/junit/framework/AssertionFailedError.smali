.class public Ljunit/framework/AssertionFailedError;
.super Ljava/lang/AssertionError;
.source "AssertionFailedError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 14
    invoke-static {p1}, Ljunit/framework/AssertionFailedError;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 13
    return-void
.end method

.method private static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18
    if-nez p0, :cond_0

    #@2
    const-string/jumbo p0, ""

    #@5
    .end local p0    # "message":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
