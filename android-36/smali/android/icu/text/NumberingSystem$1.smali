.class Landroid/icu/text/NumberingSystem$1;
.super Landroid/icu/impl/SoftCache;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/NumberingSystem;",
        "Landroid/icu/text/NumberingSystem$LocaleLookupData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 326
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "localeLookupData"    # Landroid/icu/text/NumberingSystem$LocaleLookupData;

    .line 329
    invoke-static {p2}, Landroid/icu/text/NumberingSystem;->lookupInstanceByLocale(Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;

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

    .line 326
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/text/NumberingSystem$LocaleLookupData;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberingSystem$1;->createInstance(Ljava/lang/String;Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;

    move-result-object p1

    return-object p1
.end method
