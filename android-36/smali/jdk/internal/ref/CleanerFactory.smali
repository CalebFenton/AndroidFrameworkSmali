.class public final Ljdk/internal/ref/CleanerFactory;
.super Ljava/lang/Object;
.source "CleanerFactory.java"


# static fields
.field private static final blacklist commonCleaner:Ljava/lang/ref/Cleaner;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Ljava/lang/ref/Cleaner;->createSystemCleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    sput-object v0, Ljdk/internal/ref/CleanerFactory;->commonCleaner:Ljava/lang/ref/Cleaner;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cleaner()Ljava/lang/ref/Cleaner;
    .registers 1

    .line 66
    sget-object v0, Ljdk/internal/ref/CleanerFactory;->commonCleaner:Ljava/lang/ref/Cleaner;

    return-object v0
.end method
