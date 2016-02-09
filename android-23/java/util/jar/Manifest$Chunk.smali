.class final Ljava/util/jar/Manifest$Chunk;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chunk"
.end annotation


# instance fields
.field final end:I

.field final start:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput p1, p0, Ljava/util/jar/Manifest$Chunk;->start:I

    #@5
    .line 55
    iput p2, p0, Ljava/util/jar/Manifest$Chunk;->end:I

    #@7
    .line 53
    return-void
.end method
