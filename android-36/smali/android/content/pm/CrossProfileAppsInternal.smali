.class public abstract Landroid/content/pm/CrossProfileAppsInternal;
.super Ljava/lang/Object;
.source "CrossProfileAppsInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
.end method

.method public abstract blacklist verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract blacklist verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
.end method
