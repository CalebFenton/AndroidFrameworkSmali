.class Landroid/icu/impl/ResourceBundleWrapper$1;
.super Landroid/icu/impl/SoftCache;
.source "ResourceBundleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ResourceBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/ResourceBundleWrapper;",
        "Landroid/icu/impl/ResourceBundleWrapper$Loader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Landroid/icu/impl/ResourceBundleWrapper$Loader;)Landroid/icu/impl/ResourceBundleWrapper;
    .registers 4
    .param p1, "unusedKey"    # Ljava/lang/String;
    .param p2, "loader"    # Landroid/icu/impl/ResourceBundleWrapper$Loader;

    .line 46
    invoke-virtual {p2}, Landroid/icu/impl/ResourceBundleWrapper$Loader;->load()Landroid/icu/impl/ResourceBundleWrapper;

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

    .line 43
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/impl/ResourceBundleWrapper$Loader;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ResourceBundleWrapper$1;->createInstance(Ljava/lang/String;Landroid/icu/impl/ResourceBundleWrapper$Loader;)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object p1

    return-object p1
.end method
