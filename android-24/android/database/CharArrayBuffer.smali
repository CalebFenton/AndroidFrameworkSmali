.class public final Landroid/database/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field public data:[C

.field public sizeCopied:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-array v0, p1, [C

    #@5
    iput-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0
    .param p1, "buf"    # [C

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Landroid/database/CharArrayBuffer;->data:[C

    #@5
    .line 27
    return-void
.end method
