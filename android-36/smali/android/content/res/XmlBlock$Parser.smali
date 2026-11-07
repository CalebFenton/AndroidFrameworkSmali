.class public final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parser"
.end annotation


# instance fields
.field private final greylist mBlock:Landroid/content/res/XmlBlock;

.field private greylist-max-o mDecNextDepth:Z

.field private greylist-max-o mDepth:I

.field private greylist-max-o mEventType:I

.field greylist-max-r mParseState:J

.field private greylist-max-o mStarted:Z

.field blacklist mValidator:Landroid/content/res/Validator;

.field final synthetic blacklist this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .registers 6
    .param p1, "this$0"    # Landroid/content/res/XmlBlock;
    .param p2, "parseState"    # J
    .param p4, "block"    # Landroid/content/res/XmlBlock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 669
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 670
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 671
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 135
    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 136
    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 137
    invoke-static {p4}, Landroid/content/res/XmlBlock;->-$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Landroid/content/res/XmlBlock;->-$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V

    .line 138
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;Landroid/content/res/Validator;)V
    .registers 6
    .param p1, "this$0"    # Landroid/content/res/XmlBlock;
    .param p2, "parseState"    # J
    .param p4, "block"    # Landroid/content/res/XmlBlock;
    .param p5, "validator"    # Landroid/content/res/Validator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    .line 142
    iput-object p5, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    .line 143
    return-void
.end method

.method private blacklist getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 635
    if-eqz p1, :cond_7

    .line 642
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrieving a string from the StringPool of an XmlBlock should never fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist useLayoutReadwrite()Z
    .registers 1

    .line 399
    invoke-static {}, Landroid/content/res/Flags;->layoutReadwriteFlags()Z

    move-result v0

    return v0
.end method

.method private static blacklist useLayoutReadwrite$ravenwood()Z
    .registers 1

    .line 403
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6

    .line 646
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 647
    :try_start_3
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    .line 648
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeDestroyParseState(J)V

    .line 649
    iput-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 650
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->-$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V

    .line 652
    :cond_17
    monitor-exit v0

    .line 653
    return-void

    .line 652
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 657
    return-void
.end method

.method public whitelist getAttributeBooleanValue(IZ)Z
    .registers 8
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # Z

    .line 525
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 526
    .local v0, "t":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_2a

    .line 531
    const/16 v3, 0x10

    if-lt v0, v3, :cond_29

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_29

    .line 532
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v3

    .line 533
    .local v3, "v":I
    if-eq v3, v2, :cond_23

    .line 536
    if-eqz v3, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1

    .line 534
    :cond_23
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    .end local v3    # "v":I
    :cond_29
    return p2

    .line 527
    :cond_2a
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 467
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 469
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    return v1

    .line 471
    :cond_d
    return p3
.end method

.method public whitelist test-api getAttributeCount()I
    .registers 4

    .line 279
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 280
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeCount(J)I

    move-result v0

    .line 281
    .local v0, "count":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_11

    .line 284
    return v0

    .line 282
    :cond_11
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v0    # "count":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAttributeFloatValue(IF)F
    .registers 8
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # F

    .line 589
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 590
    .local v0, "t":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_2c

    .line 595
    const/4 v3, 0x4

    if-ne v0, v3, :cond_23

    .line 596
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v3

    .line 597
    .local v3, "v":I
    if-eq v3, v2, :cond_1d

    .line 600
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 598
    :cond_1d
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    .end local v3    # "v":I
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_2c
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 500
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 502
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result v1

    return v1

    .line 504
    :cond_d
    return p3
.end method

.method public whitelist getAttributeIntValue(II)I
    .registers 8
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .line 557
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 558
    .local v0, "t":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_25

    .line 563
    const/16 v3, 0x10

    if-lt v0, v3, :cond_24

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_24

    .line 564
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v3

    .line 565
    .local v3, "v":I
    if-eq v3, v2, :cond_1e

    .line 568
    return v3

    .line 566
    :cond_1e
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    .end local v3    # "v":I
    :cond_24
    return p2

    .line 559
    :cond_25
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 483
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 484
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 485
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result v1

    return v1

    .line 487
    :cond_d
    return p3
.end method

.method public whitelist getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 9
    .param p1, "idx"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 509
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 510
    .local v0, "t":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_2c

    .line 513
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v3

    .line 514
    .local v3, "v":I
    if-eq v3, v2, :cond_26

    .line 517
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 518
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 519
    invoke-virtual {v1, v3}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 518
    invoke-static {v1, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 521
    :cond_25
    return v3

    .line 515
    :cond_26
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    .end local v3    # "v":I
    :cond_2c
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 459
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 461
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 463
    :cond_d
    return p4
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 263
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeName(JI)I

    move-result v0

    .line 265
    .local v0, "id":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_24

    .line 268
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 269
    :cond_1a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAttributeNameResource(I)I
    .registers 5
    .param p1, "index"    # I

    .line 450
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeResource(JI)I

    move-result v0

    .line 451
    .local v0, "resourceNameId":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_c

    .line 454
    return v0

    .line 452
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 252
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeNamespace(JI)I

    move-result v0

    .line 253
    .local v0, "id":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_2a

    .line 257
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 258
    :cond_1a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    const-string v1, ""

    return-object v1

    .line 259
    :cond_20
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_2a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeResourceValue(II)I
    .registers 8
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .line 541
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 542
    .local v0, "t":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_20

    .line 547
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1f

    .line 548
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v3

    .line 549
    .local v3, "v":I
    if-eq v3, v2, :cond_19

    .line 552
    return v3

    .line 550
    :cond_19
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    .end local v3    # "v":I
    :cond_1f
    return p2

    .line 543
    :cond_20
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 475
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 477
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result v1

    return v1

    .line 479
    :cond_d
    return p3
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 314
    const-string v0, "CDATA"

    return-object v0
.end method

.method public whitelist getAttributeUnsignedIntValue(II)I
    .registers 8
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .line 573
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 574
    .local v0, "t":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_25

    .line 579
    const/16 v3, 0x10

    if-lt v0, v3, :cond_24

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_24

    .line 580
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v3

    .line 581
    .local v3, "v":I
    if-eq v3, v2, :cond_1e

    .line 584
    return v3

    .line 582
    :cond_1e
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    .end local v3    # "v":I
    :cond_24
    return p2

    .line 575
    :cond_25
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 492
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 493
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 494
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    return v1

    .line 496
    :cond_d
    return p3
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .registers 8
    .param p1, "index"    # I

    .line 291
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeStringValue(JI)I

    move-result v0

    .line 292
    .local v0, "id":I
    const-string v1, "Null document"

    const v2, -0x7ffffff8

    if-eq v0, v2, :cond_49

    .line 296
    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 299
    :cond_1c
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v3

    .line 300
    .local v3, "t":I
    if-eq v3, v2, :cond_43

    .line 303
    if-eqz v3, :cond_39

    .line 307
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v4

    .line 308
    .local v4, "v":I
    if-eq v4, v2, :cond_33

    .line 311
    invoke-static {v3, v4}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    :cond_33
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    .end local v4    # "v":I
    :cond_39
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_43
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    .end local v3    # "t":I
    :cond_49
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 323
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, "idx":I
    if-ltz v0, :cond_16

    .line 331
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v2, :cond_15

    .line 333
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    invoke-virtual {v2, p0, p2, v1}, Landroid/content/res/Validator;->validateStrAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_15
    return-object v1

    .line 337
    .end local v1    # "value":Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getClassAttribute()Ljava/lang/String;
    .registers 4

    .line 614
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetClassAttribute(J)I

    move-result v0

    .line 615
    .local v0, "id":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_1c

    .line 618
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1

    .line 616
    :cond_1c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 205
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 220
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 161
    return v1

    .line 163
    :cond_b
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 164
    return v1

    .line 166
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIdAttribute()Ljava/lang/String;
    .registers 4

    .line 606
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetIdAttribute(J)I

    move-result v0

    .line 607
    .local v0, "id":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_1c

    .line 610
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1

    .line 608
    :cond_1c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getIdAttributeResourceValue(I)I
    .registers 4
    .param p1, "defaultValue"    # I

    .line 623
    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 4

    .line 213
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetLineNumber(J)I

    move-result v0

    .line 214
    .local v0, "lineNumber":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_c

    .line 217
    return v0

    .line 215
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 247
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    move-result v0

    .line 248
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 3

    .line 242
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetNamespace(J)I

    move-result v0

    .line 243
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_15
    const-string v1, ""

    :goto_17
    return-object v1
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .registers 4
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 193
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 184
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 199
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getPooledString(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I

    .line 661
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSourceResId()I
    .registers 3

    .line 147
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetSourceResId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStyleAttribute()I
    .registers 4

    .line 627
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetStyleAttribute(J)I

    move-result v0

    .line 628
    .local v0, "styleAttributeId":I
    const v1, -0x7ffffff8

    if-eq v0, v1, :cond_c

    .line 631
    return v0

    .line 629
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null document"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 3

    .line 209
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetText(J)I

    move-result v0

    .line 210
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .registers 7
    .param p1, "holderForStartAndLength"    # [I

    .line 230
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "txt":Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, "chars":[C
    if-eqz v0, :cond_1e

    .line 233
    const/4 v2, 0x0

    aput v2, p1, v2

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, p1, v3

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [C

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 238
    :cond_1e
    return-object v1
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isWhitespace()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 341
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 342
    return v1

    .line 344
    :cond_9
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_12

    .line 345
    return v2

    .line 347
    :cond_12
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v3, v4}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    .line 348
    .local v0, "ev":I
    invoke-static {}, Landroid/content/res/XmlBlock;->-$$Nest$sfgetERROR_BAD_DOCUMENT()I

    move-result v3

    const-string v4, "Corrupt XML binary file"

    if-eq v0, v3, :cond_8a

    .line 352
    invoke-static {}, Landroid/content/res/XmlBlock$Parser;->useLayoutReadwrite()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-static {v3}, Landroid/content/res/XmlBlock;->-$$Nest$fgetmUsesFeatureFlags(Landroid/content/res/XmlBlock;)Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 v3, 0x2

    if-ne v0, v3, :cond_61

    .line 353
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v5

    .line 354
    .local v5, "flags":Lcom/android/internal/pm/pkg/component/AconfigFlags;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, p0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 355
    const/4 v1, 0x1

    .line 356
    .local v1, "depth":I
    :goto_3d
    if-lez v1, :cond_5c

    .line 357
    iget-wide v6, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v6, v7}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v2

    .line 358
    .local v2, "ev2":I
    invoke-static {}, Landroid/content/res/XmlBlock;->-$$Nest$sfgetERROR_BAD_DOCUMENT()I

    move-result v6

    if-eq v2, v6, :cond_56

    .line 360
    if-ne v2, v3, :cond_50

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 362
    :cond_50
    const/4 v6, 0x3

    if-ne v2, v6, :cond_55

    .line 363
    add-int/lit8 v1, v1, -0x1

    .line 365
    .end local v2    # "ev2":I
    :cond_55
    :goto_55
    goto :goto_3d

    .line 359
    .restart local v2    # "ev2":I
    :cond_56
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    .end local v2    # "ev2":I
    :cond_5c
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v2

    return v2

    .line 369
    .end local v1    # "depth":I
    .end local v5    # "flags":Lcom/android/internal/pm/pkg/component/AconfigFlags;
    :cond_61
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_6c

    .line 370
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 371
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 373
    :cond_6c
    packed-switch v0, :pswitch_data_90

    goto :goto_79

    .line 378
    :pswitch_70
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_79

    .line 375
    :pswitch_73
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 376
    nop

    .line 381
    :goto_79
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 382
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v1, :cond_84

    .line 383
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    invoke-virtual {v1, p0}, Landroid/content/res/Validator;->validate(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 385
    :cond_84
    if-ne v0, v2, :cond_89

    .line 390
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 392
    :cond_89
    return v0

    .line 349
    :cond_8a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_73
        :pswitch_70
    .end packed-switch
.end method

.method public whitelist test-api nextTag()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 438
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 439
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 441
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_36

    .line 442
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 446
    :cond_36
    :goto_36
    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5a

    .line 418
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 419
    .local v0, "eventType":I
    const/4 v1, 0x4

    const/4 v3, 0x3

    if-ne v0, v1, :cond_38

    .line 420
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 422
    if-ne v0, v3, :cond_1b

    .line 427
    return-object v1

    .line 423
    :cond_1b
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 428
    .end local v1    # "result":Ljava/lang/String;
    :cond_38
    if-ne v0, v3, :cond_3d

    .line 429
    const-string v1, ""

    return-object v1

    .line 431
    :cond_3d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 414
    .end local v0    # "eventType":I
    :cond_5a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": parser must be on START_TAG to read next text"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1f

    if-eqz p2, :cond_12

    .line 408
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_12
    if-eqz p3, :cond_1e

    .line 409
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 411
    :cond_1e
    return-void

    .line 410
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 151
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 152
    return-void

    .line 154
    :cond_c
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    .line 155
    return-void

    .line 157
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 178
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 169
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
