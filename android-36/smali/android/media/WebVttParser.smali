.class Landroid/media/WebVttParser;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttParser$Phase;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WebVttParser"


# instance fields
.field private blacklist mBuffer:Ljava/lang/String;

.field private blacklist mCue:Landroid/media/TextTrackCue;

.field private blacklist mCueTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListener:Landroid/media/WebVttCueListener;

.field private final blacklist mParseCueId:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseCueText:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseCueTime:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseHeader:Landroid/media/WebVttParser$Phase;

.field private final blacklist mParseStart:Landroid/media/WebVttParser$Phase;

.field private blacklist mPhase:Landroid/media/WebVttParser$Phase;

.field private final blacklist mSkipRest:Landroid/media/WebVttParser$Phase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCueTexts(Landroid/media/WebVttParser;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseCueText(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseCueTime(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParseHeader(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhase(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkipRest(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .registers 1

    iget-object p0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCue(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttCueListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/WebVttCueListener;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-instance v0, Landroid/media/WebVttParser$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$1;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    .line 699
    new-instance v0, Landroid/media/WebVttParser$2;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$2;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    .line 716
    new-instance v0, Landroid/media/WebVttParser$3;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$3;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    .line 816
    new-instance v0, Landroid/media/WebVttParser$4;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$4;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    .line 841
    new-instance v0, Landroid/media/WebVttParser$5;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$5;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    .line 944
    new-instance v0, Landroid/media/WebVttParser$6;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$6;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    .line 579
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 580
    const-string v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 581
    iput-object p1, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    .line 582
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 583
    return-void
.end method

.method private blacklist log_warning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 971
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method private blacklist log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 966
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private blacklist log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subMessage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 960
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void
.end method

.method public static blacklist parseFloatPercentage(Ljava/lang/String;)F
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 588
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 593
    const-string v0, ".*[^0-9.].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 598
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 599
    .local v0, "value":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_2b

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2b

    .line 602
    return v0

    .line 600
    :cond_2b
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "is out of range"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "s":Ljava/lang/String;
    throw v1
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_33} :catch_33

    .line 603
    .end local v0    # "value":F
    .restart local p0    # "s":Ljava/lang/String;
    :catch_33
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "is not a number"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3c
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "contains an invalid character"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_44
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "does not end in %"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist parseIntPercentage(Ljava/lang/String;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 609
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 612
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 614
    const-string v0, ".*[^0-9].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 619
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 620
    .local v0, "value":I
    if-ltz v0, :cond_26

    const/16 v1, 0x64

    if-gt v0, v1, :cond_26

    .line 623
    return v0

    .line 621
    :cond_26
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "is out of range"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "s":Ljava/lang/String;
    throw v1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_2e} :catch_2e

    .line 624
    .end local v0    # "value":I
    .restart local p0    # "s":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "is not a number"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_37
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "contains an invalid character"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_3f
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "does not end in %"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist parseTimestampMs(Ljava/lang/String;)J
    .registers 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 630
    const-string v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 634
    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "parts":[Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 636
    .local v1, "value":J
    const/4 v3, 0x0

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1b
    if-ge v3, v5, :cond_2b

    aget-object v6, v4, v3

    .line 637
    .local v6, "group":Ljava/lang/String;
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v1, v7, v9

    .line 636
    .end local v6    # "group":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 639
    :cond_2b
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    return-wide v3

    .line 631
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "value":J
    :cond_37
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "has invalid format"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist timeToString(J)Ljava/lang/String;
    .registers 11
    .param p0, "timeMs"    # J

    .line 643
    const-wide/32 v0, 0x36ee80

    div-long v0, p0, v0

    .line 644
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xea60

    div-long v1, p0, v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    div-long v7, p0, v5

    rem-long/2addr v7, v3

    .line 645
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    rem-long v3, p0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 643
    const-string v1, "%d:%02d:%02d.%03d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist eos()V
    .registers 4

    .line 669
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 670
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 673
    :cond_1b
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 674
    const-string v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 676
    invoke-virtual {p0}, Landroid/media/WebVttParser;->yieldCue()V

    .line 677
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 678
    return-void
.end method

.method public blacklist parse(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "trailingCR":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    const-string v3, "\ufffd"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 653
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 654
    const/4 v0, 0x1

    .line 655
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 658
    :cond_42
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string v3, "[\r\n]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "lines":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4b
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_5a

    .line 660
    iget-object v4, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    aget-object v5, v1, v3

    invoke-interface {v4, v5}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 663
    .end local v3    # "i":I
    :cond_5a
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 664
    if-eqz v0, :cond_78

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 666
    :cond_78
    return-void
.end method

.method public blacklist yieldCue()V
    .registers 3

    .line 681
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 682
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 683
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 685
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    invoke-interface {v0, v1}, Landroid/media/WebVttCueListener;->onCueParsed(Landroid/media/TextTrackCue;)V

    .line 687
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 688
    return-void
.end method
