.class Ljava/lang/Package$1PackageInfoProxy;
.super Ljava/lang/Object;
.source "Package.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInfoProxy"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/Package;)V
    .registers 2
    .param p1, "this$0"    # Ljava/lang/Package;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
