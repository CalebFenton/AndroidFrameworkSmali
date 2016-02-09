.class Landroid/media/WebVttParser;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttParser$Phase;,
        Landroid/media/WebVttParser$1;,
        Landroid/media/WebVttParser$2;,
        Landroid/media/WebVttParser$3;,
        Landroid/media/WebVttParser$4;,
        Landroid/media/WebVttParser$5;,
        Landroid/media/WebVttParser$6;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttParser"


# instance fields
.field private mBuffer:Ljava/lang/String;

.field private mCue:Landroid/media/TextTrackCue;

.field private mCueTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/media/WebVttCueListener;

.field private final mParseCueId:Landroid/media/WebVttParser$Phase;

.field private final mParseCueText:Landroid/media/WebVttParser$Phase;

.field private final mParseCueTime:Landroid/media/WebVttParser$Phase;

.field private final mParseHeader:Landroid/media/WebVttParser$Phase;

.field private final mParseStart:Landroid/media/WebVttParser$Phase;

.field private mPhase:Landroid/media/WebVttParser$Phase;

.field private final mSkipRest:Landroid/media/WebVttParser$Phase;


# direct methods
.method static synthetic -get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/WebVttParser;)Ljava/util/Vector;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subMessage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/media/WebVttCueListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/WebVttCueListener;

    #@0
    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 692
    new-instance v0, Landroid/media/WebVttParser$1;

    #@5
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$1;-><init>(Landroid/media/WebVttParser;)V

    #@8
    iput-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    #@a
    .line 697
    new-instance v0, Landroid/media/WebVttParser$2;

    #@c
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$2;-><init>(Landroid/media/WebVttParser;)V

    #@f
    iput-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    #@11
    .line 714
    new-instance v0, Landroid/media/WebVttParser$3;

    #@13
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$3;-><init>(Landroid/media/WebVttParser;)V

    #@16
    iput-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    #@18
    .line 814
    new-instance v0, Landroid/media/WebVttParser$4;

    #@1a
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$4;-><init>(Landroid/media/WebVttParser;)V

    #@1d
    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    #@1f
    .line 839
    new-instance v0, Landroid/media/WebVttParser$5;

    #@21
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$5;-><init>(Landroid/media/WebVttParser;)V

    #@24
    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    #@26
    .line 942
    new-instance v0, Landroid/media/WebVttParser$6;

    #@28
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$6;-><init>(Landroid/media/WebVttParser;)V

    #@2b
    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    #@2d
    .line 577
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    #@2f
    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    #@31
    .line 578
    const-string/jumbo v0, ""

    #@34
    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@36
    .line 579
    iput-object p1, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    #@38
    .line 580
    new-instance v0, Ljava/util/Vector;

    #@3a
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@3d
    iput-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    #@3f
    .line 576
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/media/WebVttParser;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " (\'"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "\')"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 968
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 964
    invoke-virtual {p0}, Landroid/media/WebVttParser;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " \'"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "\' "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 965
    const-string/jumbo v2, " (\'"

    #@2a
    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 965
    const-string/jumbo v2, "\')"

    #@35
    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 963
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subMessage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/media/WebVttParser;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " \'"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "\' "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 959
    const-string/jumbo v2, " (\'"

    #@2a
    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 959
    const-string/jumbo v2, "\' "

    #@35
    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 959
    const-string/jumbo v2, ")"

    #@40
    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 957
    return-void
.end method

.method public static parseFloatPercentage(Ljava/lang/String;)F
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    const-string/jumbo v2, "%"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 587
    new-instance v2, Ljava/lang/NumberFormatException;

    #@b
    const-string/jumbo v3, "does not end in %"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 589
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    add-int/lit8 v2, v2, -0x1

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    .line 591
    const-string/jumbo v2, ".*[^0-9.].*"

    #@20
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 592
    new-instance v2, Ljava/lang/NumberFormatException;

    #@28
    const-string/jumbo v3, "contains an invalid character"

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 596
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@32
    move-result v1

    #@33
    .line 597
    .local v1, "value":F
    const/4 v2, 0x0

    #@34
    cmpg-float v2, v1, v2

    #@36
    if-ltz v2, :cond_2

    #@38
    const/high16 v2, 0x42c80000    # 100.0f

    #@3a
    cmpl-float v2, v1, v2

    #@3c
    if-lez v2, :cond_3

    #@3e
    .line 598
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    #@40
    const-string/jumbo v3, "is out of range"

    #@43
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 601
    .end local v1    # "value":F
    :catch_0
    move-exception v0

    #@48
    .line 602
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    #@4a
    const-string/jumbo v3, "is not a number"

    #@4d
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 600
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":F
    :cond_3
    return v1
.end method

.method public static parseIntPercentage(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 607
    const-string/jumbo v2, "%"

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 608
    new-instance v2, Ljava/lang/NumberFormatException;

    #@c
    const-string/jumbo v3, "does not end in %"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 610
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    add-int/lit8 v2, v2, -0x1

    #@19
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    .line 612
    const-string/jumbo v2, ".*[^0-9].*"

    #@20
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 613
    new-instance v2, Ljava/lang/NumberFormatException;

    #@28
    const-string/jumbo v3, "contains an invalid character"

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 617
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v1

    #@33
    .line 618
    .local v1, "value":I
    if-ltz v1, :cond_2

    #@35
    const/16 v2, 0x64

    #@37
    if-le v1, v2, :cond_3

    #@39
    .line 619
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    #@3b
    const-string/jumbo v3, "is out of range"

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 622
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    #@43
    .line 623
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    #@45
    const-string/jumbo v3, "is not a number"

    #@48
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 621
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":I
    :cond_3
    return v1
.end method

.method public static parseTimestampMs(Ljava/lang/String;)J
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 628
    const-string/jumbo v5, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 629
    new-instance v4, Ljava/lang/NumberFormatException;

    #@c
    const-string/jumbo v5, "has invalid format"

    #@f
    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 632
    :cond_0
    const-string/jumbo v5, "\\."

    #@16
    const/4 v6, 0x2

    #@17
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 633
    .local v1, "parts":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@1d
    .line 634
    .local v2, "value":J
    aget-object v5, v1, v4

    #@1f
    const-string/jumbo v6, ":"

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    array-length v6, v5

    #@27
    :goto_0
    if-ge v4, v6, :cond_1

    #@29
    aget-object v0, v5, v4

    #@2b
    .line 635
    .local v0, "group":Ljava/lang/String;
    const-wide/16 v8, 0x3c

    #@2d
    mul-long/2addr v8, v2

    #@2e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31
    move-result-wide v10

    #@32
    add-long v2, v8, v10

    #@34
    .line 634
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 637
    .end local v0    # "group":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x3e8

    #@39
    mul-long/2addr v4, v2

    #@3a
    const/4 v6, 0x1

    #@3b
    aget-object v6, v1, v6

    #@3d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@40
    move-result-wide v6

    #@41
    add-long/2addr v4, v6

    #@42
    return-wide v4
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 8
    .param p0, "timeMs"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    const-wide/16 v4, 0x3c

    #@4
    .line 641
    const-string/jumbo v0, "%d:%02d:%02d.%03d"

    #@7
    const/4 v1, 0x4

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    .line 642
    const-wide/32 v2, 0x36ee80

    #@d
    div-long v2, p0, v2

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x0

    #@14
    aput-object v2, v1, v3

    #@16
    const-wide/32 v2, 0xea60

    #@19
    div-long v2, p0, v2

    #@1b
    rem-long/2addr v2, v4

    #@1c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x1

    #@21
    aput-object v2, v1, v3

    #@23
    .line 643
    div-long v2, p0, v6

    #@25
    rem-long/2addr v2, v4

    #@26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v2

    #@2a
    const/4 v3, 0x2

    #@2b
    aput-object v2, v1, v3

    #@2d
    rem-long v2, p0, v6

    #@2f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@32
    move-result-object v2

    #@33
    const/4 v3, 0x3

    #@34
    aput-object v2, v1, v3

    #@36
    .line 641
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method


# virtual methods
.method public eos()V
    .locals 3

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "\r"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 668
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@d
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@12
    move-result v1

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@1c
    .line 671
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    #@1e
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@20
    invoke-interface {v0, v1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    #@23
    .line 672
    const-string/jumbo v0, ""

    #@26
    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@28
    .line 674
    invoke-virtual {p0}, Landroid/media/WebVttParser;->yieldCue()V

    #@2b
    .line 675
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    #@2d
    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    #@2f
    .line 666
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 647
    const/4 v2, 0x0

    #@1
    .line 648
    .local v2, "trailingCR":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    const-string/jumbo v4, "\u0000"

    #@f
    const-string/jumbo v5, "\ufffd"

    #@12
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, "\r\n"

    #@21
    const-string/jumbo v5, "\n"

    #@24
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@2a
    .line 651
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@2c
    const-string/jumbo v4, "\r"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 652
    const/4 v2, 0x1

    #@36
    .line 653
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@38
    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@3a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3d
    move-result v4

    #@3e
    add-int/lit8 v4, v4, -0x1

    #@40
    const/4 v5, 0x0

    #@41
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@47
    .line 656
    :cond_0
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@49
    const-string/jumbo v4, "[\r\n]"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    .line 657
    .local v1, "lines":[Ljava/lang/String;
    const/4 v0, 0x0

    #@51
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@52
    add-int/lit8 v3, v3, -0x1

    #@54
    if-ge v0, v3, :cond_1

    #@56
    .line 658
    iget-object v3, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    #@58
    aget-object v4, v1, v0

    #@5a
    invoke-interface {v3, v4}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    #@5d
    .line 657
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 661
    :cond_1
    array-length v3, v1

    #@61
    add-int/lit8 v3, v3, -0x1

    #@63
    aget-object v3, v1, v3

    #@65
    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@67
    .line 662
    if-eqz v2, :cond_2

    #@69
    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    const-string/jumbo v4, "\r"

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    #@81
    .line 646
    :cond_2
    return-void
.end method

.method public yieldCue()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 679
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    #@7
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@a
    move-result v0

    #@b
    if-lez v0, :cond_0

    #@d
    .line 680
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@f
    iget-object v1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    #@11
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@14
    move-result v1

    #@15
    new-array v1, v1, [Ljava/lang/String;

    #@17
    iput-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@19
    .line 681
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    #@1b
    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@1d
    iget-object v1, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@22
    .line 682
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    #@24
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    #@27
    .line 683
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    #@29
    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@2b
    invoke-interface {v0, v1}, Landroid/media/WebVttCueListener;->onCueParsed(Landroid/media/TextTrackCue;)V

    #@2e
    .line 685
    :cond_0
    iput-object v2, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    #@30
    .line 678
    return-void
.end method
