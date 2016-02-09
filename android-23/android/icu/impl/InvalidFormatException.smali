.class public Landroid/icu/impl/InvalidFormatException;
.super Ljava/lang/Exception;
.source "InvalidFormatException.java"


# static fields
.field static final serialVersionUID:J = 0x7b47ec92c2cf68ffL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 18
    return-void
.end method
