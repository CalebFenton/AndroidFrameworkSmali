.class public final Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualMouseButtonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseButtonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mButtonCode:I

.field private blacklist mEventTimeNanos:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    .line 151
    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualMouseButtonEvent;
    .registers 9

    .line 158
    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    if-eq v0, v1, :cond_16

    .line 162
    new-instance v2, Landroid/hardware/input/VirtualMouseButtonEvent;

    iget v3, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    iget v4, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    iget-wide v5, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mEventTimeNanos:J

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(IIJLandroid/hardware/input/VirtualMouseButtonEvent-IA;)V

    return-object v2

    .line 159
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual mouse button event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .registers 4
    .param p1, "action"    # I

    .line 188
    const/16 v0, 0xb

    if-eq p1, v0, :cond_11

    const/16 v0, 0xc

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 189
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mouse button action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_11
    :goto_11
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    .line 192
    return-object p0
.end method

.method public whitelist setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .registers 4
    .param p1, "buttonCode"    # I

    .line 171
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x10

    if-ne p1, v0, :cond_12

    goto :goto_1a

    .line 176
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mouse button code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1a
    :goto_1a
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    .line 179
    return-object p0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 209
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 212
    iput-wide p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mEventTimeNanos:J

    .line 213
    return-object p0

    .line 210
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
