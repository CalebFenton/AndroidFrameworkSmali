.class public final Landroid/health/connect/datatypes/ExerciseLap$Builder;
.super Ljava/lang/Object;
.source "ExerciseLap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseLap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mInterval:Landroid/health/connect/datatypes/TimeInterval;

.field private blacklist mLength:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method public constructor whitelist <init>(Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 4
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/health/connect/datatypes/TimeInterval;

    invoke-direct {v0, p1, p2}, Landroid/health/connect/datatypes/TimeInterval;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseLap$Builder;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    .line 128
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ExerciseLap;
    .registers 6

    .line 155
    new-instance v0, Landroid/health/connect/datatypes/ExerciseLap;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseLap$Builder;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    iget-object v2, p0, Landroid/health/connect/datatypes/ExerciseLap$Builder;->mLength:Landroid/health/connect/datatypes/units/Length;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/ExerciseLap;-><init>(Landroid/health/connect/datatypes/TimeInterval;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ExerciseLap-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseLap;
    .registers 6

    .line 149
    new-instance v0, Landroid/health/connect/datatypes/ExerciseLap;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseLap$Builder;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    iget-object v2, p0, Landroid/health/connect/datatypes/ExerciseLap$Builder;->mLength:Landroid/health/connect/datatypes/units/Length;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/ExerciseLap;-><init>(Landroid/health/connect/datatypes/TimeInterval;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ExerciseLap-IA;)V

    return-object v0
.end method

.method public whitelist setLength(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseLap$Builder;
    .registers 2
    .param p1, "length"    # Landroid/health/connect/datatypes/units/Length;

    .line 138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseLap$Builder;->mLength:Landroid/health/connect/datatypes/units/Length;

    .line 140
    return-object p0
.end method
