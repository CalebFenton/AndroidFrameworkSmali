.class public Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInteractionEventExtrasToken"
.end annotation


# instance fields
.field public blacklist mActionToken:I

.field public blacklist mCategoryToken:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    .line 562
    iput v0, p0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    .line 566
    return-void
.end method
