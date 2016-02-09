.class public Landroid/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
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
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 36
    .local p0, "this":Landroid/util/Pair;, "Landroid/util/Pair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@5
    .line 38
    iput-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@7
    .line 36
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Landroid/util/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Landroid/util/Pair;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/Pair;, "Landroid/util/Pair<TF;TS;>;"
    const/4 v1, 0x0

    #@1
    .line 51
    instance-of v2, p1, Landroid/util/Pair;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 52
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 54
    check-cast v0, Landroid/util/Pair;

    #@9
    .line 55
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@b
    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@d
    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@15
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

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
    .local p0, "this":Landroid/util/Pair;, "Landroid/util/Pair<TF;TS;>;"
    const/4 v1, 0x0

    #@1
    .line 65
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    :goto_0
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    :cond_1
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v1

    #@19
    goto :goto_1
.end method
