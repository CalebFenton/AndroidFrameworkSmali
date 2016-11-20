.class abstract Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .locals 0
    .param p1, "algorithm"    # Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    iput-object p1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    #@5
    .line 138
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 170
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 166
    :pswitch_0
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 168
    :pswitch_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 154
    if-eqz p1, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 154
    :cond_1
    if-ltz p3, :cond_0

    #@c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v0

    #@10
    sub-int/2addr v0, p3

    #@11
    if-lt v0, p2, :cond_0

    #@13
    .line 157
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    #@15
    if-nez v0, :cond_2

    #@17
    .line 158
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 160
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public isRtl([CII)Z
    .locals 1
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 149
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
