.class public final Landroid/content/pm/PackageManager$ResolveInfoFlags;
.super Landroid/content/pm/PackageManager$Flags;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolveInfoFlags"
.end annotation


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .line 5802
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageManager$Flags;-><init>(J)V

    .line 5803
    return-void
.end method

.method public static whitelist of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .registers 3
    .param p0, "value"    # J

    .line 5806
    new-instance v0, Landroid/content/pm/PackageManager$ResolveInfoFlags;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;-><init>(J)V

    return-object v0
.end method
