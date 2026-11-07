.class public Landroid/accessibilityservice/GestureDescription$Builder;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayId:I

.field private final greylist-max-o mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public whitelist addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;
    .registers 6
    .param p1, "strokeDescription"    # Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 195
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2a

    .line 203
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-static {v0}, Landroid/accessibilityservice/GestureDescription;->-$$Nest$smgetTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    .line 210
    return-object p0

    .line 206
    :cond_1d
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gesture would exceed maximum duration with new stroke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to add too many strokes to a gesture. Maximum is 20, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    .line 200
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/accessibilityservice/GestureDescription;
    .registers 5

    .line 226
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 229
    new-instance v0, Landroid/accessibilityservice/GestureDescription;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    iget v2, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mDisplayId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;ILandroid/accessibilityservice/GestureDescription-IA;)V

    return-object v0

    .line 227
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gestures must have at least one stroke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisplayId(I)Landroid/accessibilityservice/GestureDescription$Builder;
    .registers 2
    .param p1, "displayId"    # I

    .line 221
    iput p1, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mDisplayId:I

    .line 222
    return-object p0
.end method
