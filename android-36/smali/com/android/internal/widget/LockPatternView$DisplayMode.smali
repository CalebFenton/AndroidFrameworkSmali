.class public final enum Lcom/android/internal/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum greylist Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum greylist Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum greylist Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .registers 3

    .line 272
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 277
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 283
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 289
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 272
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

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

    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;
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

    .line 272
    const-class v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .registers 1

    .line 272
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
