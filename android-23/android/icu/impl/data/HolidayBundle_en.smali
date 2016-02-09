.class public Landroid/icu/impl/data/HolidayBundle_en;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 22
    new-array v0, v4, [[Ljava/lang/Object;

    #@4
    .line 23
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    const-string/jumbo v2, ""

    #@a
    aput-object v2, v1, v3

    #@c
    const-string/jumbo v2, ""

    #@f
    aput-object v2, v1, v4

    #@11
    aput-object v1, v0, v3

    #@13
    .line 22
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en;->fContents:[[Ljava/lang/Object;

    #@15
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 26
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
