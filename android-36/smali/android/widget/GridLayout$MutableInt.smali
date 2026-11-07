.class final Landroid/widget/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableInt"
.end annotation


# instance fields
.field public greylist-max-o value:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 2275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2276
    invoke-virtual {p0}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 2277
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 2279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2280
    iput p1, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 2281
    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .registers 2

    .line 2284
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 2285
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2289
    iget v0, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
