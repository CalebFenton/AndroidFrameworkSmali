.class public final enum Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
.super Ljava/lang/Enum;
.source "AnimationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist PARTICLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist ROTATE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist SLIDE_BOTTOM:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist SLIDE_LEFT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist SLIDE_RIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field public static final enum blacklist SLIDE_TOP:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 8

    .line 152
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_LEFT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_RIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_TOP:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_BOTTOM:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ROTATE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->PARTICLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 153
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "FADE_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 154
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "FADE_OUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 155
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "SLIDE_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_LEFT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 156
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "SLIDE_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_RIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 157
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "SLIDE_TOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_TOP:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 158
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "SLIDE_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_BOTTOM:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 159
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "ROTATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ROTATE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 160
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const-string v1, "PARTICLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->PARTICLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    .line 152
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->$values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 152
    const-class v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object v0
.end method
