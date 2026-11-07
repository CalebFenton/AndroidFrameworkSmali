.class public final Landroid/window/KeyguardState$Builder;
.super Ljava/lang/Object;
.source "KeyguardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/KeyguardState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAodShowing:Z

.field private blacklist mKeyguardShowing:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/KeyguardState;
    .registers 5

    .line 136
    new-instance v0, Landroid/window/KeyguardState;

    iget-boolean v1, p0, Landroid/window/KeyguardState$Builder;->mKeyguardShowing:Z

    iget-boolean v2, p0, Landroid/window/KeyguardState$Builder;->mAodShowing:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/window/KeyguardState;-><init>(ZZLandroid/window/KeyguardState-IA;)V

    return-object v0
.end method

.method public blacklist setAodShowing(Z)Landroid/window/KeyguardState$Builder;
    .registers 2
    .param p1, "aodShowing"    # Z

    .line 127
    iput-boolean p1, p0, Landroid/window/KeyguardState$Builder;->mAodShowing:Z

    .line 128
    return-object p0
.end method

.method public blacklist setKeyguardShowing(Z)Landroid/window/KeyguardState$Builder;
    .registers 2
    .param p1, "keyguardShowing"    # Z

    .line 118
    iput-boolean p1, p0, Landroid/window/KeyguardState$Builder;->mKeyguardShowing:Z

    .line 119
    return-object p0
.end method
