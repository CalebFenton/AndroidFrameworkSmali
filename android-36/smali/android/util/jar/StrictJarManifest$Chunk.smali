.class final Landroid/util/jar/StrictJarManifest$Chunk;
.super Ljava/lang/Object;
.source "StrictJarManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chunk"
.end annotation


# instance fields
.field final blacklist end:I

.field final blacklist start:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    .line 62
    iput p2, p0, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    .line 63
    return-void
.end method
