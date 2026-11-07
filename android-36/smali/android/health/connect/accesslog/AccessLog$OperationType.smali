.class public final Landroid/health/connect/accesslog/AccessLog$OperationType;
.super Ljava/lang/Object;
.source "AccessLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/accesslog/AccessLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/accesslog/AccessLog$OperationType$OperationTypes;
    }
.end annotation


# static fields
.field public static final whitelist OPERATION_TYPE_DELETE:I = 0x1

.field public static final whitelist OPERATION_TYPE_READ:I = 0x2

.field public static final whitelist OPERATION_TYPE_UPSERT:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidateOperationType(I)V
    .registers 1

    invoke-static {p0}, Landroid/health/connect/accesslog/AccessLog$OperationType;->validateOperationType(I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist validateOperationType(I)V
    .registers 4
    .param p0, "operationType"    # I

    .line 220
    nop

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-class v1, Landroid/health/connect/accesslog/AccessLog$OperationType$OperationTypes;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {p0, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 224
    return-void
.end method
