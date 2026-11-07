.class final Landroid/icu/lang/UScriptRun$ParenStackEntry;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScriptRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParenStackEntry"
.end annotation


# instance fields
.field greylist-max-o pairIndex:I

.field greylist-max-o scriptCode:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "thePairIndex"    # I
    .param p2, "theScriptCode"    # I

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput p1, p0, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    .line 434
    iput p2, p0, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    .line 435
    return-void
.end method
