.class public interface abstract Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
.super Ljava/lang/Object;
.source "MessagingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MessagingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessagingChild"
.end annotation


# static fields
.field public static final blacklist MEASURED_NORMAL:I = 0x0

.field public static final blacklist MEASURED_SHORTENED:I = 0x1

.field public static final blacklist MEASURED_TOO_SMALL:I = 0x2


# virtual methods
.method public abstract blacklist getConsumedLines()I
.end method

.method public blacklist getExtraSpacing()I
    .registers 2

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist getMeasuredType()I
.end method

.method public blacklist hasDifferentHeightWhenFirst()Z
    .registers 2

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist hideAnimated()V
.end method

.method public abstract blacklist isHidingAnimated()Z
.end method

.method public abstract blacklist recycle()V
.end method

.method public blacklist setIsFirstInLayout(Z)V
    .registers 2
    .param p1, "first"    # Z

    .line 393
    return-void
.end method

.method public abstract blacklist setMaxDisplayedLines(I)V
.end method
