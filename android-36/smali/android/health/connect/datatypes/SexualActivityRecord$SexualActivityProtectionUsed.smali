.class public final Landroid/health/connect/datatypes/SexualActivityRecord$SexualActivityProtectionUsed;
.super Ljava/lang/Object;
.source "SexualActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SexualActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SexualActivityProtectionUsed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/SexualActivityRecord$SexualActivityProtectionUsed$SexualActivityProtectionUsedTypes;
    }
.end annotation


# static fields
.field public static final whitelist PROTECTION_USED_PROTECTED:I = 0x1

.field public static final whitelist PROTECTION_USED_UNKNOWN:I = 0x0

.field public static final whitelist PROTECTION_USED_UNPROTECTED:I = 0x2

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
    .registers 3

    .line 84
    nop

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/SexualActivityRecord$SexualActivityProtectionUsed;->VALID_TYPES:Ljava/util/Set;

    .line 84
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
