.class public abstract Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.super Ljava/lang/Object;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/view/AccessibilityIterators$TextSegmentIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTextSegmentIterator"
.end annotation


# instance fields
.field private final mSegment:[I

.field protected mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    #@8
    .line 47
    return-void
.end method


# virtual methods
.method protected getRange(II)[I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    if-ltz p1, :cond_0

    #@3
    if-gez p2, :cond_1

    #@5
    .line 59
    :cond_0
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 58
    :cond_1
    if-eq p1, p2, :cond_0

    #@9
    .line 61
    iget-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    #@b
    aput p1, v0, v1

    #@d
    .line 62
    iget-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    #@f
    const/4 v1, 0x1

    #@10
    aput p2, v0, v1

    #@12
    .line 63
    iget-object v0, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mSegment:[I

    #@14
    return-object v0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->mText:Ljava/lang/String;

    #@2
    .line 53
    return-void
.end method
