.class Landroid/icu/number/NumberSkeletonImpl$1;
.super Landroid/icu/impl/SoftCache;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/number/UnlocalizedNumberFormatter;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 525
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Ljava/lang/Void;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 4
    .param p1, "skeletonString"    # Ljava/lang/String;
    .param p2, "unused"    # Ljava/lang/Void;

    .line 528
    invoke-static {p1}, Landroid/icu/number/NumberSkeletonImpl;->create(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 525
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/number/NumberSkeletonImpl$1;->createInstance(Ljava/lang/String;Ljava/lang/Void;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    return-object p1
.end method
