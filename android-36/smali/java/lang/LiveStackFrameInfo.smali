.class final Ljava/lang/LiveStackFrameInfo;
.super Ljava/lang/StackFrameInfo;
.source "LiveStackFrameInfo.java"

# interfaces
.implements Ljava/lang/LiveStackFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;,
        Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;
    }
.end annotation


# static fields
.field private static blacklist EMPTY_ARRAY:[Ljava/lang/Object; = null

.field private static final blacklist MODE_COMPILED:I = 0x2

.field private static final blacklist MODE_INTERPRETED:I = 0x1


# instance fields
.field private blacklist locals:[Ljava/lang/Object;

.field private blacklist mode:I

.field private blacklist monitors:[Ljava/lang/Object;

.field private blacklist operands:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljava/lang/LiveStackFrameInfo;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/StackWalker;)V
    .registers 3
    .param p1, "walker"    # Ljava/lang/StackWalker;

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/StackFrameInfo;-><init>(Ljava/lang/StackWalker;)V

    .line 39
    sget-object v0, Ljava/lang/LiveStackFrameInfo;->EMPTY_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/LiveStackFrameInfo;->monitors:[Ljava/lang/Object;

    .line 40
    sget-object v0, Ljava/lang/LiveStackFrameInfo;->EMPTY_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/LiveStackFrameInfo;->locals:[Ljava/lang/Object;

    .line 41
    sget-object v0, Ljava/lang/LiveStackFrameInfo;->EMPTY_ARRAY:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/LiveStackFrameInfo;->operands:[Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/LiveStackFrameInfo;->mode:I

    .line 36
    return-void
.end method

.method static blacklist asPrimitive(I)Ljava/lang/LiveStackFrame$PrimitiveSlot;
    .registers 2
    .param p0, "value"    # I

    .line 81
    new-instance v0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;

    invoke-direct {v0, p0}, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot32;-><init>(I)V

    return-object v0
.end method

.method static blacklist asPrimitive(J)Ljava/lang/LiveStackFrame$PrimitiveSlot;
    .registers 3
    .param p0, "value"    # J

    .line 85
    new-instance v0, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;

    invoke-direct {v0, p0, p1}, Ljava/lang/LiveStackFrameInfo$PrimitiveSlot64;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public blacklist getLocals()[Ljava/lang/Object;
    .registers 2

    .line 51
    iget-object v0, p0, Ljava/lang/LiveStackFrameInfo;->locals:[Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getMonitors()[Ljava/lang/Object;
    .registers 2

    .line 46
    iget-object v0, p0, Ljava/lang/LiveStackFrameInfo;->monitors:[Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getStack()[Ljava/lang/Object;
    .registers 2

    .line 56
    iget-object v0, p0, Ljava/lang/LiveStackFrameInfo;->operands:[Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/StackFrameInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "retVal":Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/lang/LiveStackFrameInfo;->mode:I

    if-eqz v1, :cond_2d

    .line 63
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Ljava/lang/LiveStackFrameInfo;->mode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    .line 65
    const-string v1, " interpreted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1d
    iget v1, p0, Ljava/lang/LiveStackFrameInfo;->mode:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_28

    .line 68
    const-string v1, " compiled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_28
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
