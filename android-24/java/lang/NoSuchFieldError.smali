.class public Ljava/lang/NoSuchFieldError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "NoSuchFieldError.java"


# static fields
.field private static final serialVersionUID:J = -0x2ff7b4f340b9ff8bL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    #@3
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    return-void
.end method
