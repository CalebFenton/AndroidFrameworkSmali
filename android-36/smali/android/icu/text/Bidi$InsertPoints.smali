.class Landroid/icu/text/Bidi$InsertPoints;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertPoints"
.end annotation


# instance fields
.field greylist-max-o confirmed:I

.field greylist-max-o points:[Landroid/icu/text/Bidi$Point;

.field greylist-max-o size:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/icu/text/Bidi$Point;

    iput-object v0, p0, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    return-void
.end method
