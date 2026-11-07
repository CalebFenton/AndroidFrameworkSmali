.class public final Landroid/content/pm/PackageManager$PackageInfoFlags;
.super Landroid/content/pm/PackageManager$Flags;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfoFlags"
.end annotation


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 5760
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageManager$Flags;-><init>(J)V

    .line 5761
    return-void
.end method

.method public static whitelist of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;
    .registers 3
    .param p0, "value"    # J

    .line 5764
    new-instance v0, Landroid/content/pm/PackageManager$PackageInfoFlags;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/PackageManager$PackageInfoFlags;-><init>(J)V

    return-object v0
.end method
