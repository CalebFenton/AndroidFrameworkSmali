.class public Landroid/text/TextShaper;
.super Ljava/lang/Object;
.source "TextShaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextShaper$GlyphsConsumer;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V
    .registers 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;

    .line 217
    move/from16 v4, p1

    move/from16 v13, p2

    add-int v0, v4, v13

    const/4 v1, 0x0

    move-object/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static {v3, v4, v0, v14, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v15

    .line 219
    .local v15, "mp":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 221
    .local v1, "tl":Landroid/text/TextLine;
    add-int v5, v4, v13

    .line 222
    :try_start_15
    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 223
    const/4 v0, 0x0

    invoke-virtual {v15, v0, v13}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 221
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_34

    .line 229
    move-object/from16 v2, p5

    :try_start_2a
    invoke-virtual {v1, v2}, Landroid/text/TextLine;->shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_32

    .line 231
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_32
    move-exception v0

    goto :goto_37

    :catchall_34
    move-exception v0

    move-object/from16 v2, p5

    :goto_37
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 232
    throw v0
.end method
