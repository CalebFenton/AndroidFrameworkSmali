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
.field private final greylist-max-o mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .registers 2
    .param p1, "algorithm"    # Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .line 141
    return-void
.end method

.method private greylist-max-o doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 165
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 171
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    return v0

    .line 169
    :pswitch_e
    const/4 v0, 0x0

    return v0

    .line 167
    :pswitch_10
    const/4 v0, 0x1

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method protected abstract greylist-max-o defaultIsRtl()Z
.end method

.method public whitelist isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 155
    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1b

    .line 158
    iget-object v0, p0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    if-nez v0, :cond_16

    .line 159
    invoke-virtual {p0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    return v0

    .line 161
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 156
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist isRtl([CII)Z
    .registers 5
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 150
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
