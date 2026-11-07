.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownGoal"
.end annotation


# static fields
.field public static final whitelist INSTANCE:Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 325
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;

    invoke-direct {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;->INSTANCE:Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    return-void
.end method
