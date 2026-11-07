.class Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;
.super Ljava/lang/LiveStackFrame$PrimitiveSlot;
.source "LiveStackFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/LiveStackFrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveSlot64"
.end annotation


# instance fields
.field final blacklist value:J


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 112
    invoke-direct {p0}, Ljava/lang/LiveStackFrame$PrimitiveSlot;-><init>()V

    .line 113
    iput-wide p1, p0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;->value:J

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist longValue()J
    .registers 3

    .line 123
    iget-wide v0, p0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;->value:J

    return-wide v0
.end method

.method public blacklist size()I
    .registers 2

    .line 118
    const/16 v0, 0x8

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    iget-wide v0, p0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
