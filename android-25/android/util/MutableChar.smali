.class public final Landroid/util/MutableChar;
.super Ljava/lang/Object;
.source "MutableChar.java"


# instance fields
.field public value:C


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-char p1, p0, Landroid/util/MutableChar;->value:C

    #@5
    .line 24
    return-void
.end method
