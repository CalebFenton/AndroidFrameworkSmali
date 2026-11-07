.class Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;
.super Ljava/lang/LiveStackFrame$PrimitiveSlot;
.source "LiveStackFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/LiveStackFrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveSlot32"
.end annotation


# instance fields
.field final blacklist value:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/LiveStackFrame$PrimitiveSlot;-><init>()V

    .line 91
    iput p1, p0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;->value:I

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist intValue()I
    .registers 2

    .line 101
    iget v0, p0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;->value:I

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 96
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 106
    iget v0, p0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
