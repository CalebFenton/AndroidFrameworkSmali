.class Landroid/icu/text/Bidi$Point;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Point"
.end annotation


# instance fields
.field greylist-max-o flag:I

.field greylist-max-o pos:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
