.class abstract Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;,
        Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;,
        Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;,
        Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
    }
.end annotation


# instance fields
.field blacklist index:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist reset()V
    .registers 2

    .line 1460
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    .line 1461
    return-void
.end method
