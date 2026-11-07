.class Landroid/icu/impl/ICUResourceBundle$3;
.super Landroid/icu/impl/SoftCache;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/ICUResourceBundle$AvailEntry;",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 958
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 961
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

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

    .line 958
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle$3;->createInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p1

    return-object p1
.end method
