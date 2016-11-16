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
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@a
    .line 157
    return-void
.end method


# virtual methods
.method public addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;
    .locals 4
    .param p1, "strokeDescription"    # Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xa

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    .line 174
    const-string/jumbo v1, "Attempting to add too many strokes to a gesture"

    #@f
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 177
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 179
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@1a
    invoke-static {v0}, Landroid/accessibilityservice/GestureDescription;->-wrap2(Ljava/util/List;)J

    #@1d
    move-result-wide v0

    #@1e
    const-wide/32 v2, 0xea60

    #@21
    cmp-long v0, v0, v2

    #@23
    if-lez v0, :cond_1

    #@25
    .line 180
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@27
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2a
    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2c
    .line 182
    const-string/jumbo v1, "Gesture would exceed maximum duration with new stroke"

    #@2f
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 184
    :cond_1
    return-object p0
.end method

.method public build()Landroid/accessibilityservice/GestureDescription;
    .locals 3

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Gestures must have at least one stroke"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 191
    :cond_0
    new-instance v0, Landroid/accessibilityservice/GestureDescription;

    #@13
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    #@15
    const/4 v2, 0x0

    #@16
    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription;)V

    #@19
    return-object v0
.end method
