.class public final Landroid/health/connect/datatypes/BloodGlucoseRecord$RelationToMealType;
.super Ljava/lang/Object;
.source "BloodGlucoseRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/BloodGlucoseRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelationToMealType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BloodGlucoseRecord$RelationToMealType$RelationToMealTypes;
    }
.end annotation


# static fields
.field public static final whitelist RELATION_TO_MEAL_AFTER_MEAL:I = 0x4

.field public static final whitelist RELATION_TO_MEAL_BEFORE_MEAL:I = 0x3

.field public static final whitelist RELATION_TO_MEAL_FASTING:I = 0x2

.field public static final whitelist RELATION_TO_MEAL_GENERAL:I = 0x1

.field public static final whitelist RELATION_TO_MEAL_UNKNOWN:I

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 140
    nop

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 144
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 145
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 146
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 141
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/BloodGlucoseRecord$RelationToMealType;->VALID_TYPES:Ljava/util/Set;

    .line 140
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
