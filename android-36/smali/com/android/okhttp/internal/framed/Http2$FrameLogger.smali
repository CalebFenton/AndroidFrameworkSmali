.class final Lcom/android/okhttp/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final blacklist BINARY:[Ljava/lang/String;

.field private static final blacklist FLAGS:[Ljava/lang/String;

.field private static final blacklist TYPES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 707
    const-string v8, "WINDOW_UPDATE"

    const-string v9, "CONTINUATION"

    const-string v0, "DATA"

    const-string v1, "HEADERS"

    const-string v2, "PRIORITY"

    const-string v3, "RST_STREAM"

    const-string v4, "SETTINGS"

    const-string v5, "PUSH_PROMISE"

    const-string v6, "PING"

    const-string v7, "GOAWAY"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    const/16 v0, 0x40

    .line 724
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v0, 0x100

    .line 725
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 728
    :goto_28
    sget-object v2, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x20

    if-ge v1, v3, :cond_48

    .line 729
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%8s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 732
    :cond_48
    sget-object v1, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 733
    const-string v2, "END_STREAM"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 735
    filled-new-array {v3}, [I

    move-result-object v2

    .line 737
    const-string v3, "PADDED"

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 738
    aget v3, v2, v0

    or-int/lit8 v6, v3, 0x8

    .line 739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|PADDED"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 742
    const-string v6, "END_HEADERS"

    const/4 v7, 0x4

    aput-object v6, v1, v7

    .line 743
    const-string v6, "PRIORITY"

    aput-object v6, v1, v4

    .line 744
    const-string v6, "END_HEADERS|PRIORITY"

    const/16 v8, 0x24

    aput-object v6, v1, v8

    .line 745
    filled-new-array {v7, v4, v8}, [I

    move-result-object v1

    move v4, v0

    :goto_8a
    const/4 v6, 0x3

    if-ge v4, v6, :cond_ce

    .line 748
    aget v6, v1, v4

    .line 749
    aget v7, v2, v0

    .line 750
    sget-object v8, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v9, v7, v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v12, v8, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    or-int/2addr v9, v5

    .line 751
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v8, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, v8, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 756
    :cond_ce
    :goto_ce
    sget-object v1, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e0

    .line 757
    aget-object v2, v1, v0

    if-nez v2, :cond_dd

    sget-object v2, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_dd
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    :cond_e0
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist formatFlags(BB)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    .line 685
    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x2

    if-eq p0, v0, :cond_4f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_44

    const/4 v0, 0x6

    if-eq p0, v0, :cond_44

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4f

    .line 696
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_20

    aget-object v0, v0, p1

    goto :goto_24

    :cond_20
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_24
    const/4 v1, 0x5

    if-ne p0, v1, :cond_34

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_34

    .line 699
    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    if-nez p0, :cond_43

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_43

    .line 701
    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    return-object v0

    :cond_44
    const/4 p0, 0x1

    if-ne p1, p0, :cond_4a

    .line 689
    const-string p0, "ACK"

    return-object p0

    :cond_4a
    sget-object p0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 694
    :cond_4f
    sget-object p0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method static blacklist formatHeader(ZIIBB)Ljava/lang/String;
    .registers 7

    .line 673
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p3, v1, :cond_8

    aget-object v0, v0, p3

    goto :goto_16

    :cond_8
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :goto_16
    invoke-static {p3, p4}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object p3

    if-eqz p0, :cond_1f

    .line 675
    const-string p0, "<<"

    goto :goto_21

    :cond_1f
    const-string p0, ">>"

    :goto_21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s 0x%08x %5d %-13s %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
