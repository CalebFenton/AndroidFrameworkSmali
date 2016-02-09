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
.field pairIndex:I

.field scriptCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "thePairIndex"    # I
    .param p2, "theScriptCode"    # I

    #@0
    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 429
    iput p1, p0, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    #@5
    .line 430
    iput p2, p0, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    #@7
    .line 427
    return-void
.end method
