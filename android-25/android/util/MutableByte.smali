.class public final Landroid/util/MutableByte;
.super Ljava/lang/Object;
.source "MutableByte.java"


# instance fields
.field public value:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-byte p1, p0, Landroid/util/MutableByte;->value:B

    #@5
    .line 24
    return-void
.end method
