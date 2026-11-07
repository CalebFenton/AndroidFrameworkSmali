.class public final Landroid/health/connect/datatypes/MenstruationFlowRecord$MenstruationFlowType;
.super Ljava/lang/Object;
.source "MenstruationFlowRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/MenstruationFlowRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenstruationFlowType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/MenstruationFlowRecord$MenstruationFlowType$MenstruationFlowTypes;
    }
.end annotation


# static fields
.field public static final whitelist FLOW_HEAVY:I = 0x3

.field public static final whitelist FLOW_LIGHT:I = 0x1

.field public static final whitelist FLOW_MEDIUM:I = 0x2

.field public static final whitelist FLOW_UNKNOWN:I

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

    .line 82
    nop

    .line 83
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

    sput-object v0, Landroid/health/connect/datatypes/MenstruationFlowRecord$MenstruationFlowType;->VALID_TYPES:Ljava/util/Set;

    .line 82
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
