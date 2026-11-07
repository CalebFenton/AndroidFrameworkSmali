.class public final Landroid/database/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field public whitelist data:[C

.field public whitelist sizeCopied:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, p1, [C

    iput-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    .line 26
    return-void
.end method

.method public constructor whitelist <init>([C)V
    .registers 2
    .param p1, "buf"    # [C

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/database/CharArrayBuffer;->data:[C

    .line 30
    return-void
.end method
