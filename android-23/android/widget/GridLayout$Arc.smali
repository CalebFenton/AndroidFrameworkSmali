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
.field public final span:Landroid/widget/GridLayout$Interval;

.field public valid:Z

.field public final value:Landroid/widget/GridLayout$MutableInt;


# direct methods
.method public constructor <init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .locals 1
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;
    .param p2, "value"    # Landroid/widget/GridLayout$MutableInt;

    #@0
    .prologue
    .line 2213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2211
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/GridLayout$Arc;->valid:Z

    #@6
    .line 2214
    iput-object p1, p0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@8
    .line 2215
    iput-object p2, p0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    #@a
    .line 2213
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-boolean v0, p0, Landroid/widget/GridLayout$Arc;->valid:Z

    #@14
    if-nez v0, :cond_0

    #@16
    const-string/jumbo v0, "+>"

    #@19
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, " "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    :cond_0
    const-string/jumbo v0, "->"

    #@32
    goto :goto_0
.end method
