.class public final Landroid/system/SystemCleaner;
.super Ljava/lang/Object;
.source "SystemCleaner.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api cleaner()Ljava/lang/ref/Cleaner;
    .registers 1

    .line 50
    invoke-static {}, Ljdk/internal/ref/CleanerFactory;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    return-object v0
.end method
