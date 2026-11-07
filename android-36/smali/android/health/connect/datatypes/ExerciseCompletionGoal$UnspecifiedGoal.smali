.class public final Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;
.super Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnspecifiedGoal"
.end annotation


# static fields
.field public static final whitelist INSTANCE:Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 302
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;

    invoke-direct {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;->INSTANCE:Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V

    return-void
.end method
