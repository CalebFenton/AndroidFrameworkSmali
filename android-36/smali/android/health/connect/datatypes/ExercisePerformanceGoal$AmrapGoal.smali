.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AmrapGoal"
.end annotation


# static fields
.field public static final whitelist INSTANCE:Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 315
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;

    invoke-direct {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;->INSTANCE:Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    return-void
.end method
