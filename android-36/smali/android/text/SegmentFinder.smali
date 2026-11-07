.class public abstract Landroid/text/SegmentFinder;
.super Ljava/lang/Object;
.source "SegmentFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/SegmentFinder$PrescribedSegmentFinder;
    }
.end annotation


# static fields
.field public static final whitelist DONE:I = -0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist nextEndBoundary(I)I
.end method

.method public abstract whitelist nextStartBoundary(I)I
.end method

.method public abstract whitelist previousEndBoundary(I)I
.end method

.method public abstract whitelist previousStartBoundary(I)I
.end method
