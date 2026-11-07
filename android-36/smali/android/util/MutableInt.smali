.class public final Landroid/util/MutableInt;
.super Ljava/lang/Object;
.source "MutableInt.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/util/MutableInt;->value:I

    .line 29
    return-void
.end method
