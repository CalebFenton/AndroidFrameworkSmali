.class Landroid/widget/RemoteViews$MutablePair;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MutablePair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "this":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    iput-object p1, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    #@5
    .line 161
    iput-object p2, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    #@7
    .line 159
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<TF;TS;>;"
    const/4 v1, 0x0

    #@1
    .line 166
    instance-of v2, p1, Landroid/widget/RemoteViews$MutablePair;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 167
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 169
    check-cast v0, Landroid/widget/RemoteViews$MutablePair;

    #@9
    .line 170
    .local v0, "p":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<**>;"
    iget-object v2, v0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    #@b
    iget-object v3, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    #@d
    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-object v1, v0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    #@15
    iget-object v2, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    #@17
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Landroid/widget/RemoteViews$MutablePair;, "Landroid/widget/RemoteViews$MutablePair<TF;TS;>;"
    const/4 v1, 0x0

    #@1
    .line 175
    iget-object v0, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v1

    #@19
    goto :goto_1
.end method
