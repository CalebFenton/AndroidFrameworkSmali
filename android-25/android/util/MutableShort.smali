.class public final Landroid/util/MutableShort;
.super Ljava/lang/Object;
.source "MutableShort.java"


# instance fields
.field public value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-short p1, p0, Landroid/util/MutableShort;->value:S

    #@5
    .line 24
    return-void
.end method
