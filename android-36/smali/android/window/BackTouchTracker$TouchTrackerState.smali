.class public final enum Landroid/window/BackTouchTracker$TouchTrackerState;
.super Ljava/lang/Enum;
.source "BackTouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackTouchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchTrackerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/window/BackTouchTracker$TouchTrackerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/window/BackTouchTracker$TouchTrackerState;

.field public static final enum blacklist ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

.field public static final enum blacklist FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

.field public static final enum blacklist INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/window/BackTouchTracker$TouchTrackerState;
    .registers 3

    .line 265
    sget-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v1, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    sget-object v2, Landroid/window/BackTouchTracker$TouchTrackerState;->FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

    filled-new-array {v0, v1, v2}, [Landroid/window/BackTouchTracker$TouchTrackerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 266
    new-instance v0, Landroid/window/BackTouchTracker$TouchTrackerState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/BackTouchTracker$TouchTrackerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->INITIAL:Landroid/window/BackTouchTracker$TouchTrackerState;

    new-instance v0, Landroid/window/BackTouchTracker$TouchTrackerState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/window/BackTouchTracker$TouchTrackerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    new-instance v0, Landroid/window/BackTouchTracker$TouchTrackerState;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/window/BackTouchTracker$TouchTrackerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

    .line 265
    invoke-static {}, Landroid/window/BackTouchTracker$TouchTrackerState;->$values()[Landroid/window/BackTouchTracker$TouchTrackerState;

    move-result-object v0

    sput-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->$VALUES:[Landroid/window/BackTouchTracker$TouchTrackerState;

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

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/window/BackTouchTracker$TouchTrackerState;
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

    .line 265
    const-class v0, Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/window/BackTouchTracker$TouchTrackerState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/window/BackTouchTracker$TouchTrackerState;
    .registers 1

    .line 265
    sget-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->$VALUES:[Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v0}, [Landroid/window/BackTouchTracker$TouchTrackerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/window/BackTouchTracker$TouchTrackerState;

    return-object v0
.end method
