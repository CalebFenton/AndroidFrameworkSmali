.class Landroid/icu/text/Bidi$Opening;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Opening"
.end annotation


# instance fields
.field contextDir:B

.field contextPos:I

.field filler:B

.field flags:S

.field match:I

.field position:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
