.class public final Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusSensation;
.super Ljava/lang/Object;
.source "CervicalMucusRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/CervicalMucusRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CervicalMucusSensation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusSensation$CervicalMucusSensations;
    }
.end annotation


# static fields
.field public static final whitelist SENSATION_HEAVY:I = 0x3

.field public static final whitelist SENSATION_LIGHT:I = 0x1

.field public static final whitelist SENSATION_MEDIUM:I = 0x2

.field public static final whitelist SENSATION_UNKNOWN:I

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
    .registers 4

    .line 157
    nop

    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/CervicalMucusRecord$CervicalMucusSensation;->VALID_TYPES:Ljava/util/Set;

    .line 157
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
