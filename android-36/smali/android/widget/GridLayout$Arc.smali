.class final Landroid/widget/GridLayout$Arc;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Arc"
.end annotation


# instance fields
.field public final greylist-max-o span:Landroid/widget/GridLayout$Interval;

.field public greylist-max-o valid:Z

.field public final greylist-max-o value:Landroid/widget/GridLayout$MutableInt;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .registers 4
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;
    .param p2, "value"    # Landroid/widget/GridLayout$MutableInt;

    .line 2259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Arc;->valid:Z

    .line 2260
    iput-object p1, p0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 2261
    iput-object p2, p0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    .line 2262
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v2, :cond_18

    const-string v2, "+>"

    goto :goto_1a

    :cond_18
    const-string v2, "->"

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
