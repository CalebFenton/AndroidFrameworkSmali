.class public Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DividerSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapTarget"
.end annotation


# static fields
.field public static final FLAG_DISMISS_END:I = 0x2

.field public static final FLAG_DISMISS_START:I = 0x1

.field public static final FLAG_NONE:I


# instance fields
.field private final distanceMultiplier:F

.field public final flag:I

.field public final position:I

.field public final taskPosition:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    #@2
    return v0
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "flag"    # I

    #@0
    .prologue
    .line 396
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    #@5
    .line 395
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "flag"    # I
    .param p4, "distanceMultiplier"    # F

    #@0
    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 400
    iput p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    #@5
    .line 401
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    #@7
    .line 402
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    #@9
    .line 403
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    #@b
    .line 399
    return-void
.end method
