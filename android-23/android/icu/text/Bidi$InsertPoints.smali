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
.field confirmed:I

.field points:[Landroid/icu/text/Bidi$Point;

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 524
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [Landroid/icu/text/Bidi$Point;

    #@6
    iput-object v0, p0, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@8
    .line 521
    return-void
.end method
