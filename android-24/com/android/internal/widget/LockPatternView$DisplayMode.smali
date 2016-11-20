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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 225
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@5
    const-string/jumbo v1, "Correct"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    #@b
    .line 228
    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@d
    .line 230
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@f
    const-string/jumbo v1, "Animate"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    #@15
    .line 233
    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@17
    .line 235
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@19
    const-string/jumbo v1, "Wrong"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 238
    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@21
    .line 223
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@24
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    const-class v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .locals 1

    #@0
    .prologue
    .line 223
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    #@2
    return-object v0
.end method
