.class public Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;
.super Ljava/lang/Object;
.source "DesktopExperienceFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DesktopExperienceFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopExperienceFlag"
.end annotation


# instance fields
.field private final blacklist mFlagFunction:Ljava/util/function/BooleanSupplier;

.field private final blacklist mShouldOverrideByDevOption:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BooleanSupplier;Z)V
    .registers 3
    .param p1, "flagFunction"    # Ljava/util/function/BooleanSupplier;
    .param p2, "shouldOverrideByDevOption"    # Z

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    .line 99
    iput-boolean p2, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mShouldOverrideByDevOption:Z

    .line 100
    return-void
.end method


# virtual methods
.method public blacklist isTrue()Z
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    iget-boolean v1, p0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->mShouldOverrideByDevOption:Z

    invoke-static {v0, v1}, Landroid/window/DesktopExperienceFlags;->-$$Nest$smisFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z

    move-result v0

    return v0
.end method
