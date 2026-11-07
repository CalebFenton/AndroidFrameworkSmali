.class final enum Landroid/app/admin/PasswordMetrics$ComplexityBucket$4;
.super Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.source "PasswordMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "complexityLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;-><init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$4;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method blacklist allowsCredType(I)Z
    .registers 3
    .param p1, "credType"    # I

    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method blacklist canHaveSequence()Z
    .registers 2

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getMinimumLength(Z)I
    .registers 3
    .param p1, "containsNonNumeric"    # Z

    .line 442
    const/4 v0, 0x0

    return v0
.end method
