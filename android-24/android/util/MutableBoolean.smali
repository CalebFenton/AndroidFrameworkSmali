.class public final Landroid/util/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-boolean p1, p0, Landroid/util/MutableBoolean;->value:Z

    #@5
    .line 24
    return-void
.end method
