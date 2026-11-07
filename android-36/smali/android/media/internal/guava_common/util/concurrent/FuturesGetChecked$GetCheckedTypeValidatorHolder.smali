.class Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;
.super Ljava/lang/Object;
.source "FuturesGetChecked.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetCheckedTypeValidatorHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;
    }
.end annotation


# static fields
.field static final blacklist BEST_VALIDATOR:Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    invoke-static {}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->getBestValidator()Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->BEST_VALIDATOR:Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getBestValidator()Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    .registers 1

    .line 160
    invoke-static {}, Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked;->weakSetValidator()Landroid/media/internal/guava_common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    move-result-object v0

    return-object v0
.end method
