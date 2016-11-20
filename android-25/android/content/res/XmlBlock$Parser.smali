.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parser"
.end annotation


# instance fields
.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:J

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/XmlBlock;
    .param p2, "parseState"    # J
    .param p4, "block"    # Landroid/content/res/XmlBlock;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 463
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    #@8
    .line 464
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    #@a
    .line 465
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    #@c
    .line 466
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    #@e
    .line 79
    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@10
    .line 80
    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    #@12
    .line 81
    invoke-static {p4}, Landroid/content/res/XmlBlock;->-get0(Landroid/content/res/XmlBlock;)I

    #@15
    move-result v0

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    invoke-static {p4, v0}, Landroid/content/res/XmlBlock;->-set0(Landroid/content/res/XmlBlock;I)I

    #@1b
    .line 78
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 444
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    #@4
    monitor-enter v1

    #@5
    .line 445
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 446
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@d
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->-wrap15(J)V

    #@10
    .line 447
    const-wide/16 v2, 0x0

    #@12
    iput-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@14
    .line 448
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    #@16
    invoke-static {v0}, Landroid/content/res/XmlBlock;->-wrap14(Landroid/content/res/XmlBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 443
    return-void

    #@1b
    .line 444
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "defineEntityReplacementText() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    #@3
    .line 453
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 4
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 376
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@3
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@6
    move-result v0

    #@7
    .line 379
    .local v0, "t":I
    const/16 v2, 0x10

    #@9
    if-lt v0, v2, :cond_1

    #@b
    .line 380
    const/16 v2, 0x1f

    #@d
    if-gt v0, v2, :cond_1

    #@f
    .line 381
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@11
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    const/4 v1, 0x1

    #@18
    :cond_0
    return v1

    #@19
    .line 383
    :cond_1
    return p2
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    #@0
    .prologue
    .line 324
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 325
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 326
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 328
    :cond_0
    return p3
.end method

.method public getAttributeCount()I
    .locals 2

    #@0
    .prologue
    .line 198
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@7
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-wrap0(J)I

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, -0x1

    #@d
    goto :goto_0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 4
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    .line 415
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@5
    move-result v0

    #@6
    .line 418
    .local v0, "t":I
    const/4 v1, 0x4

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 420
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@b
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@e
    move-result v1

    #@f
    .line 419
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 422
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v2, "not a float!"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    #@0
    .prologue
    .line 357
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 358
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 359
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 361
    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 4
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 395
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@5
    move-result v0

    #@6
    .line 398
    .local v0, "t":I
    const/16 v1, 0x10

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 399
    const/16 v1, 0x1f

    #@c
    if-gt v0, v1, :cond_0

    #@e
    .line 400
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@10
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 402
    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 340
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 341
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 342
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 344
    :cond_0
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 4
    .param p1, "idx"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 366
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@5
    move-result v0

    #@6
    .line 367
    .local v0, "t":I
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@8
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@b
    move-result v1

    #@c
    .line 368
    .local v1, "v":I
    const/4 v2, 0x3

    #@d
    if-ne v0, v2, :cond_0

    #@f
    .line 370
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@11
    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@13
    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    .line 369
    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 372
    :cond_0
    return v1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    #@0
    .prologue
    .line 316
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 317
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 318
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 320
    :cond_0
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 185
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap4(JI)I

    #@5
    move-result v0

    #@6
    .line 187
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 188
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1
.end method

.method public getAttributeNameResource(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 311
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-wrap6(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 178
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap5(JI)I

    #@5
    move-result v0

    #@6
    .line 180
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 181
    :cond_0
    const/4 v1, -0x1

    #@16
    if-ne v0, v1, :cond_1

    #@18
    const-string/jumbo v1, ""

    #@1b
    return-object v1

    #@1c
    .line 182
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@1e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "getAttributePrefix not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 4
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 386
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@5
    move-result v0

    #@6
    .line 389
    .local v0, "t":I
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 390
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@b
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 392
    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 332
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 333
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 334
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 336
    :cond_0
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 215
    const-string/jumbo v0, "CDATA"

    #@3
    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 4
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 405
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@5
    move-result v0

    #@6
    .line 408
    .local v0, "t":I
    const/16 v1, 0x10

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 409
    const/16 v1, 0x1f

    #@c
    if-gt v0, v1, :cond_0

    #@e
    .line 410
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@10
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 412
    :cond_0
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 349
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 350
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 351
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 353
    :cond_0
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 201
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->-wrap7(JI)I

    #@5
    move-result v0

    #@6
    .line 203
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v3, v3, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v3, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 206
    :cond_0
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@17
    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->-wrap1(JI)I

    #@1a
    move-result v1

    #@1b
    .line 207
    .local v1, "t":I
    if-nez v1, :cond_1

    #@1d
    .line 208
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@1f
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 211
    :cond_1
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@29
    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->-wrap2(JI)I

    #@2c
    move-result v2

    #@2d
    .line 212
    .local v2, "v":I
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->-wrap3(JLjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 225
    .local v0, "idx":I
    if-ltz v0, :cond_0

    #@8
    .line 232
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 234
    :cond_0
    const/4 v1, 0x0

    #@e
    return-object v1
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 430
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->-wrap8(J)I

    #@5
    move-result v0

    #@6
    .line 431
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    #@2
    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    #@2
    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 94
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 95
    return v1

    #@b
    .line 97
    :cond_0
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 98
    return v1

    #@15
    .line 100
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 426
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->-wrap9(J)I

    #@5
    move-result v0

    #@6
    .line 427
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 436
    const-string/jumbo v0, "id"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    #@0
    .prologue
    .line 146
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-wrap10(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 174
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    #@5
    move-result v0

    #@6
    .line 175
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 170
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->-wrap11(J)I

    #@5
    move-result v0

    #@6
    .line 171
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    const-string/jumbo v1, ""

    #@18
    goto :goto_0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "getNamespace() not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 2
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "getNamespaceCount() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "getNamespacePrefix() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "getNamespaceUri() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@2
    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Binary XML file line #"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "getPrefix not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 2

    #@0
    .prologue
    .line 440
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-wrap12(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 142
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@2
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->-wrap13(J)I

    #@5
    move-result v0

    #@6
    .line 143
    .local v0, "id":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    #@a
    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@c
    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "holderForStartAndLength"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 159
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 160
    .local v1, "txt":Ljava/lang/String;
    const/4 v0, 0x0

    #@6
    .line 161
    .local v0, "chars":[C
    if-eqz v1, :cond_0

    #@8
    .line 162
    aput v4, p1, v4

    #@a
    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x1

    #@f
    aput v2, p1, v3

    #@11
    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    new-array v0, v2, [C

    #@17
    .line 165
    .local v0, "chars":[C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@1e
    .line 167
    .end local v0    # "chars":[C
    :cond_0
    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 218
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public next()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 237
    iget-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 238
    iput-boolean v6, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    #@8
    .line 239
    return v7

    #@9
    .line 241
    :cond_0
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@b
    const-wide/16 v4, 0x0

    #@d
    cmp-long v1, v2, v4

    #@f
    if-nez v1, :cond_1

    #@11
    .line 242
    return v6

    #@12
    .line 244
    :cond_1
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@14
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    #@17
    move-result v0

    #@18
    .line 245
    .local v0, "ev":I
    iget-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 246
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    #@1e
    add-int/lit8 v1, v1, -0x1

    #@20
    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    #@22
    .line 247
    iput-boolean v7, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    #@24
    .line 249
    :cond_2
    packed-switch v0, :pswitch_data_0

    #@27
    .line 257
    :goto_0
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    #@29
    .line 258
    if-ne v0, v6, :cond_3

    #@2b
    .line 263
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    #@2e
    .line 265
    :cond_3
    return v0

    #@2f
    .line 251
    :pswitch_0
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    #@31
    add-int/lit8 v1, v1, 0x1

    #@33
    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    #@35
    goto :goto_0

    #@36
    .line 254
    :pswitch_1
    iput-boolean v6, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    #@38
    goto :goto_0

    #@39
    .line 249
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    #@3
    move-result v0

    #@4
    .line 299
    .local v0, "eventType":I
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 300
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    #@10
    move-result v0

    #@11
    .line 302
    :cond_0
    const/4 v1, 0x2

    #@12
    if-eq v0, v1, :cond_1

    #@14
    const/4 v1, 0x3

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 303
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@19
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 305
    const-string/jumbo v3, ": expected start or end tag"

    #@29
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 305
    const/4 v3, 0x0

    #@32
    .line 303
    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@35
    throw v1

    #@36
    .line 307
    :cond_1
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v5, 0x0

    #@2
    .line 274
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x2

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 275
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@b
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 277
    const-string/jumbo v4, ": parser must be on START_TAG to read next text"

    #@1b
    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 275
    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@26
    throw v2

    #@27
    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    #@2a
    move-result v0

    #@2b
    .line 280
    .local v0, "eventType":I
    const/4 v2, 0x4

    #@2c
    if-ne v0, v2, :cond_2

    #@2e
    .line 281
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 282
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    #@35
    move-result v0

    #@36
    .line 283
    if-eq v0, v4, :cond_1

    #@38
    .line 284
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@3a
    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 286
    const-string/jumbo v4, ": event TEXT it must be immediately followed by END_TAG"

    #@4a
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 284
    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@55
    throw v2

    #@56
    .line 288
    :cond_1
    return-object v1

    #@57
    .line 289
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    if-ne v0, v4, :cond_3

    #@59
    .line 290
    const-string/jumbo v2, ""

    #@5c
    return-object v2

    #@5d
    .line 292
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    .line 294
    const-string/jumbo v4, ": parser must be on START_TAG or TEXT to read text"

    #@6f
    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    .line 292
    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@7a
    throw v2
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_2

    #@6
    .line 269
    if-eqz p2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 270
    :cond_0
    if-eqz p3, :cond_1

    #@14
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 267
    :cond_1
    return-void

    #@1f
    .line 271
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "expected "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    #@2f
    aget-object v2, v2, p1

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    if-eqz p2, :cond_0

    #@b
    .line 86
    return-void

    #@c
    .line 88
    :cond_0
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    if-eqz p2, :cond_1

    #@17
    .line 89
    return-void

    #@18
    .line 91
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Unsupported feature: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "setInput() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "setInput() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@2
    const-string/jumbo v1, "setProperty() not supported"

    #@5
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
