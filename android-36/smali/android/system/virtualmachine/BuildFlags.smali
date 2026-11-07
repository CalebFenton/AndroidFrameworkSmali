.class public final Landroid/system/virtualmachine/BuildFlags;
.super Ljava/lang/Object;
.source "BuildFlags.java"


# static fields
.field public static blacklist VENDOR_MODULES_ENABLED:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Landroid/system/virtualmachine/BuildFlags;->VENDOR_MODULES_ENABLED:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
